
;UNSEEN TASK of LAB 5

.model small
.data 

   msg1 db 10,13, "Enter a number $"  
   msg2 db 10,13, "Number is even $"
   msg3 db 10,13, "Number is odd $"
   msg4 db 10,13, "Total number of Even is $" 
   msg5 db 10,13, "Total number of Odd is $"
   n db 10
   
.code
main proc
    
    
    mov ax,@data
    mov ds,ax 
    mov cl,0   ; for easy to run in signle steps
    jmp input
    input:
    cmp cl,10    ;cmp if input equal to 10
    je end
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,01   
    int 21h
    inc cl        ;inc for total number
    mov bl,2    
    div bl
    cmp ah,0
    je even 
    
    inc bh      ;inc for odd
    lea dx,msg3
    mov ah,9
    int 21h 
    jmp input  
    
    even: 
    inc ch         ;incr for even
    lea dx,msg2
    mov ah,9
    int 21h
    jmp input
   
    end: 
    lea dx,msg4    ;total num of even
    mov ah,9
    int 21h
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    lea dx,msg5    ;total number of odd
    mov ah,9
    int 21h
    mov dl,bh
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h 
    main endp
end main