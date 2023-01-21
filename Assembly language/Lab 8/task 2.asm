;Practice task 2  Sana shaheen BCS203192
.model small
.data

array db ?  

msg  db , 10, 13, "Max Odd Count is $"
msg2 db , 10, 13, "Max Even Count is $ "

.code
main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    mov cl,10 
    mov si,0
   
  l1:                 ;simple 10 integer input loop
    
    
    mov ah,01
    int 21h
    
    mov [array+si],al
    sub [array+si],48
    inc si  
  loop l1
  
    
   mov cl,10 
   mov si,0
  
  
  l2:                  ;even odd counter loop
  
  mov al,[array+si] 
  mov dh,2
  div dh
  
  cmp ah,0
  je evencount
  
  inc bl               ;odd counter
  inc si
  loop l2
  jmp terminate
  evencount:
  
   inc bh              ;even counter
   inc si 
  loop l2  
  
  terminate:

   cmp bh,bl             ;cmp even counter or odd counter
   jg eee                ;if even counter is greator then jmp to eee
   
  
  mov dl,10
  mov ah,02
  int 21h 
  mov dl,13
  mov ah,02
  int 21h 
  
  lea dx,msg
  mov ah,09
  int 21h
  
  mov dl,bl   ;odd
  add dl,48
  mov ah,2
  int 21h
  jmp e
  
  eee:          ;label if even count is greator
  
  mov dl,10
  mov ah,02
  int 21h
  mov dl,13
  mov ah,02
  int 21h 
  lea dx,msg2
  mov ah,09
  int 21h
  mov dl,bh   ;even
  add dl,48
  mov ah,02
  int 21h   
  e:     
    mov ah,4ch
    int 21h
    main endp
end main