*version 9.1 2238447939
u 108
V? 4
R? 5
D? 3
? 13
@libraries
@analysis
.AC 0 1 0
+0 101
+1 10
+2 1.00K
.TRAN 1 0 0 0
+0 0ns
+1 2.5s
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
pageloc 1 0 3218 
@status
c 125:05:23:08:53:03;1750647183
n 0 125:05:23:08:53:06;1750647186 e 
s 2832 125:05:23:11:24:31;1750656271 e 
*page 1 0 970 720 iA
@ports
port 99 AGND 310 300 h
port 100 AGND 400 300 h
port 101 AGND 450 300 h
port 102 AGND 510 300 h
@parts
part 3 r 340 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 4 D1N4002 400 190 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 sp 11 0 22 59 hln 100 PART=D1N4002
a 0 ap 9 0 12 -1 hln 100 REFDES=D1
part 5 D1N4002 450 220 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 17 -1 hln 100 REFDES=D2
a 0 sp 11 0 7 64 hln 100 PART=D1N4002
part 7 VDC 450 260 u
a 1 u 13 0 -11 18 hcn 100 DC=13V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
part 8 r 510 200 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R_L
a 0 xp 9 0 15 0 hln 100 REFDES=R_L
a 0 u 13 0 30 0 hln 100 VALUE=1k
part 2 VSIN 310 200 h
a 1 u 0 0 0 0 hcn 100 FREQ=2
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=25
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 6 VDC 400 220 h
a 1 u 13 0 -11 18 hcn 100 DC=10V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 106 nodeMarker 310 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=11
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTGREEN
part 107 nodeMarker 510 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=12
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTRED
@conn
w 87
a 0 up 0:33 0 0 0 hln 100 V=
s 310 300 310 240 40
a 0 up 33 0 312 270 hlt 100 V=
w 97
a 0 up 0:33 0 0 0 hln 100 V=
s 400 260 400 300 93
a 0 up 33 0 402 280 hlt 100 V=
w 96
a 0 up 0:33 0 0 0 hln 100 V=
s 450 260 450 300 90
a 0 up 33 0 452 280 hlt 100 V=
w 98
a 0 up 0:33 0 0 0 hln 100 V=
s 510 300 510 240 105
a 0 up 33 0 512 280 hlt 100 V=
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 310 200 310 180 13
s 310 180 340 180 15
a 0 up 33 0 325 179 hct 100 V=
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 450 180 510 180 25
a 0 up 33 0 480 179 hct 100 V=
s 380 180 400 180 17
s 400 180 400 190 19
s 400 180 450 180 21
s 450 180 450 190 23
s 510 180 510 200 27
@junction
j 450 220
+ p 7 -
+ p 5 1
j 400 220
+ p 6 +
+ p 4 2
j 380 180
+ p 3 2
+ w 18
j 400 190
+ p 4 1
+ w 18
j 400 180
+ w 18
+ w 18
j 450 190
+ p 5 2
+ w 18
j 450 180
+ w 18
+ w 18
j 510 200
+ p 8 1
+ w 18
j 310 200
+ p 2 +
+ w 14
j 340 180
+ p 3 1
+ w 14
j 310 240
+ p 2 -
+ w 87
j 510 240
+ p 8 2
+ w 98
j 450 260
+ p 7 +
+ w 96
j 400 260
+ p 6 -
+ w 97
j 310 300
+ s 99
+ w 87
j 400 300
+ s 100
+ w 97
j 450 300
+ s 101
+ w 96
j 510 300
+ s 102
+ w 98
j 310 180
+ p 106 pin1
+ w 14
j 510 180
+ p 107 pin1
+ w 18
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
