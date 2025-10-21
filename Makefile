all: cmp.out conditional.out

cmp.out: cmp.o
	ld -melf_i386 -o cmp.out cmp.o
cmp.o:
	nasm -f elf32 -g cmp.s -o cmp.o

conditional.out: conditional.o
	ld -melf_i386 -o conditional.out conditional.o

conditional.o:
	nasm -f elf32 -g conditional.s -o conditional.o


clean:
	rm -fr cmp.out cmp.o conditional.out conditional.o


# as --gstabs --32 -o [insert Program.o] [.s file] 

# ld -melf_i386 -o [.out] [.o]
