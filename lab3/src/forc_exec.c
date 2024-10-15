#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(int argc, char* argv[])
{
    char *args[] = {"./sequential_min_max", NULL};
    execvp(args[0], argv);
    printf("exec finished");

    return 0;
}
