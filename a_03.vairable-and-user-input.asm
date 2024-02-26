.model small
.stack 100h
.data
    msg db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov msg,al

    mov ah,2
    mov dl,msg
    int 21h
end main