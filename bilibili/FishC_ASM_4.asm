;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:02:01
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=23
;

assume cs:codesg

codesg segment

	fishc: mov ax, 2000H
	       mov ds, ax
	       mov al, [0]  	;偏移地址为0
	       mov bl, [1]
	       mov cl, [2]
	       mov dl, [3]

	       mov ax, 4c00h
	       int 21h

codesg ends

end fishc