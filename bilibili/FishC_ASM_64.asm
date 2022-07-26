;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-17 21:32:29
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p253/问题一 编写、安装中断7ch的中断例程 编写部分
;

assume cs:code

code segment

    start:
          mov ax, 3456     ; (ax) = 3456
          int 7ch          ; 调用中断7ch的中断例程，计算ax中的数据的平方
          add ax, ax
          adc dx, dx       ; 存放结果，讲结果乘以2

          mov ax, 4c00h
          int 21h

code ends

end start 
