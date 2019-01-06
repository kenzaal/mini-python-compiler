

.data
t: .asciiz "\nTrue\n"
f: .asciiz "\nFalse\n"
nl: .asciiz "\n"
yes: .asciiz "yes"
no: .asciiz "no"
hello: .asciiz "hello"
b: .word 2
a: .word 5
n: .asciiz "\nNameError: the entered name is not defined\n"
n: .asciiz "\nNameError: the entered name is not defined\n"

.text
.globl main
affichage :
li $t0, 1
addi $t0, $t0, 1
li $v0, 1
move $a0, $t0
syscall
li $v0, 4
la $a0, nl
syscall
j $ra

main:
li $t0, 1
addi $t0, $t0, 6
li $v0, 1
move $a0, $t0
syscall
li $v0, 4
la $a0, nl
syscall
li $t0, 7
sub $t0, $t0, 4
li $v0, 1
move $a0, $t0
syscall
li $v0, 4
la $a0, nl
syscall
li $t0, 10
li $t1, 1
div $t0, $t1
mflo $s0
li $v0, 1
add $a0, $zero, $s0
syscall
li $v0, 4
la $a0, nl
syscall
li $t0, 1
li $t1, 1
xor $a0, $t0, $t1
li $v0, 1
syscall
li $v0, 4
la $a0, nl
syscall
li $t0, 1
li $t1, 0
or $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, nl
syscall
li $t0, 5
li $t1, 6
beq $t0, $t1, neqFALSE
b neqTRUE
neqFALSE:
li $v0, 4
la $a0, f
syscall
b neqnext
neqTRUE:
li $v0, 4
la $a0, t
syscall
neqnext:
li $v0, 4
la $a0, nl
syscall
li $t0, 8
li $t1, 6
bgt $t0, $t1, supTRUE
b supFALSE
supTRUE:
li $v0, 4
la $a0, t
syscall
b supnext
supFALSE:
li $v0, 4
la $a0, f
syscall
supnext:
li $v0, 4
la $a0, nl
syscall
li $t0, 5
li $t1, 6
beq $t0, $t1, eqTRUE
b eqFALSE
eqTRUE:
li $v0, 4
la $a0, t
syscall
b eqnext
eqFALSE:
li $v0, 4
la $a0, f
syscall
eqnext:
li $v0, 4
la $a0, nl
syscall
li $t0, 1
li $t1, 0
and $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, nl
syscall
li $v0, 1
beq $v0, $0, Else
li $v0, 4
la $a0, yes
syscall
li $v0, 4
la $a0, nl
syscall
b Endif
Else:
li $v0, 4
la $a0, no
syscall
li $v0, 4
la $a0, nl
syscall
Endif:
li $v0, 0
loop:
beq $v0, $0, end_loop
li $v0, 4
la $a0, hello
syscall
li $v0, 4
la $a0, nl
syscall
b loop
end_loop:
lw $t0, b
lw $t0, a
addi $t0, $t0, 1
li $v0, 1
move $a0, $t0
syscall
li $v0, 4
la $a0, nl
syscall
lw $a0, a
li $v0, 1
syscall
lw $a0, b
li $v0, 1
syscall
jal affichage
li $v0, 4
la $a0, nl
syscall
li $v0, 10
syscall

