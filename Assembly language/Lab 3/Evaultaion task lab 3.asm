 ;table of 2
 
 
 
 .model small
 .data 
  
   var1 db 0ah , 0dh , "2 x 1 = $" 
   var2 db 0ah , 0dh , "2 x 2 = $"
   var3 db 0ah , 0dh , "2 x 3 = $"
   var4 db 0ah , 0dh , "2 x 4 = $"
 
 .code
 main proc
    
    
       mov ax,@data
       mov ds,ax
       lea dx,var1
       mov ah,9
       int 21h
       
       mov al,2
       mov bl,0
       add al,bl
       add al,48
       mov dl,al
       mov ah,2
       int 21h
    
       
       lea dx,var2
       mov ah,9
       int 21h 
       mov al,2
       mov bl,2
       add al,bl
       add al,48
       mov dl,al
       mov ah,2
       int 21h
    
       lea dx,var3
       mov ah,9
       int 21h
       mov al,2
       mov bl,2
       add al,bl
       add al,48
       mov dl,al
       add dl,2
       mov al,dl
       mov ah,2
       int 21h
    
    
       lea dx,var4
       mov ah,9
       int 21h
       mov al,2
       mov bl,2
       add al,bl
       add al,48
       mov dl,al
       add dl,4
       mov bl,dl
      
       mov ah,2
       int 21h
    
    
    
    
    
      mov ah,4ch
      int 21h
    main endp 
 end main