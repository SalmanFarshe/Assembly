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
    int 21h
    sub al,30h
    mov cl,al
   

    cmp cl,1
    je odd
   
   
    cmp cl,3
    je odd
   

    cmp cl,2
    je even

    cmp cl,4
    je even  
    jmp exit

    odd:
    mov bl,'o'
    jmp print
   

    even:
    mov bl,'e'
    jmp print
   

    print:

    mov ah,02
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,rslt
    int 21h

   
    mov ah,2
    mov dl,bl
    int 21h

    jmp exit
    
    exit:
    mov ax, 5
    int 21h
 end main