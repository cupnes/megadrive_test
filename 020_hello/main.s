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
	move.w	#0x2700, %sr		/* Disable interupts */

	/* Check Version Number */
	move.b	0xA10001, %d0
	andi.b	#0x0f, %d0
	beq.s	SkipSecurityCheck
	move.l	#0x53454741, 0xA14000
SkipSecurityCheck:

	/* Clear CRAM */
	moveq.l	#0x0, %d0		/* clear d0 */
	move.l	#0xC0000000, 0xC00004	/* Set VDP to CRAM write */
	moveq.l	#0x3F, %d7		/* clear the CRAM */
ClearCRAM:
	move.w	%d0, 0xC00000		/* write 0 to the data port */
	dbf	%d7, ClearCRAM		/*clear the cram*/

	/*move.w	#0x2300, %sr*/		/* Enable interrupts */
	jmp.s	.
