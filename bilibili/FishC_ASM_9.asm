;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-21 16:05:11
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p104/程序5.3，loop
;

assume cs:code

code segment
    mov ax, 0ffffh
    mov ds, ax
    mov bx, 6
    mov al, [bx]
    mov al, 0
    mov dx, 0

    mov cx, 3
s:  add dx, ax
    loop s

    mov ax, 4c00h
    int 21h

code ends

end