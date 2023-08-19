include 'emu8086.inc'
print 'enter array size:'
mov si,00
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
l2:
mov bl,02
mov c,01
cmp si,n
jne prime
hlt
prime:
mov al,a[si]
div bl
cmp ah,00
jne ab
inc c

ab:
inc bl 
mov ah,00
mov al,a[si]
cmp bl,al
jng prime
cmp c,02
jne abc
mov al,a[si]
printn
call print_num
abc:
inc si
jmp l2
c dw 00
n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns


