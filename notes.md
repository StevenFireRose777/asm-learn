# Notes

- Registers: 
  - Holds data. 
  - Can compute stuff
  - Size is fixed and varies by system
- The Stack
  - A data structure that basically last the whole program
  - IS actually on array in memory
  - Stack Pointer = the adjustable thing that allows to add and delete stuff from a program
  ^Stack ptr is a register also^

- Instruction Ptr:
  - Known as EIP
  - Location of execution
  - Not a register, can't change it normally
  - Only changed by jump operations

- Jump Comparisons:
  - je = jump if equal
  - jne = jump if not equal
  - jg = jump if greater
  - jge = jump if greater or equal to
  - jl = jump if less than
  - jle = jump if less than or equal to

  - syntax ex: je A, B 

- section .data
  - ; db = 1 byte (considered char)
  - ; dw = 2 byte (considered short)
  - ; dd = 4 bytes (considered int)
  - ex:
  -  name1 db "Hi"
  -  name2 dw 1000
  -  name3 dd 10000

- Stack
  - The data structure that last for the entire program
  - Actually an array
  - Stack ptr (register)
  - Does have random access