.data
    A:.word 10,20,30,40,50,60,70,80,90,100

.text
            LDR r0,=A
            MOV r1,#10
            MOV r2,#200
            MOV r7,#-1
    L1:     LDR r3,[r0],#4
            CMP r2,r3
            BEQ F
            SUBS r1,r1,#1
            BNE L1
            SWI 0x011

    F:      RSB r7,r1,#10
            SWI 0x011

.end    