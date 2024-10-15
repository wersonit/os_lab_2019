CC=gcc
CFLAGS=-I.

BUILD_DIR = build/
BIN_DIR = bin/

all: sequential_min_max parallel_min_max forc_exec

sequential_min_max: $(BUILD_DIR)utils.o $(BUILD_DIR)find_min_max.o sequential_min_max.c
	mkdir -p $(BIN_DIR)
	$(CC) -o "$(BIN_DIR)$@" $^ $(CFLAGS)

parallel_min_max: $(BUILD_DIR)utils.o $(BUILD_DIR)find_min_max.o parallel_min_max.c
	mkdir -p $(BIN_DIR)
	$(CC) -o "$(BIN_DIR)$@" $^ $(CFLAGS)

$(BUILD_DIR)utils.o: utils.c
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(CFLAGS)

$(BUILD_DIR)find_min_max.o: find_min_max.c
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(CFLAGS)

$(BUILD_DIR)forc_exec.o: forc_exec.c
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(CFLAGS)

forc_exec: $(BUILD_DIR)forc_exec.o sequential_min_max.c
	mkdir -p $(BIN_DIR)
	$(CC) -o "$(BIN_DIR)$@" $(BUILD_DIR)forc_exec.o

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(BIN_DIR)
	rm -f .shared_data.txt
