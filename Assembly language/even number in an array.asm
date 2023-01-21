;unseen task 2 ;BCS203192 Sana shaheen

.model small
.data 
 msg db "Even Num in an array $"
 array db 6,5,2,4,5,7,8

.code
main proc
    
      mov ax,@data
      mov ds,ax
      
      lea dx,msg
      mov ah,09
      int 21h
      mov cx,4
      mov si,0
      mov ax,0
   l1: 
     mov ah,0 
     mov al,[array+si]
     mov bl,2
     div bl
     cmp ah,0
     je print
     
    
     jmp e
     e:
     inc si
     jmp l1    ;jmp if element is not an even
     
     print:
     
     mov dl,[array+si]
     add dl,48
     mov ah,2
     int 21h
     inc si
     loop l1
  
    mov ah,4ch
    int 21h
    main endp

end main