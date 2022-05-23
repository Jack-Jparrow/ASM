;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-23 21:00:18
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p123/程序5.9，段前缀的使用
;

assume cs:code

code segment
    mov ax, 0ffffh
    mov ds, ax  ;(ds) = 0ffffh

    mov ax, 0020h
    mov es, ax  ;(es) = 0020h

    mov bx, 0   ;(bx) = 0 → 此时ds:bx指向ffff:0，es:bx指向0020:0
    
    mov cx, 12  ;(cx) = 12 → 循环12次

s:  mov dl, [bx]    ;(dl) = ((ds) * 16 + (bx)) → 将ffff:bx中的数据送入dl
    mov es:[bx], dl ;((es) * 16 + (bx)) = (dl) → 将dl中的数据送入0020:bx
    inc bx  ;(bx) = (bx) + 1
    loop s
    
    mov ax, 4c00h
    int 21h

code ends

end