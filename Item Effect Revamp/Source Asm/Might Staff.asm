.thumb

@return might for staves
@place routine at 0x16FB8
@b commands have placeholder offsets, fixed in .dmp of asm
.org 0x0

@copied from original routine
push 	{r4, r14}
mov 	r3, r0
mov 	r2, r1
@r0 and r1 now free for use
mov 	r0, #0xFF
and 	r0, r2
mov 	r1, #0x24
mul 	r0, r1
ldr 	r1, ItemTablePointer
add 	r0, r0, r1
mov 	r1, #0x15
ldrb	r1, [r0, r1]
mov 	r4, r1
b		0x26

.align
ItemTablePointer:
.long 0x8016410
