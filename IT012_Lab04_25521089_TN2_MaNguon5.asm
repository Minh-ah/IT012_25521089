# ?? Anh Minh - 25521089
# Ma nguon 5 – phan bac dien nang
.data
prompt: .asciiz "Nhap dien nang (kWh): "
msg:    .asciiz "Bac: "
nl:     .asciiz "\n"
 
.text
.globl main
main:
  li  $v0, 4
  la  $a0, prompt
  syscall
  li  $v0, 5            # doc kWh, ket qua o $v0
  syscall
  add $s0, $v0, $zero   # $s0 = dien nang (kWh)
  # >>> xac dinh bac (1..4) theo Bang 6, dat vao $s1
  slti $t0, $s0, 101
  bne $t0, $0, Bac1
  slti $t0, $s0, 151
  bne $t0, $0, Bac2
  slti $t0, $s0, 201
  bne $t0, $0, Bac3
  slti $t0, $s0, 201
  beq $t0, $0, Bac4
Bac1:
  addi $s1, $0, 1
  j Ketqua
Bac2:
  addi $s1, $0, 2
  j Ketqua
Bac3:
  addi $s1, $0, 3
  j Ketqua
Bac4:
  addi $s1, $0, 4
  # >>> in “Bac: “, roi $s1, roi xuong dong
Ketqua:
  li $v0, 4
  la $a0, msg
  syscall
  li $v0, 1
  add $a0, $s1, $0
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li  $v0, 10
  syscall
