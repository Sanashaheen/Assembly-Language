;Unseen task lab 9
.model small
.data  

   msg db "Enter Number $"
   n db 4

.stack 10h
.code  
main proc 
    
     mov ax,@data
     mov ds,ax
     lea dx,msg    ;print message
     mov ah,09
     int 21h
     mov cl,0
     
     again:
     mov ah,01      ;take input
     int 21h
     
     mov bl,al 
     cmp bl,13      ;if user user press enter
     je exit        ;jmp exit
     mov al,bl     
     div n
     cmp ah,0       ;if input is divisible by 4
     je pushh       ;jmp to pushh variavle to push the number in stack
     jne again
     
     pushh:
     push bx         ;push on bx
     inc cl          ;counter 
     jmp again       ;jmp again 
     
     exit: 
     mov dl,10
     mov ah,02
     int 21h  
     mov dl,13
     mov ah,02
     int 21h
     
     mov dl,cl          ;display the count of numbers
     add dl,48
     mov ah,02
     int 21h
     
    
    
     pop cx            ;pop top element
     pop cx 
     pop cx  
     
     sub cx,48
     mov dl,10
     mov ah,02
     int 21h  
     mov dl,13
     mov ah,02
     int 21h
     
     mov dx,cx       ;display 1st element
     add dx,30h
     mov ah,02
     int 21h  
    
    mov ah,4ch
    int 21h
    main endp
end main