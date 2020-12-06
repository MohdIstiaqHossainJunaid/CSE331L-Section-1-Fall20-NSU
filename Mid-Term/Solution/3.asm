
.MODEL SMALL 
.STACK 100H

.DATA 
NUM1 DB ?
NUM2 DB ?

PROMT_1 DB "Enter a number 1$"
PROMT_2 DB 0DH,0AH,  "enter a number 2 $" 
PROMT_3 DB 0DH,0AH,  "Smallest one$" 


.CODE

MAIN PROC
    MOV  AX ,@DATA
    MOV  DS , AX      

    
    LEA  DX ,PROMT_1
    MOV  AH ,9 
    INT  21H
     
    MOV AH,1
    INT 21H 
    MOV NUM1,AL
 
    
    LEA DX,PROMT_2
    MOV AH, 9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV NUM2,AL   
    
    
   CMP AL,NUM2
   JG SECOND
   FIRST:  MOV AH,2
   MOV DL,NUM1
   INT 21H
   JMP EXIT
   SECOND: MOV AH,2
   MOV DL,NUM2
   INT 21H 
   EXIT: MOV AH,4CH
             
             
            
             
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