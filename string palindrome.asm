include 'emu8086.inc'
mov dx,offset str
mov ah,0ah
int 21h
mov si,00
l:
cmp str[si],'$'
je p
inc si
jmp l
p:
dec si
mov di,02
l2:
mov al,str[si]
mov ah,str[di]
cmp al,ah
je p2
printn
print 'not palindrome'
hlt
p2:
  inc di
  dec si
  cmp si,di
  jl l2
  printn
  print "palindrome"
str db 10,?,10 dup(' ')  