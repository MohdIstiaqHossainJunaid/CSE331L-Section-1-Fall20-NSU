.MODEL SMALL 
.STACK 100H

.DATA 

PROMT_1 DB "ENTER  THE lower case LETTER :$"
PROMT_2 DB 0DH,0AH,  "the  upper case letter is :$"  


.CODE

MAIN PROC
    MOV  AX ,@DATA
    MOV  DS , AX      

    
    LEA  DX ,PROMT_1
    MOV  AH ,9 
    INT  21H
     
    MOV AH,1
    INT 21H
  
    MOV BL,AL
    
    LEA DX,PROMT_2
    MOV AH, 9
    INT 21H
  
    SUB BL, 20H
  
    MOV  AH,2
    MOV DL,BL
    INT 21H

    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN
    
    
    