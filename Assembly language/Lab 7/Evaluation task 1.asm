;UNSEEN TASK 1
.model small
.data 
   
   space db 0ah,0dh ,"$"

.code
main proc
     
    mov ax,@data
    mov ds,ax
    
    
    mov bl,1   ;i=1
    mov cl,5     
    l1:
    cmp bl,cl
    jle inn                                             
  
    inn: 
    mov bh,1   ;j=1
    mov ch,5
    cmp bh,ch 
    jle l2     
    l2: 
    cmp bh,1     ;if(j==1)
    je print
    cmp bl,5     ;i=5 
    je print 
    cmp bh,bl     ;i=j
    je print 
    mov dl,32     ;print space 
    mov ah,2
    int 21h
    inc bh
    loop l2
    
   
    print:
    mov dl,'*'    
    mov ah,02
    int 21h
    cmp bl,bh
    jl l2
     
    lea dx,space
    mov ah,9
    int 21h
    inc bl
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main