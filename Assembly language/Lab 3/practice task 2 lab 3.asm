
; task 2

.model small
.data

  s db 4
  b db 5
  var db ="Sum is $"
.code
main proc 
       
       mov ax,@data
       mov ds,ax
        
        
       add al,s
       mov bl,b
       add bl,al
       add bl,48
       lea dx,var  
         
       mov ah,9
       int 21h 
       mov dl,bl
       mov ah,2
       int 21h  
    
       mov ah,4ch
       int 21h
    main endp
end main
