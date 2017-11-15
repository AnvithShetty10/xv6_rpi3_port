
_rm:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e3a00002 	mov	r0, #2
      24:	e59f1080 	ldr	r1, [pc, #128]	; ac <main+0xac>
      28:	eb00026b 	bl	9dc <printf>
      2c:	eb00015d 	bl	5a8 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001ad 	bl	710 <unlink>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e3a00002 	mov	r0, #2
      7c:	e59f102c 	ldr	r1, [pc, #44]	; b0 <main+0xb0>
      80:	e1a02003 	mov	r2, r3
      84:	eb000254 	bl	9dc <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb00013e 	bl	5a8 <exit>
      ac:	0000108c 	.word	0x0000108c
      b0:	000010a0 	.word	0x000010a0

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			; (mov r0, r0)
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e2832001 	add	r2, r3, #1
      dc:	e50b2010 	str	r2, [fp, #-16]
      e0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      e4:	e2821001 	add	r1, r2, #1
      e8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e24bd000 	sub	sp, fp, #0
     10c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0633002 	rsb	r3, r3, r2
     184:	e1a00003 	mov	r0, r3
     188:	e24bd000 	sub	sp, fp, #0
     18c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e24bd000 	sub	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	; 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1a02c03 	lsl	r2, r3, #24
     218:	e55b300d 	ldrb	r3, [fp, #-13]
     21c:	e1a03803 	lsl	r3, r3, #16
     220:	e1822003 	orr	r2, r2, r3
     224:	e55b300d 	ldrb	r3, [fp, #-13]
     228:	e1a03403 	lsl	r3, r3, #8
     22c:	e1822003 	orr	r2, r2, r3
     230:	e55b300d 	ldrb	r3, [fp, #-13]
     234:	e1823003 	orr	r3, r2, r3
     238:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     23c:	ea000008 	b	264 <memset+0x7c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e55b200d 	ldrb	r2, [fp, #-13]
     248:	e5c32000 	strb	r2, [r3]
     24c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     250:	e2433001 	sub	r3, r3, #1
     254:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e2833001 	add	r3, r3, #1
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     268:	e3530000 	cmp	r3, #0
     26c:	0a000003 	beq	280 <memset+0x98>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2033003 	and	r3, r3, #3
     278:	e3530000 	cmp	r3, #0
     27c:	1affffef 	bne	240 <memset+0x58>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	ea000008 	b	2b0 <memset+0xc8>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     294:	e5832000 	str	r2, [r3]
     298:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     29c:	e2433004 	sub	r3, r3, #4
     2a0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e2833004 	add	r3, r3, #4
     2ac:	e50b300c 	str	r3, [fp, #-12]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e3530003 	cmp	r3, #3
     2b8:	8afffff3 	bhi	28c <memset+0xa4>
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	ea000008 	b	2ec <memset+0x104>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	1afffff3 	bne	2c8 <memset+0xe0>
     2f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2fc:	e1a00003 	mov	r0, r3
     300:	e24bd000 	sub	sp, fp, #0
     304:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     308:	e12fff1e 	bx	lr

0000030c <strchr>:
     30c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     310:	e28db000 	add	fp, sp, #0
     314:	e24dd00c 	sub	sp, sp, #12
     318:	e50b0008 	str	r0, [fp, #-8]
     31c:	e1a03001 	mov	r3, r1
     320:	e54b3009 	strb	r3, [fp, #-9]
     324:	ea000009 	b	350 <strchr+0x44>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e55b2009 	ldrb	r2, [fp, #-9]
     334:	e1520003 	cmp	r2, r3
     338:	1a000001 	bne	344 <strchr+0x38>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	ea000007 	b	364 <strchr+0x58>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2833001 	add	r3, r3, #1
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	1afffff1 	bne	328 <strchr+0x1c>
     360:	e3a03000 	mov	r3, #0
     364:	e1a00003 	mov	r0, r3
     368:	e24bd000 	sub	sp, fp, #0
     36c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     370:	e12fff1e 	bx	lr

00000374 <gets>:
     374:	e92d4800 	push	{fp, lr}
     378:	e28db004 	add	fp, sp, #4
     37c:	e24dd018 	sub	sp, sp, #24
     380:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     384:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     388:	e3a03000 	mov	r3, #0
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000017 	b	3f4 <gets+0x80>
     394:	e24b300d 	sub	r3, fp, #13
     398:	e3a00000 	mov	r0, #0
     39c:	e1a01003 	mov	r1, r3
     3a0:	e3a02001 	mov	r2, #1
     3a4:	eb00009a 	bl	614 <read>
     3a8:	e50b000c 	str	r0, [fp, #-12]
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e3530000 	cmp	r3, #0
     3b4:	ca000000 	bgt	3bc <gets+0x48>
     3b8:	ea000012 	b	408 <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000007 	beq	408 <gets+0x94>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000004 	beq	408 <gets+0x94>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2832001 	add	r2, r3, #1
     3fc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	baffffe2 	blt	394 <gets+0x20>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     410:	e0823003 	add	r3, r2, r3
     414:	e3a02000 	mov	r2, #0
     418:	e5c32000 	strb	r2, [r3]
     41c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     420:	e1a00003 	mov	r0, r3
     424:	e24bd004 	sub	sp, fp, #4
     428:	e8bd8800 	pop	{fp, pc}

0000042c <stat>:
     42c:	e92d4800 	push	{fp, lr}
     430:	e28db004 	add	fp, sp, #4
     434:	e24dd010 	sub	sp, sp, #16
     438:	e50b0010 	str	r0, [fp, #-16]
     43c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     440:	e51b0010 	ldr	r0, [fp, #-16]
     444:	e3a01000 	mov	r1, #0
     448:	eb00009e 	bl	6c8 <open>
     44c:	e50b0008 	str	r0, [fp, #-8]
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e3530000 	cmp	r3, #0
     458:	aa000001 	bge	464 <stat+0x38>
     45c:	e3e03000 	mvn	r3, #0
     460:	ea000006 	b	480 <stat+0x54>
     464:	e51b0008 	ldr	r0, [fp, #-8]
     468:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     46c:	eb0000b0 	bl	734 <fstat>
     470:	e50b000c 	str	r0, [fp, #-12]
     474:	e51b0008 	ldr	r0, [fp, #-8]
     478:	eb000077 	bl	65c <close>
     47c:	e51b300c 	ldr	r3, [fp, #-12]
     480:	e1a00003 	mov	r0, r3
     484:	e24bd004 	sub	sp, fp, #4
     488:	e8bd8800 	pop	{fp, pc}

0000048c <atoi>:
     48c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     490:	e28db000 	add	fp, sp, #0
     494:	e24dd014 	sub	sp, sp, #20
     498:	e50b0010 	str	r0, [fp, #-16]
     49c:	e3a03000 	mov	r3, #0
     4a0:	e50b3008 	str	r3, [fp, #-8]
     4a4:	ea00000c 	b	4dc <atoi+0x50>
     4a8:	e51b2008 	ldr	r2, [fp, #-8]
     4ac:	e1a03002 	mov	r3, r2
     4b0:	e1a03103 	lsl	r3, r3, #2
     4b4:	e0833002 	add	r3, r3, r2
     4b8:	e1a03083 	lsl	r3, r3, #1
     4bc:	e1a01003 	mov	r1, r3
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e2832001 	add	r2, r3, #1
     4c8:	e50b2010 	str	r2, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e0813003 	add	r3, r1, r3
     4d4:	e2433030 	sub	r3, r3, #48	; 0x30
     4d8:	e50b3008 	str	r3, [fp, #-8]
     4dc:	e51b3010 	ldr	r3, [fp, #-16]
     4e0:	e5d33000 	ldrb	r3, [r3]
     4e4:	e353002f 	cmp	r3, #47	; 0x2f
     4e8:	9a000003 	bls	4fc <atoi+0x70>
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e3530039 	cmp	r3, #57	; 0x39
     4f8:	9affffea 	bls	4a8 <atoi+0x1c>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e1a00003 	mov	r0, r3
     504:	e24bd000 	sub	sp, fp, #0
     508:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     50c:	e12fff1e 	bx	lr

00000510 <memmove>:
     510:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     514:	e28db000 	add	fp, sp, #0
     518:	e24dd01c 	sub	sp, sp, #28
     51c:	e50b0010 	str	r0, [fp, #-16]
     520:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     524:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     534:	e50b300c 	str	r3, [fp, #-12]
     538:	ea000007 	b	55c <memmove+0x4c>
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e2832001 	add	r2, r3, #1
     544:	e50b2008 	str	r2, [fp, #-8]
     548:	e51b200c 	ldr	r2, [fp, #-12]
     54c:	e2821001 	add	r1, r2, #1
     550:	e50b100c 	str	r1, [fp, #-12]
     554:	e5d22000 	ldrb	r2, [r2]
     558:	e5c32000 	strb	r2, [r3]
     55c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     560:	e2432001 	sub	r2, r3, #1
     564:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     568:	e3530000 	cmp	r3, #0
     56c:	cafffff2 	bgt	53c <memmove+0x2c>
     570:	e51b3010 	ldr	r3, [fp, #-16]
     574:	e1a00003 	mov	r0, r3
     578:	e24bd000 	sub	sp, fp, #0
     57c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <fork>:
     584:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00001 	mov	r0, #1
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <exit>:
     5a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00002 	mov	r0, #2
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <wait>:
     5cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00003 	mov	r0, #3
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <pipe>:
     5f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00004 	mov	r0, #4
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <read>:
     614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00005 	mov	r0, #5
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <write>:
     638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00010 	mov	r0, #16
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <close>:
     65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00015 	mov	r0, #21
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <kill>:
     680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00006 	mov	r0, #6
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <exec>:
     6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00007 	mov	r0, #7
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <open>:
     6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a0000f 	mov	r0, #15
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <mknod>:
     6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00011 	mov	r0, #17
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <unlink>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00012 	mov	r0, #18
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <fstat>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00008 	mov	r0, #8
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <link>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00013 	mov	r0, #19
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <mkdir>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00014 	mov	r0, #20
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <chdir>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00009 	mov	r0, #9
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <dup>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000a 	mov	r0, #10
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <getpid>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000b 	mov	r0, #11
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sbrk>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000c 	mov	r0, #12
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <sleep>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000d 	mov	r0, #13
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <uptime>:
     854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000e 	mov	r0, #14
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <putc>:
     878:	e92d4800 	push	{fp, lr}
     87c:	e28db004 	add	fp, sp, #4
     880:	e24dd008 	sub	sp, sp, #8
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e1a03001 	mov	r3, r1
     88c:	e54b3009 	strb	r3, [fp, #-9]
     890:	e24b3009 	sub	r3, fp, #9
     894:	e51b0008 	ldr	r0, [fp, #-8]
     898:	e1a01003 	mov	r1, r3
     89c:	e3a02001 	mov	r2, #1
     8a0:	ebffff64 	bl	638 <write>
     8a4:	e24bd004 	sub	sp, fp, #4
     8a8:	e8bd8800 	pop	{fp, pc}

000008ac <printint>:
     8ac:	e92d4810 	push	{r4, fp, lr}
     8b0:	e28db008 	add	fp, sp, #8
     8b4:	e24dd034 	sub	sp, sp, #52	; 0x34
     8b8:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     8bc:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     8c0:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     8c4:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     8c8:	e3a03000 	mov	r3, #0
     8cc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8d0:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     8d4:	e3530000 	cmp	r3, #0
     8d8:	0a000008 	beq	900 <printint+0x54>
     8dc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8e0:	e3530000 	cmp	r3, #0
     8e4:	aa000005 	bge	900 <printint+0x54>
     8e8:	e3a03001 	mov	r3, #1
     8ec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8f0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8f4:	e2633000 	rsb	r3, r3, #0
     8f8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     8fc:	ea000001 	b	908 <printint+0x5c>
     900:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     904:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     908:	e3a03000 	mov	r3, #0
     90c:	e50b3010 	str	r3, [fp, #-16]
     910:	e51b4010 	ldr	r4, [fp, #-16]
     914:	e2843001 	add	r3, r4, #1
     918:	e50b3010 	str	r3, [fp, #-16]
     91c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     920:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     924:	e1a00002 	mov	r0, r2
     928:	e1a01003 	mov	r1, r3
     92c:	eb0001cd 	bl	1068 <__aeabi_uidivmod>
     930:	e1a03001 	mov	r3, r1
     934:	e1a02003 	mov	r2, r3
     938:	e59f3098 	ldr	r3, [pc, #152]	; 9d8 <printint+0x12c>
     93c:	e7d32002 	ldrb	r2, [r3, r2]
     940:	e24b300c 	sub	r3, fp, #12
     944:	e0833004 	add	r3, r3, r4
     948:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     94c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     950:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     954:	e1a01003 	mov	r1, r3
     958:	eb000185 	bl	f74 <__aeabi_uidiv>
     95c:	e1a03000 	mov	r3, r0
     960:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     964:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     968:	e3530000 	cmp	r3, #0
     96c:	1affffe7 	bne	910 <printint+0x64>
     970:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     974:	e3530000 	cmp	r3, #0
     978:	0a000006 	beq	998 <printint+0xec>
     97c:	e51b3010 	ldr	r3, [fp, #-16]
     980:	e2832001 	add	r2, r3, #1
     984:	e50b2010 	str	r2, [fp, #-16]
     988:	e24b200c 	sub	r2, fp, #12
     98c:	e0823003 	add	r3, r2, r3
     990:	e3a0202d 	mov	r2, #45	; 0x2d
     994:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     998:	ea000006 	b	9b8 <printint+0x10c>
     99c:	e24b2028 	sub	r2, fp, #40	; 0x28
     9a0:	e51b3010 	ldr	r3, [fp, #-16]
     9a4:	e0823003 	add	r3, r2, r3
     9a8:	e5d33000 	ldrb	r3, [r3]
     9ac:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     9b0:	e1a01003 	mov	r1, r3
     9b4:	ebffffaf 	bl	878 <putc>
     9b8:	e51b3010 	ldr	r3, [fp, #-16]
     9bc:	e2433001 	sub	r3, r3, #1
     9c0:	e50b3010 	str	r3, [fp, #-16]
     9c4:	e51b3010 	ldr	r3, [fp, #-16]
     9c8:	e3530000 	cmp	r3, #0
     9cc:	aafffff2 	bge	99c <printint+0xf0>
     9d0:	e24bd008 	sub	sp, fp, #8
     9d4:	e8bd8810 	pop	{r4, fp, pc}
     9d8:	000010c4 	.word	0x000010c4

000009dc <printf>:
     9dc:	e92d000e 	push	{r1, r2, r3}
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd024 	sub	sp, sp, #36	; 0x24
     9ec:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     9f0:	e3a03000 	mov	r3, #0
     9f4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     9f8:	e28b3008 	add	r3, fp, #8
     9fc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b3010 	str	r3, [fp, #-16]
     a08:	ea000074 	b	be0 <printf+0x204>
     a0c:	e59b2004 	ldr	r2, [fp, #4]
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e0823003 	add	r3, r2, r3
     a18:	e5d33000 	ldrb	r3, [r3]
     a1c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a20:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a24:	e3530000 	cmp	r3, #0
     a28:	1a00000b 	bne	a5c <printf+0x80>
     a2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a30:	e3530025 	cmp	r3, #37	; 0x25
     a34:	1a000002 	bne	a44 <printf+0x68>
     a38:	e3a03025 	mov	r3, #37	; 0x25
     a3c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a40:	ea000063 	b	bd4 <printf+0x1f8>
     a44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a48:	e6ef3073 	uxtb	r3, r3
     a4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a50:	e1a01003 	mov	r1, r3
     a54:	ebffff87 	bl	878 <putc>
     a58:	ea00005d 	b	bd4 <printf+0x1f8>
     a5c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a60:	e3530025 	cmp	r3, #37	; 0x25
     a64:	1a00005a 	bne	bd4 <printf+0x1f8>
     a68:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a6c:	e3530064 	cmp	r3, #100	; 0x64
     a70:	1a00000a 	bne	aa0 <printf+0xc4>
     a74:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a78:	e5933000 	ldr	r3, [r3]
     a7c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a80:	e1a01003 	mov	r1, r3
     a84:	e3a0200a 	mov	r2, #10
     a88:	e3a03001 	mov	r3, #1
     a8c:	ebffff86 	bl	8ac <printint>
     a90:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a94:	e2833004 	add	r3, r3, #4
     a98:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a9c:	ea00004a 	b	bcc <printf+0x1f0>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aa4:	e3530078 	cmp	r3, #120	; 0x78
     aa8:	0a000002 	beq	ab8 <printf+0xdc>
     aac:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ab0:	e3530070 	cmp	r3, #112	; 0x70
     ab4:	1a00000a 	bne	ae4 <printf+0x108>
     ab8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     abc:	e5933000 	ldr	r3, [r3]
     ac0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ac4:	e1a01003 	mov	r1, r3
     ac8:	e3a02010 	mov	r2, #16
     acc:	e3a03000 	mov	r3, #0
     ad0:	ebffff75 	bl	8ac <printint>
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ad8:	e2833004 	add	r3, r3, #4
     adc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ae0:	ea000039 	b	bcc <printf+0x1f0>
     ae4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ae8:	e3530073 	cmp	r3, #115	; 0x73
     aec:	1a000018 	bne	b54 <printf+0x178>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     af4:	e5933000 	ldr	r3, [r3]
     af8:	e50b300c 	str	r3, [fp, #-12]
     afc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b00:	e2833004 	add	r3, r3, #4
     b04:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b08:	e51b300c 	ldr	r3, [fp, #-12]
     b0c:	e3530000 	cmp	r3, #0
     b10:	1a000001 	bne	b1c <printf+0x140>
     b14:	e59f30ec 	ldr	r3, [pc, #236]	; c08 <printf+0x22c>
     b18:	e50b300c 	str	r3, [fp, #-12]
     b1c:	ea000007 	b	b40 <printf+0x164>
     b20:	e51b300c 	ldr	r3, [fp, #-12]
     b24:	e5d33000 	ldrb	r3, [r3]
     b28:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b2c:	e1a01003 	mov	r1, r3
     b30:	ebffff50 	bl	878 <putc>
     b34:	e51b300c 	ldr	r3, [fp, #-12]
     b38:	e2833001 	add	r3, r3, #1
     b3c:	e50b300c 	str	r3, [fp, #-12]
     b40:	e51b300c 	ldr	r3, [fp, #-12]
     b44:	e5d33000 	ldrb	r3, [r3]
     b48:	e3530000 	cmp	r3, #0
     b4c:	1afffff3 	bne	b20 <printf+0x144>
     b50:	ea00001d 	b	bcc <printf+0x1f0>
     b54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b58:	e3530063 	cmp	r3, #99	; 0x63
     b5c:	1a000009 	bne	b88 <printf+0x1ac>
     b60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b64:	e5933000 	ldr	r3, [r3]
     b68:	e6ef3073 	uxtb	r3, r3
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b70:	e1a01003 	mov	r1, r3
     b74:	ebffff3f 	bl	878 <putc>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b7c:	e2833004 	add	r3, r3, #4
     b80:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b84:	ea000010 	b	bcc <printf+0x1f0>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b8c:	e3530025 	cmp	r3, #37	; 0x25
     b90:	1a000005 	bne	bac <printf+0x1d0>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b98:	e6ef3073 	uxtb	r3, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba0:	e1a01003 	mov	r1, r3
     ba4:	ebffff33 	bl	878 <putc>
     ba8:	ea000007 	b	bcc <printf+0x1f0>
     bac:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bb0:	e3a01025 	mov	r1, #37	; 0x25
     bb4:	ebffff2f 	bl	878 <putc>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bbc:	e6ef3073 	uxtb	r3, r3
     bc0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bc4:	e1a01003 	mov	r1, r3
     bc8:	ebffff2a 	bl	878 <putc>
     bcc:	e3a03000 	mov	r3, #0
     bd0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bd4:	e51b3010 	ldr	r3, [fp, #-16]
     bd8:	e2833001 	add	r3, r3, #1
     bdc:	e50b3010 	str	r3, [fp, #-16]
     be0:	e59b2004 	ldr	r2, [fp, #4]
     be4:	e51b3010 	ldr	r3, [fp, #-16]
     be8:	e0823003 	add	r3, r2, r3
     bec:	e5d33000 	ldrb	r3, [r3]
     bf0:	e3530000 	cmp	r3, #0
     bf4:	1affff84 	bne	a0c <printf+0x30>
     bf8:	e24bd004 	sub	sp, fp, #4
     bfc:	e8bd4800 	pop	{fp, lr}
     c00:	e28dd00c 	add	sp, sp, #12
     c04:	e12fff1e 	bx	lr
     c08:	000010bc 	.word	0x000010bc

00000c0c <free>:
     c0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c10:	e28db000 	add	fp, sp, #0
     c14:	e24dd014 	sub	sp, sp, #20
     c18:	e50b0010 	str	r0, [fp, #-16]
     c1c:	e51b3010 	ldr	r3, [fp, #-16]
     c20:	e2433008 	sub	r3, r3, #8
     c24:	e50b300c 	str	r3, [fp, #-12]
     c28:	e59f3150 	ldr	r3, [pc, #336]	; d80 <free+0x174>
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e50b3008 	str	r3, [fp, #-8]
     c34:	ea000010 	b	c7c <free+0x70>
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e5932000 	ldr	r2, [r3]
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e1520003 	cmp	r2, r3
     c48:	8a000008 	bhi	c70 <free+0x64>
     c4c:	e51b200c 	ldr	r2, [fp, #-12]
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e1520003 	cmp	r2, r3
     c58:	8a000010 	bhi	ca0 <free+0x94>
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e5932000 	ldr	r2, [r3]
     c64:	e51b300c 	ldr	r3, [fp, #-12]
     c68:	e1520003 	cmp	r2, r3
     c6c:	8a00000b 	bhi	ca0 <free+0x94>
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e50b3008 	str	r3, [fp, #-8]
     c7c:	e51b200c 	ldr	r2, [fp, #-12]
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e1520003 	cmp	r2, r3
     c88:	9affffea 	bls	c38 <free+0x2c>
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5932000 	ldr	r2, [r3]
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e1520003 	cmp	r2, r3
     c9c:	9affffe5 	bls	c38 <free+0x2c>
     ca0:	e51b300c 	ldr	r3, [fp, #-12]
     ca4:	e5933004 	ldr	r3, [r3, #4]
     ca8:	e1a03183 	lsl	r3, r3, #3
     cac:	e51b200c 	ldr	r2, [fp, #-12]
     cb0:	e0822003 	add	r2, r2, r3
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e5933000 	ldr	r3, [r3]
     cbc:	e1520003 	cmp	r2, r3
     cc0:	1a00000d 	bne	cfc <free+0xf0>
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5932004 	ldr	r2, [r3, #4]
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e5933004 	ldr	r3, [r3, #4]
     cd8:	e0822003 	add	r2, r2, r3
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5832004 	str	r2, [r3, #4]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e5932000 	ldr	r2, [r3]
     cf0:	e51b300c 	ldr	r3, [fp, #-12]
     cf4:	e5832000 	str	r2, [r3]
     cf8:	ea000003 	b	d0c <free+0x100>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5932000 	ldr	r2, [r3]
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e5832000 	str	r2, [r3]
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e5933004 	ldr	r3, [r3, #4]
     d14:	e1a03183 	lsl	r3, r3, #3
     d18:	e51b2008 	ldr	r2, [fp, #-8]
     d1c:	e0822003 	add	r2, r2, r3
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e1520003 	cmp	r2, r3
     d28:	1a00000b 	bne	d5c <free+0x150>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5932004 	ldr	r2, [r3, #4]
     d34:	e51b300c 	ldr	r3, [fp, #-12]
     d38:	e5933004 	ldr	r3, [r3, #4]
     d3c:	e0822003 	add	r2, r2, r3
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5832004 	str	r2, [r3, #4]
     d48:	e51b300c 	ldr	r3, [fp, #-12]
     d4c:	e5932000 	ldr	r2, [r3]
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5832000 	str	r2, [r3]
     d58:	ea000002 	b	d68 <free+0x15c>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e5832000 	str	r2, [r3]
     d68:	e59f2010 	ldr	r2, [pc, #16]	; d80 <free+0x174>
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5823000 	str	r3, [r2]
     d74:	e24bd000 	sub	sp, fp, #0
     d78:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     d7c:	e12fff1e 	bx	lr
     d80:	000010e0 	.word	0x000010e0

00000d84 <morecore>:
     d84:	e92d4800 	push	{fp, lr}
     d88:	e28db004 	add	fp, sp, #4
     d8c:	e24dd010 	sub	sp, sp, #16
     d90:	e50b0010 	str	r0, [fp, #-16]
     d94:	e51b3010 	ldr	r3, [fp, #-16]
     d98:	e3530a01 	cmp	r3, #4096	; 0x1000
     d9c:	2a000001 	bcs	da8 <morecore+0x24>
     da0:	e3a03a01 	mov	r3, #4096	; 0x1000
     da4:	e50b3010 	str	r3, [fp, #-16]
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e1a03183 	lsl	r3, r3, #3
     db0:	e1a00003 	mov	r0, r3
     db4:	ebfffe94 	bl	80c <sbrk>
     db8:	e50b0008 	str	r0, [fp, #-8]
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e3730001 	cmn	r3, #1
     dc4:	1a000001 	bne	dd0 <morecore+0x4c>
     dc8:	e3a03000 	mov	r3, #0
     dcc:	ea00000a 	b	dfc <morecore+0x78>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e51b2010 	ldr	r2, [fp, #-16]
     de0:	e5832004 	str	r2, [r3, #4]
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e2833008 	add	r3, r3, #8
     dec:	e1a00003 	mov	r0, r3
     df0:	ebffff85 	bl	c0c <free>
     df4:	e59f300c 	ldr	r3, [pc, #12]	; e08 <morecore+0x84>
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e1a00003 	mov	r0, r3
     e00:	e24bd004 	sub	sp, fp, #4
     e04:	e8bd8800 	pop	{fp, pc}
     e08:	000010e0 	.word	0x000010e0

00000e0c <malloc>:
     e0c:	e92d4800 	push	{fp, lr}
     e10:	e28db004 	add	fp, sp, #4
     e14:	e24dd018 	sub	sp, sp, #24
     e18:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e20:	e2833007 	add	r3, r3, #7
     e24:	e1a031a3 	lsr	r3, r3, #3
     e28:	e2833001 	add	r3, r3, #1
     e2c:	e50b3010 	str	r3, [fp, #-16]
     e30:	e59f3134 	ldr	r3, [pc, #308]	; f6c <malloc+0x160>
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e50b300c 	str	r3, [fp, #-12]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e3530000 	cmp	r3, #0
     e44:	1a00000b 	bne	e78 <malloc+0x6c>
     e48:	e59f3120 	ldr	r3, [pc, #288]	; f70 <malloc+0x164>
     e4c:	e50b300c 	str	r3, [fp, #-12]
     e50:	e59f2114 	ldr	r2, [pc, #276]	; f6c <malloc+0x160>
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5823000 	str	r3, [r2]
     e5c:	e59f3108 	ldr	r3, [pc, #264]	; f6c <malloc+0x160>
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e59f2104 	ldr	r2, [pc, #260]	; f70 <malloc+0x164>
     e68:	e5823000 	str	r3, [r2]
     e6c:	e59f30fc 	ldr	r3, [pc, #252]	; f70 <malloc+0x164>
     e70:	e3a02000 	mov	r2, #0
     e74:	e5832004 	str	r2, [r3, #4]
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e50b3008 	str	r3, [fp, #-8]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5932004 	ldr	r2, [r3, #4]
     e8c:	e51b3010 	ldr	r3, [fp, #-16]
     e90:	e1520003 	cmp	r2, r3
     e94:	3a00001e 	bcc	f14 <malloc+0x108>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5932004 	ldr	r2, [r3, #4]
     ea0:	e51b3010 	ldr	r3, [fp, #-16]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	1a000004 	bne	ec0 <malloc+0xb4>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5932000 	ldr	r2, [r3]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5832000 	str	r2, [r3]
     ebc:	ea00000e 	b	efc <malloc+0xf0>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5932004 	ldr	r2, [r3, #4]
     ec8:	e51b3010 	ldr	r3, [fp, #-16]
     ecc:	e0632002 	rsb	r2, r3, r2
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5832004 	str	r2, [r3, #4]
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5933004 	ldr	r3, [r3, #4]
     ee0:	e1a03183 	lsl	r3, r3, #3
     ee4:	e51b2008 	ldr	r2, [fp, #-8]
     ee8:	e0823003 	add	r3, r2, r3
     eec:	e50b3008 	str	r3, [fp, #-8]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e51b2010 	ldr	r2, [fp, #-16]
     ef8:	e5832004 	str	r2, [r3, #4]
     efc:	e59f2068 	ldr	r2, [pc, #104]	; f6c <malloc+0x160>
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e5823000 	str	r3, [r2]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e2833008 	add	r3, r3, #8
     f10:	ea000012 	b	f60 <malloc+0x154>
     f14:	e59f3050 	ldr	r3, [pc, #80]	; f6c <malloc+0x160>
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e51b2008 	ldr	r2, [fp, #-8]
     f20:	e1520003 	cmp	r2, r3
     f24:	1a000007 	bne	f48 <malloc+0x13c>
     f28:	e51b0010 	ldr	r0, [fp, #-16]
     f2c:	ebffff94 	bl	d84 <morecore>
     f30:	e50b0008 	str	r0, [fp, #-8]
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e3530000 	cmp	r3, #0
     f3c:	1a000001 	bne	f48 <malloc+0x13c>
     f40:	e3a03000 	mov	r3, #0
     f44:	ea000005 	b	f60 <malloc+0x154>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e50b300c 	str	r3, [fp, #-12]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e50b3008 	str	r3, [fp, #-8]
     f5c:	eaffffc8 	b	e84 <malloc+0x78>
     f60:	e1a00003 	mov	r0, r3
     f64:	e24bd004 	sub	sp, fp, #4
     f68:	e8bd8800 	pop	{fp, pc}
     f6c:	000010e0 	.word	0x000010e0
     f70:	000010d8 	.word	0x000010d8

00000f74 <__aeabi_uidiv>:
     f74:	e2512001 	subs	r2, r1, #1
     f78:	012fff1e 	bxeq	lr
     f7c:	3a000036 	bcc	105c <__aeabi_uidiv+0xe8>
     f80:	e1500001 	cmp	r0, r1
     f84:	9a000022 	bls	1014 <__aeabi_uidiv+0xa0>
     f88:	e1110002 	tst	r1, r2
     f8c:	0a000023 	beq	1020 <__aeabi_uidiv+0xac>
     f90:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     f94:	01a01181 	lsleq	r1, r1, #3
     f98:	03a03008 	moveq	r3, #8
     f9c:	13a03001 	movne	r3, #1
     fa0:	e3510201 	cmp	r1, #268435456	; 0x10000000
     fa4:	31510000 	cmpcc	r1, r0
     fa8:	31a01201 	lslcc	r1, r1, #4
     fac:	31a03203 	lslcc	r3, r3, #4
     fb0:	3afffffa 	bcc	fa0 <__aeabi_uidiv+0x2c>
     fb4:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
     fb8:	31510000 	cmpcc	r1, r0
     fbc:	31a01081 	lslcc	r1, r1, #1
     fc0:	31a03083 	lslcc	r3, r3, #1
     fc4:	3afffffa 	bcc	fb4 <__aeabi_uidiv+0x40>
     fc8:	e3a02000 	mov	r2, #0
     fcc:	e1500001 	cmp	r0, r1
     fd0:	20400001 	subcs	r0, r0, r1
     fd4:	21822003 	orrcs	r2, r2, r3
     fd8:	e15000a1 	cmp	r0, r1, lsr #1
     fdc:	204000a1 	subcs	r0, r0, r1, lsr #1
     fe0:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fe4:	e1500121 	cmp	r0, r1, lsr #2
     fe8:	20400121 	subcs	r0, r0, r1, lsr #2
     fec:	21822123 	orrcs	r2, r2, r3, lsr #2
     ff0:	e15001a1 	cmp	r0, r1, lsr #3
     ff4:	204001a1 	subcs	r0, r0, r1, lsr #3
     ff8:	218221a3 	orrcs	r2, r2, r3, lsr #3
     ffc:	e3500000 	cmp	r0, #0
    1000:	11b03223 	lsrsne	r3, r3, #4
    1004:	11a01221 	lsrne	r1, r1, #4
    1008:	1affffef 	bne	fcc <__aeabi_uidiv+0x58>
    100c:	e1a00002 	mov	r0, r2
    1010:	e12fff1e 	bx	lr
    1014:	03a00001 	moveq	r0, #1
    1018:	13a00000 	movne	r0, #0
    101c:	e12fff1e 	bx	lr
    1020:	e3510801 	cmp	r1, #65536	; 0x10000
    1024:	21a01821 	lsrcs	r1, r1, #16
    1028:	23a02010 	movcs	r2, #16
    102c:	33a02000 	movcc	r2, #0
    1030:	e3510c01 	cmp	r1, #256	; 0x100
    1034:	21a01421 	lsrcs	r1, r1, #8
    1038:	22822008 	addcs	r2, r2, #8
    103c:	e3510010 	cmp	r1, #16
    1040:	21a01221 	lsrcs	r1, r1, #4
    1044:	22822004 	addcs	r2, r2, #4
    1048:	e3510004 	cmp	r1, #4
    104c:	82822003 	addhi	r2, r2, #3
    1050:	908220a1 	addls	r2, r2, r1, lsr #1
    1054:	e1a00230 	lsr	r0, r0, r2
    1058:	e12fff1e 	bx	lr
    105c:	e3500000 	cmp	r0, #0
    1060:	13e00000 	mvnne	r0, #0
    1064:	ea000007 	b	1088 <__aeabi_idiv0>

00001068 <__aeabi_uidivmod>:
    1068:	e3510000 	cmp	r1, #0
    106c:	0afffffa 	beq	105c <__aeabi_uidiv+0xe8>
    1070:	e92d4003 	push	{r0, r1, lr}
    1074:	ebffffbe 	bl	f74 <__aeabi_uidiv>
    1078:	e8bd4006 	pop	{r1, r2, lr}
    107c:	e0030092 	mul	r3, r2, r0
    1080:	e0411003 	sub	r1, r1, r3
    1084:	e12fff1e 	bx	lr

00001088 <__aeabi_idiv0>:
    1088:	e12fff1e 	bx	lr
