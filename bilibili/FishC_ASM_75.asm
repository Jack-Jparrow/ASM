;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:42
; @LastEditTime: 2022-07-23 20:49:55
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p292 	编写子程序，以十六进制的形式在屏幕中间显示给定的byte型数据
;

assume cs:code

code segment

    start:   
             mov  al, 0eh

             call showbyte

             mov  ax, 4c00h
             int  21h

    ;子程序：用al传送要显示的数据

    showbyte:
             jmp  short show

    table    db   '0123456789ABCDEF'                ; 字符表

    show:    push bx
             push es

             mov  ah, al
             shr  ah, 1
             shr  ah, 1
             shr  ah, 1
             shr  ah, 1                             ; 右移4位，ah中得到高4位的值
             and  al, 00001111b                     ; al中为低4位的值

             mov  bl, ah
             mov  bh, 0
             mov  ah, table[bx]                     ; 用高4位的值作为相对于table的偏移，取得对应的字符

             mov  bx, 0b800h
             mov  es, bx
             mov  es:[160 * 12 + 40 * 2], ah

             mov  bl, al
             mov  bh, 0
             mov  al, table[bx]                     ; 用低4位的值作为相对于table的偏移，取得对应的字符

             mov  es:[160 * 12 + 40 * 2 + 2], al

             pop  es
             pop  bx
             ret

code ends

end start