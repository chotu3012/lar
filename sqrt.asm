include "emu8086.inc"
print "enter any num"
call scan_num
mov n,cx
printn
label:
     mov ax,s
     mov bx,s
     mul bx
     inc s
     cmp ax,n
     jb label
     ja exit
     je sqrt
sqrt:
    mov ax,bx
    call print_num
    hlt
exit:
     print "not perfect"
     hlt
     
ret
n dw 0
s dw 0
define_scan_num
define_print_num
define_print_num_uns
         