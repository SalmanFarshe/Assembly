.model small
.stack 100h
.data
    msg db 'I Love Allah $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
end main