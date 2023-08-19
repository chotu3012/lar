include 'emu8086.inc'
data segment
s db "rguktbasar$" 
b db 30 dup(0)
k dw 0
data ends
code segment
start:
mov ax,data
mov ds,ax
lea si,s
lea di,b
mov di,00
mov cx,00
mov bp,00
loop1:
mov ch,00
mov ah,00
mov al,s[si];
cmp al,'$'
;jne comp
jne a
je exit
comp:
mov di,-1
jmp comp1
comp1:
inc di
cmp al,b[di]
je skip1
jne comp2
comp2:
cmp b[di],0
je a
jne comp1
skip1:
inc si
jmp loop1
a:
cmp al,'a'
je count
jne e
e:
cmp al,'e'
je count
jne i
i:
cmp al,'i'
je count
jne o
o:
cmp al,'o'
je count
jne u
u:
cmp al,'u'
je count
jne loop3
loop3:
inc si
jmp loop1
count:
inc cl
inc si
mov b[bp],al
inc bp
cmp s[si],'$'
jne loop1
exit:
print 'vowel count is'
mov ah,00
mov al,cl
call print_num
define_print_num
define_print_num_uns
code ends
end start