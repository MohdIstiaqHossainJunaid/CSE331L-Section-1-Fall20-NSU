
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
                                                                    .MODEL SMALL
.DATA
    
    OUTPUT DB 'Result: $'
org 100h
  mov ax @data
  mov dx,ax
  mov al,20
  mov cl,10
  mov ah,00
  div cl 
  mov dx, ax
  add dx,3030h
  mov ah,02h
  int 21H
  
  mov AX.4C00H
  INT 21H
  
  
MAIN ENDP
END MAIN

ret




