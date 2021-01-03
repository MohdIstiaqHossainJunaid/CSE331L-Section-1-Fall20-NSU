.MODEL SMALL
 .STACK 100H

 .DATA
  PROMT_1 DB 0ah,0dh,0AH,0DH, 'orginal value of al ',0DH,0AH,'$'
  
  PROMT_2 DB 0ah,0dh,0AH,0DH, 'THE OUTPUT IS: ',0DH,0AH,'$'

 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

     LEA DX,PROMT_1            
     MOV AH, 9
     INT 21H

     MOV AL, 31H                  
     MOV BL, AL                      

     MOV AH, 2                    
     MOV DL, AL
     INT 21H

     LEA DX, PROMT_1             
     MOV AH, 9
     INT 21H

     AND BL, 0FH                 

     MOV CL, 2                    
     SHL BL, CL

     OR BL, 30H                   

     MOV AH, 2                    
     MOV DL, BL
     INT 21H

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP 
 END MAIN