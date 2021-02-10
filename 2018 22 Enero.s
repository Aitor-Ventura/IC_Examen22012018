##EXAMEN 2018 22 ENERO
#
#				.data
#V:		.half 3,8,3,9,6,7
#res:	.space 4
#
#				.text
#main:	la $t0,V		#t0 es la dirección del vector
#		lh $t1,0($t0)	#t1 = V[1] = a
#		li $t2,1		#t2 = resultado
#		li $t3,2		#t3 comprueba que >2
#		li $t4,7		#t4 comprueba que <=7
#		li $t5,2		#t5 = i = 2
#		li $t6,6		#t6 = lim sup = 6
#		#t7 almacena el resto de la division
#		#t8 almacena el resultado de la multiplicacion
#		
#para:	bgt $t5,$t6,finpara
#		lh $s0,2($t0)	#s0 = V[i]
#		
#		ble $s0,$t3,entonces #V[i] > 2
#		
#		bgt $s0,$t4,entonces #V[i] <= 7
#		
#		div $s0,$t1
#		mfhi $t7
#		bne $t7,$0,entonces	#V[i] múltiplo de a
#		
#		mult $t2,$s0
#		mflo $s1
#		add $t2,$0,$s1	#t2 = res = res*V[i] = $t8
#		
#entonces:	addi $t0,$t0,2
#			addi $t5,$t5,1
#			j para
#
#finpara:	sh $t2,res
#			jr $31
#---------------------------------------------------------------------#
############################PREGUNTA 2#################################
#---------------------------------------------------------------------#

