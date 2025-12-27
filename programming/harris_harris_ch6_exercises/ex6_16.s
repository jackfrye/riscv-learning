.globl main

.data
A: .space 400
B: .space 400

.text
main:
  
  la t0 A
  la t1 B
  
  # just setup first 16 values of the 100
  li t2, 1
  sw t2, 0(t0)
  li t2, 1
  sw t2, 4(t0)
  li t2, 2
  sw t2, 8(t0)  
  li t2, 3
  sw t2, 12(t0)
  li t2, 4
  sw t2, 16(t0)
  li t2, 5
  sw t2, 20(t0)
  li t2, 6
  sw t2, 24(t0)
  li t2, 7
  sw t2, 28(t0)
  
  li t2, 8
  sw t2, 32(t0)
  li t2, 9
  sw t2, 36(t0)
  li t2, 10
  sw t2, 40(t0)
  li t2, 11
  sw t2, 44(t0)  
  li t2, 12
  sw t2, 48(t0)
  li t2, 13
  sw t2, 52(t0)
  li t2, 14
  sw t2, 56(t0)
  li t2, 15
  sw t2, 60(t0)
  li t2, 16
  sw t2, 64(t0)
  addi a0, t0, 0
  addi a1, t1, 0
  jal strcpy
  j done
  
strcpy:
  addi sp, sp, -12
  sw t0, -4(sp)  
  sw t1, -8(sp)  
  sw t2 -12(sp)  
  
  addi t0, a0, 0     # src[i]
  addi t1, a1, 0     # dst[i]
  lw t2 0(t0)        # data from src
  j strcpy_while
  
return:  
  lw t0 -4(sp)
  lw t1 -8(sp)
  lw t2 -12(sp)
  addi sp, sp, -12
  jr ra

strcpy_while:
  sw t2,0(t1)
  beq t2, zero, return
  addi t0, t0, 4
  addi t1, t1, 4
  lw t2 0(t0)  
  j strcpy_while
  
done: