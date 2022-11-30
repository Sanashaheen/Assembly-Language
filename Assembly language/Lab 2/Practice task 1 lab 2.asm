;Practice task 1 part a
  .model small
  .data
  .code
  main proc 
    
    
         mov dl,'s'
         mov ah,2
         int 21h
         mov ah,4ch
         int 21h
     main endp
  end main

;*************************************************************



;Practice task 1 part b lab 2

.model small
.data

var db "Enter a charachter ","$"  
var2 db , 0ah , 0dh , "out put ","$"

.code
main proc 
            
      mov ax,@data
      mov ds,ax
      mov dx,offset var
      mov ah,09
      int 21h
             
      mov ah,1 
      int 21h 
      mov bl,al  
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var2
      mov ah,09
      int 21h
       
      mov dl,bl  
      mov ah,2
      int 21h
    
      mov ah,4ch
      int 21h
      main endp 
end main


;************************************************************



 ;Practice task 1 part c lab 2
 
 
 .model small
 .code
 main proc 
           
        mov ah,1
        int 21h
        sub al,16
        mov dl,al
        mov ah,2
        int 21h
    mov ah,4ch
    int 21h
    main endp
 end main
;***********************************************************
 ;Practice task 1 part d lab 2
 
 
 .model small
 .data
 .code
 main proc 
           
           
       mov bl,55
       mov dl,bl
       mov ah,2h
       int 21h
    
    mov ah,4ch
    int 21h
    main endp
 end main






