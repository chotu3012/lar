include 'emu8086.inc'
data segment
a db 3,2,4,1,6
t db 0
n db 0
data ends
code segment
start:
mov ax,data
mov ds,ax
lea si,a
mov si,0
mov di,0
mov ax,0
lop:
mov si,0
jmp s
s:
mov al,a[si]
mov bl,a[si+1]
cmp bl,al
jae sort
jb m
sort:
mov a[si],bl
mov a[si+1],al
inc si
cmp si,03
jbe s
ja p
m:
inc si
cmp si,03
jbe s
ja p
p:
inc di
cmp di,05
jb lop
mov si,0
mov ax,0
done:
mov al,a[si]
printn
call print_num
inc si
cmp si,05
jb done
jae h
h:
hlt
define_print_num
define_print_num_uns
code ends
end start