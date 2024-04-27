.model small
.stack 100h
.data
    msg db 'Enter a number : $'
    rslt db 'The result is : $'
.code
main proc     
    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,msg
    int 21h

    mov ah,1
    sub al,30h
    int 21h

    cmp al,1
    je odd
    cmp al,3
    je odd

    cmp al,2
    je even
    cmp al,4
    je even

    odd:
    mov bl,'o'
    jmp print
    jmp exit

    even:
    mov bl,'e'
    jmp print
    jmp exit

    print:
    mov ah,02
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,rslt
    int 21h

    mov ah,02
    mov dl,bl
    int 21h
    jmp exit

    exit: 
    mov ax,04c1h
    int 21h
end main
