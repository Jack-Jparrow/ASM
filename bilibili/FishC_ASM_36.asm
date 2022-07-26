;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-07-04 21:06:49
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p171，用div计算data段中第一个数据除以第二个数据后的结果，商存在第三个数据的存储单元中。
;

assume cs:code

datasg segment
    
           dd 100001
           dw 100
           dw 0

datasg ends

code segment

         mov ax, datasg
         mov ds, ax
         mov ax, ds:[0]         ; ds:0字单元中的低16位存储在ax中
         mov dx, ds:[2]         ; ds:2字单元中的高16位存储在dx中
         div word ptr ds:[4]    ; 用dx:ax中的32位数据除以ds:4字单元的数据
         mov ds:[6], ax         ; 将商存储在ds:6字单元中
    
         mov ax, 4c00h
         int 21h

code ends

end