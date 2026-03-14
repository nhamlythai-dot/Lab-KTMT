# Laboratory Exercise 3, Assignment 6
.data
	A: .word -13, 23, -45, 239, 100, -450, 900
.text
	addi s1, zero, 1	# set i = 1
	la s2, A		# load address of A[0] to s2
	addi s3, zero, 7	# set n = 7
	addi s4, zero, 1	# set step = 1
	lw s5, 0(s2)		# load value of A[0] to max
	add s6, zero, s5	# store postive max
	blt zero, s6, loop	# skip invert
	sub s6, zero, s5	# invert negative max
loop:
	bge s1, s3, endloop	# if i >= n then endloop
	add t1, s1, s1		# t1 = 2 * i
	add t1, t1, t1		# t1 = 4 * i
	add t1, t1, s2		# t1 stores the address of A[0+i]
	lw t0, 0(t1)		# load value of A[i] to t0
	add t2, zero, t0	# store compare unit
	blt zero, t2, skip	# skip invert
	sub t2, zero, t0	# store positive value if negative
skip:
	blt t2, s6, continue	# if positive max remains then no update
	add s5, zero, t0	# else update max
	add s6, zero, t2	# update positive max 
continue:
	add s1, s1, s4		# i = i + step
	jal x0, loop
endloop:
# s5 will store the number with the highest absolute value
