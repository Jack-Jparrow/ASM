;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-17 21:37:12
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p254/问题二 编写、安装中断7ch的中断例程，实现将一个全是字母，以0结尾的字符串，转化为大写 安装部分
;

assume cs:code

code segment

    start:     
               mov  ax, cs
               mov  ds, ax
               mov  si, offset capital
               mov  ax, 0
               mov  es, ax
               mov  di, 200h
               mov  cx, offset capitalend - offset capital
               cld
               rep  movsb

               mov  ax, 0
               mov  es, ax
               mov  word ptr es:[7ch * 4], 200h
               mov  word ptr es:[7ch * 4 + 2], 0

               mov  ax, 4c00h
               int  21h

    capital:   
               push cx
               push si

    change:    
               mov  cl, [si]
               mov  ch, 0
               jcxz ok
               and  byte ptr [si], 11011111b
               inc  si
               jmp  short change
    ok:        
               pop  si
               pop  cx
               iret
		
    capitalend:nop

code ends

end start
