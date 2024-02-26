.model small
.stack 100h
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,1
    int 21h
    mov cl,al
    
    add bl,cl
    sub bl,48
    
    mul bl
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,2
    mov dl,bl
    int 21h
    
end main