.data

.text
	main:
		addi $s0, $zero, 10
		
		#push na pilha
		#  - sp - stack pointer
		#  - decrementa-se a pilha para acessar uma nova posiçao
		addi $sp, $sp, -4
		#store
		sw $s0, 0($sp)
		
		#pop na pilha
		#  - incrementa-se a pilha para acessar uma posiçao anterior
		addi $sp, $sp, 4
		#store
		sw $s0, 0($sp)
		
		
		li $v0, 10
		syscall

