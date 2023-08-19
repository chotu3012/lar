include 'emu8086.inc'
data segment
a db 1,2,3,4,5
c db 0
d db 0
data ends
code segment
start:
mov ax,data
mov ds,ax
mov si,0
mov bl,2
l:
mov al,0
mov ah,0
mov al,a[si]
div bl
cmp ah,0
je p
cmp ah,1
je k
p:
inc c
jmp m
k:
inc d
jmp m
m:
inc si
cmp si,04
jbe l
ja h
h:
mov ax,0
mov al,c
print 'even num count'
printn
call print_num
printn
print 'odd num count'
printn
mov al,d
call print_num
hlt
define_print_num
define_print_num_uns
define_scan_num
code ends
end start