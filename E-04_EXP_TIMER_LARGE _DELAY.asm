	    ORG	0000H
	    LJMP MAIN


	    ORG	0050H
MAIN:	    MOV TMOD, #01H	;Timer 0 model 1
	    MOV	R0, #014H	; Looping it 200 times
      
extc:	    MOV TL0, #078H	;value 60536 into timer
	    MOV	TH0, #0ECH
	    SETB	TR0		;Starting Timer 0

dbit:	    JNB TF0, dbit	;loop & check TF0 flag
	    CLR	TR0		;Stop Timer 
	    CLR	TF0		;Clear overflow flag
	    DJNZ R0, extc
	    CPL	P2.4		;complement p2.4
	    SJMP extc

END