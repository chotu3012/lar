include 'emu8086.inc'
data segment
msg db 'aasnehe$'
n dw 1
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,00
lea si,msg
mov cx,00
loop1:
cmp si,20
je r
mov si,cx
mov al,msg[si]
cmp al,'$'
je h
mov al,msg[si]
mov dx,cx
inc cx
jmp loop2
r:
inc cx
jmp loop1
loop2:
inc dx
mov si,dx
mov bl,msg[si]
cmp bl,'$'
je q
cmp al,bl
je p
jmp loop2
p:
inc n
mov [si],'0'
q:
cmp al,'0'
je s
mov ah,02
mov dl,al
int 21h
mov ax,00
mov ax,n
mov n,01
print ":"
call print_num
define_print_num
define_print_num_uns
print " "
jmp loop1
s:
mov n,01
jmp loop1
h:
hlt
code ends
end start