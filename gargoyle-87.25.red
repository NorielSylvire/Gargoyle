;redcode-94b
;assert 1
;name Gargoyle
;kill all
;author F0b_T3st4 (Flaviu E. Hongu)
;strategy Lay explosive eggs, run away from danger, survive
;date 2021-Sep-18
;version 2


	ORG	START

GUY	JMP	1, 		{-3320
	JMP	-1,		}2999
	
START	IDX	FOR		3;Here the indentation is wrong, purposedly cause it looks better
	MOV	BOMBERU,	IDX*3320
	MOV	BOMBERU+1,	IDX*3320
	MOV	BOMBERU+2,	IDX*3320
	MOV	BOMBERD,	IDX*3320
	MOV	BOMBERD+1,	IDX*3320
	MOV	BOMBERD+2,	IDX*3320
	SPL	(IDX*3320)-5
	SPL	(IDX*3320)-3
	ROF
	
	SPL 	BOMBERD
	SPL 	BOMBERU
JDX	FOR 	3
	MOV 	IMP, 		JDX*3060
	SPL 	JDX*3060-1
	ROF
	SPL 	IMP, 		GUY
	DAT 	$-64, 		$-64
	
BOMBERU	SUB 	#3044, 		-1
	MOV 	-2, 		<-2
	JMP 	-2
	
BOMBERD	ADD 	#3044, 		3
	MOV 	2, 		@2
	JMP 	-2
	DAT 	#28, 		#64
	
IMP	MOV 	0,		1