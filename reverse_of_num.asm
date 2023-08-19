include "emu8086.inc"
print "enter the num:"
call scan_num
mov ax,cx
mov bx,10
label:
     mov dx,00
     div bx
     mov q,ax
     mov r,dx
     mov ax,sum
     mul bx
     add ax,r
     mov sum,ax
     mov ax,q
     cmp ax,00
     
     je a
     jmp label
 a:
   mov ax,sum
   printn
   print "reverse is:"
   call print_num
ret
sum dw 00
r dw 00
q dw 00
define_scan_num
define_print_num
define_print_num_uns       