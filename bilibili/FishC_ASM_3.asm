;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-17 15:37:49
; @LastEditors: Jack Jparrow
; @Description: 实验3
;

assume cs:codesg

codesg segment

start:  mov ax, 2000H
        mov ss, ax
        mov sp, 0
        add sp, 10
        pop ax
        pop bx
        push ax
        push bx
        pop ax
        pop bx

        mov ax, 4c00h
        int 21h

codesg ends

end start