
.MODEL SMALL
.STACK 64
.DATA

  STRING DB ?
  
  SYM DB '$'
  
  INPUT_M DB 0ah,0dh,0AH,0DH, 'ENTER THE INPUT STRING: ',0DH,0AH,'$'
  
  OUTPUT_M DB 0ah,0dh,0AH,0DH, 'THE Result IS: ',0DH,0AH,'$'
  
  
.CODE
MAIN PROC
    mov AX, @DATA
    mov DS, AX
    
    mov DX, OFFSET INPUT_M
    mov AH, 9
    int 21H
    
    lea SI, STRING 
    
INPUT: mov ah, 1
       int 21h
       
      mov [si],al
      inc si
       
       cmp al, ODH
       jnz INPUT
       
       mov al, SYM
       MOV [SI],'$'
       mov dx,00h
 mov dx,offset input
 mov ah,0Ah
 int 21h 

 ;calculating length
 mov length,00h
 mov si,offset input+2

 ;checking for vowels
 loopi: cmp [si],'$'
    je next
    add length,01h
    inc si
    loop loopi
 next:
    mov cx,00h
    mov cl,length 

    mov si,offset input+2 
    mov count,00h
 counting:cmp [si],'a'
      je count1 
      cmp [si],'e'
      je count1
      cmp [si],'i'
      je count1
      cmp [si],'o'
      je count1
      cmp [si],'u'
      je count1
      inc si
      loop counting
      cmp cl,00h
      je exit
  count1:inc count 
      inc si
     loop counting 
 
       

MAIN ENDP
END MAIN
  