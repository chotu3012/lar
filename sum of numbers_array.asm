include "emu8086.inc"
data segment
a db 10,5,10,10,10
sum db 0
data ends   
 
code segment
start:
     mov ax,data
     mov ds,ax
     mov si,0
     mov ax,0
     suml:
     mov al,a[si]
     add sum,al
     inc si
     cmp si,05
     jb suml
     jae done
done:
   mov ax,00
   mov al,sum
   print "the sum is:"
   call print_num
   hlt
   
   
define_scan_num
define_print_num
define_print_num_uns

code ends
end start
    
    