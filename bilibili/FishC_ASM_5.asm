;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:05
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p97/问题5.1
;

assume cs:codesg

codesg segment

	fishc: mov ax, 2000H
	       mov ds, ax
	       mov bx, 1000h
	       mov ax, [bx]
	       inc bx       	;自增
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