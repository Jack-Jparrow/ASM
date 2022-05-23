;
; @Author: Jack Jparrow
; @Date: 2020-07-07 20:02:41
; @LastEditTime: 2022-05-23 16:02:33
; @LastEditors: Jack Jparrow
; @Description: file:///D:/Documents/网安书籍/%E3%80%8A%E6%B1%87%E7%BC%96%E8%AF%AD%E8%A8%80(%E7%AC%AC3%E7%89%88)%20%E3%80%8B%E7%8E%8B%E7%88%BD%E8%91%97.pdf, p113/程序5.5，loop和[bx]的联合应用
;

assume cs:code

code segment
    
    mov ax, 0ffffh
    mov ds, ax  ;设置(ds) = ffffh

    mov dx, 0   ;初始化累加寄存器 → (dx) = 0

    mov al, ds:[0]
    mov ah, 0   ;(ax) = ((ds) * 16 + 0) = (ffff0h)
    add dx, ax  ;向dx中加上ffff:0单元的数值

    mov al, ds:[1]
    mov ah, 0   ;(ax) = ((ds) * 16 + 1) = (ffff1h)
    add dx, ax  ;向dx中加上ffff:1单元的数值
    
    mov al, ds:[2]
    mov ah, 0   ;(ax) = ((ds) * 16 + 2) = (ffff2h)
    add dx, ax  ;向dx中加上ffff:2单元的数值
    
    mov al, ds:[3]
    mov ah, 0   ;(ax) = ((ds) * 16 + 3) = (ffff3h)
    add dx, ax  ;向dx中加上ffff:3单元的数值
    
    mov al, ds:[4]
    mov ah, 0   ;(ax) = ((ds) * 16 + 4) = (ffff4h)
    add dx, ax  ;向dx中加上ffff:4单元的数值
    
    mov al, ds:[5]
    mov ah, 0   ;(ax) = ((ds) * 16 + 5) = (ffff5h)
    add dx, ax  ;向dx中加上ffff:5单元的数值
    
    mov al, ds:[6]
    mov ah, 0   ;(ax) = ((ds) * 16 + 6) = (ffff6h)
    add dx, ax  ;向dx中加上ffff:6单元的数值

    mov al, ds:[7]
    mov ah, 0   ;(ax) = ((ds) * 16 + 7) = (ffff7h)
    add dx, ax  ;向dx中加上ffff:7单元的数值
    
    mov al, ds:[8]
    mov ah, 0   ;(ax) = ((ds) * 16 + 8) = (ffff8h)
    add dx, ax  ;向dx中加上ffff:8单元的数值

    mov al, ds:[9]
    mov ah, 0   ;(ax) = ((ds) * 16 + 9) = (ffff9h)
    add dx, ax  ;向dx中加上ffff:9单元的数值

    mov al, ds:[0ah]
    mov ah, 0   ;(ax) = ((ds) * 16 + 0a) = (ffffah)
    add dx, ax  ;向dx中加上ffff:a单元的数值
    
    mov al, ds:[0bh]
    mov ah, 0   ;(ax) = ((ds) * 16 + 0b) = (ffffbh)
    add dx, ax  ;向dx中加上ffff:b单元的数值

    mov ax, 4c00h   ;程序返回
    int 21h

code ends

end