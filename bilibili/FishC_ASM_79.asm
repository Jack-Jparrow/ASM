;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:42
; @LastEditTime: 2022-07-24 21:46:15
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p303 编程，接收用户的键盘输入，输入“r”，将屏幕上的字符设置为红色：输入“g”， 将屏幕上的字符设置为绿色；输入“b ”，将屏幕上的字符设置为蓝色
;

assume cs:code

code segment
    start:
          mov  ah, 0
          int  16h
		
          mov  ah, 1                          ; A
          cmp  al, 'r'
          je   red
          cmp  al, 'g'
          je   green
          cmp  al, 'b'
          je   blue
          jmp  short sret
	
    red:  
          shl  ah, 1                          ; B
	
    green:
          shl  ah, 1                          ; C

    blue: 
          mov  bx, 0b800h
          mov  es, bx
          mov  bx, 1
          mov  cx, 2000
    s:    and  byte ptr es:[bx], 11111000b
          or   es:[bx], ah
          add  bx, 2
          loop s

    sret: 
          mov  ax, 4c00h
          int  21h
	
code ends

end start