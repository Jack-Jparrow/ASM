;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:08:58
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p187/实验8
;

assume cs:codesg

codesg segment
    
           mov ax, 4c00h
           int 21h

    start: mov ax, 0
    s:     nop
           nop

           mov di, offset s
           mov si, offset s2
           mov ax, cs:[si]
           mov cs:[di], ax

    s0:    jmp short s

    s1:    mov ax, 0
           int 21h
           mov ax, 0

    s2:    jmp short s1
           nop

codesg ends

end start