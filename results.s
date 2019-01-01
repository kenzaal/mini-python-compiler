
.data
nl: .asciiz "\n"
val: .word 22
.text
.globl main
main:
lw $t0, val
li $v0, 4
la $a0, nl
syscall
li $v0, 0
jr $ra
