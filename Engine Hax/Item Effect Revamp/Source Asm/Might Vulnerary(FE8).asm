.thumb
.org 0x0

@Objective: rework vulnerary effect to use item might instead of instead of 10
@r8 seems to hold item ID
@store result in r1
@r3 seems to be free for use but r0 might not be, unsure about r2 but it looks free
@Remeber to change the pointer in item effect table (0x2FD14) to point to this routine

mov r0, r6		@copied from vanilla routine	
mov r3, #0x24	@put length of item array in r3
mov r1, r8
mul r3, r1		@multiply length of item array by item ID
ldr r1, ItemTablePointer
ldr r1, [r1]
add r1, r1, r3	@get offset of item in item table
ldrb r1, [r1, #0x15] @get item's might
ldr r3, =#0x802FEC9		
bx r3	@ go to part that comes after the replaced routine

ItemTablePointer:
.long 0x8016410
