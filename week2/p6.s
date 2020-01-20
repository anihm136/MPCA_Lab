    MOV r0,#15
    MOV r1,#26
    MOV r2,#0
L1: CMP r0,r1
    BEQ L2
    BPL L3
    BNE L4
L2: MOV r2,r0
    B END
L3: MOV r3,r1
    SUB r1,r0,r1
    MOV r0,r3
    B L1
L4: MOV r3,r0
    SUB r0,r1,r0
    MOV r1,r3
    B L1
END:

