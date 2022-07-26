;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:42
; @LastEditTime: 2022-07-24 21:21:32
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p296 实现一个子程序setscreen，为显示输出提供如下功能：（1）清屏、（2）设置前景色、（3）设置背景色、（4）向上滚动一行
;

assume cs:code

code segment

    setscreen:
              cmp  ah, 0
              je   do1
              cmp  ah, 1
              je   do2
              cmp  ah, 2
              je   do3
              cmp  ah, 3
              je   do4
              jmp  short sret

    do1:      
              call sub1
              jmp  short sret
	
    do2:      
              call sub2
              jmp  short sret
	
    do3:      
              call sub3
              jmp  short sret
	
    do4:      
              call sub4

    sret:     
              iret

    ; 功能子程序1：清屏
    sub1:     
              push bx
              push cx
              push es
              mov  bx, 0b800h
              mov  es, bx
              mov  bx, 0
              mov  cx, 2000
	
    sub1s:    
              mov  byte ptr es:[bx], ' '
              add  bx, 2
              loop sub1s
              pop  es
              pop  cx
              pop  bx
              ret                                 ; sub1 ends

    ; 功能子程序2：设置前景色
    sub2:     
              push bx
              push cx
              push es
              mov  bx, 0b800h
              mov  es, bx
              mov  bx, 1
              mov  cx, 2000
	
    sub2s:    
              and  byte ptr es:[bx], 11111000b
              or   es:[bx], al
              add  bx, 2
              loop sub2s

              pop  es
              pop  cx
              pop  bx
              ret                                 ; sub2 ends

    ; 功能子程序3：设置背景色
    sub3:     
              push bx
              push cx
              push es
              mov  cl, 4
              shl  al, cl
              mov  bx, 0b800h
              mov  es, bx
              mov  bx, 1
              mov  cx, 2000
	
    sub3s:    
              and  byte ptr es:[bx], 10001111b
              or   es:[bx], al
              add  bx, 2
              loop sub2s

              pop  es
              pop  cx
              pop  bx
              ret                                 ;  sub3 ends

    ; 功能子程序4：向上滚动一行
    sub4:     
              push cx
              push si
              push di
              push es
              push ds

              mov  si, 0b800h
              mov  es, si
              mov  ds, si
              mov  si, 160                         ; ds:si指向第n + 1行
              mov  di, 0                           ; es:di指向第n行
              cld
              mov  cx, 24                          ; 共复制24行

    sub4s:    
              push cx
              mov  cx, 160
              rep  movsb                          ; 复制
              pop  cx
              loop sub4s

              mov  cx, 80
              mov  si, 0
	
    sub4s1:   
              mov  byte ptr es:[160 * 24 + si], ' '    ; 最后一行清空
              add  si, 2
              loop sub4s1

              pop  ds
              pop  es
              pop  di
              pop  si
              pop  cx
              ret                                 ; sub4 ends

code ends

end