
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	eb000139 	bl	4f4 <fork>
   c:	e1a03000 	mov	r3, r0
  10:	e3530000 	cmp	r3, #0
  14:	da000001 	ble	20 <main+0x20>
  18:	e3a00005 	mov	r0, #5
  1c:	eb0001df 	bl	7a0 <sleep>
  20:	eb00013c 	bl	518 <exit>

00000024 <strcpy>:
  24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  28:	e28db000 	add	fp, sp, #0
  2c:	e24dd014 	sub	sp, sp, #20
  30:	e50b0010 	str	r0, [fp, #-16]
  34:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
  38:	e51b3010 	ldr	r3, [fp, #-16]
  3c:	e50b3008 	str	r3, [fp, #-8]
  40:	e1a00000 	nop			; (mov r0, r0)
  44:	e51b3010 	ldr	r3, [fp, #-16]
  48:	e2832001 	add	r2, r3, #1
  4c:	e50b2010 	str	r2, [fp, #-16]
  50:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
  54:	e2821001 	add	r1, r2, #1
  58:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
  5c:	e5d22000 	ldrb	r2, [r2]
  60:	e5c32000 	strb	r2, [r3]
  64:	e5d33000 	ldrb	r3, [r3]
  68:	e3530000 	cmp	r3, #0
  6c:	1afffff4 	bne	44 <strcpy+0x20>
  70:	e51b3008 	ldr	r3, [fp, #-8]
  74:	e1a00003 	mov	r0, r3
  78:	e24bd000 	sub	sp, fp, #0
  7c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  80:	e12fff1e 	bx	lr

00000084 <strcmp>:
  84:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  88:	e28db000 	add	fp, sp, #0
  8c:	e24dd00c 	sub	sp, sp, #12
  90:	e50b0008 	str	r0, [fp, #-8]
  94:	e50b100c 	str	r1, [fp, #-12]
  98:	ea000005 	b	b4 <strcmp+0x30>
  9c:	e51b3008 	ldr	r3, [fp, #-8]
  a0:	e2833001 	add	r3, r3, #1
  a4:	e50b3008 	str	r3, [fp, #-8]
  a8:	e51b300c 	ldr	r3, [fp, #-12]
  ac:	e2833001 	add	r3, r3, #1
  b0:	e50b300c 	str	r3, [fp, #-12]
  b4:	e51b3008 	ldr	r3, [fp, #-8]
  b8:	e5d33000 	ldrb	r3, [r3]
  bc:	e3530000 	cmp	r3, #0
  c0:	0a000005 	beq	dc <strcmp+0x58>
  c4:	e51b3008 	ldr	r3, [fp, #-8]
  c8:	e5d32000 	ldrb	r2, [r3]
  cc:	e51b300c 	ldr	r3, [fp, #-12]
  d0:	e5d33000 	ldrb	r3, [r3]
  d4:	e1520003 	cmp	r2, r3
  d8:	0affffef 	beq	9c <strcmp+0x18>
  dc:	e51b3008 	ldr	r3, [fp, #-8]
  e0:	e5d33000 	ldrb	r3, [r3]
  e4:	e1a02003 	mov	r2, r3
  e8:	e51b300c 	ldr	r3, [fp, #-12]
  ec:	e5d33000 	ldrb	r3, [r3]
  f0:	e0633002 	rsb	r3, r3, r2
  f4:	e1a00003 	mov	r0, r3
  f8:	e24bd000 	sub	sp, fp, #0
  fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 100:	e12fff1e 	bx	lr

00000104 <strlen>:
 104:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 108:	e28db000 	add	fp, sp, #0
 10c:	e24dd014 	sub	sp, sp, #20
 110:	e50b0010 	str	r0, [fp, #-16]
 114:	e3a03000 	mov	r3, #0
 118:	e50b3008 	str	r3, [fp, #-8]
 11c:	ea000002 	b	12c <strlen+0x28>
 120:	e51b3008 	ldr	r3, [fp, #-8]
 124:	e2833001 	add	r3, r3, #1
 128:	e50b3008 	str	r3, [fp, #-8]
 12c:	e51b3008 	ldr	r3, [fp, #-8]
 130:	e51b2010 	ldr	r2, [fp, #-16]
 134:	e0823003 	add	r3, r2, r3
 138:	e5d33000 	ldrb	r3, [r3]
 13c:	e3530000 	cmp	r3, #0
 140:	1afffff6 	bne	120 <strlen+0x1c>
 144:	e51b3008 	ldr	r3, [fp, #-8]
 148:	e1a00003 	mov	r0, r3
 14c:	e24bd000 	sub	sp, fp, #0
 150:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 154:	e12fff1e 	bx	lr

00000158 <memset>:
 158:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 15c:	e28db000 	add	fp, sp, #0
 160:	e24dd024 	sub	sp, sp, #36	; 0x24
 164:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 168:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
 16c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
 170:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 174:	e50b3008 	str	r3, [fp, #-8]
 178:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 17c:	e54b300d 	strb	r3, [fp, #-13]
 180:	e55b300d 	ldrb	r3, [fp, #-13]
 184:	e1a02c03 	lsl	r2, r3, #24
 188:	e55b300d 	ldrb	r3, [fp, #-13]
 18c:	e1a03803 	lsl	r3, r3, #16
 190:	e1822003 	orr	r2, r2, r3
 194:	e55b300d 	ldrb	r3, [fp, #-13]
 198:	e1a03403 	lsl	r3, r3, #8
 19c:	e1822003 	orr	r2, r2, r3
 1a0:	e55b300d 	ldrb	r3, [fp, #-13]
 1a4:	e1823003 	orr	r3, r2, r3
 1a8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 1ac:	ea000008 	b	1d4 <memset+0x7c>
 1b0:	e51b3008 	ldr	r3, [fp, #-8]
 1b4:	e55b200d 	ldrb	r2, [fp, #-13]
 1b8:	e5c32000 	strb	r2, [r3]
 1bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 1c0:	e2433001 	sub	r3, r3, #1
 1c4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 1c8:	e51b3008 	ldr	r3, [fp, #-8]
 1cc:	e2833001 	add	r3, r3, #1
 1d0:	e50b3008 	str	r3, [fp, #-8]
 1d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 1d8:	e3530000 	cmp	r3, #0
 1dc:	0a000003 	beq	1f0 <memset+0x98>
 1e0:	e51b3008 	ldr	r3, [fp, #-8]
 1e4:	e2033003 	and	r3, r3, #3
 1e8:	e3530000 	cmp	r3, #0
 1ec:	1affffef 	bne	1b0 <memset+0x58>
 1f0:	e51b3008 	ldr	r3, [fp, #-8]
 1f4:	e50b300c 	str	r3, [fp, #-12]
 1f8:	ea000008 	b	220 <memset+0xc8>
 1fc:	e51b300c 	ldr	r3, [fp, #-12]
 200:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
 204:	e5832000 	str	r2, [r3]
 208:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 20c:	e2433004 	sub	r3, r3, #4
 210:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 214:	e51b300c 	ldr	r3, [fp, #-12]
 218:	e2833004 	add	r3, r3, #4
 21c:	e50b300c 	str	r3, [fp, #-12]
 220:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 224:	e3530003 	cmp	r3, #3
 228:	8afffff3 	bhi	1fc <memset+0xa4>
 22c:	e51b300c 	ldr	r3, [fp, #-12]
 230:	e50b3008 	str	r3, [fp, #-8]
 234:	ea000008 	b	25c <memset+0x104>
 238:	e51b3008 	ldr	r3, [fp, #-8]
 23c:	e55b200d 	ldrb	r2, [fp, #-13]
 240:	e5c32000 	strb	r2, [r3]
 244:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 248:	e2433001 	sub	r3, r3, #1
 24c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
 250:	e51b3008 	ldr	r3, [fp, #-8]
 254:	e2833001 	add	r3, r3, #1
 258:	e50b3008 	str	r3, [fp, #-8]
 25c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
 260:	e3530000 	cmp	r3, #0
 264:	1afffff3 	bne	238 <memset+0xe0>
 268:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 26c:	e1a00003 	mov	r0, r3
 270:	e24bd000 	sub	sp, fp, #0
 274:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 278:	e12fff1e 	bx	lr

0000027c <strchr>:
 27c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 280:	e28db000 	add	fp, sp, #0
 284:	e24dd00c 	sub	sp, sp, #12
 288:	e50b0008 	str	r0, [fp, #-8]
 28c:	e1a03001 	mov	r3, r1
 290:	e54b3009 	strb	r3, [fp, #-9]
 294:	ea000009 	b	2c0 <strchr+0x44>
 298:	e51b3008 	ldr	r3, [fp, #-8]
 29c:	e5d33000 	ldrb	r3, [r3]
 2a0:	e55b2009 	ldrb	r2, [fp, #-9]
 2a4:	e1520003 	cmp	r2, r3
 2a8:	1a000001 	bne	2b4 <strchr+0x38>
 2ac:	e51b3008 	ldr	r3, [fp, #-8]
 2b0:	ea000007 	b	2d4 <strchr+0x58>
 2b4:	e51b3008 	ldr	r3, [fp, #-8]
 2b8:	e2833001 	add	r3, r3, #1
 2bc:	e50b3008 	str	r3, [fp, #-8]
 2c0:	e51b3008 	ldr	r3, [fp, #-8]
 2c4:	e5d33000 	ldrb	r3, [r3]
 2c8:	e3530000 	cmp	r3, #0
 2cc:	1afffff1 	bne	298 <strchr+0x1c>
 2d0:	e3a03000 	mov	r3, #0
 2d4:	e1a00003 	mov	r0, r3
 2d8:	e24bd000 	sub	sp, fp, #0
 2dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 2e0:	e12fff1e 	bx	lr

000002e4 <gets>:
 2e4:	e92d4800 	push	{fp, lr}
 2e8:	e28db004 	add	fp, sp, #4
 2ec:	e24dd018 	sub	sp, sp, #24
 2f0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 2f4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
 2f8:	e3a03000 	mov	r3, #0
 2fc:	e50b3008 	str	r3, [fp, #-8]
 300:	ea000017 	b	364 <gets+0x80>
 304:	e24b300d 	sub	r3, fp, #13
 308:	e3a00000 	mov	r0, #0
 30c:	e1a01003 	mov	r1, r3
 310:	e3a02001 	mov	r2, #1
 314:	eb00009a 	bl	584 <read>
 318:	e50b000c 	str	r0, [fp, #-12]
 31c:	e51b300c 	ldr	r3, [fp, #-12]
 320:	e3530000 	cmp	r3, #0
 324:	ca000000 	bgt	32c <gets+0x48>
 328:	ea000012 	b	378 <gets+0x94>
 32c:	e51b3008 	ldr	r3, [fp, #-8]
 330:	e2832001 	add	r2, r3, #1
 334:	e50b2008 	str	r2, [fp, #-8]
 338:	e1a02003 	mov	r2, r3
 33c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 340:	e0833002 	add	r3, r3, r2
 344:	e55b200d 	ldrb	r2, [fp, #-13]
 348:	e5c32000 	strb	r2, [r3]
 34c:	e55b300d 	ldrb	r3, [fp, #-13]
 350:	e353000a 	cmp	r3, #10
 354:	0a000007 	beq	378 <gets+0x94>
 358:	e55b300d 	ldrb	r3, [fp, #-13]
 35c:	e353000d 	cmp	r3, #13
 360:	0a000004 	beq	378 <gets+0x94>
 364:	e51b3008 	ldr	r3, [fp, #-8]
 368:	e2832001 	add	r2, r3, #1
 36c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 370:	e1520003 	cmp	r2, r3
 374:	baffffe2 	blt	304 <gets+0x20>
 378:	e51b3008 	ldr	r3, [fp, #-8]
 37c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
 380:	e0823003 	add	r3, r2, r3
 384:	e3a02000 	mov	r2, #0
 388:	e5c32000 	strb	r2, [r3]
 38c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 390:	e1a00003 	mov	r0, r3
 394:	e24bd004 	sub	sp, fp, #4
 398:	e8bd8800 	pop	{fp, pc}

0000039c <stat>:
 39c:	e92d4800 	push	{fp, lr}
 3a0:	e28db004 	add	fp, sp, #4
 3a4:	e24dd010 	sub	sp, sp, #16
 3a8:	e50b0010 	str	r0, [fp, #-16]
 3ac:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 3b0:	e51b0010 	ldr	r0, [fp, #-16]
 3b4:	e3a01000 	mov	r1, #0
 3b8:	eb00009e 	bl	638 <open>
 3bc:	e50b0008 	str	r0, [fp, #-8]
 3c0:	e51b3008 	ldr	r3, [fp, #-8]
 3c4:	e3530000 	cmp	r3, #0
 3c8:	aa000001 	bge	3d4 <stat+0x38>
 3cc:	e3e03000 	mvn	r3, #0
 3d0:	ea000006 	b	3f0 <stat+0x54>
 3d4:	e51b0008 	ldr	r0, [fp, #-8]
 3d8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
 3dc:	eb0000b0 	bl	6a4 <fstat>
 3e0:	e50b000c 	str	r0, [fp, #-12]
 3e4:	e51b0008 	ldr	r0, [fp, #-8]
 3e8:	eb000077 	bl	5cc <close>
 3ec:	e51b300c 	ldr	r3, [fp, #-12]
 3f0:	e1a00003 	mov	r0, r3
 3f4:	e24bd004 	sub	sp, fp, #4
 3f8:	e8bd8800 	pop	{fp, pc}

000003fc <atoi>:
 3fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 400:	e28db000 	add	fp, sp, #0
 404:	e24dd014 	sub	sp, sp, #20
 408:	e50b0010 	str	r0, [fp, #-16]
 40c:	e3a03000 	mov	r3, #0
 410:	e50b3008 	str	r3, [fp, #-8]
 414:	ea00000c 	b	44c <atoi+0x50>
 418:	e51b2008 	ldr	r2, [fp, #-8]
 41c:	e1a03002 	mov	r3, r2
 420:	e1a03103 	lsl	r3, r3, #2
 424:	e0833002 	add	r3, r3, r2
 428:	e1a03083 	lsl	r3, r3, #1
 42c:	e1a01003 	mov	r1, r3
 430:	e51b3010 	ldr	r3, [fp, #-16]
 434:	e2832001 	add	r2, r3, #1
 438:	e50b2010 	str	r2, [fp, #-16]
 43c:	e5d33000 	ldrb	r3, [r3]
 440:	e0813003 	add	r3, r1, r3
 444:	e2433030 	sub	r3, r3, #48	; 0x30
 448:	e50b3008 	str	r3, [fp, #-8]
 44c:	e51b3010 	ldr	r3, [fp, #-16]
 450:	e5d33000 	ldrb	r3, [r3]
 454:	e353002f 	cmp	r3, #47	; 0x2f
 458:	9a000003 	bls	46c <atoi+0x70>
 45c:	e51b3010 	ldr	r3, [fp, #-16]
 460:	e5d33000 	ldrb	r3, [r3]
 464:	e3530039 	cmp	r3, #57	; 0x39
 468:	9affffea 	bls	418 <atoi+0x1c>
 46c:	e51b3008 	ldr	r3, [fp, #-8]
 470:	e1a00003 	mov	r0, r3
 474:	e24bd000 	sub	sp, fp, #0
 478:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 47c:	e12fff1e 	bx	lr

00000480 <memmove>:
 480:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 484:	e28db000 	add	fp, sp, #0
 488:	e24dd01c 	sub	sp, sp, #28
 48c:	e50b0010 	str	r0, [fp, #-16]
 490:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
 494:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
 498:	e51b3010 	ldr	r3, [fp, #-16]
 49c:	e50b3008 	str	r3, [fp, #-8]
 4a0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 4a4:	e50b300c 	str	r3, [fp, #-12]
 4a8:	ea000007 	b	4cc <memmove+0x4c>
 4ac:	e51b3008 	ldr	r3, [fp, #-8]
 4b0:	e2832001 	add	r2, r3, #1
 4b4:	e50b2008 	str	r2, [fp, #-8]
 4b8:	e51b200c 	ldr	r2, [fp, #-12]
 4bc:	e2821001 	add	r1, r2, #1
 4c0:	e50b100c 	str	r1, [fp, #-12]
 4c4:	e5d22000 	ldrb	r2, [r2]
 4c8:	e5c32000 	strb	r2, [r3]
 4cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 4d0:	e2432001 	sub	r2, r3, #1
 4d4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
 4d8:	e3530000 	cmp	r3, #0
 4dc:	cafffff2 	bgt	4ac <memmove+0x2c>
 4e0:	e51b3010 	ldr	r3, [fp, #-16]
 4e4:	e1a00003 	mov	r0, r3
 4e8:	e24bd000 	sub	sp, fp, #0
 4ec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 4f0:	e12fff1e 	bx	lr

000004f4 <fork>:
 4f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 4f8:	e1a04003 	mov	r4, r3
 4fc:	e1a03002 	mov	r3, r2
 500:	e1a02001 	mov	r2, r1
 504:	e1a01000 	mov	r1, r0
 508:	e3a00001 	mov	r0, #1
 50c:	ef000000 	svc	0x00000000
 510:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 514:	e12fff1e 	bx	lr

00000518 <exit>:
 518:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 51c:	e1a04003 	mov	r4, r3
 520:	e1a03002 	mov	r3, r2
 524:	e1a02001 	mov	r2, r1
 528:	e1a01000 	mov	r1, r0
 52c:	e3a00002 	mov	r0, #2
 530:	ef000000 	svc	0x00000000
 534:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 538:	e12fff1e 	bx	lr

0000053c <wait>:
 53c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 540:	e1a04003 	mov	r4, r3
 544:	e1a03002 	mov	r3, r2
 548:	e1a02001 	mov	r2, r1
 54c:	e1a01000 	mov	r1, r0
 550:	e3a00003 	mov	r0, #3
 554:	ef000000 	svc	0x00000000
 558:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 55c:	e12fff1e 	bx	lr

00000560 <pipe>:
 560:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 564:	e1a04003 	mov	r4, r3
 568:	e1a03002 	mov	r3, r2
 56c:	e1a02001 	mov	r2, r1
 570:	e1a01000 	mov	r1, r0
 574:	e3a00004 	mov	r0, #4
 578:	ef000000 	svc	0x00000000
 57c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 580:	e12fff1e 	bx	lr

00000584 <read>:
 584:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 588:	e1a04003 	mov	r4, r3
 58c:	e1a03002 	mov	r3, r2
 590:	e1a02001 	mov	r2, r1
 594:	e1a01000 	mov	r1, r0
 598:	e3a00005 	mov	r0, #5
 59c:	ef000000 	svc	0x00000000
 5a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 5a4:	e12fff1e 	bx	lr

000005a8 <write>:
 5a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 5ac:	e1a04003 	mov	r4, r3
 5b0:	e1a03002 	mov	r3, r2
 5b4:	e1a02001 	mov	r2, r1
 5b8:	e1a01000 	mov	r1, r0
 5bc:	e3a00010 	mov	r0, #16
 5c0:	ef000000 	svc	0x00000000
 5c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 5c8:	e12fff1e 	bx	lr

000005cc <close>:
 5cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 5d0:	e1a04003 	mov	r4, r3
 5d4:	e1a03002 	mov	r3, r2
 5d8:	e1a02001 	mov	r2, r1
 5dc:	e1a01000 	mov	r1, r0
 5e0:	e3a00015 	mov	r0, #21
 5e4:	ef000000 	svc	0x00000000
 5e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 5ec:	e12fff1e 	bx	lr

000005f0 <kill>:
 5f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 5f4:	e1a04003 	mov	r4, r3
 5f8:	e1a03002 	mov	r3, r2
 5fc:	e1a02001 	mov	r2, r1
 600:	e1a01000 	mov	r1, r0
 604:	e3a00006 	mov	r0, #6
 608:	ef000000 	svc	0x00000000
 60c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 610:	e12fff1e 	bx	lr

00000614 <exec>:
 614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 618:	e1a04003 	mov	r4, r3
 61c:	e1a03002 	mov	r3, r2
 620:	e1a02001 	mov	r2, r1
 624:	e1a01000 	mov	r1, r0
 628:	e3a00007 	mov	r0, #7
 62c:	ef000000 	svc	0x00000000
 630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 634:	e12fff1e 	bx	lr

00000638 <open>:
 638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 63c:	e1a04003 	mov	r4, r3
 640:	e1a03002 	mov	r3, r2
 644:	e1a02001 	mov	r2, r1
 648:	e1a01000 	mov	r1, r0
 64c:	e3a0000f 	mov	r0, #15
 650:	ef000000 	svc	0x00000000
 654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 658:	e12fff1e 	bx	lr

0000065c <mknod>:
 65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 660:	e1a04003 	mov	r4, r3
 664:	e1a03002 	mov	r3, r2
 668:	e1a02001 	mov	r2, r1
 66c:	e1a01000 	mov	r1, r0
 670:	e3a00011 	mov	r0, #17
 674:	ef000000 	svc	0x00000000
 678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 67c:	e12fff1e 	bx	lr

00000680 <unlink>:
 680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 684:	e1a04003 	mov	r4, r3
 688:	e1a03002 	mov	r3, r2
 68c:	e1a02001 	mov	r2, r1
 690:	e1a01000 	mov	r1, r0
 694:	e3a00012 	mov	r0, #18
 698:	ef000000 	svc	0x00000000
 69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6a0:	e12fff1e 	bx	lr

000006a4 <fstat>:
 6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6a8:	e1a04003 	mov	r4, r3
 6ac:	e1a03002 	mov	r3, r2
 6b0:	e1a02001 	mov	r2, r1
 6b4:	e1a01000 	mov	r1, r0
 6b8:	e3a00008 	mov	r0, #8
 6bc:	ef000000 	svc	0x00000000
 6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6c4:	e12fff1e 	bx	lr

000006c8 <link>:
 6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6cc:	e1a04003 	mov	r4, r3
 6d0:	e1a03002 	mov	r3, r2
 6d4:	e1a02001 	mov	r2, r1
 6d8:	e1a01000 	mov	r1, r0
 6dc:	e3a00013 	mov	r0, #19
 6e0:	ef000000 	svc	0x00000000
 6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 6e8:	e12fff1e 	bx	lr

000006ec <mkdir>:
 6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 6f0:	e1a04003 	mov	r4, r3
 6f4:	e1a03002 	mov	r3, r2
 6f8:	e1a02001 	mov	r2, r1
 6fc:	e1a01000 	mov	r1, r0
 700:	e3a00014 	mov	r0, #20
 704:	ef000000 	svc	0x00000000
 708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 70c:	e12fff1e 	bx	lr

00000710 <chdir>:
 710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 714:	e1a04003 	mov	r4, r3
 718:	e1a03002 	mov	r3, r2
 71c:	e1a02001 	mov	r2, r1
 720:	e1a01000 	mov	r1, r0
 724:	e3a00009 	mov	r0, #9
 728:	ef000000 	svc	0x00000000
 72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 730:	e12fff1e 	bx	lr

00000734 <dup>:
 734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 738:	e1a04003 	mov	r4, r3
 73c:	e1a03002 	mov	r3, r2
 740:	e1a02001 	mov	r2, r1
 744:	e1a01000 	mov	r1, r0
 748:	e3a0000a 	mov	r0, #10
 74c:	ef000000 	svc	0x00000000
 750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 754:	e12fff1e 	bx	lr

00000758 <getpid>:
 758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 75c:	e1a04003 	mov	r4, r3
 760:	e1a03002 	mov	r3, r2
 764:	e1a02001 	mov	r2, r1
 768:	e1a01000 	mov	r1, r0
 76c:	e3a0000b 	mov	r0, #11
 770:	ef000000 	svc	0x00000000
 774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 778:	e12fff1e 	bx	lr

0000077c <sbrk>:
 77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 780:	e1a04003 	mov	r4, r3
 784:	e1a03002 	mov	r3, r2
 788:	e1a02001 	mov	r2, r1
 78c:	e1a01000 	mov	r1, r0
 790:	e3a0000c 	mov	r0, #12
 794:	ef000000 	svc	0x00000000
 798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 79c:	e12fff1e 	bx	lr

000007a0 <sleep>:
 7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 7a4:	e1a04003 	mov	r4, r3
 7a8:	e1a03002 	mov	r3, r2
 7ac:	e1a02001 	mov	r2, r1
 7b0:	e1a01000 	mov	r1, r0
 7b4:	e3a0000d 	mov	r0, #13
 7b8:	ef000000 	svc	0x00000000
 7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 7c0:	e12fff1e 	bx	lr

000007c4 <uptime>:
 7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 7c8:	e1a04003 	mov	r4, r3
 7cc:	e1a03002 	mov	r3, r2
 7d0:	e1a02001 	mov	r2, r1
 7d4:	e1a01000 	mov	r1, r0
 7d8:	e3a0000e 	mov	r0, #14
 7dc:	ef000000 	svc	0x00000000
 7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 7e4:	e12fff1e 	bx	lr

000007e8 <putc>:
 7e8:	e92d4800 	push	{fp, lr}
 7ec:	e28db004 	add	fp, sp, #4
 7f0:	e24dd008 	sub	sp, sp, #8
 7f4:	e50b0008 	str	r0, [fp, #-8]
 7f8:	e1a03001 	mov	r3, r1
 7fc:	e54b3009 	strb	r3, [fp, #-9]
 800:	e24b3009 	sub	r3, fp, #9
 804:	e51b0008 	ldr	r0, [fp, #-8]
 808:	e1a01003 	mov	r1, r3
 80c:	e3a02001 	mov	r2, #1
 810:	ebffff64 	bl	5a8 <write>
 814:	e24bd004 	sub	sp, fp, #4
 818:	e8bd8800 	pop	{fp, pc}

0000081c <printint>:
 81c:	e92d4810 	push	{r4, fp, lr}
 820:	e28db008 	add	fp, sp, #8
 824:	e24dd034 	sub	sp, sp, #52	; 0x34
 828:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
 82c:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
 830:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
 834:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
 838:	e3a03000 	mov	r3, #0
 83c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 840:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
 844:	e3530000 	cmp	r3, #0
 848:	0a000008 	beq	870 <printint+0x54>
 84c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
 850:	e3530000 	cmp	r3, #0
 854:	aa000005 	bge	870 <printint+0x54>
 858:	e3a03001 	mov	r3, #1
 85c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 860:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
 864:	e2633000 	rsb	r3, r3, #0
 868:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 86c:	ea000001 	b	878 <printint+0x5c>
 870:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
 874:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 878:	e3a03000 	mov	r3, #0
 87c:	e50b3010 	str	r3, [fp, #-16]
 880:	e51b4010 	ldr	r4, [fp, #-16]
 884:	e2843001 	add	r3, r4, #1
 888:	e50b3010 	str	r3, [fp, #-16]
 88c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
 890:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
 894:	e1a00002 	mov	r0, r2
 898:	e1a01003 	mov	r1, r3
 89c:	eb0001cd 	bl	fd8 <__aeabi_uidivmod>
 8a0:	e1a03001 	mov	r3, r1
 8a4:	e1a02003 	mov	r2, r3
 8a8:	e59f3098 	ldr	r3, [pc, #152]	; 948 <printint+0x12c>
 8ac:	e7d32002 	ldrb	r2, [r3, r2]
 8b0:	e24b300c 	sub	r3, fp, #12
 8b4:	e0833004 	add	r3, r3, r4
 8b8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
 8bc:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
 8c0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
 8c4:	e1a01003 	mov	r1, r3
 8c8:	eb000185 	bl	ee4 <__aeabi_uidiv>
 8cc:	e1a03000 	mov	r3, r0
 8d0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 8d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 8d8:	e3530000 	cmp	r3, #0
 8dc:	1affffe7 	bne	880 <printint+0x64>
 8e0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 8e4:	e3530000 	cmp	r3, #0
 8e8:	0a000006 	beq	908 <printint+0xec>
 8ec:	e51b3010 	ldr	r3, [fp, #-16]
 8f0:	e2832001 	add	r2, r3, #1
 8f4:	e50b2010 	str	r2, [fp, #-16]
 8f8:	e24b200c 	sub	r2, fp, #12
 8fc:	e0823003 	add	r3, r2, r3
 900:	e3a0202d 	mov	r2, #45	; 0x2d
 904:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
 908:	ea000006 	b	928 <printint+0x10c>
 90c:	e24b2028 	sub	r2, fp, #40	; 0x28
 910:	e51b3010 	ldr	r3, [fp, #-16]
 914:	e0823003 	add	r3, r2, r3
 918:	e5d33000 	ldrb	r3, [r3]
 91c:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
 920:	e1a01003 	mov	r1, r3
 924:	ebffffaf 	bl	7e8 <putc>
 928:	e51b3010 	ldr	r3, [fp, #-16]
 92c:	e2433001 	sub	r3, r3, #1
 930:	e50b3010 	str	r3, [fp, #-16]
 934:	e51b3010 	ldr	r3, [fp, #-16]
 938:	e3530000 	cmp	r3, #0
 93c:	aafffff2 	bge	90c <printint+0xf0>
 940:	e24bd008 	sub	sp, fp, #8
 944:	e8bd8810 	pop	{r4, fp, pc}
 948:	00001004 	.word	0x00001004

0000094c <printf>:
 94c:	e92d000e 	push	{r1, r2, r3}
 950:	e92d4800 	push	{fp, lr}
 954:	e28db004 	add	fp, sp, #4
 958:	e24dd024 	sub	sp, sp, #36	; 0x24
 95c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
 960:	e3a03000 	mov	r3, #0
 964:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 968:	e28b3008 	add	r3, fp, #8
 96c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 970:	e3a03000 	mov	r3, #0
 974:	e50b3010 	str	r3, [fp, #-16]
 978:	ea000074 	b	b50 <printf+0x204>
 97c:	e59b2004 	ldr	r2, [fp, #4]
 980:	e51b3010 	ldr	r3, [fp, #-16]
 984:	e0823003 	add	r3, r2, r3
 988:	e5d33000 	ldrb	r3, [r3]
 98c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
 990:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 994:	e3530000 	cmp	r3, #0
 998:	1a00000b 	bne	9cc <printf+0x80>
 99c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 9a0:	e3530025 	cmp	r3, #37	; 0x25
 9a4:	1a000002 	bne	9b4 <printf+0x68>
 9a8:	e3a03025 	mov	r3, #37	; 0x25
 9ac:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 9b0:	ea000063 	b	b44 <printf+0x1f8>
 9b4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 9b8:	e6ef3073 	uxtb	r3, r3
 9bc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 9c0:	e1a01003 	mov	r1, r3
 9c4:	ebffff87 	bl	7e8 <putc>
 9c8:	ea00005d 	b	b44 <printf+0x1f8>
 9cc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 9d0:	e3530025 	cmp	r3, #37	; 0x25
 9d4:	1a00005a 	bne	b44 <printf+0x1f8>
 9d8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 9dc:	e3530064 	cmp	r3, #100	; 0x64
 9e0:	1a00000a 	bne	a10 <printf+0xc4>
 9e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 9e8:	e5933000 	ldr	r3, [r3]
 9ec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 9f0:	e1a01003 	mov	r1, r3
 9f4:	e3a0200a 	mov	r2, #10
 9f8:	e3a03001 	mov	r3, #1
 9fc:	ebffff86 	bl	81c <printint>
 a00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 a04:	e2833004 	add	r3, r3, #4
 a08:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 a0c:	ea00004a 	b	b3c <printf+0x1f0>
 a10:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 a14:	e3530078 	cmp	r3, #120	; 0x78
 a18:	0a000002 	beq	a28 <printf+0xdc>
 a1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 a20:	e3530070 	cmp	r3, #112	; 0x70
 a24:	1a00000a 	bne	a54 <printf+0x108>
 a28:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 a2c:	e5933000 	ldr	r3, [r3]
 a30:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 a34:	e1a01003 	mov	r1, r3
 a38:	e3a02010 	mov	r2, #16
 a3c:	e3a03000 	mov	r3, #0
 a40:	ebffff75 	bl	81c <printint>
 a44:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 a48:	e2833004 	add	r3, r3, #4
 a4c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 a50:	ea000039 	b	b3c <printf+0x1f0>
 a54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 a58:	e3530073 	cmp	r3, #115	; 0x73
 a5c:	1a000018 	bne	ac4 <printf+0x178>
 a60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 a64:	e5933000 	ldr	r3, [r3]
 a68:	e50b300c 	str	r3, [fp, #-12]
 a6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 a70:	e2833004 	add	r3, r3, #4
 a74:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 a78:	e51b300c 	ldr	r3, [fp, #-12]
 a7c:	e3530000 	cmp	r3, #0
 a80:	1a000001 	bne	a8c <printf+0x140>
 a84:	e59f30ec 	ldr	r3, [pc, #236]	; b78 <printf+0x22c>
 a88:	e50b300c 	str	r3, [fp, #-12]
 a8c:	ea000007 	b	ab0 <printf+0x164>
 a90:	e51b300c 	ldr	r3, [fp, #-12]
 a94:	e5d33000 	ldrb	r3, [r3]
 a98:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 a9c:	e1a01003 	mov	r1, r3
 aa0:	ebffff50 	bl	7e8 <putc>
 aa4:	e51b300c 	ldr	r3, [fp, #-12]
 aa8:	e2833001 	add	r3, r3, #1
 aac:	e50b300c 	str	r3, [fp, #-12]
 ab0:	e51b300c 	ldr	r3, [fp, #-12]
 ab4:	e5d33000 	ldrb	r3, [r3]
 ab8:	e3530000 	cmp	r3, #0
 abc:	1afffff3 	bne	a90 <printf+0x144>
 ac0:	ea00001d 	b	b3c <printf+0x1f0>
 ac4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 ac8:	e3530063 	cmp	r3, #99	; 0x63
 acc:	1a000009 	bne	af8 <printf+0x1ac>
 ad0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 ad4:	e5933000 	ldr	r3, [r3]
 ad8:	e6ef3073 	uxtb	r3, r3
 adc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 ae0:	e1a01003 	mov	r1, r3
 ae4:	ebffff3f 	bl	7e8 <putc>
 ae8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 aec:	e2833004 	add	r3, r3, #4
 af0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 af4:	ea000010 	b	b3c <printf+0x1f0>
 af8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 afc:	e3530025 	cmp	r3, #37	; 0x25
 b00:	1a000005 	bne	b1c <printf+0x1d0>
 b04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 b08:	e6ef3073 	uxtb	r3, r3
 b0c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 b10:	e1a01003 	mov	r1, r3
 b14:	ebffff33 	bl	7e8 <putc>
 b18:	ea000007 	b	b3c <printf+0x1f0>
 b1c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 b20:	e3a01025 	mov	r1, #37	; 0x25
 b24:	ebffff2f 	bl	7e8 <putc>
 b28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
 b2c:	e6ef3073 	uxtb	r3, r3
 b30:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
 b34:	e1a01003 	mov	r1, r3
 b38:	ebffff2a 	bl	7e8 <putc>
 b3c:	e3a03000 	mov	r3, #0
 b40:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 b44:	e51b3010 	ldr	r3, [fp, #-16]
 b48:	e2833001 	add	r3, r3, #1
 b4c:	e50b3010 	str	r3, [fp, #-16]
 b50:	e59b2004 	ldr	r2, [fp, #4]
 b54:	e51b3010 	ldr	r3, [fp, #-16]
 b58:	e0823003 	add	r3, r2, r3
 b5c:	e5d33000 	ldrb	r3, [r3]
 b60:	e3530000 	cmp	r3, #0
 b64:	1affff84 	bne	97c <printf+0x30>
 b68:	e24bd004 	sub	sp, fp, #4
 b6c:	e8bd4800 	pop	{fp, lr}
 b70:	e28dd00c 	add	sp, sp, #12
 b74:	e12fff1e 	bx	lr
 b78:	00000ffc 	.word	0x00000ffc

00000b7c <free>:
 b7c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 b80:	e28db000 	add	fp, sp, #0
 b84:	e24dd014 	sub	sp, sp, #20
 b88:	e50b0010 	str	r0, [fp, #-16]
 b8c:	e51b3010 	ldr	r3, [fp, #-16]
 b90:	e2433008 	sub	r3, r3, #8
 b94:	e50b300c 	str	r3, [fp, #-12]
 b98:	e59f3150 	ldr	r3, [pc, #336]	; cf0 <free+0x174>
 b9c:	e5933000 	ldr	r3, [r3]
 ba0:	e50b3008 	str	r3, [fp, #-8]
 ba4:	ea000010 	b	bec <free+0x70>
 ba8:	e51b3008 	ldr	r3, [fp, #-8]
 bac:	e5932000 	ldr	r2, [r3]
 bb0:	e51b3008 	ldr	r3, [fp, #-8]
 bb4:	e1520003 	cmp	r2, r3
 bb8:	8a000008 	bhi	be0 <free+0x64>
 bbc:	e51b200c 	ldr	r2, [fp, #-12]
 bc0:	e51b3008 	ldr	r3, [fp, #-8]
 bc4:	e1520003 	cmp	r2, r3
 bc8:	8a000010 	bhi	c10 <free+0x94>
 bcc:	e51b3008 	ldr	r3, [fp, #-8]
 bd0:	e5932000 	ldr	r2, [r3]
 bd4:	e51b300c 	ldr	r3, [fp, #-12]
 bd8:	e1520003 	cmp	r2, r3
 bdc:	8a00000b 	bhi	c10 <free+0x94>
 be0:	e51b3008 	ldr	r3, [fp, #-8]
 be4:	e5933000 	ldr	r3, [r3]
 be8:	e50b3008 	str	r3, [fp, #-8]
 bec:	e51b200c 	ldr	r2, [fp, #-12]
 bf0:	e51b3008 	ldr	r3, [fp, #-8]
 bf4:	e1520003 	cmp	r2, r3
 bf8:	9affffea 	bls	ba8 <free+0x2c>
 bfc:	e51b3008 	ldr	r3, [fp, #-8]
 c00:	e5932000 	ldr	r2, [r3]
 c04:	e51b300c 	ldr	r3, [fp, #-12]
 c08:	e1520003 	cmp	r2, r3
 c0c:	9affffe5 	bls	ba8 <free+0x2c>
 c10:	e51b300c 	ldr	r3, [fp, #-12]
 c14:	e5933004 	ldr	r3, [r3, #4]
 c18:	e1a03183 	lsl	r3, r3, #3
 c1c:	e51b200c 	ldr	r2, [fp, #-12]
 c20:	e0822003 	add	r2, r2, r3
 c24:	e51b3008 	ldr	r3, [fp, #-8]
 c28:	e5933000 	ldr	r3, [r3]
 c2c:	e1520003 	cmp	r2, r3
 c30:	1a00000d 	bne	c6c <free+0xf0>
 c34:	e51b300c 	ldr	r3, [fp, #-12]
 c38:	e5932004 	ldr	r2, [r3, #4]
 c3c:	e51b3008 	ldr	r3, [fp, #-8]
 c40:	e5933000 	ldr	r3, [r3]
 c44:	e5933004 	ldr	r3, [r3, #4]
 c48:	e0822003 	add	r2, r2, r3
 c4c:	e51b300c 	ldr	r3, [fp, #-12]
 c50:	e5832004 	str	r2, [r3, #4]
 c54:	e51b3008 	ldr	r3, [fp, #-8]
 c58:	e5933000 	ldr	r3, [r3]
 c5c:	e5932000 	ldr	r2, [r3]
 c60:	e51b300c 	ldr	r3, [fp, #-12]
 c64:	e5832000 	str	r2, [r3]
 c68:	ea000003 	b	c7c <free+0x100>
 c6c:	e51b3008 	ldr	r3, [fp, #-8]
 c70:	e5932000 	ldr	r2, [r3]
 c74:	e51b300c 	ldr	r3, [fp, #-12]
 c78:	e5832000 	str	r2, [r3]
 c7c:	e51b3008 	ldr	r3, [fp, #-8]
 c80:	e5933004 	ldr	r3, [r3, #4]
 c84:	e1a03183 	lsl	r3, r3, #3
 c88:	e51b2008 	ldr	r2, [fp, #-8]
 c8c:	e0822003 	add	r2, r2, r3
 c90:	e51b300c 	ldr	r3, [fp, #-12]
 c94:	e1520003 	cmp	r2, r3
 c98:	1a00000b 	bne	ccc <free+0x150>
 c9c:	e51b3008 	ldr	r3, [fp, #-8]
 ca0:	e5932004 	ldr	r2, [r3, #4]
 ca4:	e51b300c 	ldr	r3, [fp, #-12]
 ca8:	e5933004 	ldr	r3, [r3, #4]
 cac:	e0822003 	add	r2, r2, r3
 cb0:	e51b3008 	ldr	r3, [fp, #-8]
 cb4:	e5832004 	str	r2, [r3, #4]
 cb8:	e51b300c 	ldr	r3, [fp, #-12]
 cbc:	e5932000 	ldr	r2, [r3]
 cc0:	e51b3008 	ldr	r3, [fp, #-8]
 cc4:	e5832000 	str	r2, [r3]
 cc8:	ea000002 	b	cd8 <free+0x15c>
 ccc:	e51b3008 	ldr	r3, [fp, #-8]
 cd0:	e51b200c 	ldr	r2, [fp, #-12]
 cd4:	e5832000 	str	r2, [r3]
 cd8:	e59f2010 	ldr	r2, [pc, #16]	; cf0 <free+0x174>
 cdc:	e51b3008 	ldr	r3, [fp, #-8]
 ce0:	e5823000 	str	r3, [r2]
 ce4:	e24bd000 	sub	sp, fp, #0
 ce8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 cec:	e12fff1e 	bx	lr
 cf0:	00001020 	.word	0x00001020

00000cf4 <morecore>:
 cf4:	e92d4800 	push	{fp, lr}
 cf8:	e28db004 	add	fp, sp, #4
 cfc:	e24dd010 	sub	sp, sp, #16
 d00:	e50b0010 	str	r0, [fp, #-16]
 d04:	e51b3010 	ldr	r3, [fp, #-16]
 d08:	e3530a01 	cmp	r3, #4096	; 0x1000
 d0c:	2a000001 	bcs	d18 <morecore+0x24>
 d10:	e3a03a01 	mov	r3, #4096	; 0x1000
 d14:	e50b3010 	str	r3, [fp, #-16]
 d18:	e51b3010 	ldr	r3, [fp, #-16]
 d1c:	e1a03183 	lsl	r3, r3, #3
 d20:	e1a00003 	mov	r0, r3
 d24:	ebfffe94 	bl	77c <sbrk>
 d28:	e50b0008 	str	r0, [fp, #-8]
 d2c:	e51b3008 	ldr	r3, [fp, #-8]
 d30:	e3730001 	cmn	r3, #1
 d34:	1a000001 	bne	d40 <morecore+0x4c>
 d38:	e3a03000 	mov	r3, #0
 d3c:	ea00000a 	b	d6c <morecore+0x78>
 d40:	e51b3008 	ldr	r3, [fp, #-8]
 d44:	e50b300c 	str	r3, [fp, #-12]
 d48:	e51b300c 	ldr	r3, [fp, #-12]
 d4c:	e51b2010 	ldr	r2, [fp, #-16]
 d50:	e5832004 	str	r2, [r3, #4]
 d54:	e51b300c 	ldr	r3, [fp, #-12]
 d58:	e2833008 	add	r3, r3, #8
 d5c:	e1a00003 	mov	r0, r3
 d60:	ebffff85 	bl	b7c <free>
 d64:	e59f300c 	ldr	r3, [pc, #12]	; d78 <morecore+0x84>
 d68:	e5933000 	ldr	r3, [r3]
 d6c:	e1a00003 	mov	r0, r3
 d70:	e24bd004 	sub	sp, fp, #4
 d74:	e8bd8800 	pop	{fp, pc}
 d78:	00001020 	.word	0x00001020

00000d7c <malloc>:
 d7c:	e92d4800 	push	{fp, lr}
 d80:	e28db004 	add	fp, sp, #4
 d84:	e24dd018 	sub	sp, sp, #24
 d88:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 d8c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 d90:	e2833007 	add	r3, r3, #7
 d94:	e1a031a3 	lsr	r3, r3, #3
 d98:	e2833001 	add	r3, r3, #1
 d9c:	e50b3010 	str	r3, [fp, #-16]
 da0:	e59f3134 	ldr	r3, [pc, #308]	; edc <malloc+0x160>
 da4:	e5933000 	ldr	r3, [r3]
 da8:	e50b300c 	str	r3, [fp, #-12]
 dac:	e51b300c 	ldr	r3, [fp, #-12]
 db0:	e3530000 	cmp	r3, #0
 db4:	1a00000b 	bne	de8 <malloc+0x6c>
 db8:	e59f3120 	ldr	r3, [pc, #288]	; ee0 <malloc+0x164>
 dbc:	e50b300c 	str	r3, [fp, #-12]
 dc0:	e59f2114 	ldr	r2, [pc, #276]	; edc <malloc+0x160>
 dc4:	e51b300c 	ldr	r3, [fp, #-12]
 dc8:	e5823000 	str	r3, [r2]
 dcc:	e59f3108 	ldr	r3, [pc, #264]	; edc <malloc+0x160>
 dd0:	e5933000 	ldr	r3, [r3]
 dd4:	e59f2104 	ldr	r2, [pc, #260]	; ee0 <malloc+0x164>
 dd8:	e5823000 	str	r3, [r2]
 ddc:	e59f30fc 	ldr	r3, [pc, #252]	; ee0 <malloc+0x164>
 de0:	e3a02000 	mov	r2, #0
 de4:	e5832004 	str	r2, [r3, #4]
 de8:	e51b300c 	ldr	r3, [fp, #-12]
 dec:	e5933000 	ldr	r3, [r3]
 df0:	e50b3008 	str	r3, [fp, #-8]
 df4:	e51b3008 	ldr	r3, [fp, #-8]
 df8:	e5932004 	ldr	r2, [r3, #4]
 dfc:	e51b3010 	ldr	r3, [fp, #-16]
 e00:	e1520003 	cmp	r2, r3
 e04:	3a00001e 	bcc	e84 <malloc+0x108>
 e08:	e51b3008 	ldr	r3, [fp, #-8]
 e0c:	e5932004 	ldr	r2, [r3, #4]
 e10:	e51b3010 	ldr	r3, [fp, #-16]
 e14:	e1520003 	cmp	r2, r3
 e18:	1a000004 	bne	e30 <malloc+0xb4>
 e1c:	e51b3008 	ldr	r3, [fp, #-8]
 e20:	e5932000 	ldr	r2, [r3]
 e24:	e51b300c 	ldr	r3, [fp, #-12]
 e28:	e5832000 	str	r2, [r3]
 e2c:	ea00000e 	b	e6c <malloc+0xf0>
 e30:	e51b3008 	ldr	r3, [fp, #-8]
 e34:	e5932004 	ldr	r2, [r3, #4]
 e38:	e51b3010 	ldr	r3, [fp, #-16]
 e3c:	e0632002 	rsb	r2, r3, r2
 e40:	e51b3008 	ldr	r3, [fp, #-8]
 e44:	e5832004 	str	r2, [r3, #4]
 e48:	e51b3008 	ldr	r3, [fp, #-8]
 e4c:	e5933004 	ldr	r3, [r3, #4]
 e50:	e1a03183 	lsl	r3, r3, #3
 e54:	e51b2008 	ldr	r2, [fp, #-8]
 e58:	e0823003 	add	r3, r2, r3
 e5c:	e50b3008 	str	r3, [fp, #-8]
 e60:	e51b3008 	ldr	r3, [fp, #-8]
 e64:	e51b2010 	ldr	r2, [fp, #-16]
 e68:	e5832004 	str	r2, [r3, #4]
 e6c:	e59f2068 	ldr	r2, [pc, #104]	; edc <malloc+0x160>
 e70:	e51b300c 	ldr	r3, [fp, #-12]
 e74:	e5823000 	str	r3, [r2]
 e78:	e51b3008 	ldr	r3, [fp, #-8]
 e7c:	e2833008 	add	r3, r3, #8
 e80:	ea000012 	b	ed0 <malloc+0x154>
 e84:	e59f3050 	ldr	r3, [pc, #80]	; edc <malloc+0x160>
 e88:	e5933000 	ldr	r3, [r3]
 e8c:	e51b2008 	ldr	r2, [fp, #-8]
 e90:	e1520003 	cmp	r2, r3
 e94:	1a000007 	bne	eb8 <malloc+0x13c>
 e98:	e51b0010 	ldr	r0, [fp, #-16]
 e9c:	ebffff94 	bl	cf4 <morecore>
 ea0:	e50b0008 	str	r0, [fp, #-8]
 ea4:	e51b3008 	ldr	r3, [fp, #-8]
 ea8:	e3530000 	cmp	r3, #0
 eac:	1a000001 	bne	eb8 <malloc+0x13c>
 eb0:	e3a03000 	mov	r3, #0
 eb4:	ea000005 	b	ed0 <malloc+0x154>
 eb8:	e51b3008 	ldr	r3, [fp, #-8]
 ebc:	e50b300c 	str	r3, [fp, #-12]
 ec0:	e51b3008 	ldr	r3, [fp, #-8]
 ec4:	e5933000 	ldr	r3, [r3]
 ec8:	e50b3008 	str	r3, [fp, #-8]
 ecc:	eaffffc8 	b	df4 <malloc+0x78>
 ed0:	e1a00003 	mov	r0, r3
 ed4:	e24bd004 	sub	sp, fp, #4
 ed8:	e8bd8800 	pop	{fp, pc}
 edc:	00001020 	.word	0x00001020
 ee0:	00001018 	.word	0x00001018

00000ee4 <__aeabi_uidiv>:
 ee4:	e2512001 	subs	r2, r1, #1
 ee8:	012fff1e 	bxeq	lr
 eec:	3a000036 	bcc	fcc <__aeabi_uidiv+0xe8>
 ef0:	e1500001 	cmp	r0, r1
 ef4:	9a000022 	bls	f84 <__aeabi_uidiv+0xa0>
 ef8:	e1110002 	tst	r1, r2
 efc:	0a000023 	beq	f90 <__aeabi_uidiv+0xac>
 f00:	e311020e 	tst	r1, #-536870912	; 0xe0000000
 f04:	01a01181 	lsleq	r1, r1, #3
 f08:	03a03008 	moveq	r3, #8
 f0c:	13a03001 	movne	r3, #1
 f10:	e3510201 	cmp	r1, #268435456	; 0x10000000
 f14:	31510000 	cmpcc	r1, r0
 f18:	31a01201 	lslcc	r1, r1, #4
 f1c:	31a03203 	lslcc	r3, r3, #4
 f20:	3afffffa 	bcc	f10 <__aeabi_uidiv+0x2c>
 f24:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
 f28:	31510000 	cmpcc	r1, r0
 f2c:	31a01081 	lslcc	r1, r1, #1
 f30:	31a03083 	lslcc	r3, r3, #1
 f34:	3afffffa 	bcc	f24 <__aeabi_uidiv+0x40>
 f38:	e3a02000 	mov	r2, #0
 f3c:	e1500001 	cmp	r0, r1
 f40:	20400001 	subcs	r0, r0, r1
 f44:	21822003 	orrcs	r2, r2, r3
 f48:	e15000a1 	cmp	r0, r1, lsr #1
 f4c:	204000a1 	subcs	r0, r0, r1, lsr #1
 f50:	218220a3 	orrcs	r2, r2, r3, lsr #1
 f54:	e1500121 	cmp	r0, r1, lsr #2
 f58:	20400121 	subcs	r0, r0, r1, lsr #2
 f5c:	21822123 	orrcs	r2, r2, r3, lsr #2
 f60:	e15001a1 	cmp	r0, r1, lsr #3
 f64:	204001a1 	subcs	r0, r0, r1, lsr #3
 f68:	218221a3 	orrcs	r2, r2, r3, lsr #3
 f6c:	e3500000 	cmp	r0, #0
 f70:	11b03223 	lsrsne	r3, r3, #4
 f74:	11a01221 	lsrne	r1, r1, #4
 f78:	1affffef 	bne	f3c <__aeabi_uidiv+0x58>
 f7c:	e1a00002 	mov	r0, r2
 f80:	e12fff1e 	bx	lr
 f84:	03a00001 	moveq	r0, #1
 f88:	13a00000 	movne	r0, #0
 f8c:	e12fff1e 	bx	lr
 f90:	e3510801 	cmp	r1, #65536	; 0x10000
 f94:	21a01821 	lsrcs	r1, r1, #16
 f98:	23a02010 	movcs	r2, #16
 f9c:	33a02000 	movcc	r2, #0
 fa0:	e3510c01 	cmp	r1, #256	; 0x100
 fa4:	21a01421 	lsrcs	r1, r1, #8
 fa8:	22822008 	addcs	r2, r2, #8
 fac:	e3510010 	cmp	r1, #16
 fb0:	21a01221 	lsrcs	r1, r1, #4
 fb4:	22822004 	addcs	r2, r2, #4
 fb8:	e3510004 	cmp	r1, #4
 fbc:	82822003 	addhi	r2, r2, #3
 fc0:	908220a1 	addls	r2, r2, r1, lsr #1
 fc4:	e1a00230 	lsr	r0, r0, r2
 fc8:	e12fff1e 	bx	lr
 fcc:	e3500000 	cmp	r0, #0
 fd0:	13e00000 	mvnne	r0, #0
 fd4:	ea000007 	b	ff8 <__aeabi_idiv0>

00000fd8 <__aeabi_uidivmod>:
 fd8:	e3510000 	cmp	r1, #0
 fdc:	0afffffa 	beq	fcc <__aeabi_uidiv+0xe8>
 fe0:	e92d4003 	push	{r0, r1, lr}
 fe4:	ebffffbe 	bl	ee4 <__aeabi_uidiv>
 fe8:	e8bd4006 	pop	{r1, r2, lr}
 fec:	e0030092 	mul	r3, r2, r0
 ff0:	e0411003 	sub	r1, r1, r3
 ff4:	e12fff1e 	bx	lr

00000ff8 <__aeabi_idiv0>:
 ff8:	e12fff1e 	bx	lr
