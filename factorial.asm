include "emu8086.inc"
print "enter any number"
call scan_num
mov ax,cx
mov bx,ax
printn
cmp ax,00
jne fact
fact:
    dec bx 
    mul bx
    cmp bx,1
    jne fact
    je print
print:
     call print_num
     hlt
ret 
define_scan_num
define_print_num
define_print_num_uns         