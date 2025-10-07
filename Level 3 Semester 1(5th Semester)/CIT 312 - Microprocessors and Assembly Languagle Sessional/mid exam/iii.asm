org 100h

.data
A dw ?
B dw ?
C dw ?

.code
start:
    mov ah,1
    int 21h
    sub al,'0'
    mov ah,0
    mov A,ax

    mov ah,1
    int 21h
    sub al,'0'
    mov ah,0
    mov B,ax

    mov ax,A
    add ax,B
    mov C,ax

    add al,'0'
    mov dl,al
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
end start





