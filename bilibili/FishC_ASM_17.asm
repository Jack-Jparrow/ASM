;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:50
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p123/程序5.9，段前缀的使用
;

assume cs:code

code segment
    
         mov  ax, 0ffffh
         mov  ds, ax         ;(ds) = 0ffffh

         mov  ax, 0020h
         mov  es, ax         ;(es) = 0020h

         mov  bx, 0          ;(bx) = 0 → 此时ds:bx指向ffff:0，es:bx指向0020:0
    
         mov  cx, 12         ;(cx) = 12 → 循环12次

    s:   mov  dl, [bx]       ;(dl) = ((ds) * 16 + (bx)) → 将ffff:bx中的数据送入dl
         mov  es:[bx], dl    ;((es) * 16 + (bx)) = (dl) → 将dl中的数据送入0020:bx
         inc  bx             ;(bx) = (bx) + 1
         loop s
    
         mov  ax, 4c00h
         int  21h

code ends

end