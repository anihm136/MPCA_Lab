.data
    A:.byte 0,1

.text
            LDR r0,=A
            MOV r1,#8
    L1:     LDRB r2,[r0],#1
            LDRB r3,[r0],#1
            ADD r4,r2,r3
            STRB r4,[r0]
            SUB r0,r0,#1
            SUBS r1,r1,#1
            BNE L1
            SWI 0x011

.end