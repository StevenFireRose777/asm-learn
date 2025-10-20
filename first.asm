global _start ; the start of program



_start:
    mov eax, 1 ; moves 1 into eax register
    mov ebx, 45 ; moves 45 into ebx register, ususally the register to end program
    sub ebx, 20 ;  Basically 45 - 20 in asm
    int 0x80 ; interupts the program

