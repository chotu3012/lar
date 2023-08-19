include "emu8086.inc"
print "enter num"
call scan_num
printn
mov ax,cx
print "enter 2:"
call scan_num
printn
mov bx,cx
div bx
cmp dx,00
je even 
print "odd"
hlt
even:
print "even"
hlt
define_scan_num
define_print_num
define_print_num_uns