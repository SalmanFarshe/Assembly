.model small
.stack 100h
.code
main proc  
    mov al,01
    int 21h
    mov bl,al
    
    mov ah,02
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main