
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 1h 
    mov bx, 1h
    mov dx, 1h
    
    mov cx, 5h ; counter 
    
repeat:
    mov ax, dx ; ax = dx      
    add dx, bx ; dx = dx + bx
    mov bx, ax ; bx = ax

    sub cx, 1h
    cmp cx, 0h
    jne repeat

ret




