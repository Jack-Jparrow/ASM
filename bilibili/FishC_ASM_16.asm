;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-23 18:03:11
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p123/程序5.8，段前缀的使用
;

assume cs:code

code segment
    
    mov bx, 0   ;(bx) = 0 → 偏移地址从0开始
    mov cx, 12  ;(cx = 12) → 循环12次

s:  mov ax, 0ffffh
    mov ds, ax  ;(ds) = 0ffffh
    mov dl, [bx]    ;(dl) = ((ds) * 16 + (bx)) → 将ffff:bx中的数据送入dl

    mov ax, 0020h
    mov ds, ax  ;(ds) = 0020h
    mov [bx], dl    ;((ds) * 16 + (bx)) = (dl) → 将dl中的数据送入0020:bx

    inc bx  ;(bx) = (bx) + 1
    loop s

code ends

end