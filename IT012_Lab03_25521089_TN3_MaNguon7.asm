# ?ô Anh Minh
# Ma nguon 7 - dien nang tieu thu cua mot ho gia dinh (so lieu gia lap, kWh)
.data
prompt: .asciiz "Nhap chi so (kWh): "
m1:     .asciiz "Thang 1: "
m2:     .asciiz "Thang 2: "
m3:     .asciiz "Thang 3: "
tot:    .asciiz "Tong:    "
nl:     .asciiz "\n"
 
.text
.globl main
main:
    
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s0, $v0, $zero
    li $v0, 5
    syscall
    add $s1, $v0, $zero
    li $v0, 5
    syscall
    add $s2, $v0, $zero
    li $v0, 5
    syscall
    add $s3, $v0, $zero

    # addi $s0, $zero, 1200
    # addi $s1, $zero, 1350
    # addi $s2, $zero, 1475
    # addi $s3, $zero, 1640
 
    li $v0, 4
    la $a0, m1
    syscall 
    sub $t0, $s1, $s0
    li $v0, 1
    add $a0, $t0, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    li $v0, 4
    la $a0, m2
    syscall 
    sub $t1, $s2, $s1
    li $v0, 1
    add $a0, $t1, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    li $v0, 4
    la $a0, m3
    syscall 
    sub $t2, $s3, $s2
    li $v0, 1
    add $a0, $t2, $zero
    syscall
    
     li $v0, 4
    la $a0, nl
    syscall
    
    li $v0, 4
    la $a0, tot
    syscall 
    add $t3, $t0, $t1
    add $t3, $t3, $t2
    li $v0, 1
    add $a0, $t3, $zero
    syscall
    
    li $v0, 4
    la $a0, nl
    syscall
    
    li   $v0, 10
    syscall
