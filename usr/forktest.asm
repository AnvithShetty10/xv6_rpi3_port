
_forktest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <printf>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4800 	push	{fp, lr}
   8:	e28db004 	add	fp, sp, #4
   c:	e24dd00c 	sub	sp, sp, #12
  10:	e50b000c 	str	r0, [fp, #-12]
  14:	e59b0004 	ldr	r0, [fp, #4]
  18:	eb00008a 	bl	248 <strlen>
  1c:	e1a03000 	mov	r3, r0
  20:	e51b000c 	ldr	r0, [fp, #-12]
  24:	e59b1004 	ldr	r1, [fp, #4]
  28:	e1a02003 	mov	r2, r3
  2c:	eb0001ae 	bl	6ec <write>
  30:	e24bd004 	sub	sp, fp, #4
  34:	e8bd4800 	pop	{fp, lr}
  38:	e28dd00c 	add	sp, sp, #12
  3c:	e12fff1e 	bx	lr

00000040 <forktest>:
  40:	e92d4800 	push	{fp, lr}
  44:	e28db004 	add	fp, sp, #4
  48:	e24dd008 	sub	sp, sp, #8
  4c:	e3a00001 	mov	r0, #1
  50:	e59f10e8 	ldr	r1, [pc, #232]	; 140 <forktest+0x100>
  54:	ebffffe9 	bl	0 <printf>
  58:	e3a03000 	mov	r3, #0
  5c:	e50b3008 	str	r3, [fp, #-8]
  60:	ea00000f 	b	a4 <forktest+0x64>
  64:	eb000173 	bl	638 <fork>
  68:	e50b000c 	str	r0, [fp, #-12]
  6c:	e51b300c 	ldr	r3, [fp, #-12]
  70:	e3530000 	cmp	r3, #0
  74:	aa000003 	bge	88 <forktest+0x48>
  78:	e3a00001 	mov	r0, #1
  7c:	e59f10c0 	ldr	r1, [pc, #192]	; 144 <forktest+0x104>
  80:	ebffffde 	bl	0 <printf>
  84:	ea000009 	b	b0 <forktest+0x70>
  88:	e51b300c 	ldr	r3, [fp, #-12]
  8c:	e3530000 	cmp	r3, #0
  90:	1a000000 	bne	98 <forktest+0x58>
  94:	eb000170 	bl	65c <exit>
  98:	e51b3008 	ldr	r3, [fp, #-8]
  9c:	e2833001 	add	r3, r3, #1
  a0:	e50b3008 	str	r3, [fp, #-8]
  a4:	e51b3008 	ldr	r3, [fp, #-8]
  a8:	e3530ffa 	cmp	r3, #1000	; 0x3e8
  ac:	baffffec 	blt	64 <forktest+0x24>
  b0:	e51b3008 	ldr	r3, [fp, #-8]
  b4:	e3530ffa 	cmp	r3, #1000	; 0x3e8
  b8:	1a000004 	bne	d0 <forktest+0x90>
  bc:	e3a00001 	mov	r0, #1
  c0:	e59f1080 	ldr	r1, [pc, #128]	; 148 <forktest+0x108>
  c4:	e3a02ffa 	mov	r2, #1000	; 0x3e8
  c8:	ebffffcc 	bl	0 <printf>
  cc:	eb000162 	bl	65c <exit>
  d0:	ea00000a 	b	100 <forktest+0xc0>
  d4:	eb000169 	bl	680 <wait>
  d8:	e1a03000 	mov	r3, r0
  dc:	e3530000 	cmp	r3, #0
  e0:	aa000003 	bge	f4 <forktest+0xb4>
  e4:	e3a00001 	mov	r0, #1
  e8:	e59f105c 	ldr	r1, [pc, #92]	; 14c <forktest+0x10c>
  ec:	ebffffc3 	bl	0 <printf>
  f0:	eb000159 	bl	65c <exit>
  f4:	e51b3008 	ldr	r3, [fp, #-8]
  f8:	e2433001 	sub	r3, r3, #1
  fc:	e50b3008 	str	r3, [fp, #-8]
 100:	e51b3008 	ldr	r3, [fp, #-8]
 104:	e3530000 	cmp	r3, #0
 108:	cafffff1 	bgt	d4 <forktest+0x94>
 10c:	eb00015b 	bl	680 <wait>
 110:	e1a03000 	mov	r3, r0
 114:	e3730001 	cmn	r3, #1
 118:	0a000003 	beq	12c <forktest+0xec>
 11c:	e3a00001 	mov	r0, #1
 120:	e59f1028 	ldr	r1, [pc, #40]	; 150 <forktest+0x110>
 124:	ebffffb5 	bl	0 <printf>
 128:	eb00014b 	bl	65c <exit>
 12c:	e3a00001 	mov	r0, #1
 130:	e59f101c 	ldr	r1, [pc, #28]	; 154 <forktest+0x114>
 134:	ebffffb1 	bl	0 <printf>
 138:	e24bd004 	sub	sp, fp, #4
 13c:	e8bd8800 	pop	{fp, pc}
 140:	0000092c 	.word	0x0000092c
 144:	00000938 	.word	0x00000938
 148:	00000948 	.word	0x00000948
 14c:	00000968 	.word	0x00000968
 150:	0000097c 	.word	0x0000097c
 154:	00000990 	.word	0x00000990

00000158 <main>:
 158:	e92d4800 	push	{fp, lr}
 15c:	e28db004 	add	fp, sp, #4
 160:	ebffffb6 	bl	40 <forktest>
 164:	eb00013c 	bl	65c <exit>

00000168 <strcpy>:
 168:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 16c:	e28db000 	add	fp, sp, #0
 170:	e24dd014 	sub	sp, sp, #20
 174:	e50b0010 	str	r0, [fp, #-16]
 178:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 17c:	e51b3010 	ldr	r3, [fp, #-16]
 180:	e50b3008 	str	r3, [fp, #-8]
 184:	e1a00000 	nop			; (mov r0, r0)
 188:	e51b3010 	ldr	r3, [fp, #-16]
 18c:	e2832001 	add	r2, r3, #1
 190:	e50b2010 	str	r2, [fp, #-16]
 194:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
 198:	e2821001 	add	r1, r2, #1
 19c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 1a0:	e5d22000 	ldrb	r2, [r2]
 1a4:	e5c32000 	strb	r2, [r3]
 1a8:	e5d33000 	ldrb	r3, [r3]
 1ac:	e3530000 	cmp	r3, #0
 1b0:	1afffff4 	bne	188 <strcpy+0x20>
 1b4:	e51b3008 	ldr	r3, [fp, #-8]
 1b8:	e1a00003 	mov	r0, r3
 1bc:	e24bd000 	sub	sp, fp, #0
 1c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1c4:	e12fff1e 	bx	lr

000001c8 <strcmp>:
 1c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1cc:	e28db000 	add	fp, sp, #0
 1d0:	e24dd00c 	sub	sp, sp, #12
 1d4:	e50b0008 	str	r0, [fp, #-8]
 1d8:	e50b100c 	str	r1, [fp, #-12]
 1dc:	ea000005 	b	1f8 <strcmp+0x30>
 1e0:	e51b3008 	ldr	r3, [fp, #-8]
 1e4:	e2833001 	add	r3, r3, #1
 1e8:	e50b3008 	str	r3, [fp, #-8]
 1ec:	e51b300c 	ldr	r3, [fp, #-12]
 1f0:	e2833001 	add	r3, r3, #1
 1f4:	e50b300c 	str	r3, [fp, #-12]
 1f8:	e51b3008 	ldr	r3, [fp, #-8]
 1fc:	e5d33000 	ldrb	r3, [r3]
 200:	e3530000 	cmp	r3, #0
 204:	0a000005 	beq	220 <strcmp+0x58>
 208:	e51b3008 	ldr	r3, [fp, #-8]
 20c:	e5d32000 	ldrb	r2, [r3]
 210:	e51b300c 	ldr	r3, [fp, #-12]
 214:	e5d33000 	ldrb	r3, [r3]
 218:	e1520003 	cmp	r2, r3
 21c:	0affffef 	beq	1e0 <strcmp+0x18>
 220:	e51b3008 	ldr	r3, [fp, #-8]
 224:	e5d33000 	ldrb	r3, [r3]
 228:	e1a02003 	mov	r2, r3
 22c:	e51b300c 	ldr	r3, [fp, #-12]
 230:	e5d33000 	ldrb	r3, [r3]
 234:	e0633002 	rsb	r3, r3, r2
 238:	e1a00003 	mov	r0, r3
 23c:	e24bd000 	sub	sp, fp, #0
 240:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 244:	e12fff1e 	bx	lr

00000248 <strlen>:
 248:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 24c:	e28db000 	add	fp, sp, #0
 250:	e24dd014 	sub	sp, sp, #20
 254:	e50b0010 	str	r0, [fp, #-16]
 258:	e3a03000 	mov	r3, #0
 25c:	e50b3008 	str	r3, [fp, #-8]
 260:	ea000002 	b	270 <strlen+0x28>
 264:	e51b3008 	ldr	r3, [fp, #-8]
 268:	e2833001 	add	r3, r3, #1
 26c:	e50b3008 	str	r3, [fp, #-8]
 270:	e51b3008 	ldr	r3, [fp, #-8]
 274:	e51b2010 	ldr	r2, [fp, #-16]
 278:	e0823003 	add	r3, r2, r3
 27c:	e5d33000 	ldrb	r3, [r3]
 280:	e3530000 	cmp	r3, #0
 284:	1afffff6 	bne	264 <strlen+0x1c>
 288:	e51b3008 	ldr	r3, [fp, #-8]
 28c:	e1a00003 	mov	r0, r3
 290:	e24bd000 	sub	sp, fp, #0
 294:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 298:	e12fff1e 	bx	lr

0000029c <memset>:
 29c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 2a0:	e28db000 	add	fp, sp, #0
 2a4:	e24dd024 	sub	sp, sp, #36	; 0x24
 2a8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 2ac:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
 2b0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
 2b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 2b8:	e50b3008 	str	r3, [fp, #-8]
 2bc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 2c0:	e54b300d 	strb	r3, [fp, #-13]
 2c4:	e55b300d 	ldrb	r3, [fp, #-13]
 2c8:	e1a02c03 	lsl	r2, r3, #24
 2cc:	e55b300d 	ldrb	r3, [fp, #-13]
 2d0:	e1a03803 	lsl	r3, r3, #16
 2d4:	e1822003 	orr	r2, r2, r3
 2d8:	e55b300d 	ldrb	r3, [fp, #-13]
 2dc:	e1a03403 	lsl	r3, r3, #8
 2e0:	e1822003 	orr	r2, r2, r3
 2e4:	e55b300d 	ldrb	r3, [fp, #-13]
 2e8:	e1823003 	orr	r3, r2, r3
 2ec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 2f0:	ea000008 	b	318 <memset+0x7c>
 2f4:	e51b3008 	ldr	r3, [fp, #-8]
 2f8:	e55b200d 	ldrb	r2, [fp, #-13]
 2fc:	e5c32000 	strb	r2, [r3]
 300:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 304:	e2433001 	sub	r3, r3, #1
 308:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 30c:	e51b3008 	ldr	r3, [fp, #-8]
 310:	e2833001 	add	r3, r3, #1
 314:	e50b3008 	str	r3, [fp, #-8]
 318:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 31c:	e3530000 	cmp	r3, #0
 320:	0a000003 	beq	334 <memset+0x98>
 324:	e51b3008 	ldr	r3, [fp, #-8]
 328:	e2033003 	and	r3, r3, #3
 32c:	e3530000 	cmp	r3, #0
 330:	1affffef 	bne	2f4 <memset+0x58>
 334:	e51b3008 	ldr	r3, [fp, #-8]
 338:	e50b300c 	str	r3, [fp, #-12]
 33c:	ea000008 	b	364 <memset+0xc8>
 340:	e51b300c 	ldr	r3, [fp, #-12]
 344:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
 348:	e5832000 	str	r2, [r3]
 34c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 350:	e2433004 	sub	r3, r3, #4
 354:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 358:	e51b300c 	ldr	r3, [fp, #-12]
 35c:	e2833004 	add	r3, r3, #4
 360:	e50b300c 	str	r3, [fp, #-12]
 364:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 368:	e3530003 	cmp	r3, #3
 36c:	8afffff3 	bhi	340 <memset+0xa4>
 370:	e51b300c 	ldr	r3, [fp, #-12]
 374:	e50b3008 	str	r3, [fp, #-8]
 378:	ea000008 	b	3a0 <memset+0x104>
 37c:	e51b3008 	ldr	r3, [fp, #-8]
 380:	e55b200d 	ldrb	r2, [fp, #-13]
 384:	e5c32000 	strb	r2, [r3]
 388:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 38c:	e2433001 	sub	r3, r3, #1
 390:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 394:	e51b3008 	ldr	r3, [fp, #-8]
 398:	e2833001 	add	r3, r3, #1
 39c:	e50b3008 	str	r3, [fp, #-8]
 3a0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 3a4:	e3530000 	cmp	r3, #0
 3a8:	1afffff3 	bne	37c <memset+0xe0>
 3ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 3b0:	e1a00003 	mov	r0, r3
 3b4:	e24bd000 	sub	sp, fp, #0
 3b8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 3bc:	e12fff1e 	bx	lr

000003c0 <strchr>:
 3c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 3c4:	e28db000 	add	fp, sp, #0
 3c8:	e24dd00c 	sub	sp, sp, #12
 3cc:	e50b0008 	str	r0, [fp, #-8]
 3d0:	e1a03001 	mov	r3, r1
 3d4:	e54b3009 	strb	r3, [fp, #-9]
 3d8:	ea000009 	b	404 <strchr+0x44>
 3dc:	e51b3008 	ldr	r3, [fp, #-8]
 3e0:	e5d33000 	ldrb	r3, [r3]
 3e4:	e55b2009 	ldrb	r2, [fp, #-9]
 3e8:	e1520003 	cmp	r2, r3
 3ec:	1a000001 	bne	3f8 <strchr+0x38>
 3f0:	e51b3008 	ldr	r3, [fp, #-8]
 3f4:	ea000007 	b	418 <strchr+0x58>
 3f8:	e51b3008 	ldr	r3, [fp, #-8]
 3fc:	e2833001 	add	r3, r3, #1
 400:	e50b3008 	str	r3, [fp, #-8]
 404:	e51b3008 	ldr	r3, [fp, #-8]
 408:	e5d33000 	ldrb	r3, [r3]
 40c:	e3530000 	cmp	r3, #0
 410:	1afffff1 	bne	3dc <strchr+0x1c>
 414:	e3a03000 	mov	r3, #0
 418:	e1a00003 	mov	r0, r3
 41c:	e24bd000 	sub	sp, fp, #0
 420:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 424:	e12fff1e 	bx	lr

00000428 <gets>:
 428:	e92d4800 	push	{fp, lr}
 42c:	e28db004 	add	fp, sp, #4
 430:	e24dd018 	sub	sp, sp, #24
 434:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 438:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
 43c:	e3a03000 	mov	r3, #0
 440:	e50b3008 	str	r3, [fp, #-8]
 444:	ea000017 	b	4a8 <gets+0x80>
 448:	e24b300d 	sub	r3, fp, #13
 44c:	e3a00000 	mov	r0, #0
 450:	e1a01003 	mov	r1, r3
 454:	e3a02001 	mov	r2, #1
 458:	eb00009a 	bl	6c8 <read>
 45c:	e50b000c 	str	r0, [fp, #-12]
 460:	e51b300c 	ldr	r3, [fp, #-12]
 464:	e3530000 	cmp	r3, #0
 468:	ca000000 	bgt	470 <gets+0x48>
 46c:	ea000012 	b	4bc <gets+0x94>
 470:	e51b3008 	ldr	r3, [fp, #-8]
 474:	e2832001 	add	r2, r3, #1
 478:	e50b2008 	str	r2, [fp, #-8]
 47c:	e1a02003 	mov	r2, r3
 480:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 484:	e0833002 	add	r3, r3, r2
 488:	e55b200d 	ldrb	r2, [fp, #-13]
 48c:	e5c32000 	strb	r2, [r3]
 490:	e55b300d 	ldrb	r3, [fp, #-13]
 494:	e353000a 	cmp	r3, #10
 498:	0a000007 	beq	4bc <gets+0x94>
 49c:	e55b300d 	ldrb	r3, [fp, #-13]
 4a0:	e353000d 	cmp	r3, #13
 4a4:	0a000004 	beq	4bc <gets+0x94>
 4a8:	e51b3008 	ldr	r3, [fp, #-8]
 4ac:	e2832001 	add	r2, r3, #1
 4b0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 4b4:	e1520003 	cmp	r2, r3
 4b8:	baffffe2 	blt	448 <gets+0x20>
 4bc:	e51b3008 	ldr	r3, [fp, #-8]
 4c0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
 4c4:	e0823003 	add	r3, r2, r3
 4c8:	e3a02000 	mov	r2, #0
 4cc:	e5c32000 	strb	r2, [r3]
 4d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 4d4:	e1a00003 	mov	r0, r3
 4d8:	e24bd004 	sub	sp, fp, #4
 4dc:	e8bd8800 	pop	{fp, pc}

000004e0 <stat>:
 4e0:	e92d4800 	push	{fp, lr}
 4e4:	e28db004 	add	fp, sp, #4
 4e8:	e24dd010 	sub	sp, sp, #16
 4ec:	e50b0010 	str	r0, [fp, #-16]
 4f0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 4f4:	e51b0010 	ldr	r0, [fp, #-16]
 4f8:	e3a01000 	mov	r1, #0
 4fc:	eb00009e 	bl	77c <open>
 500:	e50b0008 	str	r0, [fp, #-8]
 504:	e51b3008 	ldr	r3, [fp, #-8]
 508:	e3530000 	cmp	r3, #0
 50c:	aa000001 	bge	518 <stat+0x38>
 510:	e3e03000 	mvn	r3, #0
 514:	ea000006 	b	534 <stat+0x54>
 518:	e51b0008 	ldr	r0, [fp, #-8]
 51c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
 520:	eb0000b0 	bl	7e8 <fstat>
 524:	e50b000c 	str	r0, [fp, #-12]
 528:	e51b0008 	ldr	r0, [fp, #-8]
 52c:	eb000077 	bl	710 <close>
 530:	e51b300c 	ldr	r3, [fp, #-12]
 534:	e1a00003 	mov	r0, r3
 538:	e24bd004 	sub	sp, fp, #4
 53c:	e8bd8800 	pop	{fp, pc}

00000540 <atoi>:
 540:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 544:	e28db000 	add	fp, sp, #0
 548:	e24dd014 	sub	sp, sp, #20
 54c:	e50b0010 	str	r0, [fp, #-16]
 550:	e3a03000 	mov	r3, #0
 554:	e50b3008 	str	r3, [fp, #-8]
 558:	ea00000c 	b	590 <atoi+0x50>
 55c:	e51b2008 	ldr	r2, [fp, #-8]
 560:	e1a03002 	mov	r3, r2
 564:	e1a03103 	lsl	r3, r3, #2
 568:	e0833002 	add	r3, r3, r2
 56c:	e1a03083 	lsl	r3, r3, #1
 570:	e1a01003 	mov	r1, r3
 574:	e51b3010 	ldr	r3, [fp, #-16]
 578:	e2832001 	add	r2, r3, #1
 57c:	e50b2010 	str	r2, [fp, #-16]
 580:	e5d33000 	ldrb	r3, [r3]
 584:	e0813003 	add	r3, r1, r3
 588:	e2433030 	sub	r3, r3, #48	; 0x30
 58c:	e50b3008 	str	r3, [fp, #-8]
 590:	e51b3010 	ldr	r3, [fp, #-16]
 594:	e5d33000 	ldrb	r3, [r3]
 598:	e353002f 	cmp	r3, #47	; 0x2f
 59c:	9a000003 	bls	5b0 <atoi+0x70>
 5a0:	e51b3010 	ldr	r3, [fp, #-16]
 5a4:	e5d33000 	ldrb	r3, [r3]
 5a8:	e3530039 	cmp	r3, #57	; 0x39
 5ac:	9affffea 	bls	55c <atoi+0x1c>
 5b0:	e51b3008 	ldr	r3, [fp, #-8]
 5b4:	e1a00003 	mov	r0, r3
 5b8:	e24bd000 	sub	sp, fp, #0
 5bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 5c0:	e12fff1e 	bx	lr

000005c4 <memmove>:
 5c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 5c8:	e28db000 	add	fp, sp, #0
 5cc:	e24dd01c 	sub	sp, sp, #28
 5d0:	e50b0010 	str	r0, [fp, #-16]
 5d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 5d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
 5dc:	e51b3010 	ldr	r3, [fp, #-16]
 5e0:	e50b3008 	str	r3, [fp, #-8]
 5e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 5e8:	e50b300c 	str	r3, [fp, #-12]
 5ec:	ea000007 	b	610 <memmove+0x4c>
 5f0:	e51b3008 	ldr	r3, [fp, #-8]
 5f4:	e2832001 	add	r2, r3, #1
 5f8:	e50b2008 	str	r2, [fp, #-8]
 5fc:	e51b200c 	ldr	r2, [fp, #-12]
 600:	e2821001 	add	r1, r2, #1
 604:	e50b100c 	str	r1, [fp, #-12]
 608:	e5d22000 	ldrb	r2, [r2]
 60c:	e5c32000 	strb	r2, [r3]
 610:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 614:	e2432001 	sub	r2, r3, #1
 618:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
 61c:	e3530000 	cmp	r3, #0
 620:	cafffff2 	bgt	5f0 <memmove+0x2c>
 624:	e51b3010 	ldr	r3, [fp, #-16]
 628:	e1a00003 	mov	r0, r3
 62c:	e24bd000 	sub	sp, fp, #0
 630:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 634:	e12fff1e 	bx	lr

00000638 <fork>:
 638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 63c:	e1a04003 	mov	r4, r3
 640:	e1a03002 	mov	r3, r2
 644:	e1a02001 	mov	r2, r1
 648:	e1a01000 	mov	r1, r0
 64c:	e3a00001 	mov	r0, #1
 650:	ef000000 	svc	0x00000000
 654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 658:	e12fff1e 	bx	lr

0000065c <exit>:
 65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 660:	e1a04003 	mov	r4, r3
 664:	e1a03002 	mov	r3, r2
 668:	e1a02001 	mov	r2, r1
 66c:	e1a01000 	mov	r1, r0
 670:	e3a00002 	mov	r0, #2
 674:	ef000000 	svc	0x00000000
 678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 67c:	e12fff1e 	bx	lr

00000680 <wait>:
 680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 684:	e1a04003 	mov	r4, r3
 688:	e1a03002 	mov	r3, r2
 68c:	e1a02001 	mov	r2, r1
 690:	e1a01000 	mov	r1, r0
 694:	e3a00003 	mov	r0, #3
 698:	ef000000 	svc	0x00000000
 69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6a0:	e12fff1e 	bx	lr

000006a4 <pipe>:
 6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6a8:	e1a04003 	mov	r4, r3
 6ac:	e1a03002 	mov	r3, r2
 6b0:	e1a02001 	mov	r2, r1
 6b4:	e1a01000 	mov	r1, r0
 6b8:	e3a00004 	mov	r0, #4
 6bc:	ef000000 	svc	0x00000000
 6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6c4:	e12fff1e 	bx	lr

000006c8 <read>:
 6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6cc:	e1a04003 	mov	r4, r3
 6d0:	e1a03002 	mov	r3, r2
 6d4:	e1a02001 	mov	r2, r1
 6d8:	e1a01000 	mov	r1, r0
 6dc:	e3a00005 	mov	r0, #5
 6e0:	ef000000 	svc	0x00000000
 6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6e8:	e12fff1e 	bx	lr

000006ec <write>:
 6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6f0:	e1a04003 	mov	r4, r3
 6f4:	e1a03002 	mov	r3, r2
 6f8:	e1a02001 	mov	r2, r1
 6fc:	e1a01000 	mov	r1, r0
 700:	e3a00010 	mov	r0, #16
 704:	ef000000 	svc	0x00000000
 708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 70c:	e12fff1e 	bx	lr

00000710 <close>:
 710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 714:	e1a04003 	mov	r4, r3
 718:	e1a03002 	mov	r3, r2
 71c:	e1a02001 	mov	r2, r1
 720:	e1a01000 	mov	r1, r0
 724:	e3a00015 	mov	r0, #21
 728:	ef000000 	svc	0x00000000
 72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 730:	e12fff1e 	bx	lr

00000734 <kill>:
 734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 738:	e1a04003 	mov	r4, r3
 73c:	e1a03002 	mov	r3, r2
 740:	e1a02001 	mov	r2, r1
 744:	e1a01000 	mov	r1, r0
 748:	e3a00006 	mov	r0, #6
 74c:	ef000000 	svc	0x00000000
 750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 754:	e12fff1e 	bx	lr

00000758 <exec>:
 758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 75c:	e1a04003 	mov	r4, r3
 760:	e1a03002 	mov	r3, r2
 764:	e1a02001 	mov	r2, r1
 768:	e1a01000 	mov	r1, r0
 76c:	e3a00007 	mov	r0, #7
 770:	ef000000 	svc	0x00000000
 774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 778:	e12fff1e 	bx	lr

0000077c <open>:
 77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 780:	e1a04003 	mov	r4, r3
 784:	e1a03002 	mov	r3, r2
 788:	e1a02001 	mov	r2, r1
 78c:	e1a01000 	mov	r1, r0
 790:	e3a0000f 	mov	r0, #15
 794:	ef000000 	svc	0x00000000
 798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 79c:	e12fff1e 	bx	lr

000007a0 <mknod>:
 7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 7a4:	e1a04003 	mov	r4, r3
 7a8:	e1a03002 	mov	r3, r2
 7ac:	e1a02001 	mov	r2, r1
 7b0:	e1a01000 	mov	r1, r0
 7b4:	e3a00011 	mov	r0, #17
 7b8:	ef000000 	svc	0x00000000
 7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 7c0:	e12fff1e 	bx	lr

000007c4 <unlink>:
 7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 7c8:	e1a04003 	mov	r4, r3
 7cc:	e1a03002 	mov	r3, r2
 7d0:	e1a02001 	mov	r2, r1
 7d4:	e1a01000 	mov	r1, r0
 7d8:	e3a00012 	mov	r0, #18
 7dc:	ef000000 	svc	0x00000000
 7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 7e4:	e12fff1e 	bx	lr

000007e8 <fstat>:
 7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 7ec:	e1a04003 	mov	r4, r3
 7f0:	e1a03002 	mov	r3, r2
 7f4:	e1a02001 	mov	r2, r1
 7f8:	e1a01000 	mov	r1, r0
 7fc:	e3a00008 	mov	r0, #8
 800:	ef000000 	svc	0x00000000
 804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 808:	e12fff1e 	bx	lr

0000080c <link>:
 80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 810:	e1a04003 	mov	r4, r3
 814:	e1a03002 	mov	r3, r2
 818:	e1a02001 	mov	r2, r1
 81c:	e1a01000 	mov	r1, r0
 820:	e3a00013 	mov	r0, #19
 824:	ef000000 	svc	0x00000000
 828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 82c:	e12fff1e 	bx	lr

00000830 <mkdir>:
 830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 834:	e1a04003 	mov	r4, r3
 838:	e1a03002 	mov	r3, r2
 83c:	e1a02001 	mov	r2, r1
 840:	e1a01000 	mov	r1, r0
 844:	e3a00014 	mov	r0, #20
 848:	ef000000 	svc	0x00000000
 84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 850:	e12fff1e 	bx	lr

00000854 <chdir>:
 854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 858:	e1a04003 	mov	r4, r3
 85c:	e1a03002 	mov	r3, r2
 860:	e1a02001 	mov	r2, r1
 864:	e1a01000 	mov	r1, r0
 868:	e3a00009 	mov	r0, #9
 86c:	ef000000 	svc	0x00000000
 870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 874:	e12fff1e 	bx	lr

00000878 <dup>:
 878:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 87c:	e1a04003 	mov	r4, r3
 880:	e1a03002 	mov	r3, r2
 884:	e1a02001 	mov	r2, r1
 888:	e1a01000 	mov	r1, r0
 88c:	e3a0000a 	mov	r0, #10
 890:	ef000000 	svc	0x00000000
 894:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 898:	e12fff1e 	bx	lr

0000089c <getpid>:
 89c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 8a0:	e1a04003 	mov	r4, r3
 8a4:	e1a03002 	mov	r3, r2
 8a8:	e1a02001 	mov	r2, r1
 8ac:	e1a01000 	mov	r1, r0
 8b0:	e3a0000b 	mov	r0, #11
 8b4:	ef000000 	svc	0x00000000
 8b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 8bc:	e12fff1e 	bx	lr

000008c0 <sbrk>:
 8c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 8c4:	e1a04003 	mov	r4, r3
 8c8:	e1a03002 	mov	r3, r2
 8cc:	e1a02001 	mov	r2, r1
 8d0:	e1a01000 	mov	r1, r0
 8d4:	e3a0000c 	mov	r0, #12
 8d8:	ef000000 	svc	0x00000000
 8dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 8e0:	e12fff1e 	bx	lr

000008e4 <sleep>:
 8e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 8e8:	e1a04003 	mov	r4, r3
 8ec:	e1a03002 	mov	r3, r2
 8f0:	e1a02001 	mov	r2, r1
 8f4:	e1a01000 	mov	r1, r0
 8f8:	e3a0000d 	mov	r0, #13
 8fc:	ef000000 	svc	0x00000000
 900:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 904:	e12fff1e 	bx	lr

00000908 <uptime>:
 908:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 90c:	e1a04003 	mov	r4, r3
 910:	e1a03002 	mov	r3, r2
 914:	e1a02001 	mov	r2, r1
 918:	e1a01000 	mov	r1, r0
 91c:	e3a0000e 	mov	r0, #14
 920:	ef000000 	svc	0x00000000
 924:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 928:	e12fff1e 	bx	lr
