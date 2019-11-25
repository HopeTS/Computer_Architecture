.data
.balign 4
var1:
	.word 8
.balign 4
var2:
	.word 9

.text
.balign 4
.global main

/* Set r0 to 2 if r1 < r2 */
/* Set r0 to 7 if r1 >= r2 */

main:
	ldr r1, var1_addr
	ldr r1, [r1]
	ldr r2, var2_addr
	ldr r2, [r2]
if:
	cmp r1, r2
	blt then
	bge else
then:
	mov r0, #2
	b end
else:
	mov r0, #7
	b end
end:
	SWI 0

var1_addr : .word var1
var2_addr : .word var2
