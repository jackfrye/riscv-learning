# int i;
# int array1[100];
# int array2[100];
# for(i = 0; i < 100; i = i+1)
#   array[i] = array2[i];

.globl main

.data
A: .space 400
B: .space 400

.text
main:
  
  la t0 A
  la t1 B

  #  
  # just setup first 16 values of the 100
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

  
  # index variables
  addi s1, zero, 0
  addi t3, zero, 100
  # pointers 
  addi t4, t0, 0
  addi t5, t1, 0
  
for: 
  bge s1, t3, done
  lw t6, 0(t4)
  sw t6, 0(t5)
  addi t4, t4, 4
  addi t5, t5, 4
  addi s1, s1, 1  
  j for
  
done:
  
  
  
