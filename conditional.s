global _start

section .text
_start:
    mov ebx, 1 ; ebx = 1
    mov ecx, 6 ; ecx = 6
iffy:
    add ebx, ebx ; ebx += ebx
    dec ecx ; ecx -= 1 (technically --ecx)
    cmp ecx, 0 ; compare ecx with 0
    jg iffy ; jump to iffy if greater

close:
    mov eax, 1 ; sys_exit system call
    int 0x80 ; end program
    
    nop

