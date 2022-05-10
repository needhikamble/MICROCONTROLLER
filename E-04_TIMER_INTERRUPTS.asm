; SHREEYA PIMPLE
; E-04
; EXP 5  TIMERS INTERRUPT

	ORG	0000H
	LJMP	MAIN
	ORG	0013H		;Interrupt Service Routine
	CPL	P2.5
	RETI

	ORG	0040H
MAIN:
	MOV	IE, #84H	;Enabling TFI Interrupt

	
labelx:				;Infinite Loop
	MOV	A, #55h
	DEC	A
	DEC	B
	SJMP	labelx


	End