include "emu8086.inc"
print "enter num:"
call scan_num
mov al,cl
printn
shl al,1
jc nega 
jnc pos
nega:
print "negative"
hlt

pos:
print "positive" 
hlt
define_scan_num
define_print_num
define_print_num_uns