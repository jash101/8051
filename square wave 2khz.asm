;GENERATE 2 KILOHERTZ FREQ SQUARE WAVE AT P1.5
L1: MOV TMOD, #10H
	MOV TL1, #1AH
	MOV TH1, #0FFH
	SETB TR1

L2: JNB TF1, L2
	CLR TR1
	CPL P1.5
	CLR TF1
	SJMP L1
	
	END
