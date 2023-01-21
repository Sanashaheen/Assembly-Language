.model small
.data
 
 A db 6
 B db 5
 C db 4
 D db 3
 E db 2
 F db 2
 G db 1
 res db ?    
 
 var db "A-B-(C-D)-E-(F-G) -3 = $"
 
.code
main proc
    
    mov ax,@data
    mov ds,ax
    lea dx,var
    mov ah,9
    int 21h 
    
    mov bl,C 
    sub bl,D    ;C-D= 1
    
    mov cl,F
    sub cl,G    ;F-G =1
    
    mov al,A  
    sub al,B    ;A-B=1 
    
    sub al,bl   ;A-B-(C-D)=0
    
    sub al,E    ;A-B-(C-D)-E=-2
    
   
                
    sub al,cl   ;A-B-(C-D)-E-(F-G)=-3
              
    mov res,al
    
    mov dl,res
    add dl,30h
    mov ah,2
    int 21h 
    mov ah,4ch
    int 21h
    main endp
end main
    
    