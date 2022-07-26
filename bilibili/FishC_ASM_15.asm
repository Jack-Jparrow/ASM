;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:43
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=28&t=138.1
;

assume cs:code

code segment
    
         mov ax, 0
         mov ds, ax
         mov ds:[26h], ax

         mov ax, 4c00h
         int 21h

code ends

end