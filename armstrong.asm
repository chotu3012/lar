include "emu8086.inc"
print "enter num:"
call scan_num
printn
mov ax,cx
mov n,cx
mov bx,10
label:
     mov dx,00
     div bx
     mov q,ax
     mov r,dx
     mov ax,dx
     mov cx,dx
     mul cx
     mul cx
     add sum,ax
     mov ax,q
     cmp ax,00
     je check
     jne label
check:
     mov ax,sum
     cmp ax,n
     je arm
     jne narm
arm:
    print "arm"
    hlt
narm:
    print "narm"
    hlt
    ret 
    n dw 00
    q dw 00 
    r dw 00
    sum dw 00
    define_scan_num
    define_print_num
    define_print_num_uns              