.thumb
.org 0x0

LoopStart:
ldrb r2, [r1]
cmp r2, #0x0
beq LoopEnd
cmp r2, r0
beq LoopEnd
add r1, #0x4
b LoopStart
LoopEnd:
ldrb r5, [r1, #0x2]
bx r14
