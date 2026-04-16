*version 9.1 546123805
u 81
V? 4
R? 5
C? 3
U? 2
? 7
@libraries
@analysis
.AC 1 3 0
+0 10
+1 10Hz
+2 10KHz
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
pageloc 1 0 4478 
@status
n 0 125:04:27:20:18:24;1748355504 e 
s 0 125:05:23:06:08:03;1750637283 e 
c 125:05:23:06:13:49;1750637629
*page 1 0 970 720 iA
@ports
port 9 GND_ANALOG 320 250 h
port 55 GND_ANALOG 720 170 h
port 56 GND_ANALOG 780 170 h
port 70 GLOBAL 720 130 h
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
port 69 GLOBAL 780 130 h
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 71 GLOBAL 560 130 u
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 72 GLOBAL 560 200 u
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
port 10 GND_ANALOG 500 250 h
port 11 GND_ANALOG 620 250 h
@parts
part 53 VDC 720 130 h
a 1 u 13 0 -6 33 hcn 100 DC=15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 32 hcn 100 REFDES=V2
part 54 VDC 780 170 u
a 1 u 13 0 -11 13 hcn 100 DC=15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 24 12 hcn 100 REFDES=V1
part 7 c 520 50 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 0:13 0 15 25 hln 100 VALUE=0.02uF
part 5 r 550 90 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=R_f
a 0 xp 9 0 15 0 hln 100 REFDES=R_f
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 0:13 0 15 25 hln 100 VALUE=20k
part 4 r 450 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 0:13 0 15 25 hln 100 VALUE=10k
part 3 r 360 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 0:13 0 15 25 hln 100 VALUE=10k
part 2 VAC 320 210 h
a 0 u 0 0 0 20 hcn 100 ACPHASE=0
a 0 sp 0 0 0 50 hln 100 PART=VAC
a 0 u 0:13 0 -19 38 hcn 100 ACMAG=1V
a 0 x 0:13 0 0 0 hln 100 PKGREF=V_in
a 1 xp 9 0 -10 10 hcn 100 REFDES=V_in
part 8 uA741 520 180 U
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=
a 0 xp 9 0 24 -15 hln 100 REFDES=
a 0 sp 11 0 25 35 hcn 100 PART=uA741
part 6 c 500 240 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 0:13 0 5 0 hln 100 VALUE=0.01uF
part 49 r 620 240 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=R_L
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 0:13 0 15 25 hln 100 VALUE=1k
a 0 xp 9 0 15 40 hln 100 REFDES=R_L
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 320 210 320 180 12
s 320 180 360 180 14
a 0 up 33 0 340 179 hct 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 520 140 490 140 24
s 490 140 490 90 26
s 490 90 550 90 28
a 0 up 33 0 520 89 hct 100 V=
w 17
a 0 up 0:33 0 0 0 hln 100 V=
s 400 180 430 180 16
s 430 180 450 180 32
s 430 180 430 50 30
a 0 up 33 0 432 115 hlt 100 V=
s 430 50 520 50 33
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 490 180 500 180 18
s 500 180 500 210 20
a 0 up 33 0 502 195 hlt 100 V=
s 520 180 500 180 22
w 75
a 0 up 0:33 0 0 0 hln 100 V=
s 560 200 560 190 74
a 0 up 33 0 562 195 hlt 100 V=
w 36
a 0 sr 0 0 0 0 hln 100 LABEL=V_o
a 0 up 0:33 0 0 0 hln 100 V=
s 620 200 620 160 50
a 0 up 33 0 622 171 hlt 100 V=
a 0 sr 3 0 632 160 hln 100 LABEL=V_o
s 550 50 620 50 35
s 620 50 620 90 37
s 620 90 590 90 39
s 620 90 620 160 41
s 620 160 600 160 43
w 78
s 500 250 500 240 77
w 80
s 620 250 620 240 79
@junction
j 320 250
+ s 9
+ p 2 -
j 320 210
+ p 2 +
+ w 13
j 360 180
+ p 3 1
+ w 13
j 400 180
+ p 3 2
+ w 17
j 550 90
+ p 5 1
+ w 25
j 430 180
+ w 17
+ w 17
j 500 210
+ p 6 2
+ w 19
j 500 180
+ w 19
+ w 19
j 720 170
+ p 53 -
+ s 55
j 780 170
+ p 54 +
+ s 56
j 780 130
+ s 69
+ p 54 -
j 720 130
+ s 70
+ p 53 +
j 560 200
+ s 72
+ w 75
j 590 90
+ p 5 2
+ w 36
j 620 90
+ w 36
+ w 36
j 620 160
+ w 36
+ w 36
j 520 50
+ p 7 1
+ w 17
j 550 50
+ p 7 2
+ w 36
j 450 180
+ p 4 1
+ w 17
j 490 180
+ p 4 2
+ w 19
j 620 200
+ p 49 2
+ w 36
j 520 140
+ p 8 -
+ w 25
j 520 180
+ p 8 +
+ w 19
j 560 130
+ s 71
+ p 8 V-
j 560 190
+ p 8 V+
+ w 75
j 600 160
+ p 8 OUT
+ w 36
j 500 240
+ p 6 1
+ w 78
j 500 250
+ s 10
+ w 78
j 620 240
+ p 49 1
+ w 80
j 620 250
+ s 11
+ w 80
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
