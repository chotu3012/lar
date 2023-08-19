include 'emu8086.inc'

data segment
     a db 5,11,15,13,24
     n db 0
     c db 0
     data ends

code segment
    start:
    mov ax,data
    mov ds,ax
    mov si,0
    mov dx,00
    print "primes are"
    p:
    mov al,a[si]
    mov n,al
    mov bl,1
    mov c,0
    prime:
    mov ah,0
    mov al,n
    div bl
    cmp ah,0
    je d
    jne e
    d:
    inc c 
    inc bl
    cmp bl,n
    jbe prime 
    ja k
    e:
    inc bl
    cmp bl,n
    jbe prime 
    ja k
    k:
    cmp c,2
    je done
    jne s
    s:
    inc si
    cmp si,05
    jb p
    jae h
    done:
    mov al,n
    printn
    call print_num
    jmp s
    h:
    hlt
    
    define_print_num
    define_print_num_uns
    code ends
end start

