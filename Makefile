BIN=bin2tap

all: $(BIN)

CC=gcc
CFLAGS=-s -O3 -Wall

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@ -c

bin2tap: bin2tap.o
	$(CC) $< -o $@

clean:
	rm -f $(BIN) *.o

