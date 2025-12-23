# if (g < h)
#   h = h + 1;
# else
#   h = h * 2;

.globl main

.data 
A: .word 0x00000008
B: .word 0x00000007

.balign 4

# 
.text
main:
  lw a0 A
  lw a1 B
  blt a0, a1, g_lt
  slli a1, a1, 1
  j done
  
g_lt:
  addi a1, a1, 1
  j done
  
done:
