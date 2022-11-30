

;Practice Task 3
.model small 
.data 
 
 
 max db 0
 msg db 10,13, "Enter a number $" 
 msg2 db 10,13,"Maximum number is $"
.code
main proc
     mov ax,@data
     mov ds,ax
    
     mov cl,10
     mov dl,48
    
    l1: 
    lea dx,msg
    mov ah,9
    int 21h 
    mov ah,01
    int 21h
    mov bl,al
    cmp bl,max
    jb maximum
    mov max,bl
    inc dl
    loop l1
    
    maximum:  
    lea dx,msg2
    mov ah,9
    int 21h
    mov dl,max
    mov ah,2
    int 21h
   
    
    mov ah,4ch
    int 21h
    main endp
end main