include "emu8086.inc"
print "enter num:"
call scan_num
mov ax,0
mov bx,1
fib:
   printn
   call print_num
   add ax,bx
   mov res,ax
   mov ax,bx
   mov bx,res
   dec cx
   cmp cx,0
   je stop
   jne fib
stop:
    hlt
ret
res dw 0   
define_scan_num
define_print_num
define_print_num_uns