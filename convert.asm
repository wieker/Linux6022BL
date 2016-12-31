;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 21 2016) (Linux)
; This file was generated Wed Dec 28 02:55:09 2016
;--------------------------------------------------------
	.module convert
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_voltage_PARM_2
	.globl _samplerates
	.globl _main_init
	.globl _select_interface
	.globl _start_sampling
	.globl _stop_sampling
	.globl _clear_fifo
	.globl _set_numchannels
	.globl _set_voltage
	.globl _main
	.globl _EIP
	.globl _B
	.globl _EIE
	.globl _ACC
	.globl _EICON
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _SBUF1
	.globl _SCON1
	.globl _GPIFSGLDATLNOX
	.globl _GPIFSGLDATLX
	.globl _GPIFSGLDATH
	.globl _GPIFTRIG
	.globl _EP01STAT
	.globl _IP
	.globl _OEE
	.globl _OED
	.globl _OEC
	.globl _OEB
	.globl _OEA
	.globl _IOE
	.globl _IOD
	.globl _AUTOPTRSETUP
	.globl _EP68FIFOFLGS
	.globl _EP24FIFOFLGS
	.globl _EP2468STAT
	.globl _IE
	.globl _INT4CLR
	.globl _INT2CLR
	.globl _IOC
	.globl _AUTODAT2
	.globl _AUTOPTRL2
	.globl _AUTOPTRH2
	.globl _AUTODAT1
	.globl _APTR1L
	.globl _APTR1H
	.globl _SBU
	.globl _SCO
	.globl _MPA
	.globl _EXIF
	.globl _IOB
	.globl _SPC_
	.globl _CKCO
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _IOA
	.globl _EP8FIFOBUF
	.globl _EP6FIFOBUF
	.globl _EP4FIFOBUF
	.globl _EP2FIFOBUF
	.globl _EP1INBUF
	.globl _EP1OUTBUF
	.globl _EP0BUF
	.globl _CT4
	.globl _CT3
	.globl _CT2
	.globl _CT1
	.globl _USBTEST
	.globl _TESTCFG
	.globl _DBUG
	.globl _UDMACRCQUAL
	.globl _UDMACRCL
	.globl _UDMACRCH
	.globl _GPIFHOLDAMOUNT
	.globl _FLOWSTBHPERIOD
	.globl _FLOWSTBEDGE
	.globl _FLOWSTB
	.globl _FLOWHOLDOFF
	.globl _FLOWEQ1CTL
	.globl _FLOWEQ0CTL
	.globl _FLOWLOGIC
	.globl _FLOWSTATE
	.globl _GPIFABORT
	.globl _GPIFREADYSTAT
	.globl _GPIFREADYCFG
	.globl _XGPIFSGLDATLNOX
	.globl _XGPIFSGLDATLX
	.globl _XGPIFSGLDATH
	.globl _EP8GPIFTRIG
	.globl _EP8GPIFPFSTOP
	.globl _EP8GPIFFLGSEL
	.globl _EP6GPIFTRIG
	.globl _EP6GPIFPFSTOP
	.globl _EP6GPIFFLGSEL
	.globl _EP4GPIFTRIG
	.globl _EP4GPIFPFSTOP
	.globl _EP4GPIFFLGSEL
	.globl _EP2GPIFTRIG
	.globl _EP2GPIFPFSTOP
	.globl _EP2GPIFFLGSEL
	.globl _GPIFTCB0
	.globl _GPIFTCB1
	.globl _GPIFTCB2
	.globl _GPIFTCB3
	.globl _GPIFADRL
	.globl _GPIFADRH
	.globl _GPIFCTLCFG
	.globl _GPIFIDLECTL
	.globl _GPIFIDLECS
	.globl _GPIFWFSELECT
	.globl _SETUPDAT
	.globl _SUDPTRCTL
	.globl _SUDPTRL
	.globl _SUDPTRH
	.globl _EP8FIFOBCL
	.globl _EP8FIFOBCH
	.globl _EP6FIFOBCL
	.globl _EP6FIFOBCH
	.globl _EP4FIFOBCL
	.globl _EP4FIFOBCH
	.globl _EP2FIFOBCL
	.globl _EP2FIFOBCH
	.globl _EP8FIFOFLGS
	.globl _EP6FIFOFLGS
	.globl _EP4FIFOFLGS
	.globl _EP2FIFOFLGS
	.globl _EP8CS
	.globl _EP6CS
	.globl _EP4CS
	.globl _EP2CS
	.globl _EP1INCS
	.globl _EP1OUTCS
	.globl _EP0CS
	.globl _EP8BCL
	.globl _EP8BCH
	.globl _EP6BCL
	.globl _EP6BCH
	.globl _EP4BCL
	.globl _EP4BCH
	.globl _EP2BCL
	.globl _EP2BCH
	.globl _EP1INBC
	.globl _EP1OUTBC
	.globl _EP0BCL
	.globl _EP0BCH
	.globl _FNADDR
	.globl _MICROFRAME
	.globl _USBFRAMEL
	.globl _USBFRAMEH
	.globl _TOGCTL
	.globl _WAKEUPCS
	.globl _SUSPEND
	.globl _USBCS
	.globl _XAUTODAT2
	.globl _XAUTODAT1
	.globl _I2CTL
	.globl _I2DAT
	.globl _I2CS
	.globl _PORTECFG
	.globl _PORTCCFG
	.globl _PORTACFG
	.globl _INTSETUP
	.globl _INT4IVEC
	.globl _INT2IVEC
	.globl _CLRERRCNT
	.globl _ERRCNTLIM
	.globl _USBERRIRQ
	.globl _USBERRIE
	.globl _GPIFIRQ
	.globl _GPIFIE
	.globl _EPIRQ
	.globl _EPIE
	.globl _USBIRQ
	.globl _USBIE
	.globl _NAKIRQ
	.globl _NAKIE
	.globl _IBNIRQ
	.globl _IBNIE
	.globl _EP8FIFOIRQ
	.globl _EP8FIFOIE
	.globl _EP6FIFOIRQ
	.globl _EP6FIFOIE
	.globl _EP4FIFOIRQ
	.globl _EP4FIFOIE
	.globl _EP2FIFOIRQ
	.globl _EP2FIFOIE
	.globl _OUTPKTEND
	.globl _INPKTEND
	.globl _EP8ISOINPKTS
	.globl _EP6ISOINPKTS
	.globl _EP4ISOINPKTS
	.globl _EP2ISOINPKTS
	.globl _EP8FIFOPFL
	.globl _EP8FIFOPFH
	.globl _EP6FIFOPFL
	.globl _EP6FIFOPFH
	.globl _EP4FIFOPFL
	.globl _EP4FIFOPFH
	.globl _EP2FIFOPFL
	.globl _EP2FIFOPFH
	.globl _EP8AUTOINLENL
	.globl _EP8AUTOINLENH
	.globl _EP6AUTOINLENL
	.globl _EP6AUTOINLENH
	.globl _EP4AUTOINLENL
	.globl _EP4AUTOINLENH
	.globl _EP2AUTOINLENL
	.globl _EP2AUTOINLENH
	.globl _EP8FIFOCFG
	.globl _EP6FIFOCFG
	.globl _EP4FIFOCFG
	.globl _EP2FIFOCFG
	.globl _EP8CFG
	.globl _EP6CFG
	.globl _EP4CFG
	.globl _EP2CFG
	.globl _EP1INCFG
	.globl _EP1OUTCFG
	.globl _REVCTL
	.globl _REVID
	.globl _FIFOPINPOLAR
	.globl _UART230
	.globl _BPADDRL
	.globl _BPADDRH
	.globl _BREAKPT
	.globl _FIFORESET
	.globl _PINFLAGSCD
	.globl _PINFLAGSAB
	.globl _IFCONFIG
	.globl _CPUCS
	.globl _RES_WAVEDATA_END
	.globl _GPIF_WAVE_DATA
	.globl _ledcounter
	.globl _altiface
	.globl _set_samplerate
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_IOA	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCO	=	0x008e
_SPC_	=	0x008f
_IOB	=	0x0090
_EXIF	=	0x0091
_MPA	=	0x0092
_SCO	=	0x0098
_SBU	=	0x0099
_APTR1H	=	0x009a
_APTR1L	=	0x009b
_AUTODAT1	=	0x009c
_AUTOPTRH2	=	0x009d
_AUTOPTRL2	=	0x009e
_AUTODAT2	=	0x009f
_IOC	=	0x00a0
_INT2CLR	=	0x00a1
_INT4CLR	=	0x00a2
_IE	=	0x00a8
_EP2468STAT	=	0x00aa
_EP24FIFOFLGS	=	0x00ab
_EP68FIFOFLGS	=	0x00ac
_AUTOPTRSETUP	=	0x00af
_IOD	=	0x00b0
_IOE	=	0x00b1
_OEA	=	0x00b2
_OEB	=	0x00b3
_OEC	=	0x00b4
_OED	=	0x00b5
_OEE	=	0x00b6
_IP	=	0x00b8
_EP01STAT	=	0x00ba
_GPIFTRIG	=	0x00bb
_GPIFSGLDATH	=	0x00bd
_GPIFSGLDATLX	=	0x00be
_GPIFSGLDATLNOX	=	0x00bf
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_EICON	=	0x00d8
_ACC	=	0x00e0
_EIE	=	0x00e8
_B	=	0x00f0
_EIP	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_altiface::
	.ds 1
_ledcounter::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_set_voltage_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_GPIF_WAVE_DATA	=	0xe400
_RES_WAVEDATA_END	=	0xe480
_CPUCS	=	0xe600
_IFCONFIG	=	0xe601
_PINFLAGSAB	=	0xe602
_PINFLAGSCD	=	0xe603
_FIFORESET	=	0xe604
_BREAKPT	=	0xe605
_BPADDRH	=	0xe606
_BPADDRL	=	0xe607
_UART230	=	0xe608
_FIFOPINPOLAR	=	0xe609
_REVID	=	0xe60a
_REVCTL	=	0xe60b
_EP1OUTCFG	=	0xe610
_EP1INCFG	=	0xe611
_EP2CFG	=	0xe612
_EP4CFG	=	0xe613
_EP6CFG	=	0xe614
_EP8CFG	=	0xe615
_EP2FIFOCFG	=	0xe618
_EP4FIFOCFG	=	0xe619
_EP6FIFOCFG	=	0xe61a
_EP8FIFOCFG	=	0xe61b
_EP2AUTOINLENH	=	0xe620
_EP2AUTOINLENL	=	0xe621
_EP4AUTOINLENH	=	0xe622
_EP4AUTOINLENL	=	0xe623
_EP6AUTOINLENH	=	0xe624
_EP6AUTOINLENL	=	0xe625
_EP8AUTOINLENH	=	0xe626
_EP8AUTOINLENL	=	0xe627
_EP2FIFOPFH	=	0xe630
_EP2FIFOPFL	=	0xe631
_EP4FIFOPFH	=	0xe632
_EP4FIFOPFL	=	0xe633
_EP6FIFOPFH	=	0xe634
_EP6FIFOPFL	=	0xe635
_EP8FIFOPFH	=	0xe636
_EP8FIFOPFL	=	0xe637
_EP2ISOINPKTS	=	0xe640
_EP4ISOINPKTS	=	0xe641
_EP6ISOINPKTS	=	0xe642
_EP8ISOINPKTS	=	0xe643
_INPKTEND	=	0xe648
_OUTPKTEND	=	0xe649
_EP2FIFOIE	=	0xe650
_EP2FIFOIRQ	=	0xe651
_EP4FIFOIE	=	0xe652
_EP4FIFOIRQ	=	0xe653
_EP6FIFOIE	=	0xe654
_EP6FIFOIRQ	=	0xe655
_EP8FIFOIE	=	0xe656
_EP8FIFOIRQ	=	0xe657
_IBNIE	=	0xe658
_IBNIRQ	=	0xe659
_NAKIE	=	0xe65a
_NAKIRQ	=	0xe65b
_USBIE	=	0xe65c
_USBIRQ	=	0xe65d
_EPIE	=	0xe65e
_EPIRQ	=	0xe65f
_GPIFIE	=	0xe660
_GPIFIRQ	=	0xe661
_USBERRIE	=	0xe662
_USBERRIRQ	=	0xe663
_ERRCNTLIM	=	0xe664
_CLRERRCNT	=	0xe665
_INT2IVEC	=	0xe666
_INT4IVEC	=	0xe667
_INTSETUP	=	0xe668
_PORTACFG	=	0xe670
_PORTCCFG	=	0xe671
_PORTECFG	=	0xe672
_I2CS	=	0xe678
_I2DAT	=	0xe679
_I2CTL	=	0xe67a
_XAUTODAT1	=	0xe67b
_XAUTODAT2	=	0xe67c
_USBCS	=	0xe680
_SUSPEND	=	0xe681
_WAKEUPCS	=	0xe682
_TOGCTL	=	0xe683
_USBFRAMEH	=	0xe684
_USBFRAMEL	=	0xe685
_MICROFRAME	=	0xe686
_FNADDR	=	0xe687
_EP0BCH	=	0xe68a
_EP0BCL	=	0xe68b
_EP1OUTBC	=	0xe68d
_EP1INBC	=	0xe68f
_EP2BCH	=	0xe690
_EP2BCL	=	0xe691
_EP4BCH	=	0xe694
_EP4BCL	=	0xe695
_EP6BCH	=	0xe698
_EP6BCL	=	0xe699
_EP8BCH	=	0xe69c
_EP8BCL	=	0xe69d
_EP0CS	=	0xe6a0
_EP1OUTCS	=	0xe6a1
_EP1INCS	=	0xe6a2
_EP2CS	=	0xe6a3
_EP4CS	=	0xe6a4
_EP6CS	=	0xe6a5
_EP8CS	=	0xe6a6
_EP2FIFOFLGS	=	0xe6a7
_EP4FIFOFLGS	=	0xe6a8
_EP6FIFOFLGS	=	0xe6a9
_EP8FIFOFLGS	=	0xe6aa
_EP2FIFOBCH	=	0xe6ab
_EP2FIFOBCL	=	0xe6ac
_EP4FIFOBCH	=	0xe6ad
_EP4FIFOBCL	=	0xe6ae
_EP6FIFOBCH	=	0xe6af
_EP6FIFOBCL	=	0xe6b0
_EP8FIFOBCH	=	0xe6b1
_EP8FIFOBCL	=	0xe6b2
_SUDPTRH	=	0xe6b3
_SUDPTRL	=	0xe6b4
_SUDPTRCTL	=	0xe6b5
_SETUPDAT	=	0xe6b8
_GPIFWFSELECT	=	0xe6c0
_GPIFIDLECS	=	0xe6c1
_GPIFIDLECTL	=	0xe6c2
_GPIFCTLCFG	=	0xe6c3
_GPIFADRH	=	0xe6c4
_GPIFADRL	=	0xe6c5
_GPIFTCB3	=	0xe6ce
_GPIFTCB2	=	0xe6cf
_GPIFTCB1	=	0xe6d0
_GPIFTCB0	=	0xe6d1
_EP2GPIFFLGSEL	=	0xe6d2
_EP2GPIFPFSTOP	=	0xe6d3
_EP2GPIFTRIG	=	0xe6d4
_EP4GPIFFLGSEL	=	0xe6da
_EP4GPIFPFSTOP	=	0xe6db
_EP4GPIFTRIG	=	0xe6dc
_EP6GPIFFLGSEL	=	0xe6e2
_EP6GPIFPFSTOP	=	0xe6e3
_EP6GPIFTRIG	=	0xe6e4
_EP8GPIFFLGSEL	=	0xe6ea
_EP8GPIFPFSTOP	=	0xe6eb
_EP8GPIFTRIG	=	0xe6ec
_XGPIFSGLDATH	=	0xe6f0
_XGPIFSGLDATLX	=	0xe6f1
_XGPIFSGLDATLNOX	=	0xe6f2
_GPIFREADYCFG	=	0xe6f3
_GPIFREADYSTAT	=	0xe6f4
_GPIFABORT	=	0xe6f5
_FLOWSTATE	=	0xe6c6
_FLOWLOGIC	=	0xe6c7
_FLOWEQ0CTL	=	0xe6c8
_FLOWEQ1CTL	=	0xe6c9
_FLOWHOLDOFF	=	0xe6ca
_FLOWSTB	=	0xe6cb
_FLOWSTBEDGE	=	0xe6cc
_FLOWSTBHPERIOD	=	0xe6cd
_GPIFHOLDAMOUNT	=	0xe60c
_UDMACRCH	=	0xe67d
_UDMACRCL	=	0xe67e
_UDMACRCQUAL	=	0xe67f
_DBUG	=	0xe6f8
_TESTCFG	=	0xe6f9
_USBTEST	=	0xe6fa
_CT1	=	0xe6fb
_CT2	=	0xe6fc
_CT3	=	0xe6fd
_CT4	=	0xe6fe
_EP0BUF	=	0xe740
_EP1OUTBUF	=	0xe780
_EP1INBUF	=	0xe7c0
_EP2FIFOBUF	=	0xf000
_EP4FIFOBUF	=	0xf400
_EP6FIFOBUF	=	0xf800
_EP8FIFOBUF	=	0xfc00
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	convert.c:66: BYTE altiface = 0; // alt interface
	mov	_altiface,#0x00
;	convert.c:67: WORD ledcounter = 0;
	clr	a
	mov	_ledcounter,a
	mov	(_ledcounter + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	convert.c:33: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	convert.c:35: EP2CFG=0xa2;  // 1010 0010 (bulk OUT, 512 bytes, double-buffered)
	mov	dptr,#_EP2CFG
	mov	a,#0xA2
	movx	@dptr,a
;	convert.c:36: SYNCDELAY;
	nop 
	nop 
	nop 
	nop 
;	convert.c:37: FIFORESET = 0x82;  SYNCDELAY;
	mov	dptr,#_FIFORESET
	mov	a,#0x82
	movx	@dptr,a
	nop 
	nop 
	nop 
	nop 
;	convert.c:38: EP2FIFOCFG = 0x0;
	mov	dptr,#_EP2FIFOCFG
	clr	a
	movx	@dptr,a
;	convert.c:39: SYNCDELAY;
	nop 
	nop 
	nop 
	nop 
;	convert.c:40: OUTPKTEND = 0x82;  SYNCDELAY;
	mov	dptr,#_OUTPKTEND
	mov	a,#0x82
	movx	@dptr,a
	nop 
	nop 
	nop 
	nop 
;	convert.c:41: OUTPKTEND = 0x82;  SYNCDELAY;
	mov	dptr,#_OUTPKTEND
	mov	a,#0x82
	movx	@dptr,a
	nop 
	nop 
	nop 
	nop 
;	convert.c:42: OEC = 0xff;
	mov	_OEC,#0xFF
;	convert.c:43: OEA = 0xff;
	mov	_OEA,#0xFF
;	convert.c:44: IOA = 0xff;
	mov	_IOA,#0xFF
;	convert.c:46: main_init();
	lcall	_main_init
;	convert.c:47: set_samplerate(1);
	mov	dpl,#0x01
	lcall	_set_samplerate
;	convert.c:48: start_sampling();
	lcall	_start_sampling
;	convert.c:49: IOC = IOC & ((IOC + 1) & 0x3);
	mov	a,_IOC
	inc	a
	anl	a,#0x03
	anl	_IOC,a
00104$:
;	convert.c:54: if(!(EP2CS & (1<<2)))
	mov	dptr,#_EP2CS
	movx	a,@dptr
	mov	r7,a
	jb	acc.2,00102$
;	convert.c:56: IOC = (IOC + 1) & 0x3;
	mov	a,_IOC
	inc	a
	anl	a,#0x03
	mov	_IOC,a
;	convert.c:57: OUTPKTEND = 0x82;  SYNCDELAY;
	mov	dptr,#_OUTPKTEND
	mov	a,#0x82
	movx	@dptr,a
	nop 
	nop 
	nop 
	nop 
00102$:
;	convert.c:59: SUSPEND = 0x01;
	mov	dptr,#_SUSPEND
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'set_voltage'
;------------------------------------------------------------
;val                       Allocated with name '_set_voltage_PARM_2'
;channel                   Allocated to registers 
;bits                      Allocated to registers 
;mask                      Allocated to registers 
;------------------------------------------------------------
;	convert.c:88: BYTE set_voltage(BYTE channel, BYTE val)
;	-----------------------------------------
;	 function set_voltage
;	-----------------------------------------
_set_voltage:
;	convert.c:91: switch (val) {
	mov	a,#0x01
	cjne	a,_set_voltage_PARM_2,00124$
	sjmp	00110$
00124$:
	mov	a,#0x02
	cjne	a,_set_voltage_PARM_2,00125$
	sjmp	00110$
00125$:
	mov	a,#0x05
	cjne	a,_set_voltage_PARM_2,00126$
	sjmp	00110$
00126$:
	mov	a,#0x0A
	cjne	a,_set_voltage_PARM_2,00127$
	sjmp	00110$
00127$:
;	convert.c:105: return 0;
	mov	dpl,#0x00
;	convert.c:108: mask = channel ? 0xe0 : 0x1c;
	ret
00110$:
;	convert.c:110: IOA = 0x80 + (0x00);
	mov	_IOA,#0x80
;	convert.c:111: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_numchannels'
;------------------------------------------------------------
;numchannels               Allocated to registers r7 
;fifocfg                   Allocated to registers 
;------------------------------------------------------------
;	convert.c:114: BYTE set_numchannels(BYTE numchannels)
;	-----------------------------------------
;	 function set_numchannels
;	-----------------------------------------
_set_numchannels:
	mov	r7,dpl
;	convert.c:116: if (numchannels == 1 || numchannels == 2) {
	cjne	r7,#0x01,00109$
	sjmp	00101$
00109$:
	cjne	r7,#0x02,00102$
00101$:
;	convert.c:117: BYTE fifocfg = 7 + numchannels;
	mov	dptr,#_EP6FIFOCFG
	mov	a,#0x07
	add	a,r7
	movx	@dptr,a
;	convert.c:119: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	convert.c:121: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_fifo'
;------------------------------------------------------------
;	convert.c:124: void clear_fifo()
;	-----------------------------------------
;	 function clear_fifo
;	-----------------------------------------
_clear_fifo:
;	convert.c:126: GPIFABORT = 0xff;
	mov	dptr,#_GPIFABORT
	mov	a,#0xFF
	movx	@dptr,a
;	convert.c:127: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:128: FIFORESET = 0x80;
	mov	dptr,#_FIFORESET
	mov	a,#0x80
	movx	@dptr,a
;	convert.c:129: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:131: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:132: FIFORESET = 0x86;
	mov	dptr,#_FIFORESET
	mov	a,#0x86
	movx	@dptr,a
;	convert.c:133: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:134: FIFORESET = 0;
	mov	dptr,#_FIFORESET
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_sampling'
;------------------------------------------------------------
;	convert.c:137: void stop_sampling()
;	-----------------------------------------
;	 function stop_sampling
;	-----------------------------------------
_stop_sampling:
;	convert.c:139: GPIFABORT = 0xff;
	mov	dptr,#_GPIFABORT
	mov	a,#0xFF
	movx	@dptr,a
;	convert.c:140: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:141: if (altiface == 0) {
	mov	a,_altiface
	jnz	00102$
;	convert.c:142: INPKTEND = 6;
	mov	dptr,#_INPKTEND
	mov	a,#0x06
	movx	@dptr,a
	ret
00102$:
;	convert.c:144: INPKTEND = 2;
	mov	dptr,#_INPKTEND
	mov	a,#0x02
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_sampling'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	convert.c:148: void start_sampling()
;	-----------------------------------------
;	 function start_sampling
;	-----------------------------------------
_start_sampling:
;	convert.c:151: clear_fifo();
	lcall	_clear_fifo
;	convert.c:153: for (i = 0; i < 1000; i++);
	mov	r6,#0xE8
	mov	r7,#0x03
00110$:
	mov	a,r6
	add	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00110$
;	convert.c:154: while (!(GPIFTRIG & 0x80)) {
00102$:
	mov	a,_GPIFTRIG
	jnb	acc.7,00102$
;	convert.c:157: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:158: GPIFTCB1 = 0x28;
	mov	dptr,#_GPIFTCB1
	mov	a,#0x28
	movx	@dptr,a
;	convert.c:159: SYNCDELAY3;
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
	nop 
;	convert.c:160: GPIFTCB0 = 0;
	mov	dptr,#_GPIFTCB0
	clr	a
	movx	@dptr,a
;	convert.c:161: if (altiface == 0)
	mov	a,_altiface
	jnz	00106$
;	convert.c:162: GPIFTRIG = 6;
	mov	_GPIFTRIG,#0x06
	sjmp	00107$
00106$:
;	convert.c:164: GPIFTRIG = 4;
	mov	_GPIFTRIG,#0x04
00107$:
;	convert.c:168: ledcounter = 0;
	clr	a
	mov	_ledcounter,a
	mov	(_ledcounter + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'select_interface'
;------------------------------------------------------------
;alt                       Allocated to registers r7 
;------------------------------------------------------------
;	convert.c:173: void select_interface(BYTE alt)
;	-----------------------------------------
;	 function select_interface
;	-----------------------------------------
_select_interface:
;	convert.c:177: altiface = alt;
;	convert.c:178: if (alt == 0) {
	mov	a,dpl
	mov	r7,a
	mov	_altiface,a
	jnz	00103$
;	convert.c:180: EP6CFG = 0xe0;
	mov	dptr,#_EP6CFG
	mov	a,#0xE0
	movx	@dptr,a
;	convert.c:181: EP6GPIFFLGSEL = 1;
	mov	dptr,#_EP6GPIFFLGSEL
	mov	a,#0x01
	movx	@dptr,a
;	convert.c:183: EP6AUTOINLENL = 0x00;
	mov	dptr,#_EP6AUTOINLENL
	clr	a
	movx	@dptr,a
;	convert.c:184: EP6AUTOINLENH = 0x02;
	mov	dptr,#_EP6AUTOINLENH
	mov	a,#0x02
	movx	@dptr,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_samplerate'
;------------------------------------------------------------
;rate                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	convert.c:211: BYTE set_samplerate(BYTE rate)
;	-----------------------------------------
;	 function set_samplerate
;	-----------------------------------------
_set_samplerate:
	mov	r7,dpl
;	convert.c:214: while (samplerates[i].rate != rate) {
	mov	r6,#0x00
00103$:
	mov	a,r6
	mov	b,#0x07
	mul	ab
	mov	r4,a
	mov	r5,b
	add	a,#_samplerates
	mov	dpl,a
	mov	a,r5
	addc	a,#(_samplerates >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	a,ar7,00127$
	sjmp	00105$
00127$:
;	convert.c:215: i++;
	inc	r6
;	convert.c:216: if (i == sizeof(samplerates)/sizeof(samplerates[0]))
	cjne	r6,#0x0C,00103$
;	convert.c:217: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	convert.c:220: IFCONFIG = samplerates[i].ifcfg;
	mov	a,r4
	add	a,#_samplerates
	mov	r4,a
	mov	a,r5
	addc	a,#(_samplerates >> 8)
	mov	r5,a
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_IFCONFIG
	movx	@dptr,a
;	convert.c:222: AUTOPTRSETUP = 7;
	mov	_AUTOPTRSETUP,#0x07
;	convert.c:223: AUTOPTRH2 = 0xE4;
	mov	_AUTOPTRH2,#0xE4
;	convert.c:224: AUTOPTRL2 = 0x00;
	mov	_AUTOPTRL2,#0x00
;	convert.c:239: EXTAUTODAT2 = samplerates[i].wait0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	convert.c:240: EXTAUTODAT2 = samplerates[i].wait1;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	convert.c:241: EXTAUTODAT2 = 1;
	mov	a,#0x01
	movx	@dptr,a
;	convert.c:242: EXTAUTODAT2 = 0;
	clr	a
	movx	@dptr,a
;	convert.c:243: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:244: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:245: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:246: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:248: EXTAUTODAT2 = samplerates[i].opc0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	convert.c:249: EXTAUTODAT2 = samplerates[i].opc1;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	convert.c:250: EXTAUTODAT2 = 1;
	mov	a,#0x01
	movx	@dptr,a
;	convert.c:251: EXTAUTODAT2 = 0;
	clr	a
	movx	@dptr,a
;	convert.c:252: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:253: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:254: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:255: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:257: EXTAUTODAT2 = samplerates[i].out0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	convert.c:258: EXTAUTODAT2 = 0x11;
	mov	a,#0x11
	movx	@dptr,a
;	convert.c:259: EXTAUTODAT2 = 0x11;
	movx	@dptr,a
;	convert.c:260: EXTAUTODAT2 = 0x00;
	clr	a
	movx	@dptr,a
;	convert.c:261: EXTAUTODAT2 = 0x00;
	movx	@dptr,a
;	convert.c:262: EXTAUTODAT2 = 0x00;
	movx	@dptr,a
;	convert.c:263: EXTAUTODAT2 = 0x00;
	movx	@dptr,a
;	convert.c:264: EXTAUTODAT2 = 0x00;
	movx	@dptr,a
;	convert.c:266: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:267: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:268: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:269: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:270: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:271: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:272: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:273: EXTAUTODAT2 = 0;
	movx	@dptr,a
;	convert.c:275: for (i = 0; i < 96; i++)
	mov	r7,#0x00
00107$:
;	convert.c:276: EXTAUTODAT2 = 0;
	mov	dptr,#_XAUTODAT2
	clr	a
	movx	@dptr,a
;	convert.c:275: for (i = 0; i < 96; i++)
	inc	r7
	cjne	r7,#0x60,00130$
00130$:
	jc	00107$
;	convert.c:277: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main_init'
;------------------------------------------------------------
;	convert.c:282: void main_init() {
;	-----------------------------------------
;	 function main_init
;	-----------------------------------------
_main_init:
;	convert.c:283: EP4CFG = 0;
	mov	dptr,#_EP4CFG
	clr	a
	movx	@dptr,a
;	convert.c:284: EP8CFG = 0;
	mov	dptr,#_EP8CFG
	movx	@dptr,a
;	convert.c:287: GPIFIDLECTL = 0x00;
	mov	dptr,#_GPIFIDLECTL
	movx	@dptr,a
;	convert.c:288: GPIFCTLCFG = 0x80;
	mov	dptr,#_GPIFCTLCFG
	mov	a,#0x80
	movx	@dptr,a
;	convert.c:289: GPIFWFSELECT = 0x00;
	mov	dptr,#_GPIFWFSELECT
	clr	a
	movx	@dptr,a
;	convert.c:290: GPIFREADYSTAT = 0x00;
	mov	dptr,#_GPIFREADYSTAT
	movx	@dptr,a
;	convert.c:292: stop_sampling();
	lcall	_stop_sampling
;	convert.c:293: set_voltage(0, 1);
	mov	_set_voltage_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_set_voltage
;	convert.c:294: set_voltage(1, 1);
	mov	_set_voltage_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_set_voltage
;	convert.c:295: set_samplerate(1);
	mov	dpl,#0x01
	lcall	_set_samplerate
;	convert.c:296: set_numchannels(2);
	mov	dpl,#0x02
	lcall	_set_numchannels
;	convert.c:297: select_interface(0);
	mov	dpl,#0x00
	ljmp	_select_interface
	.area CSEG    (CODE)
	.area CONST   (CODE)
_samplerates:
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x1E	; 30
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xAA	; 170
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x0B	; 11
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x2F	; 47
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x14	; 20
	.db #0x78	; 120	'x'
	.db #0x77	; 119	'w'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0xEF	; 239
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xCA	; 202
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
