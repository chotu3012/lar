include 'emu8086.inc'
mov si,0
find:
cmp st[si],'$'
je quit
inc si
jmp find

quit:
mov ax,si
call print_num
hlt
st db 'prerana$'
define_print_num
define_print_num_uns