

.data
t: .asciiz "\nTrue\n"
f: .asciiz "\nFalse\n"
nl: .asciiz "\n"
yes: .asciiz "yes"
no: .asciiz "no"
hello: .asciiz "hello"
.text
.globl main
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
li $v0, 4
la $a0, nl
syscall
li $v0, 0
jr $ra

