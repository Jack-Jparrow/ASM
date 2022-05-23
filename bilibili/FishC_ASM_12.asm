;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-22 15:25:54
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=26&t=921.9
;

assume cs:code

code segment
    mov ax, 2000h
    mov ds, ax
    mov al, ds:[0]
    mov bl, ds:[1]
    mov cl, ds:[2]
    mov dl, ds:[3]

    mov ax, 4c00h
    int 21h

code ends

end