 include 'emu8086.inc'
printn 
mov si,00
print 'enter array size:'
call scan_num
mov n,cx
printn
print 'enter array elements:'
label:
printn
call scan_num
mov a[si],cl
inc si
cmp si,n
jne label
mov si,00
mov al,a[si]
min:
cmp al,a[si]
jng p
mov al,a[si]
p:
inc si
cmp si,n
jne min
printn
print 'min number:'
call print_num
n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns