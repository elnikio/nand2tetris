// inputs : 24576 (nokeypress is 0)
// compute : if (24576 != 0): enter loop blacken entire screen -> enter loop wait for release
// to begin lightening.
// 16384 + 8192

(WAITPRESS)
	@24576
	D = M
	@INVERT
	D;JNE
	@WAITPRESS
	0;JMP
(WAITREL)
	@24576
	D = M
	@INVERT
	D;JEQ
	@WAITREL
	0;JMP
(INVERT)
	@24575
	D = A
	@INLOOP
	0;JMP
(INLOOP)
	// store D(index counter) in R1 in order to
	// use D to check pixel color
	@R1
	M = D
	A = D
	D = M
	// invert:
	@BLACKEN
	D;JEQ

	@R1
	D = M
	A = D
	M = M + 1
	@SKIPBLACKEN	
	0;JMP

	(BLACKEN)
	@R1
	D = M
	A = D
	M = M - 1

	// check if fully blacked:
	@16384
	D = D - A
	@WAITREL
	D;JEQ
	@16384
	D = D + A
	@SKIPCLEAR
	0;JMP	

	(SKIPBLACKEN)
	// check if fully clear:
	@16384
	D = D - A
	@WAITPRESS
	D;JEQ
	@16384
	D = D + A

	(SKIPCLEAR)	
	// dec and re-loop:
	D = D - 1
	@INLOOP
	0;JMP
