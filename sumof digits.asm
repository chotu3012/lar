include "emu8086.inc"
print "enter any num:"
call scan_num
mov ax,cx
mov bx,10
label:
     mov dx,0
     div bx
     mov q,ax
     mov r,dx
     mov ax,sum
     add ax,r
     mov sum,ax
     mov ax,q
     cmp ax,00
     jne label
     je print
print:
     mov ax,sum
     printn
     call print_num
     hlt
ret
   q dw 0
   r dw 0
   sum dw 0
   define_scan_num
   define_print_num
   define_print_num_uns          