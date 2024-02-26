.model small
.stack 100h
.data
    msg db 9
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    add msg,48
    mov dl,msg
    int 21h
end main