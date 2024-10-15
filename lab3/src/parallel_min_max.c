#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <limits.h>
#include <fcntl.h>
#include <string.h>

struct MinMax {
  int min;
  int max;
};

void find_min_max(int *array, int start, int end, struct MinMax *local_min_max) {
  local_min_max->min = INT_MAX;
  local_min_max->max = INT_MIN;

  for (int j = start; j < end; j++) {
    if (array[j] < local_min_max->min) local_min_max->min = array[j];
    if (array[j] > local_min_max->max) local_min_max->max = array[j];
  }
}

int main(int argc, char *argv[]) {
  if (argc < 3) {
    fprintf(stderr, "Usage: %s <seed> <array_size> <num_processes> [by_files]\n", argv[0]);
    return 1;
  }

  int seed = atoi(argv[1]);
  int array_size = atoi(argv[2]);
  int pnum = atoi(argv[3]);
  int by_files = (argc > 4) ? atoi(argv[4]) : 0;

  srand(seed);

  int *array = malloc(array_size * sizeof(int));
  for (int i = 0; i < array_size; i++) {
    array[i] = rand() % 201 - 100;
  }

  struct MinMax min_max;
  min_max.min = INT_MAX;
  min_max.max = INT_MIN;

  pid_t pids[pnum];
  int pipe_fd[2];

  if (!by_files) {
    pipe(pipe_fd);
  }

  for (int i = 0; i < pnum; i++) {
    pids[i] = fork();
    if (pids[i] == 0) {
      struct MinMax local_min_max;
      int chunk_size = array_size / pnum;
      int start_index = i * chunk_size;
      int end_index = (i == pnum - 1) ? array_size : start_index + chunk_size;

      find_min_max(array, start_index, end_index, &local_min_max);

      if (by_files) {
        char filename[20];
        snprintf(filename, sizeof(filename), "minmax_%d.txt", i);
        int fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
        write(fd, &local_min_max, sizeof(local_min_max));
        close(fd);
      } else {
        close(pipe_fd[0]);
        write(pipe_fd[1], &local_min_max, sizeof(local_min_max));
        close(pipe_fd[1]);
      }
      exit(0);
    }
  }

  for (int i = 0; i < pnum; i++) {
    waitpid(pids[i], NULL, 0);
  }

  if (by_files) {
    for (int i = 0; i < pnum; i++) {
      char filename[20];
      snprintf(filename, sizeof(filename), "minmax_%d.txt", i);
      int fd = open(filename, O_RDONLY);
      struct MinMax local_min_max;
      read(fd, &local_min_max, sizeof(local_min_max));
      close(fd);

      if (local_min_max.min < min_max.min) min_max.min = local_min_max.min;
      if (local_min_max.max > min_max.max) min_max.max = local_min_max.max;
    }
  } else {
    for (int i = 0; i < pnum; i++) {
      struct MinMax local_min_max;
      read(pipe_fd[0], &local_min_max, sizeof(local_min_max));

      if (local_min_max.min < min_max.min) min_max.min = local_min_max.min;
      if (local_min_max.max > min_max.max) min_max.max = local_min_max.max;
    }
    close(pipe_fd[0]);
  }

  printf("Minimum: %d\n", min_max.min);
  printf("Maximum: %d\n", min_max.max);

  free(array);
  return 0;
}
