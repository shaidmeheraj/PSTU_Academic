*version 9.1 713681288
u 38
D? 2
V? 3
R? 2
C? 2
? 5
@libraries
@analysis
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
pageloc 1 0 2575 
@status
n 0 125:05:23:09:05:11;1750647911 e 
s 2832 125:05:23:11:23:46;1750656226 e 
*page 1 0 970 720 iA
@ports
port 29 AGND 380 270 h
port 34 AGND 300 270 h
port 35 AGND 440 270 h
@parts
part 2 D1N4002 380 210 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 7 -1 hln 100 REFDES=D1
a 0 sp 11 0 22 -1 hln 100 PART=D1N4002
part 4 r 440 190 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 5 VSIN 300 190 h
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=40
a 1 u 0 0 0 0 hcn 100 FREQ=2
a 0 x 0:13 0 0 0 hln 100 PKGREF=V_in
a 1 xp 9 0 30 30 hcn 100 REFDES=V_in
part 3 VDC 380 250 u
a 1 u 13 0 -11 18 hcn 100 DC=10V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 6 c 330 160 h
a 0 u 13 0 15 25 hln 100 VALUE=1m
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 37 nodeMarker 440 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:1
a 0 a 0 0 4 22 hlb 100 LABEL=4
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTRED
part 36 nodeMarker 300 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=V_in:+
a 0 a 0 0 4 22 hlb 100 LABEL=3
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTGREEN
@conn
w 20
a 0 up 0:33 0 0 0 hln 100 V=
s 380 270 380 250 23
a 0 up 33 0 382 260 hlt 100 V=
w 33
a 0 up 0:33 0 0 0 hln 100 V=
s 300 230 300 270 19
a 0 up 33 0 302 250 hlt 100 V=
w 32
a 0 up 0:33 0 0 0 hln 100 V=
s 440 230 440 270 25
a 0 up 33 0 442 250 hlt 100 V=
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 300 190 300 160 7
s 300 160 330 160 9
a 0 up 33 0 315 159 hct 100 V=
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 360 160 380 160 11
s 380 160 380 180 13
s 380 160 440 160 15
a 0 up 33 0 410 159 hct 100 V=
s 440 160 440 190 17
@junction
j 380 210
+ p 3 -
+ p 2 1
j 300 190
+ p 5 +
+ w 8
j 330 160
+ p 6 1
+ w 8
j 360 160
+ p 6 2
+ w 12
j 380 180
+ p 2 2
+ w 12
j 380 160
+ w 12
+ w 12
j 440 190
+ p 4 1
+ w 12
j 300 230
+ p 5 -
+ w 33
j 380 250
+ p 3 +
+ w 20
j 440 230
+ p 4 2
+ w 32
j 380 270
+ s 29
+ w 20
j 300 270
+ s 34
+ w 33
j 440 270
+ s 35
+ w 32
j 300 160
+ p 36 pin1
+ w 8
j 440 160
+ p 37 pin1
+ w 12
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
