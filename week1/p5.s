.text
     mov r0,#10
     mov r1,#10
     cmp r0,r1
     beq L1
  sub r2,r0,r1
  swi 0x011
  L1:add r2,r0,r1
.end
