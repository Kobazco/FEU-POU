.thumb
.org 0x0

@r0=char data, r1=byte in list of growth offset to look up
push	{r4,r14}
mov		r4,#0x3
ldr		r2,StatScreenStruct
sub		r2,#0x1
mov		r3,#0x7
ldrb	r2,[r2]
cmp		r2,#0x0
beq		Not8
mov		r3,#0x8
Not8:
cmp		r1,r3						@hp,str,skl,spd,def,res,luk
bge		ReturnPalette
ldrb	r3,[r0,#0xD]
mov		r2,#0x20
and		r3,r2
cmp		r3,#0x0
beq		NoMetis
ldr		r3,Table1+8
NoMetis:
ldr		r0,[r0]
ldr		r2,Table1					@just a list of offsets of growths in char struct
ldrb	r1,[r2,r1]
ldrb	r0,[r0,r1]
add		r0,r3
ldr		r1,Table1+4					@list of entries consisting of number,palette; if growth<number, use palette
PaletteLoop:
ldrb	r2,[r1]
cmp		r2,#0x0
beq		ReturnPalette
cmp		r0,r2
bge		NextColor
ldrb	r4,[r1,#0x1]
b		ReturnPalette
NextColor:
add		r1,#0x2
b		PaletteLoop
ReturnPalette:
mov		r0,r4
pop		{r4}
pop		{r1}
bx		r1

.align
StatScreenStruct:
.long 0x02003BFC
Table1:
