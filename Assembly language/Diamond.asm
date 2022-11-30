org 100h
.model small
.data
   space dw 11
   star  dw 1 
   space2 dw 5
   star2 dw 13
 
.code

main proc
    
  mov cx,7 
  outer:
  mov bx,cx
  mov cx,space   
    
    
   k: 
   mov dl,32
   mov ah,02
   int 21h
   loop k 
   dec space
   mov cx,star
    
    l:
    
    
    mov dl,'*'
    mov ah,02
    int 21h
    
    loop l
     
    inc star
    inc star 
     
    
     mov dl,0ah
     mov ah,02
     int 21h 
     mov dl,0dh
     mov ah,02
     int 21h
     mov cx,bx
     
     
     
    loop outer 
    
    
    
    
    
    
    
    
    
    
    mov cx,7
    outer2:
  mov bx,cx
  mov cx,space2   
    
    
   k2: 
   mov dl,32
   mov ah,02
   int 21h
   loop k2 
   inc space2
   mov cx,star2
    
    l2:
    
    
    mov dl,'*'
    mov ah,02
    int 21h
    
    loop l2
     
    dec star2
    dec star2 
     
    
     mov dl,0ah
     mov ah,02
     int 21h 
     mov dl,0dh
     mov ah,02
     int 21h
     mov cx,bx
     
     
     
    loop outer2    
            
        
    mov ah,4ch
    int 21h 
    ret 
  
   main endp   
   end main