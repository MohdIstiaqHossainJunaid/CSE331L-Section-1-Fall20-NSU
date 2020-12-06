.MODEL SMALL 
.STACK 100H

.DATA 

PROMT_1 DB "Enter integer 1$"
PROMT_2 DB 0DH,0AH,  "enter interger 2$" 
PROMT_3 DB 0DH,0AH,  "mul of the integer$" 


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
    
    MOV AH,1
    INT 21H
    MOV BL,AL
             
             
    MUL BH         
             
    LEA DX,PROMT_3
    MOV AH, 9
    INT 21H          
   
  
    MOV  AH,2
    MOV DL,BL
    INT 21H

    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN
    
    
    