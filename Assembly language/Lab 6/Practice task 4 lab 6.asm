

;Practice task 4 lab 6
.model small
.data
.code
main proc
    
    
    
    mov cl,10
    mov dl,57
    l1:
    mov ah,02
    int 21h
    dec dl
    
    loop l1
    
     mov ah,4ch
     int 21h
    
    
    
    main endp
end main