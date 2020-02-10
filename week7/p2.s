.data
  A:.word 15
  B:.ASCIZ "Odd parity"
  C:.ASCIZ "Even parity"

.text
      LDR R0, =A
      LDR R1,[R0]
      MOV R7, #0
  
  L:  TST R1, #1
      BNE ON
  LE: MOVS R1, R1, LSR #1
      BNE L   

      TST R7, #1
      BNE OD
      LDR R0, =C
      SWI 0x02
      SWI 0x011

  OD: LDR R0, =B
      SWI 0x02
      SWI 0x011

  ON: ADD R7, R7, #1
      B LE

