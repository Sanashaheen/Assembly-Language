.model small
.data
 
 A db 4
 B db 1
 C db 3
 D db 2
 E db 4
 F db 2
 G db 3
 res db ?    
 
 var db "A-B-(C+D)+E-(F-G) = $"
 
.code
main proc
    
    mov ax,@data
    mov ds,ax
    lea dx,var
    mov ah,9
    int 21h 
    
    mov bl,C 
    add bl,D    ;C+D= 5
    
    mov cl,F
    sub cl,G    ;F-G =-1
    
    mov al,A  
    sub al,B    ;A-B=3  
    
    sub al,bl
    
    
    add al,E    ; A-B-(C+D)+E=2
    sub al,cl   ;(A-B)-(C+D+E)-(F-G)=3  
    
    
    mov res,al
   
    mov dl,res
    add dl,30h
    mov ah,2
    int 21h 
    mov ah,4ch
    int 21h
    main endp
end main