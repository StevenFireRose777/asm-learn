all: cmp.out conditional.out word.out stack.out

cmp.out: cmp.o
	ld -melf_i386 -o cmp.out cmp.o
cmp.o:
	nasm -f elf32 -g cmp.s -o cmp.o

conditional.out: conditional.o
	ld -melf_i386 -o conditional.out conditional.o

conditional.o:
	nasm -f elf32 -g conditional.s -o conditional.o

word.out: word.o
	ld -melf_i386 -o word.out word.o
word.o:
	nasm -f elf32 -g word.s -o word.o

stack.out: stack.o
	ld -melf_i386 -o stack.out stack.o

stack.o:
	nasm -f elf32 -g stack.s -o stack.o

clean:
	rm -fr cmp.out cmp.o conditional.out conditional.o word.out word.o stack.o stack.out


# as --gstabs --32 -o [insert Program.o] [.s file] 

# ld -melf_i386 -o [.out] [.o]
