    ;Practice task 2 lab 2
    ;Diamond
 
 
 .model small  
 .data
   
   var1 db               "    *     " ,"$"
   var2 db , 0ah , 0dh , "   ***    ","$"
   var3 db , 0ah , 0dh , "  *****    ","$"
   var4 db , 0ah , 0dh , "   ***     ","$" 
   var5 db , 0ah , 0dh , "    *     ","$"
 .code
 main proc 
           
        mov ax,@data
        mov ds,ax
        mov dx,offset var1
        mov ah,9
        int 21h
        mov ax,@data
        mov ds,ax
        mov dx,offset var2
        mov ah,9
        int 21h
        mov ax,@data
        mov ds,ax
        mov dx,offset var3
        mov ah,9
        int 21h
        mov ax,@data
        mov ds,ax
        mov dx,offset var4
        mov ah,9
        int 21h
        mov ax,@data
        mov ds,ax
        mov dx,offset var5
        mov ah,9
        int 21h
        mov ah,4ch
        int 21h
    main endp
 end main