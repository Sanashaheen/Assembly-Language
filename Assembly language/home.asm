;BCS203192 Sana shaheen HOME
include emu8086.inc
.model small
.data

t1 db 0
t2 db 0
.code
main proc
  
 call home  
 call pro
 main endp   
 home proc 
    
      mov t1,30
      mov t2,2
    
      mov cx,10
      roofleft:         
      
       gotoxy t1,t2
       putc '*'
       
       dec t1
       dec t1
       inc t2
       loop roofleft
       mov cx,10
       mov t1,30
       mov t2,2
       
        roofright:        
      
       gotoxy  t1,t2
       putc '*'
       
       inc t1
       inc t1
       inc t2
       loop roofright 
       mov t1,14
       mov t2,11
       mov cx,60
       roofstraight:   
       gotoxy  t1,t2
       putc '*'
       
       
       inc t1
       loop roofstraight
       mov t1,13
       mov t2,11
       mov cx,10
       right:
      
       gotoxy  t1,t2
       putc '*'
       
       inc t2
       loop right
       
        
       mov t1,48
       mov t2,11
       mov cx,10
       left:
      
       gotoxy  t1,t2
       putc '*'
       inc t2
       loop left
       
       mov t1,14
       mov t2,20
       mov cx,60
       roofbotom:
      
       gotoxy  t1,t2
       putc '*'
       inc t1
       loop roofbotom 
       
       mov t1,58
       mov t2,14
       mov cx,7
       Mleft:
      
       gotoxy  t1,t2
       putc '*'
       
       inc t2
       loop Mleft
       
       
       mov t1,64
       mov t2,14
       mov cx,7
       MRight:
      
       gotoxy  t1,t2
       putc '*'
       
       inc t2
       loop MRight   
       
       mov t1,73
       mov t2,11
       mov cx,10
       MMleft:
      
       gotoxy  t1,t2
       putc '*'
       
       inc t2
       loop MMleft
       
       mov t1,59
       mov t2,14
       mov cx,6
       doorroof:   
      
       gotoxy  t1,t2
       putc '*'
       
       
       inc t1
       loop doorroof 
       
       
       mov t1,32
       mov t2,2
       mov cx,26
       rooftopp:
      
       gotoxy  t1,t2
       putc '*'
       
       inc t1
       loop rooftopp 
        mov cx,9
       mov t1,58
       mov t2,2
       
        Lright:       
      
       gotoxy  t1,t2
       putc '*'
       
       inc t1
       inc t1
       inc t2
       loop Lright
    home endp
     pro proc
        mov t1,25
        mov t2,14
        gotoxy t1,t2
        printn "Sana Basit "
        pro endp
       mov ah,4ch
       int 21h 
       end main
