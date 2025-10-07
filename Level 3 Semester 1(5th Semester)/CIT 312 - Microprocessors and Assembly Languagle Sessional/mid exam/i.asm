org 100h

.data
A dw ?
B dw ?

.code
start:
    ; ---- Input A ----
    mov ah,1
    int 21h
    sub al,'0'
    mov ah,0
    mov A,ax

    ; ---- Input B ----
    mov ah,1
    int 21h
    sub al,'0'
    mov ah,0
    mov B,ax

    ; ---- A = B - A ----
    mov ax,B
    sub ax,A
    mov A,ax

    ; ---- Print Result ----
    add al,'0'
    mov dl,al
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
end start
