# Laboratory Exercise 3, Assignment 3
.data
	test: .word 0
.text
	la s0, test		# load address of test to s0
	lw s1, 0(s0)		# load value of test to s1
	addi t0, zero, 0	
	addi t1, zero, 1	# set case condition
	addi t2, zero, 2
	addi s2, zero, 4	# set a = 4
	addi s3, zero, 5	# set b = 5
	beq s1, t0, case_0
	beq s1, t1, case_1
	beq s1, t2, case_2
	jal x0, default
case_0:
	addi s2, s2, 1		# a = a + 1
	jal x0, continue
case_1:
	addi s2, s2, -1		# a = a - 1
	jal x0, continue
case_2:
	add s3, s3, s3		# b = 2 * b
	jal x0, continue
default:
	add s2, s2, s3		# a = a + b
continue:
	add s3, s2, s3		# b = a + b


	