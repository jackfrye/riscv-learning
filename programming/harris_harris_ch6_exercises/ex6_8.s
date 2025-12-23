# s3 = s4 NAND s5
#setup
.globl main

.data 
A: .word 0x00000001
B: .word 0x00000001

.balign 4

# 
.text
main:
	lw s4, A
	lw s5, B
	and s2, s4, s5
	not s3, s2
