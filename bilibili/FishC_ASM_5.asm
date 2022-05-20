;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-19 17:23:46
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p97/问题5.1
;

assume cs:codesg

codesg segment

fishc:  mov ax, 2000H
        mov ds, ax
        mov bx, 1000h
        mov ax, [bx]
        inc bx  ;自增
        inc bx
        mov [bx], ax
        inc bx
        inc bx
        mov [bx], ax
        inc bx
        mov [bx], al
        inc bx
        mov [bx], al
        
        mov ax, 4c00h
        int 21h

codesg ends

end fishc