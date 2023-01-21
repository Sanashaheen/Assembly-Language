;Practice task 3 lab 8 BCS203192 Sana shaheen
.model small
.data

num db ? 
array db "Enter Elements in an array $" 
msg db "Reverse Element of an array $"
.code
main proc 
     
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    mov si,0 
    lea dx,array
    mov ah,09
    int 21h
    
   l1:
   
    mov ah,01
    int 21h
    
    mov [num+si],al
    sub [num+si],48
    inc si
    loop l1 
    
    mov cx,5
    mov si,4 
    mov dl,10
    mov ah,02
    int 21h 
    mov dl,13
    mov ah,02
    int 21h
    
    lea dx,msg
    mov ah,09
    int 21h
    
    l2:
    
     mov bl,[num+si]
     dec si 
     
     mov dl,bl
     add dl,48
     mov ah,02
     int 21h
     loop l2 
    mov ah,4ch
    int 21h
    main endp
end main