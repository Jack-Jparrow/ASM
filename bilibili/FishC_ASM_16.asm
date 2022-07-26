;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:47
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p123/程序5.8，段前缀的使用
;

assume cs:code

code segment
    
         mov  bx, 0         ;(bx) = 0 → 偏移地址从0开始
         mov  cx, 12        ;(cx = 12) → 循环12次

    s:   mov  ax, 0ffffh
         mov  ds, ax        ;(ds) = 0ffffh
         mov  dl, [bx]      ;(dl) = ((ds) * 16 + (bx)) → 将ffff:bx中的数据送入dl

         mov  ax, 0020h
         mov  ds, ax        ;(ds) = 0020h
         mov  [bx], dl      ;((ds) * 16 + (bx)) = (dl) → 将dl中的数据送入0020:bx

         inc  bx            ;(bx) = (bx) + 1
         loop s

code ends

end