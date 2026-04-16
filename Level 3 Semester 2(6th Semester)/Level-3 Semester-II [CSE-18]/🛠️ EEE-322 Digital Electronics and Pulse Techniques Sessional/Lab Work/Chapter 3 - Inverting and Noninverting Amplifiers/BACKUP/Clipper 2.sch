*version 9.1 77417180
u 35
V? 5
R? 2
D? 3
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
pageloc 1 0 2359 
@status
n 0 125:01:16:10:23:22;1739679802 e 
s 2832 125:01:16:10:23:26;1739679806 e 
*page 1 0 970 720 iA
@ports
port 3 GND_EARTH 340 220 h
port 20 GND_EARTH 470 210 h
port 4 GND_EARTH 530 220 h
@parts
part 5 r 370 110 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 15 D1N4002 470 140 d
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 17 4 hln 100 REFDES=D2
part 6 D1N4002 530 180 v
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 17 4 hln 100 REFDES=D1
part 32 VSIN 340 140 h
a 1 u 0 0 0 0 hcn 100 VOFF=0v
a 1 u 0 0 0 0 hcn 100 VAMPL=10v
a 1 u 0 0 0 0 hcn 100 FREQ=1000
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
part 8 VDC 470 170 h
a 1 u 13 0 -11 18 hcn 100 DC=2V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
part 7 VDC 530 220 u
a 1 u 13 0 -11 18 hcn 100 DC=4V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 33 nodeMarker 340 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTRED
part 34 nodeMarker 530 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=D1:2
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
@conn
w 10
s 340 220 340 180 9
w 12
s 370 110 340 110 11
s 340 110 340 140 13
w 17
s 410 110 470 110 16
s 470 110 470 140 18
s 470 110 530 110 28
s 530 110 530 150 30
@junction
j 340 220
+ s 3
+ w 10
j 370 110
+ p 5 1
+ w 12
j 470 170
+ p 15 2
+ p 8 +
j 410 110
+ p 5 2
+ w 17
j 470 140
+ p 15 1
+ w 17
j 470 210
+ s 20
+ p 8 -
j 530 180
+ p 6 1
+ p 7 -
j 530 220
+ s 4
+ p 7 +
j 470 110
+ w 17
+ w 17
j 530 150
+ p 6 2
+ w 17
j 340 140
+ p 32 +
+ w 12
j 340 180
+ p 32 -
+ w 10
j 340 110
+ p 33 pin1
+ w 12
j 530 110
+ p 34 pin1
+ w 17
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
