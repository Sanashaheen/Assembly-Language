.model small
.data

 A db 1
 B db 2
 C db 3
 D db 4
 E db 5
 F db 2
 G db 6
 res db ?
 rem db ?  
 
 var db "A+B+(C+D)+E+(F+G)  = $"

.code
 main proc
    
    
    
    mov ax,@data
    mov ds,ax
     lea dx,var
    mov ah,9
    int 21h
    
    
    
    mov bl,C
    add bl,D    ;(C+D)=7
    
    mov cl,F   
    add cl,G    ;(F+G)=8
    
    mov al,A
    add al,B    ;(A+B)=3
    
    add al,bl   ;(A+B)+(C+D)=10
    add al,E    ;A+B+(C+D)+E=15
    add al,cl   ;A+B+(C+D)+E+(F+G)=23  
   
    mov ah,0
    mov bl,10
    div bl
    mov rem,ah
    mov dl,al
    add dl,48
    mov ah,2
    int 21h
    mov dl,rem
    add dl,48
    mov ah,2
    int 21h
    
    
    
    main endp
 end main













