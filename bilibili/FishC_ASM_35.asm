;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-06-28 16:54:03
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p170，利用除法指令计算1001/100
;

assume cs:code

code segment
    mov ax, 1001
    mov bl, 100 ; (dx) * 1000h + (ax) = 100001

    div bl
    
    mov ax, 4c00h
    int 21h

code ends
end