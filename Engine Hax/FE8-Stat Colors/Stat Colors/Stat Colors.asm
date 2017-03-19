.thumb
.org 0x0

push	{r4-r6,r14}
add		sp,#-0x8
ldr		r5,StatScreenStruct			@2003BFC
ldr		r6,Table1					@stat screen offset table
sub		r0,r5,#0x1
ldr		r1,[r5,#0xC]
ldrb	r1,[r1,#0xB]
mov		r2,#0xC0
tst		r1,r2
beq		DontChange
ldrb	r1,[r0]
mov		r2,#0xFE
and		r1,r2
strb	r1,[r0]
DontChange:
ldrb	r0,[r0]
mov		r1,#0x1
tst		r0,r1
beq		RightTable
ldr		r6,Table1+4
RightTable:
mov		r4,#0x0						@allied or npc/enemy flag
ldr		r0,StrOrMag
mov		r14,r0
ldr		r0,[r5,#0xC]				@ram char ptr
ldrb	r1,[r0,#0xB]
mov		r2,#0xC0
tst		r1,r2
bne		NotAllied
mov		r4,#0x1
NotAllied:
.short	0xF800
ldr		r1,[r6,#0xC]				@textID
ldr		r1,[r1]
cmp		r0,#0x0
beq		NameLoop
add		r1,#0x1
NameLoop:
ldr		r0,CopyTextToRAM
mov		r14,r0
mov		r0,r1
.short	0xF800
str		r0,[sp,#0x4]
mov		r0,#0x0
str		r0,[sp]
mov		r2,#0x3						@standard palette index
cmp		r4,#0x0
beq		UsualColor
ldr		r0,Table1+8					@Get Palette
mov		r14,r0
ldr		r0,[r5,#0xC]
mov		r1,r4
.short	0xF800
mov		r2,r0
add		r4,#0x1
UsualColor:
ldr		r0,ProcessStatNames
mov		r14,r0
ldr		r0,[r6]
ldr		r1,[r6,#0x4]
ldrb	r3,[r6,#0x9]
.short	0xF800
add		r6,#0x10
ldr		r1,[r6,#0xC]
ldr		r1,[r1]
ldr		r0,[r6]
cmp		r0,#0x0
bne		NameLoop
add		sp,#0x8
pop		{r4-r6}
pop		{r0}
bx		r0

.align
StatScreenStruct:
.long 0x02003BFC
StrOrMag:
.long 0x08018A58
CopyTextToRAM:
.long 0x0800A240
ProcessStatNames:
.long 0x0800443C
Table1:
