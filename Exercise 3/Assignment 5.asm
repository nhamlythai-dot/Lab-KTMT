# Laboratory Exercise 3, Assignment 5
.data 
	A: .word 1, 3, 2, 5, 0, -20, 8, 9, 6
.text
	# TODO: Set s2, s3, s4
	addi s1, zero, 0	# set i = 0
	la s2, A		# set s2 = address of A[0]
	addi s3, zero, 9	# set n = 9 
	addi s4, zero, 1	# set step = 1
	add s5, zero, zero	# set sum = 0
loop:
	#a)
	blt s3, s1, endloop	# if i > n then end loop
	
	#b)
	blt s5, zero, endloop	# if sum < 0 then end loop
	
	add t1, s1, s1		# t1 = 2 * s1
	add t1, t1, t1		# t1 = 4 * s1
	add t1, t1, s2		# t1 stores the address of A[0+i]
	lw t0, 0(t1)		# load value of A[i] to t0 (offset = 0)
	
	#c)
	beq t0, zero, endloop	# if A[i] == 0 then end loop
	
	add s5, s5, t0		# sum = sum + A[i]
	add s1, s1, s4		# i = i + step
	jal x0, loop		# jump to loop (starts the next loop)
endloop:
