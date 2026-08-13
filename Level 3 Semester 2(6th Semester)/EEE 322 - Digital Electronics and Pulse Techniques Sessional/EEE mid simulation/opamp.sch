*version 9.1 4222451111
u 601
U? 12
V? 21
R? 38
? 26
C? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.2s
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 23961 
@status
n 0 126:03:02:03:45:37;1775126737 e 
s 2832 126:03:02:08:26:22;1775143582 e 
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 1100 290 h
port 41 GND_EARTH 1250 280 h
port 86 GND_EARTH 1090 490 h
port 99 GND_EARTH 1260 400 h
port 158 GND_EARTH 1440 320 h
port 186 GND_EARTH 1630 190 h
port 321 GND_EARTH 250 340 h
port 320 GND_EARTH 80 430 h
port 277 GND_EARTH 120 150 h
port 365 GND_EARTH 180 180 h
port 374 GND_EARTH 1600 430 h
port 375 GND_EARTH 1430 520 h
port 401 GND_EARTH 1940 430 h
port 402 GND_EARTH 1770 520 h
port 448 GND_EARTH 1960 230 h
port 449 GND_EARTH 1790 320 h
port 478 GND_EARTH 2130 320 h
port 479 GND_EARTH 2190 350 h
port 531 GND_EARTH 660 100 h
port 532 GND_EARTH 580 190 h
port 572 GND_EARTH 630 330 h
port 573 GND_EARTH 550 420 h
@parts
part 5 r 1200 230 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 6 r 1200 270 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 33 r 1330 340 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 2 opamp 1290 240 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 40 r 1250 280 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 3 vsin 1130 230 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
part 4 vsin 1130 270 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 VAMPL=5
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
part 81 r 1320 500 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R7
a 0 ap 9 0 15 0 hln 100 REFDES=R7
part 80 r 1190 470 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R6
a 0 ap 9 0 15 0 hln 100 REFDES=R6
part 79 r 1190 430 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 82 opamp 1280 400 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 14 0 hln 100 REFDES=U2
part 153 r 1670 350 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R11
a 0 ap 9 0 15 0 hln 100 REFDES=R11
part 152 r 1540 290 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R10
a 0 ap 9 0 15 0 hln 100 REFDES=R10
part 154 opamp 1630 250 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U3
a 0 ap 9 0 14 0 hln 100 REFDES=U3
part 151 r 1540 250 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R9
a 0 ap 9 0 15 0 hln 100 REFDES=R9
part 185 r 1600 230 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R13
a 0 ap 9 0 15 0 hln 100 REFDES=R13
part 84 vsin 1120 430 v
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 20 10 hcn 100 REFDES=V3
part 85 vsin 1120 470 v
a 1 u 0 0 0 0 hcn 100 VAMPL=5
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
part 156 vsin 1470 250 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V5
a 1 ap 9 0 20 10 hcn 100 REFDES=V5
a 1 u 0 0 0 0 hcn 100 VAMPL=7
part 157 vsin 1470 290 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V6
a 1 ap 9 0 20 10 hcn 100 REFDES=V6
a 1 u 0 0 0 0 hcn 100 VAMPL=3
part 317 opamp 270 340 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U5
a 0 ap 9 0 14 0 hln 100 REFDES=U5
part 316 r 180 380 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R20
a 0 ap 9 0 15 0 hln 100 REFDES=R20
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 314 r 310 440 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R18
a 0 ap 9 0 15 0 hln 100 REFDES=R18
a 0 u 13 0 15 25 hln 100 VALUE=2k
part 318 vsin 110 380 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V9
a 1 ap 9 0 20 10 hcn 100 REFDES=V9
a 1 u 0 0 0 0 hcn 100 VAMPL=1
part 333 r 310 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R21
a 0 ap 9 0 15 0 hln 100 REFDES=R21
a 0 u 13 0 15 25 hln 100 VALUE=3k
part 273 opamp 270 100 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U4
a 0 ap 9 0 14 0 hln 100 REFDES=U4
a 0 u 0:13 0 20 82 hlb 100 VPOS=+25V
a 0 u 0:13 0 20 91 hlb 100 VNEG=-25V
part 364 r 180 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R22
a 0 ap 9 0 15 0 hln 100 REFDES=R22
part 370 opamp 1620 430 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U6
a 0 ap 9 0 14 0 hln 100 REFDES=U6
part 371 r 1530 470 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 a 0:13 0 0 0 hln 100 PKGREF=R23
a 0 ap 9 0 15 0 hln 100 REFDES=R23
part 397 opamp 1960 430 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U7
a 0 ap 9 0 14 0 hln 100 REFDES=U7
part 398 r 1870 470 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 a 0:13 0 0 0 hln 100 PKGREF=R25
a 0 ap 9 0 15 0 hln 100 REFDES=R25
part 423 r 1850 450 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 a 0:13 0 0 0 hln 100 PKGREF=R27
a 0 ap 9 0 15 0 hln 100 REFDES=R27
part 373 vsin 1460 470 v
a 1 u 0 0 0 0 hcn 100 VAMPL=2
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V11
a 1 ap 9 0 20 10 hcn 100 REFDES=V11
part 275 vsin 150 100 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V7
a 1 ap 9 0 20 10 hcn 100 REFDES=V7
a 1 u 0 0 0 0 hcn 100 VAMPL=1
part 372 r 1660 530 h
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R24
a 0 ap 9 0 15 0 hln 100 REFDES=R24
part 399 r 2000 530 h
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R26
a 0 ap 9 0 15 0 hln 100 REFDES=R26
part 444 opamp 1980 230 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U8
a 0 ap 9 0 14 0 hln 100 REFDES=U8
part 445 r 1890 270 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 a 0:13 0 0 0 hln 100 PKGREF=R28
a 0 ap 9 0 15 0 hln 100 REFDES=R28
part 447 r 2020 330 h
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R29
a 0 ap 9 0 15 0 hln 100 REFDES=R29
part 400 vsin 1800 470 v
a 1 u 0 0 0 0 hcn 100 VAMPL=3
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V12
a 1 ap 9 0 20 10 hcn 100 REFDES=V12
part 476 r 2190 350 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R31
a 0 ap 9 0 15 0 hln 100 REFDES=R31
part 510 r 2220 240 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R33
a 0 ap 9 0 15 0 hln 100 REFDES=R33
part 475 opamp 2280 270 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 u 0:13 0 20 82 hlb 100 VPOS=+25V
a 0 u 0:13 0 20 91 hlb 100 VNEG=-25V
a 0 a 0:13 0 0 0 hln 100 PKGREF=U9
a 0 ap 9 0 14 0 hln 100 REFDES=U9
part 507 r 2220 270 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R32
a 0 ap 9 0 15 0 hln 100 REFDES=R32
part 474 r 2320 350 h
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R30
a 0 ap 9 0 15 0 hln 100 REFDES=R30
part 446 vsin 1820 270 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V13
a 1 ap 9 0 20 10 hcn 100 REFDES=V13
a 1 u 0 0 0 0 hcn 100 VAMPL=3
part 477 vsin 2160 270 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V14
a 1 ap 9 0 20 10 hcn 100 REFDES=V14
a 1 u 0 0 0 0 hcn 100 VAMPL=5
part 527 opamp 680 100 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U10
a 0 ap 9 0 14 0 hln 100 REFDES=U10
part 529 r 720 200 h
a 0 u 13 0 15 25 hln 100 VALUE=20k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R35
a 0 ap 9 0 15 0 hln 100 REFDES=R35
part 568 opamp 650 330 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U11
a 0 ap 9 0 14 0 hln 100 REFDES=U11
part 561 vsin 590 140 v
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=1
a 0 a 0:13 0 0 0 hln 100 PKGREF=V16
a 1 ap 9 0 20 10 hcn 100 REFDES=V16
part 555 c 630 140 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 594 r 600 370 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R37
a 0 ap 9 0 15 0 hln 100 REFDES=R37
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 595 c 700 430 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 15 0 hln 100 REFDES=C3
a 0 u 13 0 15 25 hln 100 VALUE=0.00001
part 600 vsin 560 370 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V20
a 1 ap 9 0 20 10 hcn 100 REFDES=V20
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 1 u 0 0 0 0 hcn 100 VAMPL=4
a 1 u 0 0 0 0 hcn 100 VOFF=0
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 575 nodeMarker 750 350 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=25
part 574 nodeMarker 600 370 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R37:1
a 0 a 0 0 4 22 hlb 100 LABEL=24
@conn
w 74
a 0 up 0:33 0 0 0 hln 100 V=
s 1360 500 1380 500 73
s 1380 500 1380 420 75
a 0 up 33 0 1382 460 hlt 100 V=
s 1380 420 1360 420 77
w 72
a 0 up 0:33 0 0 0 hln 100 V=
s 1190 470 1160 470 71
a 0 up 33 0 1175 469 hct 100 V=
w 70
a 0 up 0:33 0 0 0 hln 100 V=
s 1160 430 1190 430 69
a 0 up 33 0 1175 429 hct 100 V=
w 191
a 0 up 0:33 0 0 0 hln 100 V=
s 1630 180 1630 190 194
s 1600 180 1630 180 192
a 0 up 33 0 1615 179 hct 100 V=
s 1600 190 1600 180 190
w 181
a 0 up 0:33 0 0 0 hln 100 V=
s 1600 230 1600 250 187
s 1600 250 1630 250 189
a 0 up 33 0 1615 249 hct 100 V=
s 1580 250 1600 250 127
w 182
a 0 up 0:33 0 0 0 hln 100 V=
s 1440 250 1470 250 120
s 1440 290 1440 250 175
a 0 up 33 0 1442 270 hlt 100 V=
s 1440 290 1470 290 124
s 1440 320 1440 290 161
w 138
a 0 up 0:33 0 0 0 hln 100 V=
s 1580 290 1630 290 133
s 1630 350 1670 350 139
s 1630 290 1630 350 137
a 0 up 33 0 1632 320 hlt 100 V=
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 1090 470 1120 470 52
s 1090 470 1090 430 116
s 1090 490 1090 470 54
a 0 up 33 0 1092 450 hlt 100 V=
s 1090 430 1120 430 48
w 66
a 0 up 0:33 0 0 0 hln 100 V=
s 1280 440 1280 500 65
a 0 up 33 0 1282 470 hlt 100 V=
s 1280 500 1320 500 67
s 1230 470 1260 470 61
s 1230 430 1260 430 55
s 1260 430 1260 440 96
a 0 up 33 0 1262 455 hlt 100 V=
s 1260 440 1260 470 226
s 1280 440 1260 440 94
w 98
a 0 up 0:33 0 0 0 hln 100 V=
s 1280 400 1260 400 97
a 0 up 33 0 1270 399 hct 100 V=
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 1390 260 1370 260 38
s 1390 340 1390 260 36
a 0 up 33 0 1392 300 hlt 100 V=
s 1370 340 1390 340 34
w 28
a 0 up 0:33 0 0 0 hln 100 V=
s 1200 270 1170 270 27
a 0 up 33 0 1185 269 hct 100 V=
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 1170 230 1200 230 15
a 0 up 33 0 1185 229 hct 100 V=
w 30
a 0 up 0:33 0 0 0 hln 100 V=
s 1290 340 1330 340 31
s 1290 280 1290 340 29
a 0 up 33 0 1292 310 hlt 100 V=
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 1270 270 1270 240 25
a 0 up 33 0 1272 255 hlt 100 V=
s 1240 270 1270 270 23
s 1270 240 1290 240 21
s 1270 230 1270 240 19
s 1240 230 1270 230 17
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 1100 270 1130 270 12
s 1100 270 1100 230 14
a 0 up 33 0 1102 250 hlt 100 V=
s 1100 230 1130 230 10
s 1100 290 1100 270 8
w 313
a 0 up 0:33 0 0 0 hln 100 V=
s 270 340 250 340 312
a 0 up 33 0 260 339 hct 100 V=
w 146
a 0 up 0:33 0 0 0 hln 100 V=
s 1730 270 1710 270 149
s 1730 350 1730 270 147
a 0 up 33 0 1732 310 hlt 100 V=
s 1710 350 1730 350 145
w 184
a 0 up 0:33 0 0 0 hln 100 V=
s 1510 250 1540 250 141
a 0 up 33 0 1525 249 hct 100 V=
w 144
a 0 up 0:33 0 0 0 hln 100 V=
s 1540 290 1510 290 177
a 0 up 33 0 1520 289 hct 100 V=
w 298
a 0 up 0:33 0 0 0 hln 100 V=
s 270 380 270 440 297
a 0 up 33 0 272 410 hlt 100 V=
s 270 440 310 440 299
s 220 380 270 380 309
a 0 up 33 0 252 395 hlt 100 V=
w 290
a 0 up 0:33 0 0 0 hln 100 V=
s 80 430 80 380 291
a 0 up 33 0 82 395 hlt 100 V=
s 80 380 110 380 295
w 288
a 0 up 0:33 0 0 0 hln 100 V=
s 150 380 180 380 346
a 0 up 33 0 165 379 hct 100 V=
w 280
a 0 up 0:33 0 0 0 hln 100 V=
s 350 440 370 440 279
s 370 440 370 360 281
a 0 up 33 0 372 400 hlt 100 V=
s 370 360 350 360 283
w 263
a 0 up 0:33 0 0 0 hln 100 V=
s 120 100 150 100 266
s 120 150 120 100 264
a 0 up 33 0 122 115 hlt 100 V=
w 354
a 0 up 0:33 0 0 0 hln 100 V=
s 310 180 230 180 358
s 230 140 270 140 331
a 0 up 33 0 250 139 hct 100 V=
s 230 180 230 140 360
s 230 180 220 180 362
w 377
a 0 up 0:33 0 0 0 hln 100 V=
s 1620 430 1600 430 376
a 0 up 33 0 1610 429 hct 100 V=
w 379
a 0 up 0:33 0 0 0 hln 100 V=
s 1620 470 1620 530 378
a 0 up 33 0 1622 500 hlt 100 V=
s 1620 530 1660 530 380
s 1570 470 1620 470 382
a 0 up 33 0 1602 485 hlt 100 V=
w 385
s 1430 520 1430 470 384
a 0 up 33 0 1432 485 hlt 100 V=
s 1430 470 1460 470 386
w 404
a 0 up 0:33 0 0 0 hln 100 V=
s 1960 430 1940 430 403
a 0 up 33 0 1950 429 hct 100 V=
w 412
s 1770 520 1770 470 411
a 0 up 33 0 1772 485 hlt 100 V=
s 1770 470 1800 470 413
w 425
a 0 up 0:33 0 0 0 hln 100 V=
s 1960 470 1960 530 405
a 0 up 33 0 1962 500 hlt 100 V=
s 1960 530 2000 530 407
s 1910 470 1920 470 409
a 0 up 33 0 1942 485 hlt 100 V=
s 1890 450 1920 450 424
s 1920 470 1960 470 437
s 1920 450 1920 470 426
w 391
a 0 up 0:33 0 0 0 hln 100 V=
s 1700 530 1720 530 390
s 1720 530 1720 450 392
a 0 up 33 0 1722 490 hlt 100 V=
s 1720 450 1700 450 394
s 1720 450 1850 450 431
a 0 up 33 0 1785 449 hct 100 V=
w 339
a 0 up 0:33 0 0 0 hln 100 V=
s 190 100 270 100 342
a 0 up 33 0 205 99 hct 100 V=
w 351
a 0 up 0:33 0 0 0 hln 100 V=
s 370 180 350 180 336
s 370 120 370 180 334
a 0 up 33 0 372 150 hlt 100 V=
s 370 120 350 120 238
w 452
a 0 up 0:33 0 0 0 hln 100 V=
s 1980 230 1960 230 451
a 0 up 33 0 1970 229 hct 100 V=
w 454
a 0 up 0:33 0 0 0 hln 100 V=
s 1980 270 1980 330 453
a 0 up 33 0 1982 300 hlt 100 V=
s 1980 330 2020 330 455
s 1930 270 1980 270 457
a 0 up 33 0 1962 285 hlt 100 V=
w 460
s 1790 320 1790 270 459
a 0 up 33 0 1792 285 hlt 100 V=
s 1790 270 1820 270 461
w 389
a 0 up 0:33 0 0 0 hln 100 V=
s 1500 470 1530 470 439
a 0 up 33 0 1515 469 hct 100 V=
w 416
a 0 up 0:33 0 0 0 hln 100 V=
s 1840 470 1870 470 415
a 0 up 33 0 1855 469 hct 100 V=
w 418
a 0 up 0:33 0 0 0 hln 100 V=
s 2040 530 2060 530 417
s 2060 530 2060 450 419
a 0 up 33 0 2062 490 hlt 100 V=
s 2060 450 2040 450 442
w 485
a 0 up 0:33 0 0 0 hln 100 V=
s 2240 350 2230 350 490
s 2240 350 2240 310 488
s 2240 310 2280 310 486
a 0 up 33 0 2260 309 hct 100 V=
s 2320 350 2240 350 484
a 0 up 33 0 2280 349 hct 100 V=
w 481
s 2130 320 2130 270 482
a 0 up 33 0 2132 285 hlt 100 V=
s 2130 270 2160 270 480
w 464
a 0 up 0:33 0 0 0 hln 100 V=
s 2060 330 2080 330 463
s 2080 330 2080 250 465
a 0 up 33 0 2082 290 hlt 100 V=
s 2080 250 2060 250 467
s 2080 250 2110 250 512
s 2110 250 2110 240 514
s 2110 240 2220 240 516
w 519
a 0 up 0:33 0 0 0 hln 100 V=
s 2260 240 2270 240 518
s 2260 270 2270 270 508
s 2270 270 2280 270 522
s 2270 240 2270 270 520
a 0 up 33 0 2272 255 hlt 100 V=
w 470
a 0 up 0:33 0 0 0 hln 100 V=
s 1860 270 1890 270 471
a 0 up 33 0 1875 269 hct 100 V=
w 495
a 0 up 0:33 0 0 0 hln 100 V=
s 2380 290 2360 290 498
s 2380 290 2380 350 496
a 0 up 33 0 2382 320 hlt 100 V=
s 2380 350 2360 350 494
w 511
a 0 up 0:33 0 0 0 hln 100 V=
s 2200 270 2220 270 492
a 0 up 33 0 2215 269 hct 100 V=
w 534
a 0 up 0:33 0 0 0 hln 100 V=
s 680 100 660 100 533
a 0 up 33 0 670 99 hct 100 V=
w 536
a 0 up 0:33 0 0 0 hln 100 V=
s 680 140 680 200 535
a 0 up 33 0 682 170 hlt 100 V=
s 680 200 720 200 537
s 660 140 680 140 539
a 0 up 33 0 677 155 hlt 100 V=
w 542
s 580 190 580 140 541
a 0 up 33 0 582 155 hlt 100 V=
s 580 140 590 140 562
w 577
a 0 up 0:33 0 0 0 hln 100 V=
s 650 330 630 330 576
a 0 up 33 0 640 329 hct 100 V=
w 548
a 0 up 0:33 0 0 0 hln 100 V=
s 760 200 780 200 547
s 780 200 780 120 549
a 0 up 33 0 782 160 hlt 100 V=
s 780 120 760 120 551
w 579
a 0 up 0:33 0 0 0 hln 100 V=
s 650 370 650 430 578
a 0 up 33 0 652 400 hlt 100 V=
s 630 370 640 370 582
a 0 up 33 0 647 385 hlt 100 V=
s 640 370 650 370 596
s 650 430 700 430 580
w 589
a 0 up 0:33 0 0 0 hln 100 V=
s 730 430 750 430 588
s 750 430 750 350 590
a 0 up 33 0 752 390 hlt 100 V=
s 750 350 730 350 592
w 585
s 550 420 550 370 584
a 0 up 33 0 552 385 hlt 100 V=
s 550 370 560 370 586
@junction
j 1290 280
+ p 2 -
+ p 40 2
j 1250 280
+ p 40 1
+ s 41
j 1360 500
+ p 81 2
+ w 74
j 1360 420
+ p 82 OUT
+ w 74
j 1190 470
+ p 80 1
+ w 72
j 1160 470
+ p 85 -
+ w 72
j 1190 430
+ p 79 1
+ w 70
j 1160 430
+ p 84 -
+ w 70
j 1710 270
+ p 154 OUT
+ w 146
j 1710 350
+ p 153 2
+ w 146
j 1540 290
+ p 152 1
+ w 144
j 1510 290
+ p 157 -
+ w 144
j 1540 250
+ p 151 1
+ w 184
j 1510 250
+ p 156 -
+ w 184
j 1630 190
+ s 186
+ w 191
j 1600 190
+ p 185 2
+ w 191
j 1600 230
+ p 185 1
+ w 181
j 1630 250
+ p 154 +
+ w 181
j 1580 250
+ p 151 2
+ w 181
j 1600 250
+ w 181
+ w 181
j 1470 250
+ p 156 +
+ w 182
j 1470 290
+ p 157 +
+ w 182
j 1440 320
+ s 158
+ w 182
j 1440 290
+ w 182
+ w 182
j 1580 290
+ p 152 2
+ w 138
j 1630 290
+ p 154 -
+ w 138
j 1670 350
+ p 153 1
+ w 138
j 1120 470
+ p 85 +
+ w 47
j 1090 490
+ s 86
+ w 47
j 1090 470
+ w 47
+ w 47
j 1120 430
+ p 84 +
+ w 47
j 1280 440
+ p 82 -
+ w 66
j 1320 500
+ p 81 1
+ w 66
j 1230 470
+ p 80 2
+ w 66
j 1230 430
+ p 79 2
+ w 66
j 1260 440
+ w 66
+ w 66
j 1280 400
+ p 82 +
+ w 98
j 1260 400
+ s 99
+ w 98
j 1370 260
+ p 2 OUT
+ w 35
j 1370 340
+ p 33 2
+ w 35
j 1200 270
+ p 6 1
+ w 28
j 1170 270
+ p 4 -
+ w 28
j 1200 230
+ p 5 1
+ w 16
j 1170 230
+ p 3 -
+ w 16
j 1330 340
+ p 33 1
+ w 30
j 1290 280
+ p 2 -
+ w 30
j 1290 280
+ p 40 2
+ w 30
j 1240 270
+ p 6 2
+ w 18
j 1290 240
+ p 2 +
+ w 18
j 1270 240
+ w 18
+ w 18
j 1240 230
+ p 5 2
+ w 18
j 1130 270
+ p 4 +
+ w 9
j 1130 230
+ p 3 +
+ w 9
j 1100 290
+ s 7
+ w 9
j 1100 270
+ w 9
+ w 9
j 350 120
+ p 273 OUT
+ w 351
j 350 440
+ p 314 2
+ w 280
j 310 440
+ p 314 1
+ w 298
j 250 340
+ s 321
+ w 313
j 220 380
+ p 316 2
+ w 298
j 80 430
+ s 320
+ w 290
j 180 380
+ p 316 1
+ w 288
j 350 360
+ p 317 OUT
+ w 280
j 270 380
+ p 317 -
+ w 298
j 270 340
+ p 317 +
+ w 313
j 110 380
+ p 318 +
+ w 290
j 150 380
+ p 318 -
+ w 288
j 270 100
+ p 273 +
+ w 339
j 190 100
+ p 275 -
+ w 339
j 150 100
+ p 275 +
+ w 263
j 120 150
+ s 277
+ w 263
j 350 180
+ p 333 2
+ w 351
j 310 180
+ p 333 1
+ w 354
j 270 140
+ p 273 -
+ w 354
j 230 180
+ w 354
+ w 354
j 220 180
+ p 364 2
+ w 354
j 180 180
+ s 365
+ p 364 1
j 1620 430
+ p 370 +
+ w 377
j 1600 430
+ s 374
+ w 377
j 1620 470
+ p 370 -
+ w 379
j 1660 530
+ p 372 1
+ w 379
j 1570 470
+ p 371 2
+ w 379
j 1430 520
+ s 375
+ w 385
j 1460 470
+ p 373 +
+ w 385
j 1530 470
+ p 371 1
+ w 389
j 1500 470
+ p 373 -
+ w 389
j 1700 530
+ p 372 2
+ w 391
j 1700 450
+ p 370 OUT
+ w 391
j 1960 430
+ p 397 +
+ w 404
j 1940 430
+ s 401
+ w 404
j 1770 520
+ s 402
+ w 412
j 1800 470
+ p 400 +
+ w 412
j 1870 470
+ p 398 1
+ w 416
j 1840 470
+ p 400 -
+ w 416
j 2040 530
+ p 399 2
+ w 418
j 2040 450
+ p 397 OUT
+ w 418
j 1960 470
+ p 397 -
+ w 425
j 2000 530
+ p 399 1
+ w 425
j 1910 470
+ p 398 2
+ w 425
j 1720 450
+ w 391
+ w 391
j 1850 450
+ p 423 1
+ w 391
j 1890 450
+ p 423 2
+ w 425
j 1920 470
+ w 425
+ w 425
j 1980 230
+ p 444 +
+ w 452
j 1960 230
+ s 448
+ w 452
j 1980 270
+ p 444 -
+ w 454
j 2020 330
+ p 447 1
+ w 454
j 1930 270
+ p 445 2
+ w 454
j 1790 320
+ s 449
+ w 460
j 1820 270
+ p 446 +
+ w 460
j 2060 330
+ p 447 2
+ w 464
j 2060 250
+ p 444 OUT
+ w 464
j 1860 270
+ p 446 -
+ w 470
j 1890 270
+ p 445 1
+ w 470
j 2190 350
+ p 476 1
+ s 479
j 2360 290
+ p 475 OUT
+ w 495
j 2360 350
+ p 474 2
+ w 495
j 2200 270
+ p 477 -
+ w 511
j 2230 350
+ p 476 2
+ w 485
j 2280 310
+ p 475 -
+ w 485
j 2320 350
+ p 474 1
+ w 485
j 2240 350
+ w 485
+ w 485
j 2130 320
+ s 478
+ w 481
j 2160 270
+ p 477 +
+ w 481
j 2220 270
+ p 507 1
+ w 511
j 2080 250
+ w 464
+ w 464
j 2220 240
+ p 510 1
+ w 464
j 2260 240
+ p 510 2
+ w 519
j 2280 270
+ p 475 +
+ w 519
j 2260 270
+ p 507 2
+ w 519
j 2270 270
+ w 519
+ w 519
j 680 100
+ p 527 +
+ w 534
j 660 100
+ s 531
+ w 534
j 760 200
+ p 529 2
+ w 548
j 760 120
+ p 527 OUT
+ w 548
j 680 140
+ p 527 -
+ w 536
j 720 200
+ p 529 1
+ w 536
j 580 190
+ s 532
+ w 542
j 660 140
+ p 555 2
+ w 536
j 630 140
+ p 561 -
+ p 555 1
j 590 140
+ p 561 +
+ w 542
j 650 330
+ p 568 +
+ w 577
j 630 330
+ s 572
+ w 577
j 650 370
+ p 568 -
+ w 579
j 750 350
+ p 575 pin1
+ w 589
j 730 350
+ p 568 OUT
+ w 589
j 600 370
+ p 594 1
+ p 574 pin1
j 640 370
+ p 594 2
+ w 579
j 550 420
+ s 573
+ w 585
j 600 370
+ p 600 -
+ p 594 1
j 600 370
+ p 600 -
+ p 574 pin1
j 560 370
+ p 600 +
+ w 585
j 730 430
+ p 595 2
+ w 589
j 700 430
+ p 595 1
+ w 579
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 45 t 5 1080 166 1140 180 0 13
opamp - adder
t 117 t 5 1470 186 1513 200 0 10
subtractor
t 237 t 5 30 55 85 71 0 11
basic opamp
t 348 t 5 80 336 153 350 0 19
inverting amplifier
t 368 t 5 150 116 239 130 0 23
non-inverting amplifier
t 369 t 5 1430 426 1503 440 0 19
inverting amplifier
t 396 t 5 1790 406 1863 420 0 19
inverting amplifier
t 443 t 5 1790 226 1863 240 0 19
inverting amplifier
t 473 t 5 2160 286 2249 300 0 23
non-inverting amplifier
t 526 t 5 490 96 563 110 0 14
differentiator
t 567 t 5 520 316 593 330 0 10
integrator
