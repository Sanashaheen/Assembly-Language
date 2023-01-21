.model small
.data
 
  A db 4
  B db 2
  C db 2
  D db 3 
  res db ?
  var db "Equation (A-B+2*C)/D = $"
 
 .code
 main proc
    
     mov ax,@data
     mov ds,ax
     
     
     mov al,C 
     mov bl,2
     mul bl   ;2*C
  
     
     mov cl,A
     sub cl,B   ;A-B=2
     add cl,al  ;(A-B+2*C)=6
     mov al,cl
  
     mov bl,D
     div bl  ;(A-B+2*C)/D=2
     mov res,al
     lea dx,var
     mov ah,9
     int 21h
     
     mov dl,res
     add dl,30h
     mov ah,2
     int 21h   
     
     mov ah,4ch
     int 21h
    
    main endp
 end main