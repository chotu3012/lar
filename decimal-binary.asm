include "emu8086.inc"
mov si,00
print "enter the number:"
call scan_num
mov ax,cx
mov bx,2
binary: 
      cmp ax,00
      je quit
      mov dx,00
      div bx
      mov a[si],dx
      inc si
      inc si
      jmp binary
 quit:
      dec si
      dec si
      cmp si,00
      jl stop
      mov ax,a[si]
      printn
      call print_num
      jmp quit
 stop:
     hlt
a dw ?,?,?,?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns               