.model small
.stack 100h
.code
main proc
    
    mov ah,01
    int 21h
    sub al,30h
    mov bl,al
              
              
    mov ah,01
    int 21h
    sub al,30h
    mov cl,al
    
    add cl,bl
    add cl,48
    
    mov ah,02
    mov dl,cl
    int 21h
    
end main