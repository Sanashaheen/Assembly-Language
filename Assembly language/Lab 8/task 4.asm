;Practice task 4 Lab 8 BCS203192
.model small
.data 
num db ?
.code

main proc
    
     mov ax,@data
     mov ds,ax
     mov cx,5
     mov si,0
     
     l1:                 ;loop for taking input
     mov ah,01
     int 21h
     mov [num+si],al
     sub [num+si],48
     inc si
     loop l1
     mov si,0
     mov cx,5
    
     l2:             ;loop for cmp and swaping
     
     mov  al,[num+si]          ;place value of index i into al
     cmp  al,[num+si+1]         ;cmp if i is above then no swaping 
     ja noswap
     
     
     mov dl,[num+si+1]          ;i+1 value in dl
     mov [num+si+1],al          ;i value in i+1
     mov [num+si],dl            ;i+1 value into i

     inc si                     ;increment si
     loop l2
     noswap:
     inc si
     loop l2  
     
     mov cx,5
     mov si,0
     mov dl,10
     mov ah,02
     int 21h  
     mov dl,13
     mov ah,02
     int 21h
      
     l3:                 ;Loop for print Descending order array
     
     mov dh,[num+si] 
     inc si
     mov dl,dh
     add dl,48
     mov ah,02
     int 21h
     loop l3 
    mov ah,4ch
    int 21h
    main endp
end main