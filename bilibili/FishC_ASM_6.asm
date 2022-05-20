;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-20 15:03:40
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p100/程序5.1，loop
;

assume cs:code

code segment

    mov ax, 2
    mov cx, 11
s:  add ax, ax
    loop s

    mov ax, 4c00h
    int 21h

code ends

end 