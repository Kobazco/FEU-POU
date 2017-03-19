.thumb
.org 0x0

@Objective: rewrite item effect ID getter for item effects
@store result in r0, r8 holds item ID
@r3 and r1 free for use

@this part is written at original offset
ldr r1, PointToRoutine
ldr r3, JumpTable @loads offset of jump table
mov r0, r5	@sometimes r4 instead of r5, depends on routine
bl 0x1234 @place bl to go to 0x80174EC here
bx r1

.align
JumpTable:
.long 0x80288B0

PointToRoutine:
.long 0x8B40061	@free space where the rest of routine will be inserted

.org 0x20
mov r1, #0x24
mul r1, r0
ldr r0, ItemTablePointer
ldr r0, [r0]
add r1, r0
ldrb r0, [r1, #0x1E]

@jump table routine
lsl r0, r0, #0x2 
add r0, r3
ldr r0, [r0]
mov r15, r0

ItemTablePointer:
.long 0x8016410
