org 100h

.data
buffer db 6 dup(0)

.code
start:
    mov ah,1          
    int 21h
    sub al,'0'        
    inc al            
    add al,'0'       

    mov dl,al
    mov ah,2
    int 21h

    mov ah,4Ch
    int 21h

end start
