;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:24:00
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p190
;

assume cs:code

stack segment

          db 16 dup(0)

stack ends

code segment
          mov  ax, 4c00h
          int  21h
    start:mov  ax, stack
          mov  ss, ax
          mov  sp, 16
          mov  ax, 0
          push ax

          mov  bx, 0
          ret

code ends

end start