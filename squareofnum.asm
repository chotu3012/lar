include "emu8086.inc"
define_scan_num
define_print_num
define_print_num_uns
 print "enter number"
 call scan_num
 mov ax,cx
 printn
  
  
 mov bx,cx
 mul bx
 mul bx
 
 call print_num
 ret 