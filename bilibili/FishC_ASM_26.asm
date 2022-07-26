;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:04:04
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p139/程序7.1，以字符形式给出数据
;

assume cs:code, ds:data

data segment
         
         db 'unIX'    ; 相当于“db 75H,6EH,49H,58H”， “u”、 “n”、 “I”、 “X”的ASCII码分别为75H、6EH、49H、58H；
         db 'foRK'    ; 相当于“db 66H,6FH,52H,4BH”， “u”、 “n”、 “I”、 “X”的ASCII码分别为66H、6FH、52H、4BH；

data ends

code segment

    start:mov al, 'a'      ; 相当于“mov al,61H”,”a”的ASCII码为61H；
          mov bl, 'b'      ; 相当于“mov al,62H”,”b”的ASCII码为62H

          mov ax, 4c00h
          int 21h

code ends

end start