CC=arm-none-eabi-gcc
AR=arm-none-eabi-ar

CFLAGS=-I../libtip/include -nostdlib -nodefaultlibs -nolibc -fno-builtin

all: tttcl
	
clean:
	rm -f *.o tttcl

tttcl: 
	$(CC) $(CFLAGS) -T ../libtip/tiptoi.ld -o tttcl tttcl.c ../libtip/libtip.a
		