.text
.balign 4
.global main

main:
	mov r1, #10
	mov r2, #0
	mov r3, #0
	mov r4, #1

loop:
	cmp r1, r2
	bgt while
	ble end

while:
	add r3, r2, r4
	mov r2, r3
	b loop

end:
	mov r0, r2
	SWI 0
