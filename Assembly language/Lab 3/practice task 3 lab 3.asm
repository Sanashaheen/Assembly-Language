  
; task 3 lab 3

.model small
.data 
    
    v1 db 0ah , 0dh , "Enter Num 1 $" 
    v2 db 0ah , 0dh , "Enter Num 2 $"
    v3 db 0ah , 0dh , "Subtraction $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    lea dx,v1
    mov ah,9
    int 21h
    
    mov ah,01
    int 21h
    mov bl,al
    
    
    lea dx,v2
    mov ah,9
    int 21h
    
    mov ah,01
    int 21h
    mov bh,al
    
    sub bl,bh
    add bl,30h
    
    lea dx,v3
    mov ah,09
    int 21h
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h   
    
    main endp
end main