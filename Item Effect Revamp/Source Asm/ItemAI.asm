.thumb
.org 0x0
@r4 is loop counter, already starts at 0
@if match is found place r4 in r0 at end of routine


cmp r0, #0x0
beq FalseCase
mov r5, r0
ldr r3, ItemAIArray
b LoopStart

LoopBack:
add r4, #0x1
LoopStart:
lsl r1, r4, #0x3
add r2, r3, r1
ldrh r0, [r2]
cmp r0, #0x0
beq FalseCase
cmp r5, r0
bne LoopBack
ldr r1, [r2, #0x4]
cmp r1, #0x0
beq LoopBack
mov r0, r4
b Exit


FalseCase:
mov r0, #0x1
neg r0, r0
Exit:
pop {r4-r6}
pop {r1}			 @get return offest
bx r1 				 @end of routine, returns to where this routine was called from
.align
ItemAIArray:
.long 0x80D86F4
