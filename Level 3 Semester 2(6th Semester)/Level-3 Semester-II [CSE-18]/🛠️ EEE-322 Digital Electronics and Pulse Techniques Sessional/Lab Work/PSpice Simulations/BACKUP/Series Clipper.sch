*version 9.1 3773593495
u 31
V? 2
D? 3
R? 3
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
pageloc 1 0 1705 
@status
n 0 125:01:06:10:17:43;1738815463 e 
s 0 125:01:06:10:17:43;1738815463 e 
c 125:01:06:10:28:34;1738816114
*page 1 0 970 720 iA
@ports
port 3 GND_EARTH 360 170 h
port 4 GND_EARTH 510 160 h
@parts
part 18 r 440 120 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 22 D1N4002 510 130 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 17 4 hln 100 REFDES=D2
a 0 sp 11 0 12 -16 hln 100 PART=D1N4002
part 2 VSIN 360 130 h
a 1 u 0 0 0 0 hcn 100 VOFF=0v
a 1 u 0 0 0 0 hcn 100 VAMPL=20v
a 1 u 0 0 0 0 hcn 100 FREQ=1000
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 16 nodeMarker 500 120 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTMAGENTA
part 15 nodeMarker 360 120 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
@conn
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 510 120 510 130 13
s 500 120 510 120 17
s 480 120 500 120 19
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 360 120 360 130 9
s 440 120 360 120 29
a 0 up 33 0 460 119 hct 100 V=
@junction
j 360 170
+ s 3
+ p 2 -
j 440 120
+ p 18 1
+ w 21
j 500 120
+ p 16 pin1
+ w 12
j 480 120
+ p 18 2
+ w 12
j 510 130
+ p 22 1
+ w 12
j 510 160
+ s 4
+ p 22 2
j 360 130
+ p 2 +
+ w 21
j 360 120
+ p 15 pin1
+ w 21
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
