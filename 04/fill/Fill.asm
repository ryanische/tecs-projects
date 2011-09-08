// init i to beginning of screen memory
@SCREEN
D=A
@i
M=D

// load "all bits on" into @full
@0
D=A-1
@full
M=D

@0
D=A
@empty
M=D

@output
M=D

(LOOP)
	// load i
	@i
	D=M
	
	// check if i is off of screen
	@KBD
	D=D+1
	D=D-A
	@RESET
	D;JGT
	
	@output
	D=M
		
	@i
	A=M
	M=D
	
	//i++
	@i
	M=M+1
	
	@KBD
	D=M
	@BLACK
	D;JGT
	
	@WHITE
	0;JMP
	
	
(BLACK)
	@full
	D=M
	@LOAD_LOOP
	0;JMP

(WHITE)
	@empty
	D=M
	@LOAD_LOOP
	0;JMP

(LOAD_LOOP)
	@output
	M=D
	
	@LOOP
	0;JMP

(RESET)
	@SCREEN
	D=A
	@i
	M=D
	
	@LOOP
	0;JMP

(END)
	@END
	0;JMP