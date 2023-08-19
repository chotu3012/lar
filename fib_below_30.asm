include 'emu8086.inc'
mov cx,0
mov bx,1
dec n1
dec n1
print '0 '
print '1 '
loop1:
dec n1
add cx,bx
mov ax,cx
call print_num
cmp ax,21
je h
print ' '
mov cx,bx
mov bx,ax
jmp loop1
h:
hlt
ret
n1 dw 30
define_print_num
define_print_num_uns