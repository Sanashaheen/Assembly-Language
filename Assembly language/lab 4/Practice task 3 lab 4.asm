 .model small
 .data
 A db 3
 B db 2
 C db 2
 D db 1
 E db 1
 F db 2
 G db 3
 res db ?
 var db "A+B-(C+D)-E+(F-G) = $"
 
 .code
 main proc
    
      mov ax,@data
      mov ds,ax
      
      mov bl,C     
      add bl,D     ;C+D=3
      
      mov cl,F  
      sub cl,G     ;(F-G)=-1
      
      mov al,A
      add al,B     ;(A+B)=5
      
      sub al,bl    ;(A+B)-(C+D)=2
      sub al,E     ;(A+B)-(C+D)-E=1
      add al,cl    ;(A+B)-(C+D)-E+(F-6)=0
      
      mov res,al 
      lea dx,var
      mov ah,9
      int 21h
      mov dl,res
      add dl,30h
      mov ah,2
      int 21h
     
    
    main endp
 end main