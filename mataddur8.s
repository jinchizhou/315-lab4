	.arch armv7-a
	.text
	.align	2
	.global	matadd
	.syntax unified
	.arm

matadd:
  str fp, [sp, #-4]!
  add fp, sp, #0
  sub sp, sp, #28
  str r0, [fp, #-16]
  str r1, [fp, #-20]
  str r2, [fp, #-24]
  str r3, [fp, #-28]
  mov r3, #0
  str r3, [fp, #-8]
.L5:
  ldr r2, [fp, #-8]
  ldr r3, [fp, #-28]
  cmp r2, r3
  bge .L6
  mov r3, #0
  str r3, [fp, #-12]
.L4:
  ldr r2, [fp, #-12]
  ldr r3, [fp, #4]
  cmp r2, r3
  bge .L3
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #1
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #1
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #1
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #2
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #2
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #2
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #3
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #3
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #3
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #4
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #4
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #4
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #5
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #5
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #5
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #6
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #6
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #6
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-20]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #7
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r1, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r2, [fp, #-24]
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #7
  lsl r3, r3, #2
  add r3, r2, r3
  ldr r2, [r3]
  ldr r3, [fp, #-8]
  lsl r3, r3, #2
  ldr r0, [fp, #-16]
  add r3, r0, r3
  ldr r0, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #7
  lsl r3, r3, #2
  add r3, r0, r3
  add r2, r1, r2
  str r2, [r3]
  ldr r3, [fp, #-12]
  add r3, r3, #8
  str r3, [fp, #-12]
  b .L4
.L3:
  ldr r3, [fp, #-8]
  add r3, r3, #1
  str r3, [fp, #-8]
  b .L5
.L6:
  nop
  add sp, fp, #0
  ldr fp, [sp], #4
  bx lr
