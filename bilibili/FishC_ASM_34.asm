;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:06:32
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p170，利用除法指令计算100001/100
;

assume cs:code

code segment
    
         mov dx, 1
         mov ax, 86A1h    ; (dx) * 1000h + (ax) = 100001
         mov bx, 100
    
         div bx
    
         mov ax, 4c00h
         int 21h

code ends

end