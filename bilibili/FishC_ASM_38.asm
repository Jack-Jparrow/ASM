;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:08:24
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p176/问题9.1，操作符offset
;

assume cs:codesg

codesg segment

    s:     mov ax,bx           ; （mov ax,bx 的机器码占两个字节）
           mov si,offset s
           mov di,offset s0
           mov ax,cs:[si]
           mov cs:[di],ax
    s0:    nop                 ; （nop的机器码占一个字节）
           nop

codesg ends

end s