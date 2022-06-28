;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:33:51
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p116/程序5.6，loop和[bx]的联合应用
;

assume cs:code

code segment

    mov ax, 0ffffh
    mov ds, ax
    mov bx, 0   ;初始化ds:bx指向ffff:0

    mov dx, 0   ;初始化累加寄存器dx → (dx) = 0

    mov cx, 12  ;初始化循环寄存器cx → (cx) = 12

s:  mov al, [bx]
    mov al, 0
    add dx, ax  ;间接向dx中加上((ds) * 16 + (bx))单元的数值
    inc bx  ;ds:bx指向下一个单元
    loop s

    mov ax, 4c00h
    int 21h

code ends

end