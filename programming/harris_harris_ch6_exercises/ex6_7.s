# s3 = s4 NOR s5
#setup
.globl main

.data 
A: .word 0x00000001
B: .word 0x00000000

.balign 4

# 
.text
main:
	lw s4, A
	lw s5, B
	not s2, s4
	not s6, s5
	and s3, s2, s6

