;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-21 16:52:34
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=25&t=1553.3
;

assume cs:code

code segment
    mov ax, 0ffffh
    mov ds, ax
    mov bx, 6
    mov al, [bx]
    mov al, 0
    mov dx, 0

    mov cx, 123
s:  add dx, ax
    loop s

    mov ax, 4c00h
    int 21h

code ends

end