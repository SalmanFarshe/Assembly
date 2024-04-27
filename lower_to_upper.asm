.model small
.stack 100h
.data
    rslt db "Upper Case = $"
    msg db "Lower Case = $"
.code                              
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    mov ah,9
    lea dx,rslt
    int 21h
    
    sub bl,32
    
    mov ah,2
    mov dl,bl
    int 21h
end main