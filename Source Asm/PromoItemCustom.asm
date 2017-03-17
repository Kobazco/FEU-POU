.thumb
.org 0x0

@r4 ends with the class list of the promotion item or 0
@r5 holds pointer to character data in ram
@r6 holds item data

cmp r4, #0x0
bne ReturnTrue
mov r0, r6
mov r1, #0xFF
and r0, r1
mov r1, #0x24
mul r1, r0
ldr r0, ItemTablePointer
ldr r0, [r0]
add r1, r0
mov r0, #0x10
ldr r0, [r1, r0]
mov r4, r0
cmp r4, #0x0
beq ReturnFalse
ReturnTrue:
bx r14
ReturnFalse:
ldr r1, =0x8029401
bx r1
.align
ItemTablePointer:
.long 0x8017514
