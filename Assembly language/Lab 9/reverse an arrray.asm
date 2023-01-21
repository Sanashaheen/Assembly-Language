.model small
.data  
num db ?
.stack 10h
.code
main proc
    
    
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    mov si,0
    l1:
    mov ah,01
    int 21h
    
    mov [num+si],al
    sub [num+si], 48 
    mov al,[num+si]
    push ax 
    inc si
    loop l1
    
    
    
    mov cx,10
    mov si,0 
    
    mov dl,10
    mov ah,02
    int 21h
    mov dl,13
    mov ah,02
    int 21h
    l2: 
    pop ax
    mov dx,ax
    add dx,48
    mov ah,02
   
    int 21h
   
    inc si
    loop  l2  
    mov ah,4ch
    int 21h  
    main endp 
end main