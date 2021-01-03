.MODEL SMALL 
.STACK 100H

.DATA 

PROMT DB "LOWER Case Letter  a to z  are -$"
.CODE

MAIN PROC
    MOV  AX ,@DATA
    MOV  DS , AX      
    
    LEA  DX ,PROMT
    MOV  AH ,9 
    INT  21H
     
    MOV CX,26
     
    
    MOV  AH,2   
    MOV  DL,122
    
    @LOOP:
    INT 21H
    DEC DL
    DEC CX
    
    JNZ @LOOP
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN
    
    
    