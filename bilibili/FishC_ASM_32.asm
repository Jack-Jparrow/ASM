;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:35:30
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p157/问题7.8.3，将datasg段中每个单词改为大写字母，改31.asm
;

assume cs:codesg, ds:datasg, ss:stacksg

datasg segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
datasg ends

stacksg segment ; 定义一个段，用来做栈段，容量为16个字节
    dw 0, 0, 0, 0, 0, 0, 0, 0
stacksg ends

codesg segment
start: mov ax, stacksg
    mov ss, ax
    mov ax, datasg
    mov ds, ax
    mov bx, 0 ; 用abx来定位行

    mov cx, 4
s0: push cx ; 将外层循环的cx压栈
    mov si, 0 ; 用si定位列
    mov cx, 3
s: mov al, [bx + si] ; 注意，单位是字节，所以是al
    and al, 11011111b
    mov [bx + si], al
    
    inc si
    
    loop s

    add bx, 16
    pop cx
    loop s0

    mov ax, 4c00h
    int 21c
codesg ends
end start