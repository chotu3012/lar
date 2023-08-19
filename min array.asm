include 'emu8086.inc'
lea si,arr1
mov cl,8
mov al,[si]
h:
  dec cl
  cmp cl,00
  je m
  inc si
  cmp al,[si]
  jg k
  jmp h
  
k:
 mov al,[si]
jmp h

m:
  call print_num_uns
  
ret
arr1 db 2,5,3,8,1,9,0,4
define_print_num_uns   
 
   
  