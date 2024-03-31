.model small
.stack 100h 
.data  
   physics_inp db "Physics: $"
   math_inp db "Math: $"
   summary db "Total marks of Maths and Physics: $"
   result_ok db "The candidate is eligible!$"
   result_not_ok db "The candidate is not eligible!$"                                                                                                                     
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,physics_inp
    int 21h  
                            
    mov ah,1	
    int 21h  
    mov ch,al 
    sub ch,30h
    mov cl,10h
    mul cl

    mov ch,al
    
    mov ah,1	
    int 21h 
    mov cl,al 
    sub cl,30h
    
    add cl,ch
    mov ch,00h
            
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,math_inp
    int 21h  
    
    mov ah,1	
    int 21h  
    mov bh,al 
    sub bh,30h
    mov bl,10h
    mul bl

    mov bh,al
    
    mov ah,1	
    int 21h 
    mov bl,al 
    sub bl,30h
    
    add bl,bh  
    mov bh,00h
    
    cmp bx,65h
    jge phy
    jmp print_negative
    
    phy:
    cmp cx,55h
    jge total
    jmp print_negative
    
    total:
    add bx,cx
    cmp bx,130h
    jge print_positive 
        
    print_positive:   
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,result_ok
    int 21h 
    jmp exit
    
    print_negative:
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,result_not_ok
    int 21h 
    jmp exit
         
    exit:  
    mov ax,5
    int 21h
    
    main endp 
end main    