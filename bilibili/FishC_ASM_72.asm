;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-22 22:02:09
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p287 将code段中的a标号处的8个数据累加，结果存储到b标号处的字中
;

assume cs:code

code segment

    a:    db   1, 2, 3, 4, 5, 6, 7, 8
    b:    dw   0

    start:mov  si, offset a
          mov  bx, offset b
          mov  cx, 8
    s:    mov  al, cs:[si]
          mov  ah, 0
          add  cs:[bx], ax
          inc  si
          loop s

          mov  ax, 4c00h
          int  21h

code ends

end start