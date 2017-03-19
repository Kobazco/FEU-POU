.thumb
@place routine at 0x189AC in FE8
@bl commands have placeholder offsets, fixed in .dmp of asm
.org 0x0
push {r4-r6,r14}
mov 	r4, r0
mov 	r5, r1
mov 	r6, #0x0
ldr 	r0, [r4]
ldr 	r1, [r4,#0x4]
ldr 	r0, [r0, #0x28]
ldr 	r1, [r1, #0x28]
orr 	r0, r1
mov 	r1, #0x8
and 	r0, r1
cmp 	r0, #0x0
beq SkipLockpick
mov 	r0, r4
@load lockpick effect ID to r1
mov r1, #0x20
bl	0x4
cmp r0, #0x0
bge	PopBack
SkipLockpick:
cmp 	r5, #0x1E
beq 	DoorKeyCheck
cmp 	r5, #0x21
bne 	DefaultCheck
mov r0, r4
@Load chest key ID to r1
mov r1, #0x1E
bl 0x4
b MasterKeyCheck
DoorKeyCheck:
mov r0, r4
@Load door key ID to r1
mov r1, #0x1F
bl	0x4
MasterKeyCheck:
cmp r0, #0x0
bge	PopBack
mov r6, #0x26
DefaultCheck:
mov r0, r4
mov r1, r6
bl 0x4
PopBack:
pop {r4-r6}
pop {r1}
bx r1
