;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:34:22
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p128/程序6.3，在代码段中使用栈 逆序
;

assume cs:codesg

codesg segment
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h
    ; 用dw定义16个字型数据，在程序加载后，将取得16个字的内存空间，存放这16个数据。
    ; 在后面的程序中将这段空间当作栈来使用
    dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

start: mov ax, cs
    mov ss, ax
    mov sp, 30h ; 将设置栈顶ss:sp指向cs:30

    mov bx, 0
    mov cx, 8
s: push cs:[bx]
    add bx, 2
    loop s ; 以上将代码段0~15单元中的8个字型数据依次入栈

    mov bx, 0
    mov cx, 8
s0: pop cs:[bx]
    add bx, 2
    loop s0 ; 以上一次出栈8个字型数据到代码段0~15单元中

    mov ax, 4c00h
    int 21c

codesg ends
end start ; 指明程序的入口在start处