.MODEL SMALL
.STACK 64
.DATA
          
  INSTR1 DB 20 DUP

  STRING DB ?
  
  SYM DB '$'
  
  INPUT_M DB 0ah,0dh,0AH,0DH, 'ENTER THE INPUT STRING/INTEGER: ',0DH,0AH,'$'
  
  OUTPUT_M DB 0ah,0dh,0AH,0DH, 'THIS IS PALINDROM: ',0DH,0AH,'$'    
  
  OUTPUT_N  DB 0ah,0dh,0AH,0DH, 'THIS IS NOT PALINDROM: ',0DH,0AH,'$' 
  STR3  DB 0ah,0dh,0AH,0DH, 'REVERSE ',0DH,0AH,'$'  
  
 MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV DX, OFFSET INPUT_M
    MOV AH, 9
    INT 21H
    
    LEA SI, STRING
    
     
  INPUT: MOV AH, 1
       INT 21H
       
       MOV [SI], AL
       INC SI
       
       CMP AL, 0DH
       JNZ INPUT
       
       MOV AL, SYM
       MOV [SI],'$'
       
       
       MOV AH,09H
       LEA DX,STR3
       INT 21H

       MOV CL,INSTR1+1
       ADD CL,1
       ADD SI,2
       
       
       PALIN_CHECK:
       
      LEA SI, INSTR1,
      LEA DI, INSTR1,
      REPE CMPSB
      JNE NOT_PALIN
      
      PALIN:
      
      MOV AH, 09H
      LEA DX, OUTPUT_N
      INT 21H
     ; JMP EXIST
      
      NOT_PALIN:
       MOV AH,09H
       LEA DX,OUTPUT_N
       INT 21H

       
       
 

ret




