include "emu8086.inc"
print "enter starting range:"
call scan_num
mov var1,cx
printn
print "enter ending range:"
call scan_num 
mov var2,cx
f:
  mov bx,01
  mov ct,00
start:
   mov ax,var1
   mov dx,00
   div bx
   cmp dx,00
   je a
   inc bx
   cmp bx,var1
   jbe start
   jmp verify
a:
  inc ct
  inc bx
  cmp bx,var1
  jbe start
  jmp verify
verify:
   cmp ct,02
   je p
   inc var1
   mov si,var1
   cmp si,var2
   jbe f
   jmp h
p:
  mov ax,var1
  printn
  call print_num
  inc var1
  mov si,var1
  cmp si,var2
  jbe f
  jmp h
h:
  hlt
ret
ct dw 00
var1 dw 00
var2 dw 00
define_scan_num
define_print_num
define_print_num_uns              