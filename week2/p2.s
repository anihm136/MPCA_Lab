.text
      MOV r0,#1
      CMP r0,#0
      BEQ L1
      BPL L2
      BMI L3
  L1: MOV r1,#1
      SWI 0x011
  L2: MOV r1,#2
      SWI 0x011
  L3: MOV r1,#3
.end
