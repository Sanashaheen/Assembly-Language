 
 ; task 4 lab 3
 
 .model small
 .data 
   
  
   va db 0ah , 0dh , "Enter Number 1 : $"
   va2 db 0ah , 0dh , "Enter Number 2 : $"
   va3 db 0ah , 0dh , "Sum of 1st two number is : $"   
   va4 db 0ah , 0dh , "Enter Number 3rd No : $"
   va5 db 0ah , 0dh , "Final out put is  : $" 
   
   result db ?
  
 
 .code
 main proc
    
    
    
      mov ax,@data
      mov ds,ax
      lea dx,va
      mov ah,9
      int 21h
      
      mov ah,01
      int 21h 
      mov bl,al 
      sub bl,30h
              
      lea dx,va2
      mov ah,9
      int 21h 
      
      mov ah,01
      int 21h
      mov bh,al
      sub bh,30h
      
      lea dx,va3
      mov ah,09
      int 21h 
      
      add bl,bh
      add bl,30h
      mov dl,bl
      mov ah,02
      int 21h
      mov res , dl
      
      lea dx,va4
      mov ah,9
      int 21h
      mov ah,1
      int 21h
      mov bh ,al
      sub bh,30h
      
      lea dx,va5
      mov ah,9
      int 21h
      
      sub al,result
      add al,48h
      mov dl,al
      
       
      mov ah,02
      int 21h
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
 end main