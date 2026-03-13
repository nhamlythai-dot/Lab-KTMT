# Laboratory Exercise 3, Assignment 4
.text
start:

	# TODO:
	addi s1, zero, 4	# set i = 4
	addi s2, zero, 5	# set j = 5
	addi t1, zero, 1	# set x = 1
	addi t2, zero, 2	# set y = 2
	addi t3, zero, 3	# set z = 3	
	
	#a)
	blt s1, s2, else	# if i < j then jump to else
	
	#b)
	bge s1, s2, else	# if i >= j then jump to else
	
	#c)
	add t0, s1, s2		# set t0 = i + j
	bge zero, t0, else	# if i + j <= 0 then jump to else
	
	#d)
	addi s3, zero, 6	# set m = 6
	addi s4, zero, 7	# set n = 7
	add t4, s3, s4		# set t4 = m + n
	blt t4, t0, else	# if i + j > m + n then jump to else
		
then: 	
	addi t1, t1, 1		# then part(i >= j): x = x + 1
	addi t3,zero,1		# z = 1
	jal x0, endif		# skip else part, jump to endif
else: 	
	addi, t2, t2, -1	# else part: y = y - 1
	add t3, t3, t3		# z = 2 * z
endif:	