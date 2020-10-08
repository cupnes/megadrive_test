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

	/* Clear VRAM */
	move.w	#0x0000, %d0
	move.l	#0x40000000, 0x00C00004
	move.w	#(0x10000/2)-1, %d7
ClearVRAM:
	move.w	%d0, 0x00C00000
	dbf	%d7, ClearVRAM

	/* Main */

	/* Init Palettes */
	move.l	#0xC0000000, 0xC00004
	lea	PaletteBG, %a0
	move.l	#(16*3)-1, %d0
_Loop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, _Loop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	Tiles, %a0
	/*move.w	#(16*1501)-1, %d0*/	/* If the number of tiles changes, change the "1501" part. */
	move.w	#(16*1443)-1, %d0
_ChLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, _ChLoop

	/* Draw Image */
	/*.include "draw.s"*/
	.include "self-intro_draw.s"

	/* Wait for the right button is pressed */
WaitRBtn:
	move.b	#0x40, %d0
	move.b	%d0, 0x00A10009
	move.b	%d0, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	andi.b	#0x08, %d0
	bne	WaitRBtn

	jmp.s	.

InitialVDPRegisterSettings:
	dc.b	0x04			/* 00: Mode Register 1 */
	dc.b	0x44			/* 01: Vert. interrupt on, display on, DMA on, V28 mode (28 cells vertically), + bit 2 */
	dc.b	0x38			/* 02: Pattern table for Scroll Plane A at 0xE000 (bits 3-5) */
	dc.b	0x3C			/* 03: Pattern table for Window Plane at 0xF000 (bits 1-5) */
	dc.b	0x06			/* 04: Pattern table for Scroll Plane B at 0xC000 (bits 0-2) */
	dc.b	0x78			/* 05: Sprite table at 0xF000 (bits 0-6) */
	dc.b	0x00			/* 06: Unused */
	dc.b	0x01			/* 07: Background color - bits 0-3 = color, bits 4-5 = palette */
	dc.b	0x00			/* 08: Unused */
	dc.b	0x00			/* 09: Unused */
	dc.b	0x08			/* 10: Frequency of Horiz. interrupt in Rasters (number of lines travelled by the beam) */
	dc.b	0x00			/* 11: External interrupts on, V/H scrolling on */
	dc.b	0x81			/* 12: Shadows and highlights off, interlace off, H40 mode (40 cells horizontally) */
	dc.b	0x3C			/* 13: Horiz. scroll table at 0xF000 (bits 0-5) */
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

	/*.include "palettes.s"
	.include "tiles.s"*/
	.include "self-intro_palettes.s"
	.include "self-intro_tiles.s"
