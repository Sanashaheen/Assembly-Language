.model small
.data
num db 9  
msg db 10,13, "Number is prime..$"

.code
main proc
    
    mov bh,0
    mov bl,10d
    
    input:
    mov ah,1
    int 21h
    cmp al,13d
    jne number
    jmp check
    number :
    sub al,30h
    mov cl,al
    mov al,bh
    mul bl
    add al,cl
    mov bh,al
    jmp input
    
    check: 
    cmp bh,1
    jle notprime
    
    axmov cx,2
    and ax,0
    and dx,0
    mov al,bh
    div cx
    mov cx,ax                       ;  dx:ax/cx =Rem=dx, que =ax 
    
    isprime:
    cmp cx,2
    jl prime
    and ax,0
    and dx,0
    mov al,bh
    div cx
    cmp dx,0
    je notprime
    jne isprime
    
    
    
    prime:
    mov ah,02
    mov dl,'p'
    int 21h
    
    
    
    notprime:
    mov ah,2
    mov dl,'N'
    int 21h
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main