include 'emu8086.inc'
data segment
a db 53,153,34,56,1
n1 db 0
sum db 0
q db 0
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,00
mov cx,00
mov bl,10
mov si,0
b:
mov al,a[si]
mov n1,al
mov sum,0
jmp arm
arm:
mov ah,0
div bl
mov q,al
mov al,ah
mov cl,ah
mov ah,0
mov dl,cl
mul dl
mul cl
add sum,al
mov al,q
cmp al,0
je alp
jne arm
alp:
mov ah,0
mov al,sum
cmp al,n1
je p
jne s
p:
printn
call print_num
jmp s
h:
hlt
s:
inc si
cmp si,05
jb b
ja h
define_print_num
define_print_num_uns
code ends
end start
