;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-20 21:36:14
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p270 在屏幕中间显示当前的月份
;

assume cs:code

code segment

    start:mov al, 8
          out 70h, al
          in  al, 71h

          mov ah, al
          mov cl, 4
          shr ah, cl
          and al, 00001111b

          add ah, 30h
          add al, 30h

          mov bx, 0800h                                  ; 显存
          mov es, bx
          mov byte ptr es:[160 * 12 + 40 - 2], ah        ; 显示月份的十位数码
          mov byte ptr es:[160 * 12 + 40 * 2 + 2], al    ; 接着显示月份的个位数码

          mov ax, 4c00h
          int 21h

code ends

end start