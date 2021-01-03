org 100h
  num_1 DW ?
  num_2 DW ?
   
    org 100h
    MOV AX,@DATA
    MOV DS,AX
    
    ;Printing STR1
    
    MOV AH,9
    LEA DX,STR1
    INT 21H
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Taking input of 1st number
   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;Printing STR2
   
    MOV AH,9
    LEA DX,STR2
    INT 21H
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
   
    ;Taking input of 2nd number  
        
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
   
    ;Carriage return and newline
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
     MOV AH,9
    LEA DX,STR3
    INT 21H
    
    
    LCM :
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,num_1
    MOV BX,num_2
    WHILE:MOV DX,0
    MOV CX,BX
    DIV BX
    MOV BX,DX
    MOV AX,CX
    CMP BX,0
    JNE WHILE 
    
    
    
   


    MUL BX
    DIV CX
    MOV LCM,AX
    MOV AH,4CH
    INT 21H

    MUL BX
    DIV CX
    MOV LCM,AX
    MOV AH,4CH
    INT 21H   
    
    
   
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
  
  
  ret
  
  
    STR1 DW 'Enter the first number:$'
    STR2 DW 'Enter the second number:$'
    STR3 DW 'the lcm of two number:$'
    



