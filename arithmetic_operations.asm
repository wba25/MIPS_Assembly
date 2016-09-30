.data
	a: .word 7
	b: .word 9
.text
	#Carrega da memoria principal para registradores
	lw $t0, a($zero)
	lw $t1, b($zero)
	
	#-----------------
	#Instruçoes do tipo R
	
	# add - Soma entre registradores dos campos rs e rt(rs+rt), o resultador eh armazenado em rt 
	add $t2, $t0, $t1
	
	# sub - Subtraçao entre registradores dos campos rs e rt(rs-rt), o resultador eh armazenado em rt 
	sub $t2, $t0, $t1
	
	#mult - os 32 bits menos significativos resultado da multiplicaçao entre os registradores eh armazenado no registrador temporario LO(vem de low) os 32 mais significativos ficam em HI(vem de high), mas o HI nao eh significante para multiplicaçao
	mult $t0, $t1
	#-$t2 recebe o conteudo armazenado em LO
	mflo $t2
	
	#div - o LO(32 menos significativos) eh quociente da divisao e o HI(32 mais significativos) eh o resto da divisao
	div $t2, $t0
	mflo $t2
	#-$t1 recebe o conteudo armazenado em HI
	mfhi $t1
			
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	li $v0, 1
	add $a0, $zero, $t1
	syscall
	
	#-----------------
	#Instruçoes do tipo I
	
	#addi - Soma entre um registrador(rs) e um imediato(constante), o resultado e salvo no registrador rd
	addi $t2, $t0, 7
	#-tambem serve para subtracao
	addi $t2, $t0, -7