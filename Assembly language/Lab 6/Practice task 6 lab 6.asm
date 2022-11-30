
;Practice task 6 lab 6
.model small
.data
.code
main proc
     
     
     mov cl,5
     mov dl,57
    
    l1:
   
      mov ah,2
      int 21h 
      sub dl,2
      loop l1
      
    
    
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main