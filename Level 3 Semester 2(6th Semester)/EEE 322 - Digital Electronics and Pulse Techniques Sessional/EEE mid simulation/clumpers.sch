*version 9.1 477069420
u 132
C? 7
D? 7
V? 11
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10
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
pageloc 1 0 9949 
@status
n 0 126:03:01:16:25:00;1775085900 e 
s 2832 126:03:02:08:18:06;1775143086 e 
*page 1 0 970 720 iA
@ports
port 25 GND_EARTH 150 200 h
port 26 GND_EARTH 150 330 h
port 27 GND_EARTH 350 200 h
port 28 GND_EARTH 330 330 h
port 29 GND_EARTH 150 450 h
port 30 GND_EARTH 330 450 h
@parts
part 3 c 110 110 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 4 D1N4002 220 140 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 22 -6 hln 100 REFDES=D1
part 5 vpulse 90 150 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 6 vpulse 90 280 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
part 7 vdc 220 280 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
part 8 c 110 240 h
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 9 D1N4002 220 240 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 22 -6 hln 100 REFDES=D2
part 10 c 310 110 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 ap 9 0 15 0 hln 100 REFDES=C3
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
part 11 vpulse 290 150 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
part 12 D1N4002 420 170 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D3
a 0 ap 9 0 22 -6 hln 100 REFDES=D3
part 13 vpulse 270 280 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V5
a 1 ap 9 0 20 10 hcn 100 REFDES=V5
part 14 vdc 400 280 h
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V6
a 1 ap 9 0 24 7 hcn 100 REFDES=V6
part 15 c 290 240 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 ap 9 0 15 0 hln 100 REFDES=C4
a 0 a 0:13 0 0 0 hln 100 PKGREF=C4
part 16 vpulse 90 400 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V7
a 1 ap 9 0 20 10 hcn 100 REFDES=V7
part 17 c 110 360 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 ap 9 0 15 0 hln 100 REFDES=C5
a 0 a 0:13 0 0 0 hln 100 PKGREF=C5
part 18 vdc 220 440 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V8
a 1 ap 9 0 24 7 hcn 100 REFDES=V8
part 19 D1N4002 220 360 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D4
a 0 ap 9 0 22 -6 hln 100 REFDES=D4
part 20 D1N4002 400 270 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D5
a 0 ap 9 0 22 -6 hln 100 REFDES=D5
part 21 vpulse 270 400 h
a 1 u 0 0 0 0 hcn 100 PW=0.5
a 1 u 0 0 0 0 hcn 100 PER=1
a 1 u 0 0 0 0 hcn 100 V2=-10v
a 1 u 0 0 0 0 hcn 100 V1=10v
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=0
a 1 u 0 0 0 0 hcn 100 TF=0
a 0 a 0:13 0 0 0 hln 100 PKGREF=V9
a 1 ap 9 0 20 10 hcn 100 REFDES=V9
part 22 c 290 360 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=1u
a 0 ap 9 0 15 0 hln 100 REFDES=C6
a 0 a 0:13 0 0 0 hln 100 PKGREF=C6
part 23 vdc 400 440 u
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=5
a 0 a 0:13 0 0 0 hln 100 PKGREF=V10
a 1 ap 9 0 24 7 hcn 100 REFDES=V10
part 24 D1N4002 400 390 v
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 22 54 hln 100 PART=D1N4002
a 0 a 0:13 0 0 0 hln 100 PKGREF=D6
a 0 ap 9 0 22 -6 hln 100 REFDES=D6
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 129 nodeMarker 300 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 131 nodeMarker 420 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 34
a 0 up 0:33 0 0 0 hln 100 V=
s 90 200 90 190 33
s 90 200 150 200 35
a 0 up 33 0 120 199 hct 100 V=
s 220 170 220 200 37
a 0 up 33 0 222 180 hlt 100 V=
s 150 200 220 200 39
a 0 up 33 0 185 199 hct 100 V=
w 42
a 0 up 0:33 0 0 0 hln 100 V=
s 90 150 90 110 41
a 0 up 33 0 92 130 hlt 100 V=
s 110 110 90 110 43
a 0 up 33 0 100 109 hct 100 V=
w 46
a 0 up 0:33 0 0 0 hln 100 V=
s 140 110 220 110 45
a 0 up 33 0 195 109 hct 100 V=
s 220 110 220 140 47
a 0 up 33 0 222 145 hlt 100 V=
w 50
a 0 up 0:33 0 0 0 hln 100 V=
s 220 270 220 280 49
a 0 up 33 0 222 275 hlt 100 V=
w 52
a 0 up 0:33 0 0 0 hln 100 V=
s 90 330 90 320 51
s 90 330 150 330 53
a 0 up 33 0 120 329 hct 100 V=
s 150 330 220 330 55
a 0 up 33 0 185 329 hct 100 V=
s 220 320 220 330 57
w 60
a 0 up 0:33 0 0 0 hln 100 V=
s 140 240 220 240 59
a 0 up 33 0 195 239 hct 100 V=
w 62
a 0 up 0:33 0 0 0 hln 100 V=
s 90 280 90 240 61
a 0 up 33 0 92 260 hlt 100 V=
s 110 240 90 240 63
a 0 up 33 0 100 239 hct 100 V=
w 74
a 0 up 0:33 0 0 0 hln 100 V=
s 290 200 290 190 73
s 290 200 350 200 75
a 0 up 33 0 385 199 hct 100 V=
s 420 170 420 200 77
a 0 up 33 0 422 180 hlt 100 V=
s 350 200 420 200 79
a 0 up 33 0 385 199 hct 100 V=
w 82
a 0 up 0:33 0 0 0 hln 100 V=
s 270 330 270 320 81
s 270 330 330 330 83
a 0 up 33 0 300 329 hct 100 V=
s 400 320 400 330 85
s 330 330 400 330 87
a 0 up 33 0 365 329 hct 100 V=
w 90
a 0 up 0:33 0 0 0 hln 100 V=
s 270 280 270 240 89
a 0 up 33 0 272 260 hlt 100 V=
s 290 240 270 240 91
a 0 up 33 0 280 239 hct 100 V=
w 94
a 0 up 0:33 0 0 0 hln 100 V=
s 90 450 90 440 93
s 90 450 150 450 95
a 0 up 33 0 120 449 hct 100 V=
s 220 440 220 450 97
s 150 450 220 450 99
a 0 up 33 0 185 449 hct 100 V=
w 102
a 0 up 0:33 0 0 0 hln 100 V=
s 220 390 220 400 101
a 0 up 33 0 222 395 hlt 100 V=
w 104
a 0 up 0:33 0 0 0 hln 100 V=
s 90 400 90 360 103
a 0 up 33 0 92 380 hlt 100 V=
s 110 360 90 360 105
a 0 up 33 0 100 359 hct 100 V=
w 108
a 0 up 0:33 0 0 0 hln 100 V=
s 140 360 220 360 107
a 0 up 33 0 195 359 hct 100 V=
w 110
a 0 up 0:33 0 0 0 hln 100 V=
s 320 240 400 240 109
a 0 up 33 0 375 239 hct 100 V=
w 112
a 0 up 0:33 0 0 0 hln 100 V=
s 400 270 400 280 111
a 0 up 33 0 402 275 hlt 100 V=
w 114
a 0 up 0:33 0 0 0 hln 100 V=
s 270 450 270 440 113
s 270 450 330 450 115
a 0 up 33 0 365 449 hct 100 V=
s 400 440 400 450 117
s 330 450 400 450 119
a 0 up 33 0 365 449 hct 100 V=
w 122
a 0 up 0:33 0 0 0 hln 100 V=
s 400 390 400 400 121
a 0 up 33 0 402 395 hlt 100 V=
w 66
a 0 up 0:33 0 0 0 hln 100 V=
s 290 150 290 110 65
a 0 up 33 0 292 130 hlt 100 V=
s 310 110 300 110 67
a 0 up 33 0 300 109 hct 100 V=
s 300 110 290 110 130
w 70
a 0 up 0:33 0 0 0 hln 100 V=
s 340 110 420 110 69
a 0 up 33 0 395 109 hct 100 V=
s 420 110 420 140 71
a 0 up 33 0 422 145 hlt 100 V=
w 124
a 0 up 0:33 0 0 0 hln 100 V=
s 270 400 270 360 123
a 0 up 33 0 272 380 hlt 100 V=
s 290 360 270 360 125
a 0 up 33 0 280 359 hct 100 V=
w 128
a 0 up 0:33 0 0 0 hln 100 V=
s 320 360 400 360 127
a 0 up 33 0 375 359 hct 100 V=
@junction
j 90 190
+ p 5 -
+ w 34
j 150 200
+ s 25
+ w 34
j 220 170
+ p 4 2
+ w 34
j 90 150
+ p 5 +
+ w 42
j 110 110
+ p 3 1
+ w 42
j 140 110
+ p 3 2
+ w 46
j 220 140
+ p 4 1
+ w 46
j 220 280
+ p 7 +
+ w 50
j 220 270
+ p 9 2
+ w 50
j 90 320
+ p 6 -
+ w 52
j 150 330
+ s 26
+ w 52
j 220 320
+ p 7 -
+ w 52
j 140 240
+ p 8 2
+ w 60
j 220 240
+ p 9 1
+ w 60
j 90 280
+ p 6 +
+ w 62
j 110 240
+ p 8 1
+ w 62
j 290 150
+ p 11 +
+ w 66
j 310 110
+ p 10 1
+ w 66
j 340 110
+ p 10 2
+ w 70
j 420 140
+ p 12 2
+ w 70
j 290 190
+ p 11 -
+ w 74
j 350 200
+ s 27
+ w 74
j 420 170
+ p 12 1
+ w 74
j 270 320
+ p 13 -
+ w 82
j 330 330
+ s 28
+ w 82
j 400 320
+ p 14 -
+ w 82
j 270 280
+ p 13 +
+ w 90
j 290 240
+ p 15 1
+ w 90
j 90 440
+ p 16 -
+ w 94
j 150 450
+ s 29
+ w 94
j 220 440
+ p 18 +
+ w 94
j 220 400
+ p 18 -
+ w 102
j 220 390
+ p 19 2
+ w 102
j 90 400
+ p 16 +
+ w 104
j 110 360
+ p 17 1
+ w 104
j 140 360
+ p 17 2
+ w 108
j 220 360
+ p 19 1
+ w 108
j 320 240
+ p 15 2
+ w 110
j 400 240
+ p 20 2
+ w 110
j 400 280
+ p 14 +
+ w 112
j 400 270
+ p 20 1
+ w 112
j 270 440
+ p 21 -
+ w 114
j 330 450
+ s 30
+ w 114
j 400 440
+ p 23 +
+ w 114
j 400 400
+ p 23 -
+ w 122
j 400 390
+ p 24 1
+ w 122
j 270 400
+ p 21 +
+ w 124
j 290 360
+ p 22 1
+ w 124
j 320 360
+ p 22 2
+ w 128
j 400 360
+ p 24 2
+ w 128
j 300 110
+ p 129 pin1
+ w 66
j 420 110
+ p 131 pin1
+ w 70
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 2 t 5 90 65 127 81 0 7
clumper
