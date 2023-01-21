;Practice task 1 BCS203192 Sana shaheen Lab 11
.model small
.data
num db 5,2,7,8,3,4,2,4
.code


mov ax,@data
mov ds,ax 
mov bx,7

call ass

ass proc
    
    l1:
    
    mov si,0
    mov cx,7
   
   l2:
   mov al,[num+si]
   cmp al,[num+si+1]
   jb noswap 
   
   mov dl,[num+si+1] 
   mov [num+si+1],al
   mov [num+si] ,dl
   
   noswap:
   inc si
   
   loop l2  
    dec bx
    mov cx,bx
    loop l1
    cmp cx,0
    je exit 
      
    ret
   ass endp 

exit:
mov si,0
mov cx,7

l3:    
 mov dl,[num+si]
 add dl,48
 mov ah,02
 int 21h
 inc si
 loop l3
 
mov ah,4ch
int 21h

