mov r0,#11
tst r0,#0x01
beq L1
mov r2,#255
SWI 0x011
L1:mov r2,#0
