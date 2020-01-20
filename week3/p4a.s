.data
    A:.word 1,2,3,4,5
    B:.word 1,2,3,4,5

.text
            LDR r0,=A
            LDR r1,=B
            MOV r3,#0
            MOV r7,#5
    L1:     LDR r4,[r0],#4
            LDR r5,[r1],#4
            MUL r6,r4,r5
            ADD r3,r3,r6
            SUBS r7,r7,#1
            BNE L1
            SWI 0x011

.end