# Pseudo Codigo
# fat(x):
# 	if(x<2) return 1
# 	else return x*fat(x-1)

.data

.text
	main:
		addi $a0, $zero, 5
		jal fatorial
		
		#print v0 - o retorno
		li $v0, 1
		add $a0, $zero, $v1
		syscall
		
		j end
	
	fatorial:
		# Store(push) variaveis locais na pilha
		addi $sp, $sp, -8 #pois sao 2 variaveis
		sw $ra,0($sp) # store $ra - return address
		sw $s0,4($sp) # valor de cada reducao
		
		#passo base
		addi $v1, $zero, 1 # return 1
		beq $a0, $zero, endfat
		
		#passos recursivos
		addi $s0, $a0, 0
		sub $a0, $a0, 1
		
		jal fatorial
		
		mult $s0, $v1
		mflo $v1
		
		endfat:
			lw $ra, 0($sp)
			lw $s0, 4($sp)
			addi $sp, $sp, 8
			
			jr $ra	
	end:
		
		