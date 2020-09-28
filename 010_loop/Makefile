GENDEV = /opt/gendev
GENGCC_BIN = $(GENDEV)/bin
CC = $(GENGCC_BIN)/m68k-elf-gcc
LD = $(GENGCC_BIN)/m68k-elf-ld
CFLAGS = -m68000 -Wall -fno-builtin
LDFLAGS = -T md.ld -Map test.map -nostdlib
EMU = mednafen

all: test.bin

test.bin: test.o
	$(LD) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) $(CFLAGS) -c -o $@ $<

run: test.bin
	$(EMU) $<

clean:
	rm -f *~ *.o *.bin *.map

.PHONY: run clean
