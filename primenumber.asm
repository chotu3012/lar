include "emu8086.inc"
print "enter any num"
call scan_num
mov ax,cx
mov n,cx
mov cx,00
mov bx,01
printn
label:
     mov dx,00
     mov ax,n
     div bx
     cmp dx,00
     je fact
     jne incr
fact:
     inc cx
     inc bx
     cmp bx,n
     je check
     jne label
incr:
     inc bx
     cmp bx,n
     je check
     jne label
check:
     inc cx
     cmp cx,2
     je pr
     jne npr
pr:
   print "prime"
   hlt
npr: 
   print "not prime"
   hlt
ret
 n dw 0
 
define_scan_num
define_print_num
define_print_num_uns                 
               
     