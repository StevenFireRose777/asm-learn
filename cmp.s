global _start

section .text
_start:
    mov ecx, 101 ; ecx = 99
    mov ebx, 42 ; exit status = 42
    mov eax, 1 ; sys_exit call
    cmp ecx, 100 ; compare ecx to 100
    jl skip ; jump if less than
    mov ebx, 100 ; ebx = 10000 
skip:
    int 0x80

stop:
    nop
