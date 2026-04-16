*version 9.1 865742277
u 54
U? 2
V? 4
R? 4
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
pageloc 1 0 3276 
@status
n 2911 125:01:16:10:51:35;1739681495 e 
c 125:01:16:10:52:03;1739681523
*page 1 0 970 720 iA
@ports
port 3 GLOBAL 520 240 u
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 9 GND_EARTH 450 160 h
port 21 GND_EARTH 660 170 h
port 10 GND_EARTH 420 250 h
port 6 GND_EARTH 640 280 h
port 4 GLOBAL 650 240 h
a 0 xr 3 0 20 8 hcn 100 LABEL=-V
port 49 GND_EARTH 600 220 h
port 18 GLOBAL 520 130 u
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
port 19 GLOBAL 660 130 h
a 0 xr 3 0 20 8 hcn 100 LABEL=+V
@parts
part 2 uA741 480 160 h
a 0 sp 11 0 0 70 hcn 100 PART=uA741
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 44 r 600 220 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 5 VDC 650 240 h
a 1 u 13 0 -11 18 hcn 100 DC=-15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 20 VDC 660 130 h
a 1 u 13 0 -11 18 hcn 100 DC=15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
part 11 VDC 420 210 h
a 1 u 13 0 -11 18 hcn 100 DC=0.5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 33 r 510 290 h
a 0 u 13 0 15 25 hln 100 VALUE=250k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 29 r 430 200 h
a 0 u 13 0 15 25 hln 100 VALUE=10k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 52 nodeMarker 580 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTCYAN
part 53 nodeMarker 430 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=MUSTARD
@conn
w 8
s 520 240 520 210 7
w 17
s 450 160 480 160 16
w 23
s 520 150 520 130 22
w 35
s 510 290 470 290 34
s 470 200 480 200 30
s 470 290 470 200 36
w 47
s 650 280 640 280 45
w 39
s 560 180 580 180 38
s 580 180 580 290 40
s 580 290 550 290 42
s 580 180 600 180 50
w 32
s 420 200 430 200 14
s 420 210 420 200 12
@junction
j 520 210
+ p 2 V-
+ w 8
j 520 240
+ s 3
+ w 8
j 480 160
+ p 2 +
+ w 17
j 450 160
+ s 9
+ w 17
j 660 130
+ p 20 +
+ s 19
j 660 170
+ s 21
+ p 20 -
j 520 150
+ p 2 V+
+ w 23
j 520 130
+ s 18
+ w 23
j 420 210
+ p 11 +
+ w 32
j 420 250
+ s 10
+ p 11 -
j 430 200
+ p 29 1
+ w 32
j 510 290
+ p 33 1
+ w 35
j 480 200
+ p 2 -
+ w 35
j 470 200
+ p 29 2
+ w 35
j 560 180
+ p 2 OUT
+ w 39
j 550 290
+ p 33 2
+ w 39
j 650 280
+ p 5 -
+ w 47
j 640 280
+ s 6
+ w 47
j 650 240
+ s 4
+ p 5 +
j 600 220
+ s 49
+ p 44 1
j 600 180
+ p 44 2
+ w 39
j 580 180
+ w 39
+ w 39
j 580 180
+ p 52 pin1
+ w 39
j 430 200
+ p 53 pin1
+ p 29 1
j 430 200
+ p 53 pin1
+ w 32
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
