# Laboratory Exercise 3, Assignment 2
.data 
	A: .word 1, 3, 2, 5, 4, 7, 8, 9, 6
.text
	# TODO: Set s2, s3, s4
	addi s1, zero, 0	# set i = 0
	la s2, A		# load address of A[0] to s2
	addi s3, zero, 9	# set n = 9 
	addi s4, zero, 1	# set step = 1
	add s5, zero, zero	# set sum = 0
loop:
	bge s1, s3, endloop	# if i >= n then end loop
	add t1, s1, s1		# t1 = 2 * i
	add t1, t1, t1		# t1 = 4 * i
	add t1, t1, s2		# t1 stores the address of A[0+i]
	lw t0, 0(t1)		# load value of A[i] to t0 (offset = 0)
	add s5, s5, t0		# sum = sum + A[i]
	add s1, s1, s4		# i = i + step
	jal x0, loop		# jump to loop (starts the next loop)
endloop: