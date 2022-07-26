;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-13 20:56:22
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p216 CF标志
;

assume cs:code

code segment
    start:mov al, 98h
          add al, al
          add al, al

          mov ax, 4c00h
          int 21h

code ends

end start