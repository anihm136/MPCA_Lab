.text
      LDR r0,=A
      MOV r2,#0
      MOV r6,#5
  L1: LDR r3,[r0]
      ADD r2,r2,r3
      ADD r0,r0,#4
      SUBS r6,r6,#1
      BNE L1
.data
  A:.word 10,20,30,40,50
.end
