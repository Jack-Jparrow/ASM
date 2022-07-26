;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-17 21:26:11
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p252
;

assume cs:code

code segment

    start:
          mov ax, 0b800h                              ;
          mov es, ax
          mov byte ptr es:[12 * 160 + 40 * 2], '!'

          int 0

code ends

end start