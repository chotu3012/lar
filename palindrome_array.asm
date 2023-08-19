include 'emu8086.inc'
data segment
arr1 db 111,56,87,22,11
arr2 db 111,56,87,22,11
a db 4
b db 4
n1 db 0
n2 db 0
m db 0
n db 0
data ends
code segment
start:
mov ax,data
mov ds,ax
mov si,0
mov di,0
x:
mov bl,10
mov cl,0
mov n1,0
mov n2,0
mov al,arr1[si]
jmp palind
palind:
mov ah,00h
div bl
mov n1,al
mov n2,ah
mov al,10
mul cl
add al,n2
mov cl,al
mov al,n1
cmp n1,0h
jne palind
je comp
comp:
cmp cl,arr2[di]
je p
s:
inc si
inc di
cmp si,05
jb x
jae h
h:
hlt
p:
mov al,cl
call print_num
printn
jmp s
define_print_num
define_print_num_uns
code ends
end start