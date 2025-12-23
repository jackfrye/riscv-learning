# if (g >= h)
#   g = g + 1;
# else
#   h = h - 1;

.globl main

.data 
A: .word 0x00000002
B: .word 0x00000001

.balign 4

# 
.text
main:
  lw a0 A
  lw a1 B
  bge a0, a1, greater_than_equal_to
  addi a1, a1, -1
  j done
  
greater_than_equal_to:
  addi a0, a0, 1
  j done
  
done:
