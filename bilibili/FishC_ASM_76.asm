;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:42
; @LastEditTime: 2022-07-23 21:05:18
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p294 编写一个子程序，计算sin(x)，x∈{0°,  30°,  60°,  90°,  120°,  150°,  180°}，并在屏幕中间显示计算结果
;

assume cs:code

code segment

    start:  
            mov  al, 60

            call showsin

            mov  ax, 4c00h
            int  21h

    showsin:
            jmp  short show

    table   dw   ag0, ag30, ag60, ag90, ag120, ag150, ag180    ; 字符串偏移地址表
    ag0     db   '0', 0                                        ; sin(0)对应的字符串“0”
    ag30    db   '0.5', 0                                      ; sin(30)对应的字符串“0.5”
    ag60    db   '0.866', 0                                    ; sin(60)对应的字符串“0.866”
    ag90    db   '1', 0                                        ; sin(90)对应的字符串“1”
    ag120   db   '0.866', 0                                    ; sin(120)对应的字符串“0.866”
    ag150   db   '0.5', 0                                      ; sin(150)对应的字符串“0.5”
    ag180   db   '0', 0                                        ; sin(180)对应的字符串“0”

    show:   push bx
            push es
            push si

            mov  bx, 0b800h
            mov  es, bx

    ;以下用角度值/30作为相对于table的偏移量，取得对应的字符串的偏移地址，放在bx中
            mov  ah, 0
            mov  bl, 30
            div  bl
            mov  bl, al
            mov  bh, 0
            add  bx, bx
            mov  bx, table[bx]

    ;以下显示sin(x)对应的字符串
            mov  si, 160 * 12 + 40 * 2
    shows:  
            mov  ah, cs:[bx]
            cmp  ah, 0
            je   showret
            mov  es:[si], ah
            inc  bx
            add  si, 2
            jmp  shows

    showret:
            pop  si
            pop  es
            pop  bx
            ret

code ends

end start