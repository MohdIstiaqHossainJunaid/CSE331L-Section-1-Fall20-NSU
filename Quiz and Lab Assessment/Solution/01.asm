
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


L1: NOP

L2: MOV AL, 0feH  
    MOV DL, AL
    MOV CX, 8

L3:
    RCR AL, 1
    RCL BL, 1
    LOOP L3
    
L4:
    XOR BL, DL
    JZ PAL
    JNZ NPAL 

PAL:
    MOV AL, 1; palindrome
    JMP L5

NPAL:
    MOV AL, 2; not palindrome
    JMP L5
   
L5: HLT


ret




