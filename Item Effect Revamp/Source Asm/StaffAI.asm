.thumb
.org 0x0

mov r6, r0			 @place item ID in r6
@ldr r4, StaffAIArray @loads AI staff array
ldrh r0, [r4] 		 @grab first item id in array
b SLoop
@cmp r0, #0x0  		 @array ends with a 0x0 entry, makes sure arrary isn't empty
@beq 				 @go to end of routine and return negative 1 to say that the search for a staff usable by the AI in the unit's inventory failed
@mov r3, #0x0	@
@mov r1, r4
@add r2, r1, #0x4 	 @grab pointer that comes after item id in te array entry
@ldrh r0, [r1] 		 @grab item id in list
Check:
cmp r6, r0 			 @check is array entry item id matches current item id
bne ReLoop			 @ branch to loop increment if id does not match
ldr r0, [r1, #0x4]	 @grab pointer that follows item id
cmp r0, #0x0 		 @make sure pointer that follows item id is not 0x0
bne TrueEnd		 @if pointer is not 0x0 branch out of loop
ReLoop:
add r5, #0x1 		 @increment array position by one
lsl r3, r5, #0x3 	 @multiply r5 by 8 and place in r3
add r1, r3, r4 		 @put pointer to next array entry in r1
ldrh r0, [r1]
SLoop:
cmp r0, #0x0		 @check if end of array
bne Check			  @if not end of array repeat loop
mov r0, #0x1
neg r0, r0			 @return -1 for check after pop/bx, -1 is the false case
b Exit
TrueEnd:
mov r0, r5
Exit:
pop {r4-r6}
pop {r1}			 @get return offest
bx r1 				 @end of routine, returns to where this routine was called from
