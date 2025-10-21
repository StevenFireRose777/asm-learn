; ESP = stack ptr
; ex: ESP = 28
; [00] to [28] = 0 (no values added)
; starts at [28] 



global _start

_start:
    sub esp, 8 ; allocate 8 bytes
    mov [esp], byte 'Y'
    mov [esp+1], byte 'U'
    mov [esp+2], byte 'M'
    mov [esp+3], byte 'M'
    mov [esp+4], byte 'E'
    mov [esp+5], byte 'R'
    mov [esp+6], byte 'S'
    mov [esp+7], byte '!'

    mov eax, 4 ; sys_write
    mov ebx, 1  ; stdout
    mov ecx, esp
    mov edx, 9 ; num of bytes to write
    int 0x80 ; sys call
    jmp close

close:
    mov eax, 1
    mov ebx, 0
    int 0x80
    nop











