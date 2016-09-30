.data
	#caracter
	myCharacter: .byte 'a'
	#inteiro
	int: .word 15
	#float
	PI: .float 3.14
	
.text
	#Imprime texto
	li $v0, 4
	la $a0, myCharacter
	syscall
	
	#Imprime Inteiro
	li $v0, 1
	lw $a0, int
	syscall
	
	#Imprime Float
	li $v0, 2
	lwc1 $f12, PI
	syscall
	
	
	