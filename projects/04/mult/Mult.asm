// inputs : R0, R1
// computer : R0 * R1
// output: R2

// start loop
// add R0 to itself and decrement R1
// when R1 becomes negative, end the loop
// save R0 to R2
	@R2
	M = 0
(LOOP)
	@R1
	D = M
	@END
	D;JEQ
	@R1
	M = M - 1
	@R0
	D = M
	@R2
	M = M + D
	@LOOP
	0;JMP
(END)	
