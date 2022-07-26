;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-16 21:06:00
; @LastEditors: Jack Jparrow
; @Description: https://www.bilibili.com/video/BV1Rs411c7HG?p=61&t=273.3
;

assume cs:codesg

codesg segment

    start: 
           mov ax, 1000h
           mov bh, 1
           div bh
	
codesg ends

end start