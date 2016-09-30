.data
	array: .space 16 #numero de elementos vezes 4, nesse caso temos 4 elementos
	nline: .asciiz "\n"
.text
	addi $s0, $zero, 1
	addi $s1, $zero, 2
	addi $s2, $zero, 3
	addi $s3, $zero, 4
	
	#$t0 como index
	addi $t0, $zero, 0
	
	#Armazena no array
	sw $s0, array($t0)
	addi $t0, $t0, 4
	sw $s1, array($t0)
	addi $t0, $t0, 4
	sw $s2, array($t0)
	addi $t0, $t0, 4
	sw $s3, array($t0)
	addi $t0, $t0, 4
	
	#resetando $t0 - o index
	addi $t0, $zero, 0
	
	#printando o array
	while:
		beq $t0, 16, endwhile
		
		#Carrega valor do array da posicao $t0 em $t1
		lw $t1, array($t0)
		
		#print valor
		li $v0, 1
		add $a0, $zero, $t1
		syscall
		
		#print nova linha
		li $v0, 4
		la $a0, nline
		syscall
		
		addi $t0, $t0, 4
		j while
	endwhile:
