*version 9.1 1515673290
u 12
V? 2
R? 3
D? 2
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
pageloc 1 0 1771 
@status
c 125:01:06:09:15:07;1738811707
*page 1 0 970 720 iA
@ports
port 3 GND_EARTH 350 160 h
port 7 GND_EARTH 420 140 h
@parts
part 6 D1N4002 350 100 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 17 4 hln 100 REFDES=D1
part 4 r 380 100 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 5 r 420 140 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 2 VSIN 350 120 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VOFF=0v
a 1 u 0 0 0 0 hcn 100 VAMPL=10v
a 1 u 0 0 0 0 hcn 100 FREQ=1000
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 11 nodeMarker 420 100 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=R1:2
a 0 a 0 0 4 22 hlb 100 LABEL=2
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTRED
part 10 nodeMarker 350 100 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=D1:1
a 0 a 0 0 4 22 hlb 100 LABEL=1
a 0 sp 0 0 0 0 hln 100 COLOR=BRIGHTYELLOW
@conn
w 9
s 350 120 350 100 8
@junction
j 350 160
+ s 3
+ p 2 -
j 420 100
+ p 5 2
+ p 4 2
j 380 100
+ p 6 2
+ p 4 1
j 420 140
+ s 7
+ p 5 1
j 350 120
+ p 2 +
+ w 9
j 350 100
+ p 6 1
+ w 9
j 350 100
+ p 10 pin1
+ p 6 1
j 350 100
+ p 10 pin1
+ w 9
j 420 100
+ p 11 pin1
+ p 4 2
j 420 100
+ p 11 pin1
+ p 5 2
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
