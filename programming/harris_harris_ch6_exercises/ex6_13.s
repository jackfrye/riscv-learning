## I just used s0-s5 for a-f
# a. 29
# b. -214
# c. -2999
# d. 0xABCDE000
# e. 0xEDCBA123
# f. 0xEEEEEFAB
.globl main

.text
main:
  lui s0 29
  srli s0 s0 12

  lui s1 -214
  srai s1 s1 12
  
  lui s2 0xFFFFF
  addi s2 s2 0x44A
  
  lui s3 0xABCDE
  
  lui s4 0xEDCBA  
  addi s4 s4 0x123

  lui s5 0xEEEEE
  addi s5 s5 -85
