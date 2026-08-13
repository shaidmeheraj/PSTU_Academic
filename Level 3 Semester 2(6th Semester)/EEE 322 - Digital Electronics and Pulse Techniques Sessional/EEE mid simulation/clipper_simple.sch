*version 9.1 3654804875
u 959
V? 52
D? 30
R? 18
? 44
C? 7
U? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.1
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
pageloc 1 0 24166 
@status
n 0 126:03:02:08:24:52;1775143492 e 
s 2832 126:03:02:08:24:56;1775143496 e 
*page 1 0 970 720 iA
@ports
port 21 GND_EARTH 110 170 h
port 49 GND_EARTH 290 170 h
port 142 GND_EARTH 120 280 h
port 190 GND_EARTH 120 400 h
port 256 GND_EARTH 240 400 h
port 318 GND_EARTH 120 530 h
port 438 GND_EARTH 310 530 h
port 526 GND_EARTH 120 670 h
port 562 GND_EARTH 560 180 h
port 483 GND_EARTH 560 310 h
port 604 GND_EARTH 760 180 h
port 627 GND_EARTH 740 310 h
port 649 GND_EARTH 560 430 h
port 676 GND_EARTH 740 430 h
@parts
part 3 D1N4002 80 110 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 17 4 hln 100 REFDES=D1
part 4 r 170 160 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 23 vsin 50 120 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
part 47 r 350 160 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 48 vsin 230 120 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 20 10 hcn 100 REFDES=V3
part 57 vdc 290 110 V
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 44 17 hcn 100 REFDES=V4
part 46 D1N4002 290 110 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 17 4 hln 100 REFDES=D2
part 139 vsin 60 230 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V7
a 1 ap 9 0 20 10 hcn 100 REFDES=V7
part 140 D1N4002 140 270 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D5
a 0 ap 9 0 17 4 hln 100 REFDES=D5
part 141 r 120 220 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 185 r 120 310 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 186 vsin 60 350 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V10
a 1 ap 9 0 20 10 hcn 100 REFDES=V10
part 187 vdc 140 390 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V11
a 1 ap 9 0 24 7 hcn 100 REFDES=V11
part 188 D1N4002 140 350 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D6
a 0 ap 9 0 17 4 hln 100 REFDES=D6
part 251 r 240 310 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R7
a 0 ap 9 0 15 0 hln 100 REFDES=R7
part 252 vsin 180 350 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V14
a 1 ap 9 0 20 10 hcn 100 REFDES=V14
part 253 D1N4002 260 350 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D8
a 0 ap 9 0 17 4 hln 100 REFDES=D8
part 255 vdc 260 350 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V15
a 1 ap 9 0 24 7 hcn 100 REFDES=V15
part 309 r 120 440 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R8
a 0 ap 9 0 15 0 hln 100 REFDES=R8
part 310 vsin 60 480 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V17
a 1 ap 9 0 20 10 hcn 100 REFDES=V17
part 311 D1N4002 140 480 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D10
a 0 ap 9 0 17 4 hln 100 REFDES=D10
part 313 vdc 140 530 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V18
a 1 ap 9 0 24 7 hcn 100 REFDES=V18
part 315 D1N4002 190 490 d
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D11
a 0 ap 9 0 17 4 hln 100 REFDES=D11
part 429 r 310 440 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R11
a 0 ap 9 0 15 0 hln 100 REFDES=R11
part 430 vsin 250 480 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V25
a 1 ap 9 0 20 10 hcn 100 REFDES=V25
part 431 D1N4002 330 480 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D14
a 0 ap 9 0 17 4 hln 100 REFDES=D14
part 435 D1N4002 380 490 d
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D15
a 0 ap 9 0 17 4 hln 100 REFDES=D15
part 317 vdc 190 440 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V19
a 1 ap 9 0 24 7 hcn 100 REFDES=V19
part 443 vdc 330 490 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V29
a 1 ap 9 0 24 7 hcn 100 REFDES=V29
part 518 r 120 580 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R13
a 0 ap 9 0 15 0 hln 100 REFDES=R13
part 520 D1N4002 140 620 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D18
a 0 ap 9 0 17 4 hln 100 REFDES=D18
part 522 vdc 140 630 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V34
a 1 ap 9 0 24 7 hcn 100 REFDES=V34
part 442 vdc 380 480 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 0 a 0:13 0 0 0 hln 100 PKGREF=V28
a 1 ap 9 0 24 7 hcn 100 REFDES=V28
a 1 u 13 0 -11 18 hcn 100 DC=3V
part 559 c 520 90 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 560 D1N4002 630 120 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D20
a 0 ap 9 0 22 -6 hln 100 REFDES=D20
part 561 vpulse 500 130 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V36
a 1 ap 9 0 20 10 hcn 100 REFDES=V36
part 542 vpulse 500 260 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 0 a 0:13 0 0 0 hln 100 PKGREF=V35
a 1 ap 9 0 20 10 hcn 100 REFDES=V35
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
part 578 vdc 630 260 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 0 a 0:13 0 0 0 hln 100 PKGREF=V37
a 1 ap 9 0 24 7 hcn 100 REFDES=V37
a 1 u 13 0 -11 18 hcn 100 DC=5
part 531 c 520 220 h
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 478 D1N4002 630 220 d
a 0 ap 9 0 22 -6 hln 100 REFDES=D17
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D17
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
part 601 c 720 90 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 15 0 hln 100 REFDES=C3
part 603 vpulse 700 130 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V38
a 1 ap 9 0 20 10 hcn 100 REFDES=V38
part 606 D1N4002 830 150 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D22
a 0 ap 9 0 22 -6 hln 100 REFDES=D22
part 623 vpulse 680 260 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V39
a 1 ap 9 0 20 10 hcn 100 REFDES=V39
part 624 vdc 810 260 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V40
a 1 ap 9 0 24 7 hcn 100 REFDES=V40
part 625 c 700 220 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 a 0:13 0 0 0 hln 100 PKGREF=C4
a 0 ap 9 0 15 0 hln 100 REFDES=C4
part 645 vpulse 500 380 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V41
a 1 ap 9 0 20 10 hcn 100 REFDES=V41
part 647 c 520 340 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 a 0:13 0 0 0 hln 100 PKGREF=C5
a 0 ap 9 0 15 0 hln 100 REFDES=C5
part 652 vdc 630 420 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V44
a 1 ap 9 0 24 7 hcn 100 REFDES=V44
part 648 D1N4002 630 340 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D24
a 0 ap 9 0 22 -6 hln 100 REFDES=D24
part 655 D1N4002 810 250 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D25
a 0 ap 9 0 22 -6 hln 100 REFDES=D25
part 672 vpulse 680 380 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V45
a 1 ap 9 0 20 10 hcn 100 REFDES=V45
part 673 c 700 340 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 a 0:13 0 0 0 hln 100 PKGREF=C6
a 0 ap 9 0 15 0 hln 100 REFDES=C6
part 674 vdc 810 420 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V46
a 1 ap 9 0 24 7 hcn 100 REFDES=V46
part 678 D1N4002 810 370 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D27
a 0 ap 9 0 22 -6 hln 100 REFDES=D27
part 519 vsin 60 620 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=50
a 0 a 0:13 0 0 0 hln 100 PKGREF=V33
a 1 ap 9 0 20 10 hcn 100 REFDES=V33
part 951 vdc 190 660 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 0 a 0:13 0 0 0 hln 100 PKGREF=V51
a 1 ap 9 0 24 7 hcn 100 REFDES=V51
a 1 u 13 0 -11 18 hcn 100 DC=2V
part 958 D1N4002 190 610 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 -3 39 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D29
a 0 ap 9 0 17 4 hln 100 REFDES=D29
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 944 nodeMarker 60 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=40
part 946 nodeMarker 160 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=41
part 948 nodeMarker 60 620 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=42
part 949 nodeMarker 190 580 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=V51:-
a 0 a 0 0 4 22 hlb 100 LABEL=43
@conn
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 110 170 50 170 22
a 0 up 33 0 80 169 hct 100 V=
s 50 170 50 160 17
s 170 170 110 170 15
s 170 160 170 170 13
w 39
a 0 up 0:33 0 0 0 hln 100 V=
s 290 170 230 170 50
a 0 up 33 0 260 169 hct 100 V=
s 350 160 350 170 44
s 350 170 290 170 42
a 0 up 33 0 260 169 hct 100 V=
s 230 170 230 160 40
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 250 110 230 110 69
a 0 up 33 0 240 109 hct 100 V=
s 230 120 230 110 34
w 31
a 0 up 0:33 0 0 0 hln 100 V=
s 350 110 350 120 30
s 320 110 350 110 32
a 0 up 33 0 335 109 hct 100 V=
w 124
a 0 up 0:33 0 0 0 hln 100 V=
s 140 240 140 220 123
s 140 220 120 220 125
a 0 up 33 0 130 219 hct 100 V=
w 128
a 0 up 0:33 0 0 0 hln 100 V=
s 60 280 60 270 127
s 140 280 120 280 131
a 0 up 33 0 90 279 hct 100 V=
s 140 270 140 280 133
s 120 280 60 280 143
a 0 up 33 0 90 279 hct 100 V=
w 136
a 0 up 0:33 0 0 0 hln 100 V=
s 80 220 60 220 135
a 0 up 33 0 70 219 hct 100 V=
s 60 230 60 220 137
w 168
a 0 up 0:33 0 0 0 hln 100 V=
s 60 400 60 390 167
s 140 400 120 400 171
a 0 up 33 0 90 399 hct 100 V=
s 140 390 140 400 173
s 120 400 60 400 191
a 0 up 33 0 90 399 hct 100 V=
w 176
a 0 up 0:33 0 0 0 hln 100 V=
s 60 350 60 310 175
a 0 up 33 0 62 330 hlt 100 V=
s 80 310 60 310 177
a 0 up 33 0 70 309 hct 100 V=
w 180
a 0 up 0:33 0 0 0 hln 100 V=
s 140 310 120 310 179
a 0 up 33 0 130 309 hct 100 V=
s 140 340 140 320 183
a 0 up 33 0 142 315 hlt 100 V=
s 140 320 140 310 189
w 232
a 0 up 0:33 0 0 0 hln 100 V=
s 260 350 260 360 231
a 0 up 33 0 262 355 hlt 100 V=
w 234
a 0 up 0:33 0 0 0 hln 100 V=
s 180 400 180 390 233
s 180 400 240 400 237
a 0 up 33 0 210 399 hct 100 V=
s 260 400 260 390 239
s 240 400 260 400 257
w 242
a 0 up 0:33 0 0 0 hln 100 V=
s 180 350 180 310 241
a 0 up 33 0 182 330 hlt 100 V=
s 200 310 180 310 243
a 0 up 33 0 190 309 hct 100 V=
w 246
a 0 up 0:33 0 0 0 hln 100 V=
s 260 310 240 310 245
a 0 up 33 0 250 309 hct 100 V=
s 260 340 260 320 249
a 0 up 33 0 262 315 hlt 100 V=
s 260 320 260 310 254
w 282
a 0 up 0:33 0 0 0 hln 100 V=
s 140 480 140 490 281
a 0 up 33 0 142 485 hlt 100 V=
w 284
a 0 up 0:33 0 0 0 hln 100 V=
s 190 490 190 480 283
a 0 up 33 0 192 485 hlt 100 V=
w 286
a 0 up 0:33 0 0 0 hln 100 V=
s 60 530 60 520 287
s 60 530 120 530 295
a 0 up 33 0 90 529 hct 100 V=
s 190 500 190 520 291
a 0 up 33 0 192 510 hlt 100 V=
s 140 530 190 530 314
s 190 520 190 530 316
s 120 530 140 530 319
w 302
a 0 up 0:33 0 0 0 hln 100 V=
s 120 440 140 440 307
a 0 up 33 0 165 439 hct 100 V=
s 140 470 140 450 305
a 0 up 33 0 142 445 hlt 100 V=
s 140 440 190 440 888
s 140 450 140 440 312
w 298
a 0 up 0:33 0 0 0 hln 100 V=
s 60 480 60 440 297
a 0 up 33 0 62 460 hlt 100 V=
s 80 440 60 440 299
a 0 up 33 0 70 439 hct 100 V=
w 405
a 0 up 0:33 0 0 0 hln 100 V=
s 250 530 250 520 404
s 250 530 310 530 414
a 0 up 33 0 280 529 hct 100 V=
s 310 530 330 530 439
s 380 500 380 520 412
a 0 up 33 0 382 510 hlt 100 V=
s 380 520 380 530 436
s 330 530 380 530 444
w 401
a 0 up 0:33 0 0 0 hln 100 V=
s 330 480 330 490 400
a 0 up 33 0 332 485 hlt 100 V=
w 403
a 0 up 0:33 0 0 0 hln 100 V=
s 380 490 380 480 402
a 0 up 33 0 382 485 hlt 100 V=
w 502
a 0 up 0:33 0 0 0 hln 100 V=
s 140 620 140 630 501
a 0 up 33 0 142 625 hlt 100 V=
w 544
a 0 up 0:33 0 0 0 hln 100 V=
s 500 180 500 170 543
s 500 180 560 180 549
a 0 up 33 0 530 179 hct 100 V=
s 630 150 630 180 547
a 0 up 33 0 632 160 hlt 100 V=
s 560 180 630 180 563
a 0 up 33 0 595 179 hct 100 V=
w 552
a 0 up 0:33 0 0 0 hln 100 V=
s 500 130 500 90 551
a 0 up 33 0 502 110 hlt 100 V=
s 520 90 500 90 553
a 0 up 33 0 510 89 hct 100 V=
w 556
a 0 up 0:33 0 0 0 hln 100 V=
s 550 90 630 90 555
a 0 up 33 0 605 89 hct 100 V=
s 630 90 630 120 557
a 0 up 33 0 632 125 hlt 100 V=
w 580
a 0 up 0:33 0 0 0 hln 100 V=
s 630 250 630 260 579
a 0 up 33 0 632 255 hlt 100 V=
w 446
a 0 up 0:33 0 0 0 hln 100 V=
s 500 310 500 300 445
s 500 310 560 310 455
a 0 up 33 0 530 309 hct 100 V=
s 560 310 630 310 484
s 630 300 630 310 581
w 466
a 0 up 0:33 0 0 0 hln 100 V=
s 550 220 630 220 532
a 0 up 33 0 605 219 hct 100 V=
w 462
a 0 up 0:33 0 0 0 hln 100 V=
s 500 260 500 220 461
a 0 up 33 0 502 240 hlt 100 V=
s 520 220 500 220 463
a 0 up 33 0 510 219 hct 100 V=
w 594
a 0 up 0:33 0 0 0 hln 100 V=
s 700 130 700 90 593
a 0 up 33 0 702 110 hlt 100 V=
s 720 90 700 90 595
a 0 up 33 0 710 89 hct 100 V=
w 598
a 0 up 0:33 0 0 0 hln 100 V=
s 750 90 830 90 597
a 0 up 33 0 805 89 hct 100 V=
s 830 90 830 120 599
a 0 up 33 0 832 125 hlt 100 V=
w 586
a 0 up 0:33 0 0 0 hln 100 V=
s 700 180 700 170 585
s 700 180 760 180 591
a 0 up 33 0 795 179 hct 100 V=
s 830 150 830 180 587
a 0 up 33 0 832 160 hlt 100 V=
s 760 180 830 180 605
a 0 up 33 0 795 179 hct 100 V=
w 610
a 0 up 0:33 0 0 0 hln 100 V=
s 680 310 680 300 609
s 680 310 740 310 613
a 0 up 33 0 710 309 hct 100 V=
s 810 300 810 310 615
s 740 310 810 310 628
a 0 up 33 0 775 309 hct 100 V=
w 620
a 0 up 0:33 0 0 0 hln 100 V=
s 680 260 680 220 619
a 0 up 33 0 682 240 hlt 100 V=
s 700 220 680 220 621
a 0 up 33 0 690 219 hct 100 V=
w 632
a 0 up 0:33 0 0 0 hln 100 V=
s 500 430 500 420 631
s 500 430 560 430 635
a 0 up 33 0 530 429 hct 100 V=
s 630 420 630 430 637
s 560 430 630 430 650
a 0 up 33 0 595 429 hct 100 V=
w 630
a 0 up 0:33 0 0 0 hln 100 V=
s 630 370 630 380 629
a 0 up 33 0 632 375 hlt 100 V=
w 642
a 0 up 0:33 0 0 0 hln 100 V=
s 500 380 500 340 641
a 0 up 33 0 502 360 hlt 100 V=
s 520 340 500 340 643
a 0 up 33 0 510 339 hct 100 V=
w 640
a 0 up 0:33 0 0 0 hln 100 V=
s 550 340 630 340 639
a 0 up 33 0 605 339 hct 100 V=
w 618
a 0 up 0:33 0 0 0 hln 100 V=
s 730 220 810 220 617
a 0 up 33 0 785 219 hct 100 V=
w 608
a 0 up 0:33 0 0 0 hln 100 V=
s 810 250 810 260 607
a 0 up 33 0 812 255 hlt 100 V=
w 657
a 0 up 0:33 0 0 0 hln 100 V=
s 680 430 680 420 656
s 680 430 740 430 662
a 0 up 33 0 775 429 hct 100 V=
s 810 420 810 430 660
s 740 430 810 430 677
a 0 up 33 0 775 429 hct 100 V=
w 665
a 0 up 0:33 0 0 0 hln 100 V=
s 810 370 810 380 664
a 0 up 33 0 812 375 hlt 100 V=
w 417
a 0 up 0:33 0 0 0 hln 100 V=
s 250 480 250 440 416
a 0 up 33 0 252 460 hlt 100 V=
s 270 440 250 440 938
a 0 up 33 0 260 439 hct 100 V=
w 421
a 0 up 0:33 0 0 0 hln 100 V=
s 310 440 330 440 428
a 0 up 33 0 355 439 hct 100 V=
s 330 470 330 450 426
a 0 up 33 0 332 445 hlt 100 V=
s 330 450 330 440 432
s 330 440 380 440 940
w 667
a 0 up 0:33 0 0 0 hln 100 V=
s 680 380 680 340 666
a 0 up 33 0 682 360 hlt 100 V=
s 700 340 680 340 668
a 0 up 33 0 690 339 hct 100 V=
w 671
a 0 up 0:33 0 0 0 hln 100 V=
s 730 340 810 340 670
a 0 up 33 0 785 339 hct 100 V=
w 6
a 0 sr 0 0 0 0 hln 100 LABEL=vin
a 0 up 0:33 0 0 0 hln 100 V=
s 60 110 80 110 945
a 0 sr 3 0 65 108 hcn 100 LABEL=vin
s 50 110 60 110 7
a 0 up 33 0 65 109 hct 100 V=
s 50 120 50 110 5
w 10
a 0 sr 0 0 0 0 hln 100 LABEL=vout
a 0 up 0:33 0 0 0 hln 100 V=
s 110 110 160 110 9
a 0 up 33 0 140 109 hct 100 V=
a 0 sr 3 0 140 108 hcn 100 LABEL=vout
s 170 110 170 120 11
s 160 110 170 110 947
w 504
a 0 up 0:33 0 0 0 hln 100 V=
s 60 620 60 580 503
a 0 up 33 0 62 600 hlt 100 V=
s 80 580 60 580 505
a 0 up 33 0 70 579 hct 100 V=
w 490
a 0 up 0:33 0 0 0 hln 100 V=
s 60 670 60 660 489
s 60 670 120 670 499
a 0 up 33 0 90 669 hct 100 V=
s 140 670 190 670 523
s 190 660 190 670 525
s 120 670 140 670 527
w 508
a 0 up 0:33 0 0 0 hln 100 V=
s 120 580 140 580 515
a 0 up 33 0 165 579 hct 100 V=
s 140 580 190 580 905
s 140 590 140 580 521
w 957
a 0 up 0:33 0 0 0 hln 100 V=
s 190 610 190 620 956
a 0 up 33 0 192 615 hlt 100 V=
@junction
j 290 110
+ p 57 +
+ p 46 1
j 140 350
+ p 187 -
+ p 188 1
j 260 350
+ p 253 1
+ p 255 +
j 110 170
+ s 21
+ w 14
j 50 160
+ p 23 -
+ w 14
j 170 160
+ p 4 1
+ w 14
j 290 170
+ s 49
+ w 39
j 350 160
+ p 47 1
+ w 39
j 230 160
+ p 48 -
+ w 39
j 250 110
+ p 57 -
+ w 35
j 230 120
+ p 48 +
+ w 35
j 350 120
+ p 47 2
+ w 31
j 320 110
+ p 46 2
+ w 31
j 140 240
+ p 140 2
+ w 124
j 120 220
+ p 141 1
+ w 124
j 60 270
+ p 139 -
+ w 128
j 120 280
+ s 142
+ w 128
j 140 270
+ p 140 1
+ w 128
j 80 220
+ p 141 2
+ w 136
j 60 230
+ p 139 +
+ w 136
j 60 390
+ p 186 -
+ w 168
j 120 400
+ s 190
+ w 168
j 140 390
+ p 187 +
+ w 168
j 60 350
+ p 186 +
+ w 176
j 80 310
+ p 185 2
+ w 176
j 120 310
+ p 185 1
+ w 180
j 140 320
+ p 188 2
+ w 180
j 260 350
+ p 253 1
+ w 232
j 260 350
+ p 255 +
+ w 232
j 180 390
+ p 252 -
+ w 234
j 240 400
+ s 256
+ w 234
j 260 390
+ p 255 -
+ w 234
j 180 350
+ p 252 +
+ w 242
j 200 310
+ p 251 2
+ w 242
j 240 310
+ p 251 1
+ w 246
j 260 320
+ p 253 2
+ w 246
j 140 480
+ p 311 1
+ w 282
j 140 490
+ p 313 -
+ w 282
j 190 490
+ p 315 1
+ w 284
j 190 480
+ p 317 -
+ w 284
j 60 520
+ p 310 -
+ w 286
j 120 530
+ s 318
+ w 286
j 190 520
+ p 315 2
+ w 286
j 140 530
+ p 313 +
+ w 286
j 80 110
+ p 3 1
+ w 6
j 50 120
+ p 23 +
+ w 6
j 110 110
+ p 3 2
+ w 10
j 170 120
+ p 4 2
+ w 10
j 120 440
+ p 309 1
+ w 302
j 190 440
+ p 317 +
+ w 302
j 140 450
+ p 311 2
+ w 302
j 140 440
+ w 302
+ w 302
j 60 480
+ p 310 +
+ w 298
j 80 440
+ p 309 2
+ w 298
j 250 520
+ p 430 -
+ w 405
j 310 530
+ s 438
+ w 405
j 330 530
+ p 443 -
+ w 405
j 380 520
+ p 435 2
+ w 405
j 330 480
+ p 431 1
+ w 401
j 330 490
+ p 443 +
+ w 401
j 380 490
+ p 435 1
+ w 403
j 380 480
+ p 442 +
+ w 403
j 60 660
+ p 519 -
+ w 490
j 120 670
+ s 526
+ w 490
j 140 670
+ p 522 -
+ w 490
j 140 620
+ p 520 1
+ w 502
j 140 630
+ p 522 +
+ w 502
j 60 620
+ p 519 +
+ w 504
j 80 580
+ p 518 2
+ w 504
j 250 480
+ p 430 +
+ w 417
j 270 440
+ p 429 2
+ w 417
j 310 440
+ p 429 1
+ w 421
j 380 440
+ p 442 -
+ w 421
j 330 450
+ p 431 2
+ w 421
j 330 440
+ w 421
+ w 421
j 500 170
+ p 561 -
+ w 544
j 560 180
+ s 562
+ w 544
j 630 150
+ p 560 2
+ w 544
j 500 130
+ p 561 +
+ w 552
j 520 90
+ p 559 1
+ w 552
j 550 90
+ p 559 2
+ w 556
j 630 120
+ p 560 1
+ w 556
j 630 260
+ p 578 +
+ w 580
j 630 250
+ p 478 2
+ w 580
j 500 300
+ p 542 -
+ w 446
j 560 310
+ s 483
+ w 446
j 630 300
+ p 578 -
+ w 446
j 550 220
+ p 531 2
+ w 466
j 630 220
+ p 478 1
+ w 466
j 500 260
+ p 542 +
+ w 462
j 520 220
+ p 531 1
+ w 462
j 700 130
+ p 603 +
+ w 594
j 720 90
+ p 601 1
+ w 594
j 750 90
+ p 601 2
+ w 598
j 830 120
+ p 606 2
+ w 598
j 700 170
+ p 603 -
+ w 586
j 760 180
+ s 604
+ w 586
j 830 150
+ p 606 1
+ w 586
j 680 300
+ p 623 -
+ w 610
j 740 310
+ s 627
+ w 610
j 810 300
+ p 624 -
+ w 610
j 680 260
+ p 623 +
+ w 620
j 700 220
+ p 625 1
+ w 620
j 500 420
+ p 645 -
+ w 632
j 560 430
+ s 649
+ w 632
j 630 420
+ p 652 +
+ w 632
j 630 380
+ p 652 -
+ w 630
j 630 370
+ p 648 2
+ w 630
j 500 380
+ p 645 +
+ w 642
j 520 340
+ p 647 1
+ w 642
j 550 340
+ p 647 2
+ w 640
j 630 340
+ p 648 1
+ w 640
j 730 220
+ p 625 2
+ w 618
j 810 220
+ p 655 2
+ w 618
j 810 260
+ p 624 +
+ w 608
j 810 250
+ p 655 1
+ w 608
j 680 420
+ p 672 -
+ w 657
j 740 430
+ s 676
+ w 657
j 810 420
+ p 674 +
+ w 657
j 810 380
+ p 674 -
+ w 665
j 810 370
+ p 678 1
+ w 665
j 730 340
+ p 673 2
+ w 671
j 810 340
+ p 678 2
+ w 671
j 680 380
+ p 672 +
+ w 667
j 700 340
+ p 673 1
+ w 667
j 60 110
+ p 944 pin1
+ w 6
j 160 110
+ p 946 pin1
+ w 10
j 60 620
+ p 948 pin1
+ p 519 +
j 60 620
+ p 948 pin1
+ w 504
j 120 580
+ p 518 1
+ w 508
j 140 590
+ p 520 2
+ w 508
j 140 580
+ w 508
+ w 508
j 190 580
+ p 949 pin1
+ w 508
j 190 660
+ p 951 +
+ w 490
j 190 620
+ p 951 -
+ w 957
j 190 580
+ p 958 2
+ p 949 pin1
j 190 580
+ p 958 2
+ w 508
j 190 610
+ p 958 1
+ w 957
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 144 t 5 60 55 110 80 0 8
clippers
t 564 t 5 500 45 537 61 0 7
clumper
a 565 a 0 430 730 430 570 430 10 
a 681 a 0 910 720 910 560 910 0 
