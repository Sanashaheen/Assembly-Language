.model small
.data  

a db 5
b db 4
t db ? 
msg db 10 , 13, "Before swapping $"
msg1 db 10 , 13, "After swapping $"
.code
main proc  
    
  mov ax,@data
  mov ds,ax 
  lea dx,msg
  mov ah,09
  int 21h
  
  mov dl,a 
  add dl,48
  mov ah,02
  int 21h  
  
   mov dl,b 
  add dl,48
  mov ah,02
  int 21h   
    
   mov bl,a
   mov t,bl
   mov bl,b
   mov a,bl
   mov bh,t
   mov b,bh 
    
   lea dx,msg1
   mov ah,09
   int 21h  
   mov dl,a 
   add dl,48
   mov ah,02
   int 21h  
  
   mov dl,b 
   add dl,48
   mov ah,02
   int 21h  
   mov ah,4ch
   int 21h
   main endp
end main