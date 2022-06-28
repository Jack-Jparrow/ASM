;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:34:52
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p135/实验5.3，编写、调试具有多个段的程序
;

assume cs:code, ds:data, ss:stack

code segment
start: mov ax, stack
    mov ss, ax
    mov sp, 16

    mov ax, data
    mov ds, ax
    
    push ds:[0]
    push ds:[2]
    pop ds:[2]
    pop ds:[0]

    mov ax, 4c00h
    int 21h
    
code ends

data segment
    dw 0123h, 0456h
data ends

stack segment
    dw 0, 0
stack ends

end start