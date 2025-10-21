global _start
section .data
    addr db "Orange"
section .text
_start:
    mov [addr], byte 'B' ; stores 'B'
    mov [addr+5], byte '!' ; stores '!' at 5 bits
    mov eax, 4 ; eax = 4, sys_write system call
    mov ebx, 1 ; ebx = 1, stdout file descriptor
    mov ecx, addr ; ecx = addr, bytes to write to
    mov edx, 6 ; edx = 6, number of bytes to write out
    int 0x80 ; perform system call
    jmp close
close:
    mov eax, 1 ; eax = 1, sys_exit call
    mov ebx, 0 ; exit stats: 0
    int 0x80
    nop
