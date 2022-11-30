
.model small
.data 
s db 0ah,0dh," $"
d db , " * $"
b db "=$"
m db ?
t db ?
 rem db ?
.code
mov ax,@data
mov ds,ax


mov ah,01
int 21h
 
mov bl,al
mov t,al
mov ah,09
 lea dx,s
 int 21h
  
 
mov cl,10 
mov m,49

l1:  
  
 mov dl,t    ; tables of n
 mov ah,02
 int 21h
 
 
 mov ah,09  ; print *
 lea dx,d
 int 21h 
 
 mov dl,m    ; mul with ....
 mov ah,02
 int 21h
                
                
 inc m        ; increment in m  
   
  mov ah,09   ; print =
 lea dx,b
 int 21h
     
       
  mov ah,0
  mov al,bl
  mov bh,10
  
  sub al,48
  div bh
  
  mov rem,ah
  mov dl,al
  add dl,48
  
 mov ah,02
 int 21h
        
   mov dl,rem
   add dl,48     
  mov ah,02
 int 21h       
  
 
        
 add bl,t    ; bl add with (n= jis kaa table )
 sub bl,48 
 
 
 mov dl,13
 mov ah,02
 int 21h
 
 mov dl,10
 mov ah,02
 int 21h
 
 
 loop l1
        
  
