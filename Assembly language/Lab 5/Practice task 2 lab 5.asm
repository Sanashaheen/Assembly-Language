
;PRACTICE TASK 2 LAB 5

.model small
.data 

   var db 10,13, "Enter Number to check Even or odd $" 
   var1 db 10,13, "Number is even $"
   var2 db 10,13, "Number is odd $"

.code
main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,var
    mov ah,9
    int 21h
    mov ah,01
    int 21h 
    
    mov bl,2
    div bl 
    cmp ah,0
    je even
    
    
    lea dx,var2
    mov ah,9
    int 21h
    jmp end
    even:
    lea dx, var1
    mov ah,9
    int 21h 
    jmp end
    end:
  
    
    main endp
end main


