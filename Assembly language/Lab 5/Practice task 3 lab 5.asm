
;PRACTICE TASK 3 LAB 5
.model small
.data  
    
    num db 20

    msg1 db 10,13, "Your Grade is A $"   
    msg2 db 10,13, "Your Grade is B $"
    msg3 db 10,13, "Your Grade is C $"
    msg4 db 10,13, "Your Grade is D $"
    msg5 db 10,13, "Your Grade is F $"
    msg6 db 10,13, "Not valid $"
 

.code
main proc  
    
     mov ax,@data
     mov ds,ax
     
     cmp num,100  ;if above from 100
     ja F   
     cmp num,90   ;if above or equal to 90
     jae A
     cmp num,80   ;if above or equal to 80
     jae B   
     cmp num,70   ;if above or equal to 70
     jae C
     cmp num,60   ;if less then or equal to 60
     jae D
     cmp num,0    ;if above from 0 then print F grade
     jae E 
     cmp num,101
     jae F  
      
   A:
   lea dx,msg1
   mov ah,9
   int 21h
   jmp exit 
   B:   
   lea dx,msg2
   mov ah,9
   int 21h
   jmp exit 
    C:   
   lea dx,msg3
   mov ah,9
   int 21h
   jmp exit 
    D:   
   lea dx,msg4
   mov ah,9
   int 21h
   jmp exit 
    E:   
   lea dx,msg5
   mov ah,9
   int 21h
   jmp exit
   F:
   lea dx,msg6
     mov ah,9
     int 21h 
   
exit:   
    main endp
end main



