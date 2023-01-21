
;Unseen task Sana shaheen BCS203192 LAb 11
.model small
.stack 100h
.data

num dw 0
.code
main proc

 mov ax,@data
 mov ds,ax
 call inputt
 exit:
 call print

 main endp


inputt proc   ;1st procedure to take input up to 4 digit and also if press enter
   
   mov cx,3
    
   inp:
   mov ah,01
   int 21h
   
   cmp al,13
   je exit
   sub ax,48 
   push ax        ;for saving the input i push the number into stack
  
   
   cmp cx,0
   je exit
   dec cx
   jmp inp
   
    
    ret
    inputt endp        ;end procedure

print proc             ;this procedure is for print the number based on length of the number
    mov dl,10
    mov ah,02
    int 21h 
    mov dl,13
    mov ah,02
    int 21h
    
   
      pop bx     ;this pop is for garbage 
      
      
      pop bx     ;here i pop all number from the stack
      pop cx
      pop ax
      pop bp
      cmp bp,8
      je pp
      cmp bp,0
      je pp
      
      mov dx,bp
      add dx,48
      mov ah,02
      int 21h
      pp:
      cmp ax,8
      je cc
      cmp ax,0
      je cc
      mov dx,ax
      add dx,48
      mov ah,02
      int 21h 
      cc:
      cmp cx,8
      je bb 
      cmp cx,0
      je bb
      mov dx,cx
      add dx,48
      mov ah,02
      int 21h
       
      bb:
      
      cmp bx,8
      je e
      cmp bx,0
      je e
      mov dx,bx
      add dx,48
      mov ah,02
      int 21h 
    
       jmp e
    ret 
    print endp
e:
  mov ah,4ch
  int 21h
end main