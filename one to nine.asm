.model small
.stack 100h
.data
    a db "Numbers from 1 to 9$"
.code
main proc
     mov ax,@data
     mov ds,ax

     mov ah,9
     lea dx,a
     int 21h

     mov ah,2
     mov dl, 10
     int 21h   
     mov dl,13
     int 21h

     mov cx,9
     mov ah,2
     mov bl,"1"
     mov dl,bl
     int 21h

     level1:   
     mov ah,2
     mov dl, 10
     int 21h   
     mov dl,13
     int 21h

     inc bl

     mov ah,2
     mov dl,bl
     int 21h   
     loop level1



     exit:
     mov ah,ch
     int 21h
     main endp
end main