# if (g >= h)
#   g = g + h;
# else
#   g = g - h;

.globl main

.data 
A: .word 0x00000005
B: .word 0x00000007

.balign 4

# 
.text
main:
  lw a0 A
  lw a1 B
  bge a0, a1, greater_than_equal_to
  sub a0, a0, a1
  j done
  
greater_than_equal_to:
  add a0, a0, a1
  j done
  
done:
