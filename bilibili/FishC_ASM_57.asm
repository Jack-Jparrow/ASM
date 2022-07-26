;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-15 20:34:23
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p228/2 统计data段中数值大于8的字节的个数，用ax保存结果
;

assume cs:code

data segment

         db 8, 11, 8, 1, 8, 5, 63, 38

data ends

code segment

    start:mov  ax, data
          mov  ds, ax
          mov  bx, 0               ; ds:bx指向第一个字节
          mov  ax, 0               ; 初始化累加器
          mov  cx, 0
		
    s:    cmp  byte ptr [bx], 8    ;和8进行比较
          jna  next                ; 如果不大于8转到next，继续循环
          inc  ax                  ; 如果大于8就将计数值加1
		
    next: inc  bx
          loop s                   ; 程序执行后： (ax) = 3

          mov  ax,  4c00h
          int  21h
	
code ends

end start