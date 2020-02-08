.data
  A:.ASCIZ "This is a string"

.text
      LDR R0,=A
      MOV R7, #0
  L1: LDRB R1,[R0],#1
      CMP R1,#0
      BEQ L2 
      ADD R7,R7,#1
      B L1
  L2: SWI 0x011

.end
      

