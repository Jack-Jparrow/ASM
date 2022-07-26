;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:05:53
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p156/问题7.8.2，将datasg段中每个单词改为大写字母，改30.asm
;

assume cs:codesg, ds:datasg

datasg segment
    
           db 'ibm             '
           db 'dec             '
           db 'dos             '
           db 'vax             '
           dw 0                     ; 定义一个字，用来保存cx

datasg ends

codesg segment

    start: mov  ax, datasg
           mov  ds, ax
           mov  bx, 0            ; 用abx来定位行

           mov  cx, 4
    s0:    mov  ds:[40h], cx     ; 将外层循环的cx值保存再datasg:40h单元中
           mov  si, 0            ; 用si定位列
           mov  cx, 3
    s:     mov  al, [bx + si]    ; 注意，单位是字节，所以是al
           and  al, 11011111b
           mov  [bx + si], al
    
           inc  si
    
           loop s

           add  bx, 16
           mov  cx, ds:[40h]     ; 用datasg:40h单元中的值恢复cx
           loop s0

           mov  ax, 4c00h
           int  21h

codesg ends

end start