.model small
.code
org 100h

start:
     mov cx, 4

L1:
    push cx

L2:
    mov ah,2h
    mov dl,2Ah
    int 21h
    loop L2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    pop cx
    loop L1
    mov cx,6

L3:
    push cx



    mov dl,2Ah
    int 21h

    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    pop cx

    loop L2

exit: int 20h
end start