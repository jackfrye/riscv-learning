.globl main

.data
A: .space 60

.text
main:
  
  la t0 A

  # int array[15] = {0, 1, 2, 3, 4, 5, 6, 42, 8, 9, 10, 11, 12, 13, 14};  
  # //int array[15] = {0, 1, 2, 3, 4, 5, 6, 13, 8, 9, 10, 11, 12, 13, 14};
    li t2, 0
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
  li t2, 13
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
  
  # ret = find42(array, 15);
  addi a0 t0 0    #arr[0]
  addi a1 zero 15 # size
  jal find42
  j done  
  
find42:
  addi sp sp -20
  sw t0 -4(sp)  # pointer
  sw t1 -8(sp)  # size
  sw t2 -12(sp) # value
  sw t3 -16(sp) # contant 42
  sw t4 -20(sp) # iter
  
  addi t0 a0 0 
  addi t1 a1 0
  addi t2 zero, 0   
  addi t3 zero 42
  addi t4 zero 0
  j find42_for
    
find42_for:
  beq t4 t1 find42_set_neg1
  lw t2 0(t0)        # array[iter]
  beq t2 t3 find42_return
  addi t0 t0 4
  addi t4 t4 1
  j find42_for
  
find42_set_neg1:
  addi t4, zero, -1
  j find42_return
  
find42_return:
  addi a0 t4 0
  lw t0 -4(sp)
  lw t1 -8(sp)
  lw t2 -12(sp)
  lw t3 -16(sp)
  lw t4 -20(sp)
  addi sp sp 20
  jr ra
  
done: