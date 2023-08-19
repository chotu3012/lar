include "emu8086.inc"
print "enter any num"
call scan_num
mov ax,cx
mov n,cx
printn
mov bx,10
label:
      div bx
      mov q,ax
      mov r,dx
      mov ax,sum
      mov sum,0
      mul bx
      add ax,r
      mov sum,ax
      mov ax,q
      cmp ax,00
      jne label
      je check
      check:
           mov ax,sum
           cmp ax,n
           je pp
           jne np
           
      pp:
          print "palindrome"
          hlt
      np:
          print "not palindrome"
          hlt
ret
r dw 0
q dw 0
sum dw 0
n dw 0
define_scan_num
define_print_num
define_print_num_uns
                   