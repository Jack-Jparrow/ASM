;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-18 21:30:17
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p256 在屏幕中间显示80个‘!’
;

assume cs:code

code segment

    start:mov ax, 0b800h
          mov es, ax
          mov di, 160 * 2

          mov bx, offset s - offset se    ; 设置从标号se到标号s的转移位移
          mov cx, 80
    s:    mov byte ptr es:[di], '!'
          add di, 2
          int 7ch                         ; 如果(cx) ≠ 0，转移到标号s处
    se:   nop

code ends

end start