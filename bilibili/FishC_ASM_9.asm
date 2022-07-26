;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:18
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p104/程序5.3，loop
;

assume cs:code

code segment
         mov  ax, 0ffffh
         mov  ds, ax
         mov  bx, 6
         mov  al, [bx]
         mov  al, 0
         mov  dx, 0

         mov  cx, 3
    s:   add  dx, ax
         loop s

         mov  ax, 4c00h
         int  21h

code ends

end