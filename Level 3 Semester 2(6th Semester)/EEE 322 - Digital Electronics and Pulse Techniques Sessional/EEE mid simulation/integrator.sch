*version 9.1 163711604
u 32
V? 2
U? 2
R? 2
C? 2
? 3
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
pageloc 1 0 1872 
@status
n 0 126:03:02:04:15:07;1775128507 e 
s 0 126:03:02:04:15:07;1775128507 e 
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 210 170 h
port 5 GND_EARTH 80 210 h
@parts
part 19 c 220 240 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 2 vsin 90 210 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=10
a 1 u 0 0 0 0 hcn 100 FREQ=4
part 4 r 130 210 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 3 opamp 210 170 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 30 nodeMarker 130 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 31 nodeMarker 290 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 8
s 90 210 80 210 7
w 25
s 220 240 200 240 24
s 170 210 200 210 17
s 200 210 210 210 28
s 200 240 200 210 26
w 21
s 290 190 290 240 20
s 290 240 250 240 22
@junction
j 210 170
+ s 6
+ p 3 +
j 90 210
+ p 2 +
+ w 8
j 80 210
+ s 5
+ w 8
j 130 210
+ p 4 1
+ p 2 -
j 290 190
+ p 3 OUT
+ w 21
j 250 240
+ p 19 2
+ w 21
j 220 240
+ p 19 1
+ w 25
j 170 210
+ p 4 2
+ w 25
j 210 210
+ p 3 -
+ w 25
j 200 210
+ w 25
+ w 25
j 130 210
+ p 30 pin1
+ p 2 -
j 130 210
+ p 30 pin1
+ p 4 1
j 290 190
+ p 31 pin1
+ p 3 OUT
j 290 190
+ p 31 pin1
+ w 21
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
