.thumb
.org 0x0
@place this part at 0x1702C
ldr 	r3, OtherPointer
bx r3
.align
OtherPointer:
.long 0x8B40080

@place the part below in free space
.org 0x20
push 	{r4-r6, r14}
ldr 	r5, ItemTable
ldr 	r5, [r5]
mov 	r3, #0x0
mov 	r4, #0xFF
mov 	r2, r0
add 	r2, #0x1E
LoopStart:
ldrh	r0, [r2]
and 	r0, r4
cmp 	r0, #0x0
beq ZeroCheck
mov 	r6, #0x24
mul 	r0, r6
add 	r0, r0, r5
mov 	r6, #0x1E
ldrb	r0, [r0, r6]
cmp 	r0, r1
bne	ReLoop
LoopEnd:
mov 	r0, r3
b	Return
ZeroCheck:
cmp 	r1, #0x0
beq LoopEnd
ReLoop:
add 	r2, #0x2
add 	r3, #0x1
cmp 	r3, #0x4
ble LoopStart
@ b LoopFail
LoopFail:
mov 	r0, #0x1
neg 	r0, r0
Return:
pop 	{r4-r6}
pop 	{r1}
bx	r1
.align
ItemTable:
.long 0x8017028
