.data
  A:.ASCIZ "This is a string"
  B:.ASCIZ "a"
  C:.ASCIZ "Found"
  D:.ASCIZ "Not Found"

.text
      LDR R0,=A
      LDR R1,=B
      LDRB R2,[R1]
      MOV R7,#0
  L1: LDRB R3,[R0],#1
      ADD R7,R7,#1
      CMP R3,R2
      BEQ L2
      CMP R3,#0
      BEQ L3 
      B L1
  L2: LDR R0,=C
      SWI 0x02
      SWI 0x011
  L3: LDR R0,=D
      SWI 0x02
      SWI 0x011

.end
      


