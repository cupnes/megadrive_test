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

	/* Init GamePad */
	move.b	#0x40, 0x00A10009



	/* Main */

	/* [SLIDE 01] */
	/* Init Palettes */
S01Start:
	move.l	#0xC0000000, 0xC00004
	lea	S01PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S01PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S01PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S01Tiles, %a0
	move.w	#(16*492)-1, %d0
S01TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S01TilesLoop

	/* Draw Image */
	.include "slide01_draw.s"

	move.w	#0xFFF0, %d0
S01Delay:
	dbra.w	%d0, S01Delay

	/* Wait for right button is pressed */
S01WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	andi.b	#0x08, %d0
	bne	S01WaitRBtn



	/* [SLIDE 02] */
	/* Init Palettes */
SIStart:
	move.l	#0xC0000000, 0xC00004
	lea	SIPaletteBG, %a0
	move.l	#(16*3)-1, %d0
SIPaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, SIPaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	SITiles, %a0
	move.w	#(16*1443)-1, %d0
SITilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, SITilesLoop

	/* Draw Image */
	.include "self-intro_draw.s"

	move.w	#0xFFF0, %d0
SIDelay:
	dbra.w	%d0, SIDelay

	/* Wait for left or right button is pressed */
SIWaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S03Start	/* next slide */
	andi.b	#0x04, %d1
	bne	SIWaitRBtn
	jmp	S01Start	/* prev slide */



	/* [SLIDE 03] */
	/* Init Palettes */
S03Start:
	move.l	#0xC0000000, 0xC00004
	lea	S03PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S03PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S03PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S03Tiles, %a0
	move.w	#(16*707)-1, %d0
S03TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S03TilesLoop

	/* Draw Image */
	.include "slide03_draw.s"

	move.w	#0xFFF0, %d0
S03Delay:
	dbra.w	%d0, S03Delay

	/* Wait for left button is pressed */
S03WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S04Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S03WaitRBtn
	jmp	SIStart	/* prev slide */



	/* [SLIDE 04] */
	/* Init Palettes */
S04Start:
	move.l	#0xC0000000, 0xC00004
	lea	S04PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S04PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S04PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S04Tiles, %a0
	move.w	#(16*668)-1, %d0
S04TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S04TilesLoop

	/* Draw Image */
	.include "slide04_draw.s"

	move.w	#0xFFF0, %d0
S04Delay:
	dbra.w	%d0, S04Delay

	/* Wait for left button is pressed */
S04WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S05Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S04WaitRBtn
	jmp	S03Start	/* prev slide */



	/* [SLIDE 05] */
	/* Init Palettes */
S05Start:
	move.l	#0xC0000000, 0xC00004
	lea	S05PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S05PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S05PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S05Tiles, %a0
	move.w	#(16*632)-1, %d0
S05TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S05TilesLoop

	/* Draw Image */
	.include "slide05_draw.s"

	move.w	#0xFFF0, %d0
S05Delay:
	dbra.w	%d0, S05Delay

	/* Wait for left button is pressed */
S05WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S06Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S05WaitRBtn
	jmp	S04Start	/* prev slide */



	/* [SLIDE 06] */
	/* Init Palettes */
S06Start:
	move.l	#0xC0000000, 0xC00004
	lea	S06PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S06PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S06PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S06Tiles, %a0
	move.w	#(16*665)-1, %d0
S06TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S06TilesLoop

	/* Draw Image */
	.include "slide06_draw.s"

	move.w	#0xFFF0, %d0
S06Delay:
	dbra.w	%d0, S06Delay

	/* Wait for left button is pressed */
S06WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S07Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S06WaitRBtn
	jmp	S05Start	/* prev slide */



	/* [SLIDE 07] */
	/* Init Palettes */
S07Start:
	move.l	#0xC0000000, 0xC00004
	lea	S07PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S07PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S07PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S07Tiles, %a0
	move.w	#(16*665)-1, %d0
S07TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S07TilesLoop

	/* Draw Image */
	.include "slide07_draw.s"

	move.w	#0xFFF0, %d0
S07Delay:
	dbra.w	%d0, S07Delay

	/* Wait for left button is pressed */
S07WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S08Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S07WaitRBtn
	jmp	S06Start	/* prev slide */



	/* [SLIDE 08] */
	/* Init Palettes */
S08Start:
	move.l	#0xC0000000, 0xC00004
	lea	S08PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S08PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S08PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S08Tiles, %a0
	move.w	#(16*611)-1, %d0
S08TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S08TilesLoop

	/* Draw Image */
	.include "slide08_draw.s"

	move.w	#0xFFF0, %d0
S08Delay:
	dbra.w	%d0, S08Delay

	/* Wait for left button is pressed */
S08WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S09Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S08WaitRBtn
	jmp	S07Start	/* prev slide */



	/* [SLIDE 09] */
	/* Init Palettes */
S09Start:
	move.l	#0xC0000000, 0xC00004
	lea	S09PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S09PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S09PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S09Tiles, %a0
	move.w	#(16*654)-1, %d0
S09TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S09TilesLoop

	/* Draw Image */
	.include "slide09_draw.s"

	move.w	#0xFFF0, %d0
S09Delay:
	dbra.w	%d0, S09Delay

	/* Wait for left button is pressed */
S09WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S10Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S09WaitRBtn
	jmp	S08Start	/* prev slide */



	/* [SLIDE 10] */
	/* Init Palettes */
S10Start:
	move.l	#0xC0000000, 0xC00004
	lea	S10PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S10PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S10PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S10Tiles, %a0
	move.w	#(16*1007)-1, %d0
S10TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S10TilesLoop

	/* Draw Image */
	.include "slide10_draw.s"

	move.w	#0xFFF0, %d0
S10Delay:
	dbra.w	%d0, S10Delay

	/* Wait for left button is pressed */
S10WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S11Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S10WaitRBtn
	jmp	S09Start	/* prev slide */



	/* [SLIDE 11] */
	/* Init Palettes */
S11Start:
	move.l	#0xC0000000, 0xC00004
	lea	S11PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S11PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S11PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S11Tiles, %a0
	move.w	#(16*507)-1, %d0
S11TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S11TilesLoop

	/* Draw Image */
	.include "slide11_draw.s"

	move.w	#0xFFF0, %d0
S11Delay:
	dbra.w	%d0, S11Delay

	/* Wait for left button is pressed */
S11WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S12Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S11WaitRBtn
	jmp	S10Start	/* prev slide */



	/* [SLIDE 12] */
	/* Init Palettes */
S12Start:
	move.l	#0xC0000000, 0xC00004
	lea	S12PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S12PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S12PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S12Tiles, %a0
	move.w	#(16*1002)-1, %d0
S12TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S12TilesLoop

	/* Draw Image */
	.include "slide12_draw.s"

	move.w	#0xFFF0, %d0
S12Delay:
	dbra.w	%d0, S12Delay

	/* Wait for left button is pressed */
S12WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S13Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S12WaitRBtn
	jmp	S11Start	/* prev slide */



	/* [SLIDE 13] */
	/* Init Palettes */
S13Start:
	move.l	#0xC0000000, 0xC00004
	lea	S13PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S13PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S13PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S13Tiles, %a0
	move.w	#(16*729)-1, %d0
S13TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S13TilesLoop

	/* Draw Image */
	.include "slide13_draw.s"

	move.w	#0xFFF0, %d0
S13Delay:
	dbra.w	%d0, S13Delay

	/* Wait for left button is pressed */
S13WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	move.b	%d0, %d1
	andi.b	#0x08, %d0
	beq	S14Start	/* next slide */
	andi.b	#0x04, %d1
	bne	S13WaitRBtn
	jmp	S12Start	/* prev slide */



	/* [SLIDE 14] */
	/* Init Palettes */
S14Start:
	move.l	#0xC0000000, 0xC00004
	lea	S14PaletteBG, %a0
	move.l	#(16*3)-1, %d0
S14PaletteLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S14PaletteLoop

	/* Init Tiles */
	move.l	#0x40000000, 0x00C00004
	lea	S14Tiles, %a0
	move.w	#(16*275)-1, %d0
S14TilesLoop:
	move.w	(%a0)+, 0x00C00000
	dbra	%d0, S14TilesLoop

	/* Draw Image */
	.include "slide14_draw.s"

	move.w	#0xFFF0, %d0
S14Delay:
	dbra.w	%d0, S14Delay

	/* Wait for left button is pressed */
S14WaitRBtn:
	move.b	#0x40, 0x00A10003
	nop
	nop
	move.b	0x00A10003, %d0
	andi.b	#0x04, %d0
	bne	S14WaitRBtn
	jmp	S13Start	/* prev slide */

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

	.include "slide01_palettes.s"
	.include "slide01_tiles.s"
	.include "self-intro_palettes.s"
	.include "self-intro_tiles.s"
	.include "slide03_palettes.s"
	.include "slide03_tiles.s"
	.include "slide04_palettes.s"
	.include "slide04_tiles.s"
	.include "slide05_palettes.s"
	.include "slide05_tiles.s"
	.include "slide06_palettes.s"
	.include "slide06_tiles.s"
	.include "slide07_palettes.s"
	.include "slide07_tiles.s"
	.include "slide08_palettes.s"
	.include "slide08_tiles.s"
	.include "slide09_palettes.s"
	.include "slide09_tiles.s"
	.include "slide10_palettes.s"
	.include "slide10_tiles.s"
	.include "slide11_palettes.s"
	.include "slide11_tiles.s"
	.include "slide12_palettes.s"
	.include "slide12_tiles.s"
	.include "slide13_palettes.s"
	.include "slide13_tiles.s"
	.include "slide14_palettes.s"
	.include "slide14_tiles.s"
