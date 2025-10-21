global _start


section .text
_start:
    mov ebx, 55 ; ebx = 55
    mov eax, 1 ; sys_exit system call
    jmp skip ; jumps to skip label
    mov ebx, 13  ; ebx = 13, skipped
skip:
    int 0x80 ; code under label