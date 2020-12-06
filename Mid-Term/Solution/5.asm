org 100h
A DB 1,2,2,3,3
B DB  DUP(0)


    
START:
      MOV AX,A
      MOV DS,AX
      MOV CL,10
      LEA BX,A
      LEA SI,B
  L1: MOV CH,BYTE PTR[BX]
      MOV BYTE PTR[SI],CH
      MOV DH,BYTE PTR[SI]
      INC BX
      INC SI
      DEC CL
      CMP CL,00
      JNZ L1
      MOV AH,4CH
      INT 21H
CODE ENDS
END START