 
 
 ;Practice task 2 lab 11
 .model small
 .data  
 n db 1
  .code
 mov ax,@data
 mov ds,ax
 
 
 patt proc
    
     mov cx,5
     mov bx,cx
     l1:
    
     mov cx,5
     l2:
     
     mov dl,n
     mov ah,02
     int 21h
     inc n
     loop l2
     mov dl,13
     mov ah,02
     int 21h
     mov dl,10
     mov ah,02
     int 21h
     mov n,1
     mov cx,bx   
     dec bx
     loop l1
     cmp bx,0
     je exit
    
    ret
    patt endp
 exit:
 mov ah,4ch
 int 21h