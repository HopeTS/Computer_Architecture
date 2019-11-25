.text
.global main
main:
	/* Variables */
	mov r1, #0
	mov r2, #10
if:
	cmp r1, r2
	blt then	/* If r1 < r2 go to then*/
	bge else	/* Else go to else */
then:
	mov r0, #1
	b end
else:
	mov r0, #2
	b end
end:
	SWI 0
