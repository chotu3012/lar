include "emu8086.inc"
mov si,00
print 'enter array size:'
call scan_num
mov n,cx
mov sp,n
printn
print "enter array elements"
label: 
    printn
    call scan_num
    mov a[si],cl
    inc si
    cmp si,n
    jne label
max:
    mov si,00
    mov al,a[si]
min: 
    cmp al,a[si]
    jg p
    mov al,a[si]
    mov di,si
  p:
    inc si
    cmp si,sp
    jne min
    dec si
    mov bh,a[si]
    mov a[si],al
    mov a[di],bh
    dec sp
    cmp sp,00
    jne max
    mov si,00
    printn
    print 'ascending order:'
  b:
    mov al,a[si]
    printn
    call print_num
    inc si
    cmp si,n
    jne b
n dw 00
a db ndup(0)
define_scan_num
define_print_num
define_print_num_uns
    
   
             