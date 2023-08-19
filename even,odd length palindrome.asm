include 'emu8086.inc'
mov ax,n
mov n2,ax
mov bx,10
loop1:
mov ax,00
mov ax,n
mov bx,10
div bx
mov n,ax
mov n1,dx
mov ax,10
mul cx
add ax,n1
mov cx,ax
cmp n,00
je h
inc n3
jne loop1
h:
mov ax,cx
cmp ax,n2
je print
jne p
p:
print 'not a palindrome'
hlt
print:
print 'length '
mov ax,n3
call print_num
mov bx,2
div bx
cmp dx,00
je q
print ' odd palindrome'
hlt
q:
print ' even palindrome'
hlt
ret
n dw 121
n1 dw 00
n2 dw 00
n3 dw 1
define_print_num
define_print_num_uns