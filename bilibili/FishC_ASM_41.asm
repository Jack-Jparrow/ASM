;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:08:46
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=46&t=254.8
;

assume cs:code

code segment

    start:jmp short s
          db  127 dup(0)
    s:    mov ax,  0ffffh

code ends

end start