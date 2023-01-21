org 100h
.model small

.data
msg db "Enter a positive Integer $"
msg1 db 0ah,0dh,"This is a prime number$"
msg2 db 0ah,0dh,'This is not a prime number$$'
numb db ?
pcheck db 0

.code
mov ax,@data
mov ds,ax

lea dx,msg
mov ah,09
int 21h

mov ah,01
int 21h

sub al,48
mov numb,al

mov bl,02

div bl 

sub al,128

mov cl,al

mov bl,02

L1:

    mov al,numb
    
    div bl
 
    cmp ah,0
    JE l2
    jmp loo
    
    L2:
    
    inc pcheck
    jmp printnp
    
    loo:
    inc bl

loop l1

mov bl,pcheck

cmp bl,0
JE printp
jmp printnp

printp:
lea dx,msg1
mov ah,09
int 21h
jmp done

printnp:
lea dx,msg2
mov ah,09
int 21h

done:
mov ah,4ch
int 21h