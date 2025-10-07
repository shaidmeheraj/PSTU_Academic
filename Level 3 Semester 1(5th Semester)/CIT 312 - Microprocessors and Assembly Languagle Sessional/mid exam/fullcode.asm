org 100h

.STACK 100h
.DATA
    Y DB 0
    Z DB 0
    W DB 0
    TEMP1 DB 0
    TEMP2 DB 0
    X DB 0
    MSG1 DB 'Y = $'
    MSG2 DB 'Z = $'
    MSG3 DB 'W = $'
    MSGX DB 'Result X = $'
    OUTBUF DB '0$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

;Y
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV Y, AL

;Z
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV Z, AL

; W 
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV W, AL

;  Y - Z
    MOV AL, Y
    SUB AL, Z
    MOV TEMP1, AL

;  -W 
    MOV AL, W
    NOT AL
    INC AL
    MOV TEMP2, AL

; X = (Y-Z) + (-W)
    MOV AL, TEMP1
    MOV BL, TEMP2
    ADD AL, BL
    MOV X, AL

;  Res
    LEA DX, MSGX
    MOV AH, 9
    INT 21H

    MOV AL, X
    ADD AL, 30H   
    MOV OUTBUF, AL
    LEA DX, OUTBUF
    MOV AH, 9
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN


ret




