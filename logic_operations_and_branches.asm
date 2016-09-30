.data
	a: .word 1
	b: .word 0
.text
	#Carrega valores da memoria(nesse caso,nossas variaveis) para os registradores
	lw $t0, a($zero)
	lw $t1, b($zero)
	
	#Operaçoes logicas
	#Tipo R
	#AND - and bit a bit entre 2 registradores(de 32 bits, eh claro), o resultado eh salvo no registrador do campo rt
	and $t2, $t0, $t1 
	