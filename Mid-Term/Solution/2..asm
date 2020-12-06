.MODEL SMALL 
.STACK 100H

.DATA 

PROMT DB "DIGITS -$"  
PROMT_3 DB 0DH,0AH,  " sum is$"
.CODE

MAIN PROC
    MOV  AX ,@DATA
    MOV  DS , AX      
    
    LEA  DX ,PROMT
    MOV  AH ,9 
    INT  21H
     
    MOV CX,10
     
    
    MOV  AH,2   
    MOV  DL,48
    
    @LOOP:
    INT 21H
    INC DL
    DEC CX  
    
   
    JNZ @LOOP
    mov    AX, 1
    cwd
    LEA  DX ,PROMT_3
    MOV  AH ,9 
    INT  21H
                   
Label1:
    add     AX, BX    
    inc     AX
    cmp     AX, 10
    jbe     Label1
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN

    