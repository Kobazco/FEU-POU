.thumb
.org 0x0

@r0=thing to add to r8, r7 has the pointer with char ptr at 0xC, r8=bg0 buffer in wram
push	{r4,r14}
mov		r4,r0
ldr		r0,GetPalette
mov		r14,r0
ldr		r0,[r7,#0xC]
ldrb	r3,[r0,#0xB]
mov		r2,#0xC0
mov		r1,#0x3
tst		r3,r2
bne		NotAllied
mov		r1,#0x0
.short	0xF800
mov		r1,r0
NotAllied:
ldr		r0,ProcessHP
mov		r14,r0
mov		r0,r4
add		r0,r8
mov		r2,#0x22
mov		r3,#0x23
.short	0xF800
pop		{r4}
pop		{r0}
bx		r0

.align
ProcessHP:
.long 0x08004D5C
GetPalette:
