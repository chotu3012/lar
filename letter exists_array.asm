include 'emu8086.inc'
data segment
a db 'rguktbasar$' 
b db 'a$'
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,00
mov si,0
mov di,0
m:
mov al,a[si]
cmp al,b[di]
je str
jne st
st:
inc si
mov al,a[si]
cmp al,'$'
je no
cmp al,b[di]
je str
jne m
str:
inc si
inc di
cmp b[di],'$'
je done
mov al,[si]
cmp al,b[di]
je str
jne no
done:
printn
print 'YES'
hlt
no:
printn
print 'NO'
hlt
code ends
end start