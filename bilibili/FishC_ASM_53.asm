;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-13 21:00:49
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=55&t=811.2
;

assume cs:code

code segment

start: mov al, 01100010b
    add al, 01100011b

    mov ax, 4c00h
    int 21h

code ends

end start