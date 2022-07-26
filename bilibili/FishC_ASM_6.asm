;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:08
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p100/程序5.1，loop
;

assume cs:code

code segment

         mov  ax, 2
         mov  cx, 11
    s:   add  ax, ax
         loop s

         mov  ax, 4c00h
         int  21h

code ends

end 