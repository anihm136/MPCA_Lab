.data
  A:.ASCIZ "This is a string"
  B:.ASCIZ ""

.text
      LDR R2,=A
      LDR R0,=B
      LDR R7,=B
  L1: LDRB R1,[R2],#1
      STRB R1,[R7],#1
      CMP R1,#0
      BEQ L2 
      B L1
  L2: SWI 0x02
      SWI 0x011

.end
      


