

;Unseen task 1 Lab 6
;take input untill user press enter


.model small
.data 
                                                              
  msg db 10,13,"Enter Numer...$"
  msg2 db 10,13,"Total characters user entered $"
.code
main proc
    
   mov ax,@data
   mov ds,ax 
  
   loop1:
   lea dx,msg
   mov ah,9
   int 21h
   mov ah,1
   int 21h 
   cmp al,13  ;if user press enter loop terminate
   je end
   inc bl
   loop loop1
    
   end:
   lea dx,msg2
   mov ah,9
   int 21h
    
   mov dl,bl
   add dl,48
   mov ah,2
   int 21h
   mov ah,4ch
   int 21h
    
    
    main endp
end main