; SHREEYA PIMPLE
; E-04
; EXP 3  SEVEN SEGMENT DISPLAY

here:
MOV R4, #3FH
MOV P2, R4
ACALL delay

MOV R4, #06H
MOV P2, R4
ACALL delay

MOV R4, #5BH
MOV P2, R4
ACALL delay

MOV R4, #4FH
MOV P2, R4
ACALL delay

MOV R4, #66H
MOV P2, R4
ACALL delay

MOV R4, #6DH
MOV P2, R4
ACALL delay

MOV R4, #7DH
MOV P2, R4
ACALL delay

MOV R4, #07H
MOV P2, R4
ACALL delay

MOV R4, #7FH
MOV P2, R4
ACALL delay

MOV R4, #6FH
MOV P2, R4
ACALL delay

SJMP here

delay:
MOV R0,#03H
repeat_again:
          MOV A,#0FFH
          repeat:
          DEC a
          JNZ repeat
  DJNZ R0,repeat_again

ret
end