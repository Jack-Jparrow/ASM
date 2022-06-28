;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:35:34
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p158/问题7.9，将datasg段中每个单词的前4个字母改为大写字母
;

assume cs:codesg, ss:stacksg, ds:datasg

stacksg segment
    dw 0, 0, 0, 0, 0, 0, 0, 0
stacksg ends

datasg segment
    db '1. display      '
    db '2. brows        '
    db '3. replace      '
    db '4. modify       '
datasg ends;

codesg segment
start: mov ax, stacksg
    mov ss, ax
    mov sp, 16
    mov ax, datasg
    mov ds, ax
    mov bx, 0 ; 定义行

    mov cx, 4
s0: push cx
    mov si, 0 ; 定义列
    mov cx, 4
s: mov al, [bx + si + 3] ; 定位到每个要索引的字母，总共每行有4个字母
    and al, 11011111B ; 实现使它变为大写字母
    mov [bx + si + 3], al

    inc si ; 使它指向下一个字母
    loop s

    add bx, 16
    pop cx
    loop s0

    mov ax, 4c00h
    int 21h
codesg ends
end start