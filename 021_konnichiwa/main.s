	.text

ExceptionVector:
	.dc.l	0x00000000		/* 00(000h) Reset: Initial SSP */
	.dc.l	EntryPoint		/* 01(004h) Reset: Initial PC */
	.dc.l	ExceptionHandler	/* 02(008h) Bus Error */
	.dc.l	ExceptionHandler	/* 03(00Ch) Address Error */
	.dc.l	ExceptionHandler	/* 04(010h) Illegal Instruction */
	.dc.l	ExceptionHandler	/* 05(014h) Zero Divide */
	.dc.l	ExceptionHandler	/* 06(018h) CHK Instruction */
	.dc.l	ExceptionHandler	/* 07(01Ch) TRAPV Instruction */
	.dc.l	ExceptionHandler	/* 08(020h) Privilege Violation */
	.dc.l	ExceptionHandler	/* 09(024h) Trace */
	.dc.l	ExceptionHandler	/* 10(028h) Line 1010 Emulator */
	.dc.l	ExceptionHandler	/* 11(02Ch) Line 1111 Emulator */
	.dc.l	ExceptionHandler	/* 12(030h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 13(034h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 14(038h) Format Error */
	.dc.l	ExceptionHandler	/* 15(03Ch) Uninitialized Interrupt Vector */
	.dc.l	ExceptionHandler	/* 16(040h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 17(044h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 18(048h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 19(04Ch) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 20(050h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 21(054h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 22(058h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 23(05Ch) - */
	.dc.l	ExceptionHandler	/* 24(060h) Spurious Interrupt */
	.dc.l	ExceptionHandler	/* 25(064h) Level 1 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 26(068h) Level 2 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 27(06Ch) Level 3 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 28(070h) Level 4 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 29(074h) Level 5 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 30(078h) Level 6 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 31(07Ch) Level 7 Interrupt Autovector */
	.dc.l	ExceptionHandler	/* 32(080h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 33(084h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 34(088h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 35(08Ch) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 36(090h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 37(094h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 38(098h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 39(09Ch) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 40(0A0h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 41(0A4h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 42(0A8h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 43(0ACh) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 44(0B0h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 45(0B4h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 46(0B8h) TRAP Instruction Vector */
	.dc.l	ExceptionHandler	/* 47(0BCh) - */
	.dc.l	ExceptionHandler	/* 48(0C0h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 49(0C4h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 50(0C8h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 51(0CCh) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 52(0D0h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 53(0D4h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 54(0D8h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 55(0DCh) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 56(0E0h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 57(0E4h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 58(0E8h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 59(0ECh) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 60(0F0h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 61(0F4h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 62(0F8h) (Unassigned, Reserved) */
	.dc.l	ExceptionHandler	/* 63(0FCh) - */

ROMHeader:
	.ascii	"SEGA MEGA DRIVE "	/* 100h: Console Name (16) */
	.ascii	"(C)HENYAPENTE 20"	/* 110h: Copyright Information (16) */
	/* 120h: Domestic Name (48) */
	.ascii	"SAMPLE PROGRAM                                  "
	/* 150h: Overseas Name (48) */
	.ascii	"SAMPLE PROGRAM                                  "
	.ascii	"GM 00000000-00"	/* 180h: Serial Number (2, 12) */
	.dc.w	0x0000			/* 18Eh: Checksum (2) */
	.ascii	"JD              "	/* 190h: I/O Support (16) */
	.dc.l	0x00000000		/* 1A0h: ROM Start Address (4) */
	.dc.l	0x00100000		/* 1A4h: ROM End Address (4) */
	.dc.l	0x00FF0000		/* 1A8h: Start of Backup RAM (4) */
	.dc.l	0x00FFFFFF		/* 1ACh: End of Backup RAM (4) */
	.ascii	"  "			/* 1B0h: "RA" for save ram (2) */
	/* 1B2h: 0xF820 for save ram on odd bytes (2) */
	.dc.w	0x0000
	/* 1B4h: SRAM start address - normally 0x200001 (4) */
	.dc.l	0x00200000
	/* 1B8h: SRAM end address - start + 2*sram_size (4) */
	.dc.l	0x002001FF
	/* 1BCh: Modem Support (12) */
	.ascii	"            "
	/* 1C8h: Memo (40) */
	.ascii	"DEMONSTRATION PROGRAM                   "
	.ascii	"JUE             "	/* 1F0h: Country Support (16) */

ExceptionHandler:
	jmp.s	.

EntryPoint:
	/*move.w	#0x2700, %sr*/		/* Disable interupts */

	/* Check Version Number & Write TMSS */
	move.b	0x00A10001, %d0
	andi.b	#0x0F, %d0
	beq.s	SkipSecurityCheck
	move.l	#0x53454741, 0x00A14000
SkipSecurityCheck:
	move.w	0x00C00004, %d0		/* Check VDP */

	/* Init VDP */
	lea	InitialVDPRegisterSettings, %a0
	move.w	#0x18-1, %d0
	move.w	#0x8000, %d1
_Copy:
	move.b	(%a0)+, %d1
	move.w	%d1, 0x00C00004
	addi.w	#0x0100, %d1
	dbra	%d0, _Copy

	/* Clear CRAM */
	moveq.l	#0x0, %d0		/* clear d0 */
	move.l	#0xC0000000, 0xC00004	/* Set VDP to CRAM write */
	moveq.l	#0x3F, %d7		/* clear the CRAM */
ClearCRAM:
	move.w	%d0, 0xC00000		/* write 0 to the data port */
	dbf	%d7, ClearCRAM		/* clear the cram */

	/*move.w	#0x2300, %sr*/		/* Enable interrupts */

	/* Main */

	/* Init Palette */
	move.l	#0xC0000000, 0xC00004
	lea	Palette, %a0
	move.l	#0x07, %d0
_Loop:
	move.l	(%a0)+, 0x00C00000
	dbra	%d0, _Loop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	Characters, %a0
	move.w	#(8*16)-1, %d0
_ChLoop:
	move.l	(%a0)+, 0x00C00000
	dbra	%d0, _ChLoop

	/* Print hello */
	/* 0xC000+(((0x04*0x40)+0x08)*2) = 0xC210 */
	move.l	#(0x40000000)|((0xC210)&0x3FFF)<<16|(0xC210)>>14, 0x00C00004
	move.w	#0x0008, 0x00C00000	/* こ */
	move.w	#0x0009, 0x00C00000	/* ん */
	move.w	#0x000A, 0x00C00000	/* に */
	move.w	#0x000B, 0x00C00000	/* ち */
	move.w	#0x000C, 0x00C00000	/* は */
	move.w	#0x0000, 0x00C00000	/*   */
	move.w	#0x000D, 0x00C00000	/* せ */
	move.w	#0x000E, 0x00C00000	/* か */
	move.w	#0x000F, 0x00C00000	/* い */

	jmp.s	.

InitialVDPRegisterSettings:
	dc.b	0x14			/* 00: Mode Register 1 */
	dc.b	0x74			/* 01: Vert. interrupt on, display on, DMA on, V28 mode (28 cells vertically), + bit 2 */
	dc.b	0x30			/* 02: Pattern table for Scroll Plane A at 0xC000 (bits 3-5) */
	dc.b	0x00			/* 03: Pattern table for Window Plane at 0x10000 (bits 1-5) */
	dc.b	0x07			/* 04: Pattern table for Scroll Plane B at 0xA000 (bits 0-2) */
	dc.b	0x78			/* 05: Sprite table at 0xE000 (bits 0-6) */
	dc.b	0x00			/* 06: Unused */
	dc.b	0x0F			/* 07: Background color - bits 0-3 = color, bits 4-5 = palette */
	dc.b	0x00			/* 08: Unused */
	dc.b	0x00			/* 09: Unused */
	dc.b	0x08			/* 10: Frequency of Horiz. interrupt in Rasters (number of lines travelled by the beam) */
	dc.b	0x00			/* 11: External interrupts on, V/H scrolling on */
	dc.b	0x81			/* 12: Shadows and highlights off, interlace off, H40 mode (40 cells horizontally) */
	dc.b	0x3F			/* 13: Horiz. scroll table at 0xD000 (bits 0-5) */
	dc.b	0x00			/* 14: Unused */
	dc.b	0x02			/* 15: Autoincrement off */
	dc.b	0x01			/* 16: Vert. scroll 32, Horiz. scroll 64 */
	dc.b	0x00			/* 17: Window Plane X pos 0 left (pos in bits 0-4, left/right in bit 7) */
	dc.b	0x00			/* 18: Window Plane Y pos 0 up (pos in bits 0-4, up/down in bit 7) */
	dc.b	0xFF			/* 19: DMA length lo byte */
	dc.b	0xFF			/* 20: DMA length hi byte */
	dc.b	0x00			/* 21: DMA source address lo byte */
	dc.b	0x00			/* 22: DMA source address mid byte */
	dc.b	0x80			/* 23: DMA source address hi byte, memory-to-VRAM mode (bits 6-7) */

Palette:
	dc.w	0x0000			/* Color 0 - Transparent */
	dc.w	0x000E			/* Color 1 - Red */
	dc.w	0x00E0			/* Color 2 - Green */
	dc.w	0x0E00			/* Color 3 - Blue */
	dc.w	0x0000			/* Color 4 - Black */
	dc.w	0x0EEE			/* Color 5 - White */
	dc.w	0x00EE			/* Color 6 - Yellow */
	dc.w	0x008E			/* Color 7 - Orange */
	dc.w	0x0E0E			/* Color 8 - Pink */
	dc.w	0x0808			/* Color 9 - Purple */
	dc.w	0x0444			/* Color A - Dark grey */
	dc.w	0x0888			/* Color B - Light grey */
	dc.w	0x0EE0			/* Color C - Turquoise */
	dc.w	0x000A			/* Color D - Maroon */
	dc.w	0x0600			/* Color E - Navy blue */
	dc.w	0x0060			/* Color F - Dark green */

Characters:
	dc.l	0x00000000		/* Character 0 - SPC */
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x55000550		/* Character 1 - H */
	dc.l	0x55000550
	dc.l	0x55000550
	dc.l	0x55555550
	dc.l	0x55000550
	dc.l	0x55000550
	dc.l	0x55000550
	dc.l	0x00000000

	dc.l	0x11111110		/* Character 2 - E */
	dc.l	0x11000000
	dc.l	0x11000000
	dc.l	0x11111110
	dc.l	0x11000000
	dc.l	0x11000000
	dc.l	0x11111110
	dc.l	0x00000000

	dc.l	0x11000000		/* Character 3 - L */
	dc.l	0x11000000
	dc.l	0x11000000
	dc.l	0x11000000
	dc.l	0x11000000
	dc.l	0x11111110
	dc.l	0x11111110
	dc.l	0x00000000

	dc.l	0x01111100		/* Character 4 - O */
	dc.l	0x11101110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11101110
	dc.l	0x01111100
	dc.l	0x00000000

	dc.l	0x11000110		/* Character 5 - W */
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11010110
	dc.l	0x11101110
	dc.l	0x11000110
	dc.l	0x00000000

	dc.l	0x11111100		/* Character 6 - R */
	dc.l	0x11000110
	dc.l	0x11001100
	dc.l	0x11111100
	dc.l	0x11001110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x00000000

	dc.l	0x11111000		/* Character 7 - D */
	dc.l	0x11001110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11000110
	dc.l	0x11001110
	dc.l	0x11111000
	dc.l	0x00000000

	dc.l	0x05555550		/* Character 8 - こ */
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x05000000
	dc.l	0x50000000
	dc.l	0x50000000
	dc.l	0x05555550
	dc.l	0x00000000

	dc.l	0x00550000		/* Character 9 - ん */
	dc.l	0x00500000
	dc.l	0x05500000
	dc.l	0x05550000
	dc.l	0x55050000
	dc.l	0x50005050
	dc.l	0x50005550
	dc.l	0x00000000

	dc.l	0x50000000		/* Character A - に */
	dc.l	0x50055550
	dc.l	0x50000000
	dc.l	0x50000000
	dc.l	0x50050000
	dc.l	0x50500000
	dc.l	0x50055550
	dc.l	0x00000000

	dc.l	0x00500000		/* Character B - ち */
	dc.l	0x55555550
	dc.l	0x05000000
	dc.l	0x05555500
	dc.l	0x05000050
	dc.l	0x00000050
	dc.l	0x05555500
	dc.l	0x00000000

	dc.l	0x50005000		/* Character C - は */
	dc.l	0x50555500
	dc.l	0x50005000
	dc.l	0x50055000
	dc.l	0x50505500
	dc.l	0x50505050
	dc.l	0x50050000
	dc.l	0x00000000

	dc.l	0x05000500		/* Character D - せ */
	dc.l	0x55555550
	dc.l	0x05000500
	dc.l	0x05000500
	dc.l	0x05055500
	dc.l	0x05000000
	dc.l	0x00555500
	dc.l	0x00000000

	dc.l	0x00500000		/* Character E - か */
	dc.l	0x05000500
	dc.l	0x55555050
	dc.l	0x05005050
	dc.l	0x05005050
	dc.l	0x50005050
	dc.l	0x50555000
	dc.l	0x00000000

	dc.l	0x50000500		/* Character F - い */
	dc.l	0x50000500
	dc.l	0x50000050
	dc.l	0x50000050
	dc.l	0x50000050
	dc.l	0x50050050
	dc.l	0x05550000
	dc.l	0x00000000
