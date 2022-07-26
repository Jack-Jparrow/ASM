;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-17 21:34:26
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p253/问题一 编写、安装中断7ch的中断例程 安装部分
;

assume cs:code

code segment

    start: 
           mov  ax, cs
           mov  ds, ax
           mov  si, offset sqr                    ; 设置ds:si指向源地址
           mov  ax, 0
           mov  es, ax
           mov  di, 200h                          ; 设置es:di指向目的地址
           mov  cx, offset sqrend - offset sqr    ; 设置cx为传输长度
           cld                                    ; 设置传输方向为正
           rep  movsb

           mov  ax, 0
           mov  es, ax
           mov  word ptr es:[7ch * 4], 200h
           mov  word ptr es:[7ch * 4 + 2], 0

           mov  ax, 4c00h
           int  21h

    sqr:   
           mul  ax
           iret
    sqrend:nop

code ends

end start