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
  jl k
  jmp h
  
k:
  mov al,[si]
  jmp h
  
m:
  call print_num_uns
  
  
ret
arr1 db 26,47,90,90,34,10,23,45
define_print_num_uns      

