;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-16 16:05:08
; @LastEditors: Jack Jparrow
; @Description: 
;

assume cs:abc

abc segment
    mov ax, 2
    add ax, ax
    add ax, ax
    mov ax, 4c00h
    int 21h
abc ends

end