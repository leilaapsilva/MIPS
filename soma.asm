.data
	Numero1: .asciiz "Informe o primeiro numero: "
	Numero2: .asciiz "Informe o segundo número: "
	Resultado: .asciiz "O resultado da soma e: "
	

.text
	li $v0, 4
	la $a0, Numero1
	syscall
	
	li $v0,5
	syscall
	
	move $t0, $.data
	Hello: .asciiz "Hello World!"
	
.text
	li $v0, 4
	la $a0, Hello
	syscall v0
	
	li $v0, 4
	la $a0, Numero2
	syscall
	
	li $v0, 5
	syscall 
	
	move $t1, $v0
	
	#tenho os dois valores em $t0 e $t1, só preciso fazer a soma
	
	add $t2, $t1, $t0
	
	li $v0, 4
	la $a0, Resultado
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall 
