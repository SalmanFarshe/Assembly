.model small
.stack 100h
.code
main proc
    
    mov ah,01
    int 21h
    sub al,30h
    mov bl,al  
    mov cl,bl        
             
    mov ah,02
    mov dl,10
    int 21h
    mov dl,13
    int 21h
                 
    mov ah,01
    int 21h
    sub al,30h
    mov ch,al
    
    mul cl
    
    aam
    
    mov ch,ah
    add ch,48   
             
    mov cl,al
    add cl,48
     
    mov ah,02
    mov dl,10
    int 21h
    mov dl,13
    int 21h
           
    mov ah,02
    mov dl,ch
    int 21h
                
    mov ah,02
    mov dl,cl
    int 21h         
end main