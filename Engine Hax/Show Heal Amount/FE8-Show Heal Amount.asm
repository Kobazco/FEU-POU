.thumb
.org 0x0

@Jumped to at 34A1C. r0 has the text id for a slash
push	{r6,r7}
ldr		r1,Process_Text_Func
mov		r14,r1
mov		r6,#0x0					@flag
mov		r1,r4
sub		r1,#0x38
ldr		r1,[r1,#0x1C]			@funky struct shenanigans; no idea what this is supposed to be, but it seems to be 0 only for Heal
cmp		r1,#0x0
bne		DoNotSetFlag
mov		r6,#0x1					@flag set means we're looking at Heal menu, not Talk/Support/Dance/whatever (hopefully this is actually the case)
ldr		r0,ArrowTextID
DoNotSetFlag:
.short	0xF800
mov		r3,r0
ldr		r0,Display_Text_Func
mov		r14,r0
mov		r0,r4
mov		r1,#0x28				@x offset
cmp		r6,#0x0
beq		NoFlag1
mov		r1,#0x24
NoFlag1:
mov		r2,#0x3					@palette index
.short	0xF800
ldr		r0,Current_Hp_Getter
mov		r14,r0
mov		r0,r5
.short	0xF800					@gets the target's current HP
mov		r7,r0
mov		r3,r7
ldr		r0,Display_Num_Func
mov		r14,r0
mov		r0,r4
mov		r1,#0x20
cmp		r6,#0x0
beq		NoFlag2
mov		r1,#0x1C
NoFlag2:
mov		r2,#0x2
.short	0xF800
ldr		r0,Max_Hp_Getter
mov		r14,r0
mov		r0,r5
.short	0xF800
cmp		r6,#0x0
bne		ShowHealedHP
mov		r3,r0
ldr		r0,Display_Num_Func
mov		r14,r0
mov		r0,r4
mov		r1,#0x38
mov		r2,#0x2
.short	0xF800
b		GoBack
ShowHealedHP:
mov		r6,r0					@don't need flag anymore, so r6=max hp
ldr		r0,Get_Heal_Amount
mov		r14,r0
ldr		r0,CurrentCharPtr
ldr		r0,[r0]
ldrh	r1,[r0,#0x1E]			@assume the first item is the one being used; so far, this seems to be the case
.short	0xF800
add		r3,r0,r7				@current hp + healed amount
ldr		r0,Display_Num_Func
mov		r14,r0
mov		r0,r4
mov		r1,#0x38
mov		r2,#0x2
cmp		r3,r6
blt		NotMaxHP
mov		r2,#0x4
mov		r3,r6
NotMaxHP:
.short	0xF800
GoBack:
pop		{r6-r7}
pop		{r4-r5}
pop		{r0}
bx		r0

.align
Process_Text_Func:
.long 0x0800A240
Display_Text_Func:
.long 0x08004480
Display_Num_Func:
.long 0x080044A4
Current_Hp_Getter:
.long 0x08019150
Max_Hp_Getter:
.long 0x08019190
Get_Heal_Amount:
.long 0x08016FB8
CurrentCharPtr:
.long 0x03004E50
ArrowTextID:
