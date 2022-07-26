;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-11 19:53:57
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p202 将data段中的字符串转化为大写
;

assume cs:code

data segment

         db 'conversation'

data ends                     ;

code segment

    start:  mov  ax, data
            mov  ds, ax
            mov  si, 0                       ; ds:si指向字符串（批量数据）所在空间的首地址
            mov  cx, 12                      ; cx存放字符串的长度
            call capital
    
            mov  ax, 4c00h
            int  21h

    capital:and  byte ptr [si], 11011111b
            inc  si
            loop capital
            ret

code ends

end start