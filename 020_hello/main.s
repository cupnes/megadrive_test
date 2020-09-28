	.text

exception_vector:
	.dc.l	0x00000000		/* 00(000h) Reset: Initial SSP */
	.dc.l	entry_point		/* 01(004h) Reset: Initial PC */
	.dc.l	exception_handler	/* 02(008h) Bus Error */
	.dc.l	exception_handler	/* 03(00Ch) Address Error */
	.dc.l	exception_handler	/* 04(010h) Illegal Instruction */
	.dc.l	exception_handler	/* 05(014h) Zero Divide */
	.dc.l	exception_handler	/* 06(018h) CHK Instruction */
	.dc.l	exception_handler	/* 07(01Ch) TRAPV Instruction */
	.dc.l	exception_handler	/* 08(020h) Privilege Violation */
	.dc.l	exception_handler	/* 09(024h) Trace */
	.dc.l	exception_handler	/* 10(028h) Line 1010 Emulator */
	.dc.l	exception_handler	/* 11(02Ch) Line 1111 Emulator */
	.dc.l	exception_handler	/* 12(030h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 13(034h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 14(038h) Format Error */
	.dc.l	exception_handler	/* 15(03Ch) Uninitialized Interrupt Vector */
	.dc.l	exception_handler	/* 16(040h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 17(044h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 18(048h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 19(04Ch) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 20(050h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 21(054h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 22(058h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 23(05Ch) - */
	.dc.l	exception_handler	/* 24(060h) Spurious Interrupt */
	.dc.l	exception_handler	/* 25(064h) Level 1 Interrupt Autovector */
	.dc.l	exception_handler	/* 26(068h) Level 2 Interrupt Autovector */
	.dc.l	exception_handler	/* 27(06Ch) Level 3 Interrupt Autovector */
	.dc.l	exception_handler	/* 28(070h) Level 4 Interrupt Autovector */
	.dc.l	exception_handler	/* 29(074h) Level 5 Interrupt Autovector */
	.dc.l	exception_handler	/* 30(078h) Level 6 Interrupt Autovector */
	.dc.l	exception_handler	/* 31(07Ch) Level 7 Interrupt Autovector */
	.dc.l	exception_handler	/* 32(080h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 33(084h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 34(088h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 35(08Ch) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 36(090h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 37(094h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 38(098h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 39(09Ch) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 40(0A0h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 41(0A4h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 42(0A8h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 43(0ACh) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 44(0B0h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 45(0B4h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 46(0B8h) TRAP Instruction Vector */
	.dc.l	exception_handler	/* 47(0BCh) - */
	.dc.l	exception_handler	/* 48(0C0h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 49(0C4h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 50(0C8h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 51(0CCh) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 52(0D0h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 53(0D4h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 54(0D8h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 55(0DCh) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 56(0E0h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 57(0E4h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 58(0E8h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 59(0ECh) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 60(0F0h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 61(0F4h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 62(0F8h) (Unassigned, Reserved) */
	.dc.l	exception_handler	/* 63(0FCh) - */

rom_header:
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

exception_handler:
	jmp	.

entry_point:
	jmp	.
