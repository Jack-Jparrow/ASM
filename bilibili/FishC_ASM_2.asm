;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-17 15:04:30
; @LastEditors: Jack Jparrow
; @Description: 
;

assume cs:codesg

codesg segment

start:  mov ax, 0123H
        mov bx, 0456H
        add ax, bx
        add ax, ax
        
        mov ax, 4c00h
        int 21h
    
codesg ends

end start