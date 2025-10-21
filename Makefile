all: cmp.out

cmp.out: cmp.o
	ld -melf_i386 -o cmp.out cmp.o
cmp.o:
	nasm -f elf32 cmp.s -o cmp.o

clean:
	rm -fr cmp.out cmp.o


# as --gstabs --32 -o [insert Program.o] [.s file] 

# ld -melf_i386 -o [.out] [.o]
