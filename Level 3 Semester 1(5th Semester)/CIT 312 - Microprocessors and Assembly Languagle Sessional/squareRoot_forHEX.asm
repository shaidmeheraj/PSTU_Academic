
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov ax, 4h ; number to find square root of
    mov bx, 1h  ; current guess

next_guess:
    mov ax, 4h
    div bx       ; ax = number / guess     
    cmp ax, bx
    je done
    
    add bx, 1
    jmp next_guess
done:
    mov ax, bx   ; move result to ax

ret




