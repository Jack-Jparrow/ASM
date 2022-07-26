;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-15 20:55:07
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p232/1 用串传送指令，将data段中的第一个字符串复制到它后面的空间中
;

assume cs:code

data segment

         db 'Welcome to masm!'
         db 16 dup (0)

data ends

code segment

    start:mov ax, data
          mov ds, ax
          mov si, 0        ; ds:si指向data:0
          mov es, ax
          mov di, 16       ; es:di指向data:16
          mov cx, 16       ; (cx) = 16，rep循环16次

          cld              ; 设置DF = 0，正向传送
          rep movsb

          mov ax, 4c00h
          int 21h

code ends

end start