.globl main

.text
main: 

  li a0 9
  li t2 1
  jal fib
  j done
   
fib:
  addi sp sp -16
  sw a0 12(sp)
  sw t1 8(sp)
  sw t0 4(sp)
  sw ra 0(sp)
  
  beq a0 t2 fib_base_case_1
  beq a0 zero fib_base_case_0
  addi a0, a0, -1
  jal fib
  addi t0, a0, 0
  lw a0 12(sp)
  addi a0, a0, -2
  jal fib
  addi t1, a0, 0
  add a0, t0, t1
  
  lw ra 0(sp)
  lw t0 4(sp)
  lw t1 8(sp)
  addi sp sp 16
  jr ra
  
fib_base_case_1:
  addi a0 zero 1
  addi sp sp 16
  jr ra
  
fib_base_case_0: 
  addi a0 zero 0
  addi sp sp 16  
  jr ra
  
done:
