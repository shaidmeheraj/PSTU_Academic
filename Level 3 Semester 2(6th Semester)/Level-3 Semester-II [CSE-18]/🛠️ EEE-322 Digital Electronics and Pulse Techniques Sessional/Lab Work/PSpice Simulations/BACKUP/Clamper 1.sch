*version 9.1 793999970
u 25
V? 3
C? 2
D? 2
R? 2
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 10us
+1 5ms
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
pageloc 1 0 2407 
@status
n 0 125:01:16:10:36:52;1739680612 e 
s 0 125:01:16:10:36:56;1739680616 e 
c 125:01:16:10:38:42;1739680722
*page 1 0 970 720 iA
@ports
port 3 GND_EARTH 510 160 h
port 7 GND_EARTH 590 170 h
port 17 GND_EARTH 630 140 h
@parts
part 5 D1N4002 590 100 d
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 17 4 hln 100 REFDES=D1
part 4 c 520 80 h
a 0 u 13 0 15 25 hln 100 VALUE=1uF
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 6 VDC 590 130 h
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 2 VPULSE 510 120 h
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 V2=-15V
a 1 u 0 0 0 0 hcn 100 TD=1ns
a 1 u 0 0 0 0 hcn 100 TR=1ns
a 1 u 0 0 0 0 hcn 100 TF=1ns
a 1 u 0 0 0 0 hcn 100 PW=0.5ms
a 1 u 0 0 0 0 hcn 100 PER=1ms
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 16 r 630 140 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 20 hln 100 VALUE=100
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 22 nodeMarker 620 80 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
part 24 nodeMarker 510 80 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTMAGENTA
@conn
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 550 80 590 80 12
a 0 up 33 0 570 79 hct 100 V=
s 590 80 590 100 14
s 590 80 620 80 18
s 630 80 630 100 20
s 620 80 630 80 23
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 510 120 510 80 8
a 0 up 33 0 512 100 hlt 100 V=
s 510 80 520 80 10
@junction
j 510 160
+ s 3
+ p 2 -
j 590 130
+ p 6 +
+ p 5 2
j 590 170
+ s 7
+ p 6 -
j 510 120
+ p 2 +
+ w 9
j 520 80
+ p 4 1
+ w 9
j 550 80
+ p 4 2
+ w 13
j 590 100
+ p 5 1
+ w 13
j 630 140
+ s 17
+ p 16 1
j 590 80
+ w 13
+ w 13
j 630 100
+ p 16 2
+ w 13
j 620 80
+ p 22 pin1
+ w 13
j 510 80
+ p 24 pin1
+ w 9
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
