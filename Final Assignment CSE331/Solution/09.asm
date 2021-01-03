 .MODEL SMALL
 
  .STACK 100H 
          
  .DATA 
   PROMPT_1  DB  'Please enter a string : $'
   PROMPT_2  DB  0DH,0AH,'\ Number of Vowels = $\'
   VOWEL DB ?
  
 
 
  .CODE
  MAIN PROC
   MOV AX, @DATA                
   MOV DS, AX
   MOV ES, AX 
  
  LEA DX, PROMPT_1             
  MOV AH, 9
  INT 21H 
  
  MOV AH,1
  INT 21H
  
  MOV BL,AL 
  
  LEA DX, PROMPT_2             
  MOV AH, 9
  INT 21H  
            
  
 
 
 
  BACK: MOV AL, [SI]
  CMP AL,'$'
  JZ FINAL
  CMP AL,'A'
  JZ COUNT   
  CMP AL,'E'
  JZ COUNT   
  CMP AL,'I'
  JZ COUNT   
  CMP AL,'O'
  JZ COUNT   
  CMP AL,'U'
  JZ COUNT
  CMP AL,'a'
  JZ COUNT   
  CMP AL,'e'
  JZ COUNT   
  CMP AL,'i'
  JZ COUNT   
  CMP AL,'o'
  JZ COUNT   
  CMP AL,'u'
  JZ COUNT   
  INC SI
  JMP BACK 
  COUNT: INC BL
  MOV VOWEL, BL
  INC SI
  JMP BACK
  FINAL: MOV AH, 4CH
  INT 21H
   
  LEA DX, PROMPT_2             ;
  MOV AH, 9                     
  INT 21H 
  MAIN ENDP

  END  
       
      