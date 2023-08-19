include "emu8086.inc"
print "enter num1:"
call scan_num
mov ax,cx
printn
print "enter num2:"
call scan_num
mov bx,cx
div bx
printn
call print_num
ret  
define_scan_num
define_print_num
define_print_num_uns
