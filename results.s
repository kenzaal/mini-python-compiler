
.data
t: .asciiz "\nTrue\n"
m: .asciiz "\nNameError: the entered name is not defined\n"
nl: .asciiz "\n"
f: .asciiz "\nFalse\n"
.text
.globl main
main:
li $t0, 4
li $t1, 5
beq $t0, $t1, FALSE
b TRUE
FALSE:
li $v0, 4
la $a0, f
syscall
b next
TRUE:
li $v0, 4
la $a0, t
syscall
next:
li $v0, 4
la $a0, nl
syscall
li $v0, 0
jr $ra
