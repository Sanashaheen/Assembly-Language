

;UNSEEN TASK 2
.model small
.data 
st db ?
spc db " $" ;to print space 
row1 db 5    ;total no of rows
col2 db 5    ;total no of coloums
c3 db 1      
n db 49      
t4 db 1      

.code 
main proc
 mov ax,@data
 mov ds,ax
    
    
    mov cl,row1 
    mov bl,49
  

   
 l1: 
    mov cl,col2
    
 l2:
    mov ah,09      ;loop 2 is for printing space 
    lea dx,spc
    int 21h
    loop l2 
    
    dec col2
    mov cl,col2
    
    mov cl,c3
    mov n,bl
 l3: 
    mov dl,n        ;print number
    mov ah,02
    int 21h
        
    dec n
    loop l3
    inc c3
    mov cl,c3
    mov cl,t4
 l4:
    mov dl,bl 
    mov ah,02
    int 21h
          
    loop l4
    inc bl
    inc t4
    mov cl,t4 
    mov dl,13
    mov ah,02
    int 21h
      
    mov dl,10
    mov ah,02
    int 21h
     
     dec row1
     mov cl,row1 
loop l1 
 mov ah,4ch
 int 21h 
 
main endp
end main 