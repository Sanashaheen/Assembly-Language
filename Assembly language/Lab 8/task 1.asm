;Practice Task 1 Lab 8 BCS203192 Sana shaheen
.model small
.data 

array db ?  
max db 0   
min db 0

.code
main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    mov si,0
    
  l1:                      ;This loop is for taking 10 inputs
    
    mov ah,01
    int 21h    
    mov [array+si],al
    sub [array+si],48
    inc si
    
   loop l1
   
   mov ax,0
   mov al,[array+0]      
   mov max,0  
   mov si,0
   mov cx,10
   
     
   l2:                     ;this loop for max
   
   cmp [array+si],al
   ja maxx
   jmp e
   
   maxx:
   
   mov al,[array+si]
   mov max,al
    
   e:
    inc si
    loop l2
   
    mov dl,10
    mov ah,02
    int 21h
   
    mov dl,13
    mov ah,02
    int 21h
   
    mov dl,max
    add dl,48
    mov ah,02
    int 21h 
   mov ax,0
   mov al,[array+0]      
   mov min,9 
   mov si,0
   mov cx,10
     
   l3:                     ;this loop for min
   
   cmp [array+si],al
   jl minn
   jmp ee
   
   minn:
   
   mov al,[array+si]
   mov min,al
    
   ee:
   inc si
   loop l3
   mov dl,10
   mov ah,02
   int 21h
   
   mov dl,13
   mov ah,02
   int 21h
   
   mov dl,min
   add dl,48
   mov ah,02
   int 21h 
    main endp
end main