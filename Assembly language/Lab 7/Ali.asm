.model small
.data 
st db ?
spc db " $"
t1 db 5

t3 db 1

.code
 mov ax,@data
 mov ds,ax
     
  mov bl,1
    
  mov cl,t1 
    
 mov dl,42
 mov ah,02
 int 21h 

 mov dl,13
     mov ah,02
     int 21h
      
     mov dl,10
     mov ah,02
     int 21h   
 l1: 
 
 mov dl,42
 mov ah,02
 int 21h
 
          
       mov cl,bl
    
     l2:
    
    mov ah,09
     lea dx,spc
    int 21h
     


     loop l2
     inc bl
     
    
    
     
     mov cl,t3
     
     l3:
     
     mov dl,42
 mov ah,02
 int 21h 
 
 
 loop l3
 
    
    mov cl,t3
     
     
     mov dl,13
     mov ah,02
     int 21h
      
     mov dl,10
     mov ah,02
     int 21h
  
      
    
     
     dec t1
     mov cl,t1  
     loop l1 

mov cl,7
l4:
   mov dl,42
 mov ah,02
 int 21h  
 
loop l4 
 
 
 
 
 mov ah,4ch
 int 21h