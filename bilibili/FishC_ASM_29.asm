;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:05:20
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p154/问题7.7，将datasg段中每个单词改为大写字母，代码有问题，见30.asm
;

assume cs:codesg, ds:datasg

datasg segment

           db 'ibm             '
           db 'dec             '
           db 'dos             '
           db 'vax             '

datasg ends

codesg segment

    start: mov  ax, datasg
           mov  ds, ax
           mov  bx, 0            ; 用abx来定位行

           mov  cx, 4
    s0:    mov  si, 0            ; 用si定位列
           mov  cx, 3
    s:     mov  al, [bx + si]    ; 注意，单位是字节，所以是al
           and  al, 11011111b
           mov  [bx + si], al
    
           inc  si
    
           loop s                ; 此时cx已经为0

           add  bx, 16
           loop s0               ; cx = cx - 1，再判断是否为0，此时变为-1，即FFFF，会一直循环

           mov  ax, 4c00h
           int  21h

codesg ends

end start