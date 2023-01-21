.model small
.data 
n db ?
msg db , 10 , 13 , "Number is prime $"
.code
mov ax,@data
mov ds,ax
call isprime


isprime proc
    
   mov ah,01
   int 21h
   mov n,al
   mov bl,2
   div bl
   
    mov cx,ax
    mov si,2
    l1:
    cmp ah,0
   je noprime
   
   loop l1
   jmp ee
   noprime:
   jmp e
    
     
   ee:
   lea dx,msg
   mov ah,09
   int 21h 
    
    
    
    
    
    
    
    
    
    
    
    
    ret
    isprime endp 
e:
mov ah,4ch
int 21h