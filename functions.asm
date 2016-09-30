.data
	msm: .asciiz "Good bye then.\nBe safe, friend.\nDon't you dare go Hollow.\n"

.text
	main:
		#funcao sem parametros e sem retornos
		jal print
		
		#funcao com 2 parametros e com 1 retorno
		addi $a0, $zero, 2
		addi $a1, $zero, 2
		jal addNum
		
		#imprime retorno
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
		#Finaliza o programa
		li $v0, 10
		syscall
	print: 
		li $v0, 4
		la $a0, msm
		syscall
		
		#JR
		#   - Instrucao tipo J
		#   - Jump para o endereço no registrador do campo 'rs'
		jr $ra
	addNum:
		add $v1, $a0, $a1
		jr $ra
	
	
	
	
	
