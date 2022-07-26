;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-15 20:59:51
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p233/2 用串传送指令，将F000H段中的最后16个字符串复制到它data段中
;

assume cs:code

data segment

         db 16 dup (0)

data ends

code segment

    start:mov ax, 0f000h
          mov ds, ax
          mov si, 0ffffh    ; ds:si指向f000:ffff
          mov ax, data
          mov es, ax
          mov di, 15        ; es:di指向data:15
          mov cx, 16        ; (cx) = 16，rep循环16次

          std               ; 设置DF=1，逆向传送
          rep movsb

          mov ax, 4c00h
          int 21h
code ends

end start