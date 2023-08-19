include 'emu8086.inc'
print 'enter array size:'
call scan_num
mov n,cx
printn
print 'enter array elements:'
mov si,00  
label:  
printn
call scan_num
mov a[si],cl
inc si
cmp si,n
jne label
printn
print 'enter the element to search:'
call scan_num
mov bl,cl
mov si,00
search:
cmp bl,a[si]
jne p
printn
print 'element found'
hlt
p:
inc si
cmp si,n
jne search
printn
print 'not found'
hlt

n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns