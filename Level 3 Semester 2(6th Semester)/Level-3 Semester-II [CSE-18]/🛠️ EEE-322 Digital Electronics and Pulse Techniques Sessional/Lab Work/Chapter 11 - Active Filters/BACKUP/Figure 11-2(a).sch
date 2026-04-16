*version 9.1 421030093
u 97
U? 3
R? 4
C? 2
V? 5
@libraries
@analysis
.AC 1 3 0
+0 10
+1 10Hz
+2 10kHz
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
pageloc 1 0 3863 
@status
c 125:04:27:19:41:48;1748353308
n 0 125:04:27:19:41:59;1748353319 e 
s 2832 125:05:23:05:59:26;1750636766 e 
*page 1 0 970 720 iA
@ports
port 37 AGND 310 260 h
port 11 AGND 220 290 h
port 74 AGND 530 190 h
port 70 GLOBAL 530 130 h
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
port 71 GLOBAL 600 130 h
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 75 AGND 600 190 h
port 56 GLOBAL 380 160 u
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 55 GLOBAL 380 240 u
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
port 38 AGND 450 240 h
@parts
part 6 c 310 260 v
a 0 u 13 0 0 5 hln 100 VALUE=0.001uF
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=C
a 0 xp 9 0 15 0 hln 100 REFDES=C
part 4 r 360 120 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rf
a 0 xp 9 0 15 0 hln 100 REFDES=Rf
part 72 VDC 530 150 h
a 1 u 13 0 -11 18 hcn 100 DC=15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 12 hcn 100 REFDES=V2
part 73 VDC 600 190 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
a 1 u 13 0 -11 18 hcn 100 DC=15V
part 52 r 450 230 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 3 uA741 340 210 U
a 0 ap 9 0 24 25 hln 100 REFDES=U2
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 sp 11 0 30 35 hcn 100 PART=uA741
part 5 r 250 210 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 96 VAC 220 230 h
a 0 u 13 0 26 33 hcn 100 ACMAG=1V
a 0 u 0 0 0 20 hcn 100 ACPHASE=0
a 0 sp 0 0 0 50 hln 100 PART=VAC
a 0 x 0:13 0 0 0 hln 100 PKGREF=Ei
a 1 xp 9 0 -10 15 hcn 100 REFDES=Ei
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 40
s 220 290 220 270 39
w 77
a 0 up 0:33 0 0 0 hln 100 V=
s 530 130 530 150 76
a 0 up 33 0 542 140 hlt 100 V=
w 79
a 0 up 0:33 0 0 0 hln 100 V=
s 600 130 600 150 85
a 0 up 33 0 617 145 hlt 100 V=
w 67
a 0 sr 0 0 0 0 hln 100 LABEL=Vo
a 0 up 0:33 0 0 0 hln 100 V=
s 420 190 450 190 50
a 0 sr 3 0 460 188 hcn 100 LABEL=Vo
a 0 up 33 0 490 189 hct 100 V=
s 450 120 400 120 59
s 450 190 450 120 57
w 54
a 0 up 0:33 0 0 0 hln 100 V=
s 450 230 450 240 53
a 0 up 33 0 457 235 hlt 100 V=
w 88
a 0 up 0:33 0 0 0 hln 100 V=
s 380 240 380 220 87
a 0 up 33 0 382 250 hlt 100 V=
w 62
a 0 up 0:33 0 0 0 hln 100 V=
s 320 170 340 170 65
s 360 120 320 120 61
s 320 120 320 170 63
a 0 up 33 0 267 150 hlt 100 V=
w 46
a 0 up 0:33 0 0 0 hln 100 V=
s 290 210 310 210 45
s 310 210 340 210 49
a 0 up 33 0 325 194 hct 100 V=
s 310 230 310 210 47
w 42
a 0 up 0:33 0 0 0 hln 100 V=
s 220 230 220 210 41
s 220 210 250 210 43
a 0 up 33 0 235 214 hct 100 V=
@junction
j 310 260
+ s 37
+ p 6 1
j 220 290
+ s 11
+ w 40
j 250 210
+ p 5 1
+ w 42
j 290 210
+ p 5 2
+ w 46
j 310 230
+ p 6 2
+ w 46
j 310 210
+ w 46
+ w 46
j 360 120
+ p 4 1
+ w 62
j 530 130
+ s 70
+ w 77
j 530 190
+ s 74
+ p 72 -
j 530 150
+ p 72 +
+ w 77
j 600 130
+ s 71
+ w 79
j 600 190
+ p 73 +
+ s 75
j 600 150
+ p 73 -
+ w 79
j 380 240
+ s 55
+ w 88
j 340 210
+ p 3 +
+ w 46
j 380 160
+ s 56
+ p 3 V-
j 340 170
+ p 3 -
+ w 62
j 380 220
+ p 3 V+
+ w 88
j 450 230
+ p 52 1
+ w 54
j 450 240
+ s 38
+ w 54
j 420 190
+ p 3 OUT
+ w 67
j 450 190
+ p 52 2
+ w 67
j 400 120
+ p 4 2
+ w 67
j 220 230
+ p 96 +
+ w 42
j 220 270
+ p 96 -
+ w 40
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
