include 'emu8086.inc'
print 'enter a number'
call scan_num
mov ax,cx
sub ax,1
mov dx,ax
mov bl,02
loop1:
mov ax,cx
div bl
cmp ah,00
je loop2
jne loop3
loop3:
inc bl
jmp loop1
loop2:
printn
print 'smallest factor is '
mov ah,00
mov al,bl
mov n,bl
call print_num
jmp loop4
loop4:
mov ax,cx
inc bl
cmp bl,dl
je exit
div bl
cmp ah,00
je loop5
jne loop4
loop5:
mov f,bl
jmp loop4
exit:
printn
print 'largest factor is '
mov ah,00
cmp f,00
je loop6
jne loop7
loop7:
mov al,f
call print_num
hlt
loop6:
mov al,n
call print_num
ret
f db 00
n db 00
define_scan_num
define_print_num
define_print_num_uns