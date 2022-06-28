;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-27 21:35:08
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p152/问题7.6，将datasg段中每个单词的头一个字母改为大写字母
;

assume cs:codesg, ds:datasg

datasg segment
    db '1. file         '
    db '2. edit         '
    db '3. search       '
    db '4. view         '
    db '5. options      '
    db '6. help         '
datasg ends

codesg segment
start: mov ax, datasg
    mov ds, ax
    mov bx, 0

    mov cx, 6
s: mov al, [bx + 3] ; 注意，单位是字节，所以是al
    and al, 11011111b ; 使第五位为0，这样就确定了大写
    mov [bx + 3], al
    add bx, 16
    loop s

    mov ax, 4c00h
    int 21c
codesg ends
end start