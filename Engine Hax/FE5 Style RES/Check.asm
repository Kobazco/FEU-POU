.thumb
.org 0x00 
	Check:			
	ldr 	r0, WepType		@find location of what type the weapon is
	ldr		r0,[r0]			@load the byte at ^ location
	mov 	r1, #0x02		@move the value 2 into r1
	and 	r1, r0			@checks if bit is set or not set by checking r0 against r1	@stores 0x2 if it is set (magic) and 0x0 if it is not (physical)	@it is stored in r1
	cmp 	r1, #0x0		@compares value of r1 against 0x0
	bne 	useRES			@if the cmp showed it was equal, continue down (if it was 0x0, physical)	@if it was unequal (if it was 0x2, magic), go to useRES
	b 		useSTR			@go to useSTR
	
	
	useSTR:
	mov 	r0, #0x14			@14h == str
	b 		Finish

	useRES:
	mov 	r0, #0x18			@18h == res
	b 		Finish

							@overwrite with b to new code		@0802AB50 2014     mov     r0,#0x14      @Strength
							@write in new code					@0802AB52 5630     ldsb    r0,[r6,r0]    @Load
							@new code bx lr's back to this		@0802AB54 1828     add     r0,r5,r0      @Add to power
																@the ldsb being written here is because otherwise it would be overwritten

	.align
	WepType:
	.long 	0x203a538
																
	Finish:					@finish the above commands then go back to 2AB54
	ldsb    r0,[r6,r0]  	@load
	bx 		lr				@finish; returns to what it was doing
