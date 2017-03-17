.thumb
.org 0x0

.org 0x2
@write at 0x3E732
bl Jump
b AfterJump
Jump:
ldr r3, Routine
bx r3
Routine:
.long 0x8B40101 @free space where the rest of routine will be inserted
AfterJump:
cmp r0, #0x0


.org 0x20
@remove item uses and get item ID
push {r14}
mov r1, #0xFF
and r0, r1
bl GetEffectID
@get offset of the list of Effect IDs
ldr r1, IDlist
pop {r1}
bx r1

.align
IDlist:
.long 0x8B60000 	@placeholder offset of IDlist

LoopStart:
ldrb r2, [r1]
cmp r2, #0x0
beq LoopEnd
cmp r2, r0
beq LoopEnd
add r1, #0x1
b LoopStart
LoopEnd:
mov r0, r2	@put 0x0 into r0 if loop reached end of IDlist
bx r14

GetEffectID:
@get item/staff effect ID
mov r1, #0x24
mul r1, r0
ldr r0, ItemTablePointer
ldr r0, [r0]
add r1, r0
mov r0, #0x1E
ldrb r0, [r1, r0]
bx r14

.align
ItemTablePointer:
.long 0x8016410
