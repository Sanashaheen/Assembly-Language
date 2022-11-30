
;Practice task 1 lab 3

.model small
.data 
    
    var1 db 0ah , 0dh , "Enter Number 1 $" 
    var2 db 0ah , 0dh , "Enter Number 2 $"
    var3 db 0ah , 0dh , "OUT PUT is $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    lea dx,var1
    mov ah,9
    int 21h
    
    mov ah,01
    int 21h
    mov bl,al
    
    
    lea dx,var2
    mov ah,9
    int 21h
    
    mov ah,01
    int 21h
    mov bh,al
    
    add bl,bh
    
    lea dx,var3
    mov ah,09
    int 21h
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h   
    
    main endp
end main