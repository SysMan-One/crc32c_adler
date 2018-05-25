CFLAGS = -g -Wall
LDLIBS = -lpthread

all: example-stdin example-dht

example-stdin: example-stdin.o crc32c_adler.o

example-dht: example-dht.o crc32c_adler.o

clean:
	-rm -f example-stdin example-stdin.o example-dht example-dht.o crc32c_adler.o *~ core
