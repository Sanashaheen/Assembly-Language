org 100h
.model small
.data

star db '*$'
spc db ' $'
.stack 10h
.code

mov ax,@data
mov ds,ax

triangleprint macro p1
    
mov cx,p1
mov bx,1


l1: 
    push cx       
    push bx        
    lea dx,spc    
        
    L2:
        mov ah,09
        int 21h
        
    loop l2
        
            
    
    inc bx
    pop cx
        
    l3:   
        lea dx,star
        mov ah,09
        int 21h
        
        lea dx,spc
        mov ah,09
        int 21h  
    loop l3
        
    pop cx

    mov ah,02
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h

loop l1 

endm

triangleprint 7 

mov ah,4ch
int 21h
ret