.model small

 

.data

   num1 db ?
   
        ; ka hamara outer loop kitni bar  chala ga
    inl db 5   ; ka hamara inner  loop kitni bar  chala ga
           
            inl2 db 1
           
           
            msg db 0ah,0dh," height : $"
            msg1 db 0ah,0dh,"$"
.code
       
       
   mov ax,@data
   mov ds,ax
             
             unseen macro num1
              mov bl,num1
           
         mov cl,bl  ; assign
         
         l: ; rowsss
           
           
                   
                   mov cl,inl2
                     
             l2: ;colomn  
                                 
             
            mov dl,"*"
           
            mov ah,02
            int 21h
               
             
               
             loop l2
                   
               
                inc inl2
                mov cl,inl2
         
              mov dl,13
              mov ah,02
              int 21h
         
         
               mov dl,10
              mov ah,02
              int 21h
         
         
         
         
          dec bl  
           mov cl,bl
                                 
          loop l  
         
         
         
             endm
               
           
             
             
             mov ah,09
             lea dx,msg
             int 21h
             
             mov ah,01
             int 21h
             sub al,48
             mov num1,al
             
             cmp num1,13
             je terminate
             
             mov ah,09
             lea dx,msg1
             int 21h
          unseen num1
         
         
         
          terminate :
          mov ah,4ch
          int 21h