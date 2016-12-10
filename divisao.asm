.data
	PrimeiroNumero: .asciiz "Informe o primeiro numero: "
	SegundoNumero: .asciiz "Informe o segundo numero: "
	ResultadoDivisao: .asciiz "O resultado da divisao é: "
	
.text

	li $v0, 4
	la $a0, PrimeiroNumero
	syscall
	
	li $v0, 5
	syscall 
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, SegundoNumero
	syscall 
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	div $t0, $t1
	
	mflo $s3 #mflh para numeros "grandes"
	
	li $v0, 4
	la $a0, ResultadoDivisao
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall 
	
	
