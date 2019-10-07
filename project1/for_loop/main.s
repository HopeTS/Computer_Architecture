.text
.balign 4
.global main

	/* For i in range(num) x++ */

main:
	mov r1, #0	/* i */
	mov r2, #15	/* num */
	mov r0, #0	/* x */
for:
	cmp r1, r2
	blt loop
	bge end
loop:
	add r1, r1, #1	/* i++ */
	add r0, r0, #1	/* x++ */
	b for
end:
	bx lr
