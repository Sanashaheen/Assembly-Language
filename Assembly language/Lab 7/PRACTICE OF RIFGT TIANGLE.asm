.model small
.data
.code
main proc
    
   MOV BH,1
 
   MOV CL,5
   MOV BL,CL
  
   L1: 
   
    mov CL,BH
   
   L2:
  
   MOV AH,2
   MOV DL,'*'
   INT 21H 
   
  
   LOOP L2 
 
   
   MOV AH,2
   MOV DL,10
   INT 21H 
   MOV AH,2
   MOV DL,13
   INT 21H 
   INC BH
   MOV CL,BL
   DEC BL
   
   
   
   
   
   LOOP L1
   
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main