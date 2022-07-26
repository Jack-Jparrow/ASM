;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:14
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p103/问题5.3，loop
;

assume cs:code

code segment
         mov  ax, 0
         mov  cx, 123
    s:   add  ax, 236
         loop s

         mov  ax, 4c00h
         int  21h

code ends

end