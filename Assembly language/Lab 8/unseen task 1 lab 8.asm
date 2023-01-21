;unseen task 1
; BCS203192 Sana shaheen
.model small
.data

   msg1 db "Enter a No $"
   msg2 db 10,13,"Num is not divisible by 3 $"
   msg3 db 10 , 13, "Enter No $"
   msg4 db 10, 13 , "Sum of No is $"

.code
main proc 
    
   mov ax,@data
   mov ds,ax
   
   lea dx,msg1
   mov ah,9
   int 21h 
    
   mov ah, 01     ;1st input 
   int 21h 
   mov ch,al
   
   mov bl,3       ;mov 3 into bl 
   div bl
   
    
   cmp ah,1      ;check if remainder is 1  
   je divisible
   
   lea dx, msg2  
   mov ah,9
   int 21h 
   jmp e      ;terminiate if not divisble
   
   divisible:
   
   lea dx,msg3
   mov ah,9
   int 21h
   
   mov ah,01
   int 21h
    add al,ch
    mov bl,al
   lea dx,msg4
   mov ah,09
   int 21h
 
  
   mov dl,bl
   sub dl,48
   mov ah,02
   int 21h
    
    
    e:  
    mov ah,4ch
    int 21h
    main endp
end main