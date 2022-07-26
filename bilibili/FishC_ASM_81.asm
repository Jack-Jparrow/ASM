;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:42
; @LastEditTime: 2022-07-26 20:48:48
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/《汇编语言(第三版)》王爽著.pdf, p310 编程练习：将当前屏幕的内容保存在磁盘上
;

assume cs:code

code segment

    start: 
           mov ax, 0b800h
           mov es, ax
           mov bx, 0         ; es:bx指向写入磁盘的数据的内存区

           mov al, 8         ; 写入的扇区数
           mov ch, 0         ; 磁道号，从0开始
           mov cl, 1         ; 扇区号，从1开始
           mov dl, 0         ; 驱动器号 0：软驱A；1：软驱B，硬盘从80h开始；80h：硬盘C；81h：硬盘D
           mov dh, 0         ; 磁头号（对于软盘即面号，因为一个面用用一个磁头读写）
           mov ah, 3         ; 传递int 13h写入数据的功能号
           int 13h

    ; 返回参数
    ; 操作成功：(ah) = 0, (al) = 写入的扇区数
    ; 操作失败：(ah) = 出错代码
    return:
           mov ax, 4c00h
           int 21h

code ends

end start