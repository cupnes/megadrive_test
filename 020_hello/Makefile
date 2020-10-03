TARGET = hello
OBJS = main.o

GENDEV = /opt/gendev
GENGCC_BIN = $(GENDEV)/bin
AS = $(GENGCC_BIN)/m68k-elf-as
CC = $(GENGCC_BIN)/m68k-elf-gcc
LD = $(GENGCC_BIN)/m68k-elf-ld
ASFLAGS = -m68000 -Wall --bitwise-or
CFLAGS = -m68000 -Wall -fno-builtin
LDFLAGS = -T md.ld -Map $(TARGET).map -nostdlib
EMU = mednafen

all: $(TARGET).bin

$(TARGET).bin: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $+

%.o: %.s
	$(AS) $(ASFLAGS) -c -o $@ $< >$<.dump

run: $(TARGET).bin
	$(EMU) $<

clean:
	rm -f *~ *.o *.bin *.map *.dump

.PHONY: run clean
