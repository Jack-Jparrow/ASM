;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-17 21:35:15
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p254/问题二 编写、安装中断7ch的中断例程，实现将一个全是字母，以0结尾的字符串，转化为大写 编写部分
;

assume cs:code

data segment

         db 'conversation', 0

data ends

code segment

    start:mov ax, data
          mov ds, ax
          mov si, 0
          int 7ch

          mov ax, 4c00h
          int 21h

code ends

end start