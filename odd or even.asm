.model small
.stack 100h
.data
    msg db 'Enter a number (0-9): $'
    rslt db 'The result is : $'
    evenMsg db 'Even$'
    oddMsg db 'Odd$'
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, msg
    int 21h

    mov ah, 1
    int 21h
    sub al, 30h ; Convert ASCII to integer

    mov ah, 0
    mov bl, al
    and bl, 1 
    cmp bl, 0 
    je isEven

    isOdd:
        mov ah,02
        mov dl,10
        int 21h
        mov dl,13
        int 21h
 
        mov ah, 9
        lea dx, rslt
        int 21h
        lea dx, oddMsg
        int 21h
        jmp exit

    isEven:    
        mov ah,02
        mov dl,10
        int 21h
        mov dl,13
        int 21h
    
        mov ah, 9
        lea dx, rslt
        int 21h
        lea dx, evenMsg
        int 21h

    exit:
        mov ax, 4C00h
        int 21h
end main