include "emu8086.inc"
print "enter num:"
call scan_num
mov n,cx
mov ax,n
mov si,ax               ;n in si
nfact:
      cmp cx,1
      je quit1
      dec cx
      mul cx
      jmp nfact
quit1:
      printn
      print "n! is"      ;n! in bp
      mov bp,ax
      call print_num
      print "enter r:"
      call scan_num
      mov n,cx
      mov ax,n
      mov di,ax           ;r in di
rfact:
     cmp cx,1
     je quit2
     dec cx
     mul cx
     jmp rfact
quit2:
      printn
      print "r! is"      ;r! in sp
      mov sp,ax
      call print_num
subt:
     sub si,di
     mov ax,si
     ;mov ax,cx
nrfact:
     cmp cx,1
     je quit3
     dec cx
     mul cx
     jmp nrfact
quit3:
     printn
     print "n-r! is:"
     mov dp,ax           ;n-r! in dp
     call print_num
comp:
    mov ax,dp
    
    mov bx,ax
    mov ax,bp
    div bx
    printn
    print "result is:"
    call print_num
    hlt
ret
n dw 00
dp dw 00
define_scan_num
define_print_num
define_print_num_uns                                     