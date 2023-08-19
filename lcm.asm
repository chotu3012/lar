include "emu8086.inc"
print "enter num1:"   
call scan_num
mov ax,cx   
mov var1,ax
printn
print "enter num2:"                
call scan_num
mov bx,cx   
mov var2,bx
                              
hcf:
  mov dx,00
  div bx
  mov ax,bx
  mov var3,bx
  mov bx,dx
  cmp dx,0
  je print
  jmp hcf
  
 print:
 printn
  mov ax,var1
  mul var2
  div var3
  call print_num
 hlt
      ret
      var1 dw 0   
      var2 dw 0
      var3 dw 0
define_scan_num
define_print_num_uns
define_print_num 

  