;Practice task 1
;week 1

.model small
.data 
 
  var1 db               " NAME  : SANA SHAHEEN " , "$"
  var2 db , 0ah , 0dh , " FATHER NAME : ABDUL SHAKOOR " , "$"
  var3 db , 0ah , 0dh , " AGE : 21 YEARS " , "$"

  
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
     
    
      mov ah,4ch
      int 21h
    main endp
end main