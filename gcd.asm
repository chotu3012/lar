include "emu8086.inc"
print "enter num1:"   
call scan_num
mov ax,cx
printn
print "enter num2:"                
call scan_num
mov bx,cx   
                              
hcf:
  mov dx,00
  div bx
  mov ax,bx
  mov var1,bx
  mov bx,dx
  cmp dx,0
  je print
  jmp hcf
  
 print:
 printn
  mov ax,var1
  call print_num
 hlt
      ret
      var1 dw 0
define_scan_num
define_print_num_uns
define_print_num 

  