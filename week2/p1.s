.text
        MOV r0,#4
        MOV r1,#1
  L1:   MUL r1,r0,r1
        SUBS r0,r0,#1
        BNE L1
.end
