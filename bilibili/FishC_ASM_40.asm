;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:08:40
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=43&t=1100.2
;

assume cs:codesg

codesg segment

    start: mov ax, 0
           jmp short s
           add ax, 1
           add ax, ax
    s:     inc ax

codesg ends

end start