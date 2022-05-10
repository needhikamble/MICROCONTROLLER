; SHREEYA PIMPLE
; E-04
; TIMER SQUARE WAVE
	    ORG	0000H
	    LJMP MAIN
	    ORG	0050H
      
MAIN:	    MOV TMOD, #01H	;Timer 0 model 1
extc:	    MOV TL0, #078H	;Loading value 60536 into tIMER
	    MOV	TH0, #0ECH
	    SETB TR0		 ;Starting Timer 0

dbit:	    JNB TF0, dbit	 ;loop & check TF0 flag
	    CLR	TR0		 ;Stop Timer 
	    CLR	TF0		 ;Clear overflow flag
	    CPL	P2.4		 ;complement p2.4
	    SJMP extc

END