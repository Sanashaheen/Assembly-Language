;Practice task 3 
;Table of 2

.model small
.data 
 
  var1 db               " 2*1 = " , "$"
  var2 db , 0ah , 0dh , " 2*2 = " , "$"
  var3 db , 0ah , 0dh , " 2*3 = " , "$"
  var4 db , 0ah , 0dh , " 2*4 = " , "$"
  var5 db , 0ah , 0dh , " 2*5 = " , "$"
  var6 db , 0dh , 0ah , " 2*6 = " , "$"
  var7 db , 0ah , 0dh , " 2*7 = " , "$"
  var8 db , 0ah , 0dh , " 2*8 = " , "$"
  var9 db , 0ah , 0dh , " 2*9 = " , "$"
  var10 db , 0ah , 0dh ," 2*10 = " , "$" 
  
.code
main proc 
      
      mov ax,@data
      mov ds,ax 
      mov dx,offset var1 
      mov ah,9
      int 21h
      mov dl,"2"
      mov ah,2
      int 21h
        
      mov ax,@data
      mov ds,ax
      mov dx,offset var2
      mov ah,9
      int 21h
      mov dl,"4"
      mov ah,2
      int 21h  
      
       mov ax,@data
      mov ds,ax
      mov dx,offset var3  
      mov ah,9
      int 21h
      mov dl,"6"
      mov ah,2 
      
      int 21h
      mov ax,@data
      mov ds,ax
      mov dx,offset var4
      mov ah,9
      int 21h
      mov dl,"8"
      mov ah,2
      int 21h
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var5
      mov ah,9
      int 21h
      mov dl,"1"
      mov ah,2
      int 21h
      mov dl,"0"
      mov ah,2
      int 21h
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var6
      mov ah,9
      int 21h
      mov dl,"1"
      mov ah,2
      int 21h
      mov dl,"2"
      mov ah,2
      int 21h 
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var7
      mov ah,9
      int 21h
      mov dx,"1"
      mov ah,2
      int 21h
      mov dl,"4"
      mov ah,2
      int 21h 
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var8  
      mov ah,9
      int 21h
      mov dl,"1"
      mov ah,2
      int 21h
      mov dl,"6"
      mov ah,2
      int 21h  
      
      mov ax,@data
      mov ds,ax
      mov dx,offset var9 
      mov ah,9
      int 21h
      mov dx,"1"
      mov ah,2
      int 21h
      mov dl,"8"
      mov ah,2
      int 21h
      
       
      mov ax,@data
      mov ds,ax
      mov dx,offset var10 
      mov ah,9
      int 21h
      mov dx,"2"
      mov ah,2
      int 21h
      mov dl,"0"
      mov ah,2
      int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main