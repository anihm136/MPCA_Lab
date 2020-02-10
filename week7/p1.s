.data
  A:.byte 1,2,3,4,5,6,7,8,9,10
  B:.byte 11
  C:.ASCIZ "Found"
  D:.ASCIZ "Not found"

.text
      LDR R1, =A
      LDR R5, =B
      LDRB R7, [R5]
      ADD R3, R1, #9
  L:  CMP R3,R1
      BMI NF
      ADD R4, R1, R3
      MOV R2, R4, LSR #1
      LDRB R6, [R2]
      CMP R6, R7
      BEQ F
      ADDPL R1, R2, #1
      SUBMI R3, R2, #1
      B L
  
  NF: LDR R0, =D
      SWI 0x02
      SWI 0x011
  
  F:  LDR R0, =C
      SWI 0x02
      SWI 0x011

.end