include "emu8086.inc"
print "enter number whose square root is to be found"
call scan_num
mov n,cl
printn
label:
     mov al,s
     mov bl,s
     mul bl
     inc s
     cmp al,n
     jb label
     ja exit
     je squareroot
squareroot:
       mov ah,00
       mov al,bl
       print "squareroot of given number is:" 
       printn
       call print_num
       hlt
exit:
    print "not a perfect square"
    hlt
define_scan_num
define_print_num
define_print_num_uns
ret
n db 00
s db 01
       