// Multiplies RAM[0] and RAM[1], Stores in RAM[2]
	@i
	M=1
	
	@sum
	M=0

(LOOP)

	@i
	D=M
	
	@0
	D=D-M
	
	@END
	D;JGT
	
	@1
	D=M
	
	@sum
	M=D+M
	
	@i
	M=M+1
	
	@LOOP
	0;JMP
	
(END)
	@sum
	D=M

	@2
	M=D
	
	@END_LOOP
	0;JMP

(END_LOOP)
	@END_LOOP
	0;JMP