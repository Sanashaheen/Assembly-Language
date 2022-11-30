.model small
.code
main proc
    
mov cl,5
mov dl,56
loop1:
mov ah,2
int 21h
dec dl
sub dl,1
loop loop1

mov ah,4ch
int 21h
main endp
end main