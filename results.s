
.data
nl: .asciiz "\n"

.data
e: .asciiz "yes"

.data
e: .asciiz "no"
.text
.globl main
main:
li $v0, 1
beq $v0, $0, Else
li $v0, 4
la $a0, e
syscall
b Endif
Else:
li $v0, 4
la $a0, e
syscall
Endif:
li $v0, 4
la $a0, nl
syscall
li $v0, 0
jr $ra

