.text
      LDR r0,=A
      LDR r1,=B
      LDR r6,=C
      LDR r3,[r0]
      LDR r4,[r1]
      ADD r5,r3,r4
      STR r5,[r6]
      
.data
  A:.word 10
  B:.word 20
  C:.word 0
.end
