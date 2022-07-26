;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-13 20:57:53
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p217 CF标志
;

assume cs:code

code segment
    start:mov al, 97h
          sub al, 98h
          sub al, al

          mov ax, 4c00h
          int 21h

code ends

end start