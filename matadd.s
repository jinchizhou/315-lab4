    /* This function has 5 parameters, and the declaration in the
       C-language would look like:

       void matadd (int **C, int **A, int **B, int height, int width)

       C, A, B, and height will be passed in r0-r3, respectively, and
       width will be passed on the stack.

       You need to write a function that computes the sum C = A + B.

       A, B, and C are arrays of arrays (matrices), so for all elements,
       C[i][j] = A[i][j] + B[i][j]

       You should start with two for-loops that iterate over the height and
       width of the matrices, load each element from A and B, compute the
       sum, then store the result to the correct element of C. 

       This function will be called multiple times by the driver, 
       so don't modify matrices A or B in your implementation.

       As usual, your function must obey correct ARM register usage
       and calling conventions. */
/*
r0 = base address of C
r1 = base address of A
r2 = base address of B
r3 = height
r4 = width
r5 = i
r6 = j
r7 = iOffset
r8 = jOffset
r9 = C temp
r10 = A temp
r11 = B temp
r12 = #4
*/

	.arch armv7-a
	.text
	.align	2
	.global	matadd
	.syntax unified
	.arm
matadd:
		push {lr}
		ldr r4, [sp, #0]  // loads width into r4

		mov r5, #0 //i = 0
		mov r12, #4 //offset constant of 4
		
for1:		cmp r5, r3 //i < height
		beq end
		mov r6, #0 //j = 0
		b for2 //second for loop
for1ret:	add r5, r5, #1 //i++
		b for1

for2:		cmp r6, r4
		beq for1ret /*branch back to forloop1*/
		mov r7, #0
		mul r7, r5, r12 //get offset for [i]
		mul r8, r6, r12 //get offset for [j]
		add r7, r7, r8 //get total offset for [i][j]
		LDR r10, [r1, r7] //load A[i][j]
		LDR r11, [r2, r7] //load B[i][j]
		add r9, r10, r11 //C[i][j] = A[i][j] + B[i][j]
		add r6, r6, #1 //j++
		b for2

end:		pop {pc}

printdata:
            .word       st1

st1:
            .asciz      "r1 is %d, r2 is %d, r3 is %d, r4 is %d, r0 is %d"

