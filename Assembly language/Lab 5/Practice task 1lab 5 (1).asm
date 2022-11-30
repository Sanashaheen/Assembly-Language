
;PRACTICE TASK 1 LAB 5

.model small
.data  

   msg db 10,13, "Enter one digit to check  $"  
   msg2 db 10,13, "Number is Positive  $" 
   msg3 db 10,13, "Number is negative  $"   
    msg4 db 10,13, "Number is zero $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
    mov ah,01
    int 21h   
    mov bl,al

    mov ah, 01h
    int 21h

    cmp bl,30h 
    jg positive
    je zero
    jl negative
    je end     
    
   
    positive:
    
    lea dx,msg2
    mov ah,9
    int 21h
    jmp end    
    
    
    negative: 
    
    lea dx,msg3   
    mov ah,9
    int 21h
    jmp end
     
     
    zero: 
    
    lea dx,msg4   
    mov ah,9
    int 21h 
    jmp end
    
    
    end:
  
   
    mov ah,4ch
    int 21h
    main endp
end main

