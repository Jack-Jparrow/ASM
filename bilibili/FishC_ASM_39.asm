;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:08:33
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p177/程序9.1，依据位移进行转移的jmp指令
;

assume cs:codesg

codesg segment
    
    start: mov ax, 0
           jmp short s
           add ax, 1
    s:     inc ax

codesg ends

end start