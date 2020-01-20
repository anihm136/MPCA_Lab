.text
      LDR r0,=A
      LDR r1,=B
      MOV r2,#5
  L1: LDR r3,[r0]
      STR r3,[r1]
      ADD r0,r0,#4
      ADD r1,r1,#4
      SUBS r2,r2,#1
      BNE L1
.data
  A:.word 10,20,30,40,50
  B:.word 0
.end
