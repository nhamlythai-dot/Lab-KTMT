# Laboratory Exercise 3, Assignment 1
.text
start:

	# TODO:
	addi s1, zero, 4	# set i = 4
	addi s2, zero, 5	# set j = 5
	addi t1, zero, 1	# set x = 1
	addi t2, zero, 2	# set y = 2
	addi t3, zero, 3	# set z = 3	
	
	blt s2, s1, else	# if j < i then jump to else
		
then: 	
	addi t1, t1, 1		# then part(i >= j): x = x + 1
	addi t3,zero,1		# z = 1
	jal x0, endif		# skip else part, jump to endif
else: 	
	addi, t2, t2, -1	# else part: y = y - 1
	add t3, t3, t3		# z = 2 * z
endif:	



	
	
