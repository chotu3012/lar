
include 'emu8086.inc'
data segment
arr db 2,9,1,5,4
n db 5
max1 db 00
max2 db 00
data ends
code segment
start:
mov ax,data
mov ds,ax
lea si,arr
mov ax,00
mov cx,00
loop1:
mov si,cx
mov al,arr[si]
inc cx
mov si,cx
mov bl,arr[si]
cmp al,bl
jg p
mov max1,bl
mov max2,al
mov cx,01
inc cl
cmp cl,n
je h
jmp loop2
p:
mov max1,al
mov max2,bl
mov cx,01
inc cl
cmp cl,n
je h
jmp loop2
loop2:
mov si,cx
mov al,arr[si]
mov dl,max1
cmp al,max1
jg q
cmp al,max2
jg s
inc cl
cmp cl,n
je h
jmp loop2
q:
mov max1,al
mov max2,dl
inc cl
cmp cl,n
je h
jmp loop2
s:
mov max2,al
inc cl
cmp cl,n
je h
jmp loop2
h:
mov ax,00
mov al,max2
call print_num
define_print_num
define_print_num_uns
hlt
code ends
end start
