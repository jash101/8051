;SQUARE WAVE AT P1.2 FOR 0.5 SECONDS
START:
	   CPL P1.2
	

	   CALL DELAY
	

	   SJMP START
	

DELAY:
       MOV R2, #0AH
LOOP1: MOV R1, #0C8H
LOOP0: MOV R0, #0FFH
WAIT:  DJNZ R0, WAIT
       DJNZ R1, LOOP0
       DJNZ R2, LOOP1
       RETI
	   END
