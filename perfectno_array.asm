include 'emu8086.inc' 
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
mov bl,02
mov al,a[si]
perfect:
div bl
cmp ah,00
jne ab
add sum,bl
ab:
inc bl  
mov ah,00
mov al,a[si]
cmp bl,al
jne perfect
cmp sum ,al
jne b
printn
call print_num
b:
inc si
mov al,a[si]
mov bl,02
mov sum,01
cmp si,n
jne perfect
hlt 
sum db 01
n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns
