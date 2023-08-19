include "emu8086.inc" 
print "enter:"
call scan_num
printn
mov sp,cx
mov bx,01
label:
     mov ax,sp
     cmp ax,bx
     je exit
     mov dx,00
     div bx
     cmp dx,00
     je a
     inc bx
     jmp label 
a:
  add sum,bx
  inc bx
  jmp label
exit:
   cmp sum,cx
   je p
   printn
   print "not perfect"
   hlt
p:
   printn
   print "perfect"
   hlt 
ret 
sum dw 0
define_scan_num
define_print_num 
define_print_num_uns
       
       
