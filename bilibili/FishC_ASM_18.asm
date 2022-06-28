;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:34:10
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p124/程序6.1，在代码段中使用数据
;

assume cs:code

code segment
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h

    mov bx, 0
    mov ax, 0

    mov cx, 8
s:add ax, cs:[bx]
    add bx, 2
    loop s
    
    mov ax, 4c00h
    int 21h

code ends
end