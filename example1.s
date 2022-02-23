.data 0x10000000
msg0: .asciiz "0\n"
msg1: .asciiz "1\n"

.text
main:
sub $t0, $s0, $s1
lui $t1, 0x8000
and $t2, $t1, $t0
lui $a0, 0x1000
beq $t2, $zero, label_1
or $0, $0, $0
addi $a0, $a0, 3

label_1:
ori $v0, $zero, 4
syscall
or $zero, $zero, $zero
jr $ra
or $zero, $zero, $zero