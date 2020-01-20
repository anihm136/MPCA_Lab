.data
    A:.byte 1,2,3,4,5,6,7,8,9,10
    B:.byte

.text
            LDR r0,=A
            MOV r2,#0
            MOV r3,#10
    L1:     LDRB r1,[r0],#1
            ADD r2,r1,r2
            SUBS r3,r3,#1
            BNE L1
            LDR r4,=B
            STRB r2,[r4]
            SWI 0x011
.end
