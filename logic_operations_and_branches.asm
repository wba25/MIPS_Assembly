.data
	a: .word 1
	b: .word 0
.text
	#Carrega valores da memoria(nesse caso,nossas variaveis) para os registradores
	lw $t0, a($zero)
	lw $t1, b($zero)
	
	#-------------------------------------------------
	#Operaçoes logicas
	
	#-Tipo R
	#AND - and bit a bit entre 2 registradores(de 32 bits, eh claro), o resultado eh salvo no registrador do campo rt
	and $t2, $t0, $t1 
	#OR - eh um or
	or $t2, $t0, $t1
	#XOR - eh um xor e nada mais,hahaha
	xor $t2, $t0, $t1
	#SLT - Se $t0 for menor que $t1, $t2 recebe 1, caso contrario,recebe 0
	slt $t2, $t0, $t1
	#O slt muitas vezes eh usado em conjunto com algum branch (beq, bne, ...)
	
	#-Tipo I
	#versoes das anteriores com imediato
	andi $t2, $t0, 1000
	ori $t2, $t0, 10
	xor $t2, $t0, 10000
	slti $t2, $t0, 7
	
	#-------------------------------------------------
	#Branches
	#-Tipo I - Todo Branch eh do tipo I
	#BEQ - Branch - bifurca o fluxo de dados: para um caminho se a condiçao for aceita para outro caso nao	
	#    - Para beq a condiçao eh: se for igual
	beq $t1, $t0, LABEL1;
	#Branch se forem diferentes
	bne $t1, $t0, LABEL1;	
	
	LABEL1: #nothing
	
	