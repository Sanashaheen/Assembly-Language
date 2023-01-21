;Task 2 Lab 9
.model small
.data     


num db ?
.stack 10h

.code

main proc
   
   mov ax,@data
   mov ds,ax
   
   mov cx,10 
   mov ax,0
   
   l1:
   mov ah,01
   int 21h 
   mov bl,al
   mov dh,2  
 
   
   div dh
   cmp ah,0  ;check number is even or not
   je even 
  
   
   loop l1 
   
   even:
   push bx   ;push even number
   loop l1 
   
   mov cx,10
   
   
   mov dl,10
   mov ah,02
   int 21h
   
   mov dl,13
   mov ah,02
   int 21h
   
   l2:
   
   pop bx
   sub bx,48
   cmp bx,6       ;check even number is less than 6
   jb p
   jnb e
   
   p: 
   mov dx,bx
   
   add dx,48       ;print less than 6 number
   mov ah,02
   int 21h
 
   e: 
   loop l2
  
  
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main