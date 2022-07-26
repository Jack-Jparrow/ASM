;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-13 21:04:14
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=55&t=985.6
;

assume cs:code

code segment

start: mov al, 10001000b
    add al, 11110000b

    mov ax, 4c00h
    int 21h

code ends

end start