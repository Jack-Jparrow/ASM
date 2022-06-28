;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:34:33
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p128/程序6.4改，将数据、代码、栈放入不同的段
;

assume cs:b, ds:a, ss:c

a segment
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h
a ends

c segment
    dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
c ends

b segment
d: mov ax, c 
    mov ss, ax
    mov sp, 20h ; 希望用c段当作栈空间，设置ss:sp指向c:20

    mov ax, a
    mov ds, ax ; 希望用ds:bx指向a段中的第一个单元

    mov bx, 0 ; ds:bx指向a段中的第一个单元

    mov cx, 8
s: push [bx]
    add bx, 2
    loop s ; 以上将a段中的0~15单元中的8个字型数据依次入栈

    mov bx, 0

    mov cx, 8
s0: pop [bx]
    add bx, 2
    loop s0 ; 以上依次出栈8个字型数据到a段的0~15单元中

    mov ax, 4c00h
    int 21h
    
b ends
end d ; d处是要执行的第一条指令，即程序的入口