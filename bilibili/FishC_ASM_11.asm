;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-22 15:22:40
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=26&t=240.9
;

assume cs:code

code segment
    mov ax, 2000h
    mov ds, ax
    mov bx, 0
    mov al, [bx]
    mov bx, 1
    mov bl, [bx]
    mov bx, 3
    mov cl, [bx]
    mov bx, 3
    mov dl, [bx]

    mov ax, 4c00h
    int 21h

code ends

end