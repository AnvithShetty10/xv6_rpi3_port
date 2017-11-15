
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e3a00002 	mov	r0, #2
      24:	e59f1058 	ldr	r1, [pc, #88]	; 84 <main+0x84>
      28:	eb000260 	bl	9b0 <printf>
      2c:	eb000152 	bl	57c <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000101 	bl	460 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb00017b 	bl	654 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00013d 	bl	57c <exit>
      84:	00001060 	.word	0x00001060

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			; (mov r0, r0)
      a8:	e51b3010 	ldr	r3, [fp, #-16]
      ac:	e2832001 	add	r2, r3, #1
      b0:	e50b2010 	str	r2, [fp, #-16]
      b4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      b8:	e2821001 	add	r1, r2, #1
      bc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e24bd000 	sub	sp, fp, #0
      e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0633002 	rsb	r3, r3, r2
     158:	e1a00003 	mov	r0, r3
     15c:	e24bd000 	sub	sp, fp, #0
     160:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e24bd000 	sub	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	; 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b300d 	ldrb	r3, [fp, #-13]
     1e8:	e1a02c03 	lsl	r2, r3, #24
     1ec:	e55b300d 	ldrb	r3, [fp, #-13]
     1f0:	e1a03803 	lsl	r3, r3, #16
     1f4:	e1822003 	orr	r2, r2, r3
     1f8:	e55b300d 	ldrb	r3, [fp, #-13]
     1fc:	e1a03403 	lsl	r3, r3, #8
     200:	e1822003 	orr	r2, r2, r3
     204:	e55b300d 	ldrb	r3, [fp, #-13]
     208:	e1823003 	orr	r3, r2, r3
     20c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     210:	ea000008 	b	238 <memset+0x7c>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e55b200d 	ldrb	r2, [fp, #-13]
     21c:	e5c32000 	strb	r2, [r3]
     220:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     224:	e2433001 	sub	r3, r3, #1
     228:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e2833001 	add	r3, r3, #1
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     23c:	e3530000 	cmp	r3, #0
     240:	0a000003 	beq	254 <memset+0x98>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e2033003 	and	r3, r3, #3
     24c:	e3530000 	cmp	r3, #0
     250:	1affffef 	bne	214 <memset+0x58>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e50b300c 	str	r3, [fp, #-12]
     25c:	ea000008 	b	284 <memset+0xc8>
     260:	e51b300c 	ldr	r3, [fp, #-12]
     264:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     268:	e5832000 	str	r2, [r3]
     26c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     270:	e2433004 	sub	r3, r3, #4
     274:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e2833004 	add	r3, r3, #4
     280:	e50b300c 	str	r3, [fp, #-12]
     284:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     288:	e3530003 	cmp	r3, #3
     28c:	8afffff3 	bhi	260 <memset+0xa4>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	ea000008 	b	2c0 <memset+0x104>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e5c32000 	strb	r2, [r3]
     2a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2ac:	e2433001 	sub	r3, r3, #1
     2b0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2c4:	e3530000 	cmp	r3, #0
     2c8:	1afffff3 	bne	29c <memset+0xe0>
     2cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2d0:	e1a00003 	mov	r0, r3
     2d4:	e24bd000 	sub	sp, fp, #0
     2d8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2dc:	e12fff1e 	bx	lr

000002e0 <strchr>:
     2e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2e4:	e28db000 	add	fp, sp, #0
     2e8:	e24dd00c 	sub	sp, sp, #12
     2ec:	e50b0008 	str	r0, [fp, #-8]
     2f0:	e1a03001 	mov	r3, r1
     2f4:	e54b3009 	strb	r3, [fp, #-9]
     2f8:	ea000009 	b	324 <strchr+0x44>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e55b2009 	ldrb	r2, [fp, #-9]
     308:	e1520003 	cmp	r2, r3
     30c:	1a000001 	bne	318 <strchr+0x38>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	ea000007 	b	338 <strchr+0x58>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e2833001 	add	r3, r3, #1
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e5d33000 	ldrb	r3, [r3]
     32c:	e3530000 	cmp	r3, #0
     330:	1afffff1 	bne	2fc <strchr+0x1c>
     334:	e3a03000 	mov	r3, #0
     338:	e1a00003 	mov	r0, r3
     33c:	e24bd000 	sub	sp, fp, #0
     340:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     344:	e12fff1e 	bx	lr

00000348 <gets>:
     348:	e92d4800 	push	{fp, lr}
     34c:	e28db004 	add	fp, sp, #4
     350:	e24dd018 	sub	sp, sp, #24
     354:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     358:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     35c:	e3a03000 	mov	r3, #0
     360:	e50b3008 	str	r3, [fp, #-8]
     364:	ea000017 	b	3c8 <gets+0x80>
     368:	e24b300d 	sub	r3, fp, #13
     36c:	e3a00000 	mov	r0, #0
     370:	e1a01003 	mov	r1, r3
     374:	e3a02001 	mov	r2, #1
     378:	eb00009a 	bl	5e8 <read>
     37c:	e50b000c 	str	r0, [fp, #-12]
     380:	e51b300c 	ldr	r3, [fp, #-12]
     384:	e3530000 	cmp	r3, #0
     388:	ca000000 	bgt	390 <gets+0x48>
     38c:	ea000012 	b	3dc <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000007 	beq	3dc <gets+0x94>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000004 	beq	3dc <gets+0x94>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2832001 	add	r2, r3, #1
     3d0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	baffffe2 	blt	368 <gets+0x20>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3e4:	e0823003 	add	r3, r2, r3
     3e8:	e3a02000 	mov	r2, #0
     3ec:	e5c32000 	strb	r2, [r3]
     3f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e24bd004 	sub	sp, fp, #4
     3fc:	e8bd8800 	pop	{fp, pc}

00000400 <stat>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd010 	sub	sp, sp, #16
     40c:	e50b0010 	str	r0, [fp, #-16]
     410:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     414:	e51b0010 	ldr	r0, [fp, #-16]
     418:	e3a01000 	mov	r1, #0
     41c:	eb00009e 	bl	69c <open>
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e3530000 	cmp	r3, #0
     42c:	aa000001 	bge	438 <stat+0x38>
     430:	e3e03000 	mvn	r3, #0
     434:	ea000006 	b	454 <stat+0x54>
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     440:	eb0000b0 	bl	708 <fstat>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb000077 	bl	630 <close>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <atoi>:
     460:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd014 	sub	sp, sp, #20
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e3a03000 	mov	r3, #0
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	ea00000c 	b	4b0 <atoi+0x50>
     47c:	e51b2008 	ldr	r2, [fp, #-8]
     480:	e1a03002 	mov	r3, r2
     484:	e1a03103 	lsl	r3, r3, #2
     488:	e0833002 	add	r3, r3, r2
     48c:	e1a03083 	lsl	r3, r3, #1
     490:	e1a01003 	mov	r1, r3
     494:	e51b3010 	ldr	r3, [fp, #-16]
     498:	e2832001 	add	r2, r3, #1
     49c:	e50b2010 	str	r2, [fp, #-16]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e0813003 	add	r3, r1, r3
     4a8:	e2433030 	sub	r3, r3, #48	; 0x30
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e353002f 	cmp	r3, #47	; 0x2f
     4bc:	9a000003 	bls	4d0 <atoi+0x70>
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e3530039 	cmp	r3, #57	; 0x39
     4cc:	9affffea 	bls	47c <atoi+0x1c>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e1a00003 	mov	r0, r3
     4d8:	e24bd000 	sub	sp, fp, #0
     4dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4e0:	e12fff1e 	bx	lr

000004e4 <memmove>:
     4e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4e8:	e28db000 	add	fp, sp, #0
     4ec:	e24dd01c 	sub	sp, sp, #28
     4f0:	e50b0010 	str	r0, [fp, #-16]
     4f4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4f8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4fc:	e51b3010 	ldr	r3, [fp, #-16]
     500:	e50b3008 	str	r3, [fp, #-8]
     504:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     508:	e50b300c 	str	r3, [fp, #-12]
     50c:	ea000007 	b	530 <memmove+0x4c>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e2832001 	add	r2, r3, #1
     518:	e50b2008 	str	r2, [fp, #-8]
     51c:	e51b200c 	ldr	r2, [fp, #-12]
     520:	e2821001 	add	r1, r2, #1
     524:	e50b100c 	str	r1, [fp, #-12]
     528:	e5d22000 	ldrb	r2, [r2]
     52c:	e5c32000 	strb	r2, [r3]
     530:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     534:	e2432001 	sub	r2, r3, #1
     538:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     53c:	e3530000 	cmp	r3, #0
     540:	cafffff2 	bgt	510 <memmove+0x2c>
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e1a00003 	mov	r0, r3
     54c:	e24bd000 	sub	sp, fp, #0
     550:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     554:	e12fff1e 	bx	lr

00000558 <fork>:
     558:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     55c:	e1a04003 	mov	r4, r3
     560:	e1a03002 	mov	r3, r2
     564:	e1a02001 	mov	r2, r1
     568:	e1a01000 	mov	r1, r0
     56c:	e3a00001 	mov	r0, #1
     570:	ef000000 	svc	0x00000000
     574:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     578:	e12fff1e 	bx	lr

0000057c <exit>:
     57c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     580:	e1a04003 	mov	r4, r3
     584:	e1a03002 	mov	r3, r2
     588:	e1a02001 	mov	r2, r1
     58c:	e1a01000 	mov	r1, r0
     590:	e3a00002 	mov	r0, #2
     594:	ef000000 	svc	0x00000000
     598:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     59c:	e12fff1e 	bx	lr

000005a0 <wait>:
     5a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5a4:	e1a04003 	mov	r4, r3
     5a8:	e1a03002 	mov	r3, r2
     5ac:	e1a02001 	mov	r2, r1
     5b0:	e1a01000 	mov	r1, r0
     5b4:	e3a00003 	mov	r0, #3
     5b8:	ef000000 	svc	0x00000000
     5bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5c0:	e12fff1e 	bx	lr

000005c4 <pipe>:
     5c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5c8:	e1a04003 	mov	r4, r3
     5cc:	e1a03002 	mov	r3, r2
     5d0:	e1a02001 	mov	r2, r1
     5d4:	e1a01000 	mov	r1, r0
     5d8:	e3a00004 	mov	r0, #4
     5dc:	ef000000 	svc	0x00000000
     5e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5e4:	e12fff1e 	bx	lr

000005e8 <read>:
     5e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5ec:	e1a04003 	mov	r4, r3
     5f0:	e1a03002 	mov	r3, r2
     5f4:	e1a02001 	mov	r2, r1
     5f8:	e1a01000 	mov	r1, r0
     5fc:	e3a00005 	mov	r0, #5
     600:	ef000000 	svc	0x00000000
     604:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     608:	e12fff1e 	bx	lr

0000060c <write>:
     60c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     610:	e1a04003 	mov	r4, r3
     614:	e1a03002 	mov	r3, r2
     618:	e1a02001 	mov	r2, r1
     61c:	e1a01000 	mov	r1, r0
     620:	e3a00010 	mov	r0, #16
     624:	ef000000 	svc	0x00000000
     628:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     62c:	e12fff1e 	bx	lr

00000630 <close>:
     630:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     634:	e1a04003 	mov	r4, r3
     638:	e1a03002 	mov	r3, r2
     63c:	e1a02001 	mov	r2, r1
     640:	e1a01000 	mov	r1, r0
     644:	e3a00015 	mov	r0, #21
     648:	ef000000 	svc	0x00000000
     64c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <kill>:
     654:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00006 	mov	r0, #6
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <exec>:
     678:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00007 	mov	r0, #7
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <open>:
     69c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a0000f 	mov	r0, #15
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <mknod>:
     6c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00011 	mov	r0, #17
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <unlink>:
     6e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00012 	mov	r0, #18
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <fstat>:
     708:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00008 	mov	r0, #8
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <link>:
     72c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a00013 	mov	r0, #19
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <mkdir>:
     750:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a00014 	mov	r0, #20
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <chdir>:
     774:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00009 	mov	r0, #9
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <dup>:
     798:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a0000a 	mov	r0, #10
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <getpid>:
     7bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a0000b 	mov	r0, #11
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <sbrk>:
     7e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a0000c 	mov	r0, #12
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <sleep>:
     804:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a0000d 	mov	r0, #13
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <uptime>:
     828:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a0000e 	mov	r0, #14
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <putc>:
     84c:	e92d4800 	push	{fp, lr}
     850:	e28db004 	add	fp, sp, #4
     854:	e24dd008 	sub	sp, sp, #8
     858:	e50b0008 	str	r0, [fp, #-8]
     85c:	e1a03001 	mov	r3, r1
     860:	e54b3009 	strb	r3, [fp, #-9]
     864:	e24b3009 	sub	r3, fp, #9
     868:	e51b0008 	ldr	r0, [fp, #-8]
     86c:	e1a01003 	mov	r1, r3
     870:	e3a02001 	mov	r2, #1
     874:	ebffff64 	bl	60c <write>
     878:	e24bd004 	sub	sp, fp, #4
     87c:	e8bd8800 	pop	{fp, pc}

00000880 <printint>:
     880:	e92d4810 	push	{r4, fp, lr}
     884:	e28db008 	add	fp, sp, #8
     888:	e24dd034 	sub	sp, sp, #52	; 0x34
     88c:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     890:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     894:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     898:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     89c:	e3a03000 	mov	r3, #0
     8a0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8a4:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     8a8:	e3530000 	cmp	r3, #0
     8ac:	0a000008 	beq	8d4 <printint+0x54>
     8b0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8b4:	e3530000 	cmp	r3, #0
     8b8:	aa000005 	bge	8d4 <printint+0x54>
     8bc:	e3a03001 	mov	r3, #1
     8c0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8c4:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8c8:	e2633000 	rsb	r3, r3, #0
     8cc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     8d0:	ea000001 	b	8dc <printint+0x5c>
     8d4:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8d8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     8dc:	e3a03000 	mov	r3, #0
     8e0:	e50b3010 	str	r3, [fp, #-16]
     8e4:	e51b4010 	ldr	r4, [fp, #-16]
     8e8:	e2843001 	add	r3, r4, #1
     8ec:	e50b3010 	str	r3, [fp, #-16]
     8f0:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     8f4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     8f8:	e1a00002 	mov	r0, r2
     8fc:	e1a01003 	mov	r1, r3
     900:	eb0001cd 	bl	103c <__aeabi_uidivmod>
     904:	e1a03001 	mov	r3, r1
     908:	e1a02003 	mov	r2, r3
     90c:	e59f3098 	ldr	r3, [pc, #152]	; 9ac <printint+0x12c>
     910:	e7d32002 	ldrb	r2, [r3, r2]
     914:	e24b300c 	sub	r3, fp, #12
     918:	e0833004 	add	r3, r3, r4
     91c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     920:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     924:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     928:	e1a01003 	mov	r1, r3
     92c:	eb000185 	bl	f48 <__aeabi_uidiv>
     930:	e1a03000 	mov	r3, r0
     934:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     938:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     93c:	e3530000 	cmp	r3, #0
     940:	1affffe7 	bne	8e4 <printint+0x64>
     944:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     948:	e3530000 	cmp	r3, #0
     94c:	0a000006 	beq	96c <printint+0xec>
     950:	e51b3010 	ldr	r3, [fp, #-16]
     954:	e2832001 	add	r2, r3, #1
     958:	e50b2010 	str	r2, [fp, #-16]
     95c:	e24b200c 	sub	r2, fp, #12
     960:	e0823003 	add	r3, r2, r3
     964:	e3a0202d 	mov	r2, #45	; 0x2d
     968:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     96c:	ea000006 	b	98c <printint+0x10c>
     970:	e24b2028 	sub	r2, fp, #40	; 0x28
     974:	e51b3010 	ldr	r3, [fp, #-16]
     978:	e0823003 	add	r3, r2, r3
     97c:	e5d33000 	ldrb	r3, [r3]
     980:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     984:	e1a01003 	mov	r1, r3
     988:	ebffffaf 	bl	84c <putc>
     98c:	e51b3010 	ldr	r3, [fp, #-16]
     990:	e2433001 	sub	r3, r3, #1
     994:	e50b3010 	str	r3, [fp, #-16]
     998:	e51b3010 	ldr	r3, [fp, #-16]
     99c:	e3530000 	cmp	r3, #0
     9a0:	aafffff2 	bge	970 <printint+0xf0>
     9a4:	e24bd008 	sub	sp, fp, #8
     9a8:	e8bd8810 	pop	{r4, fp, pc}
     9ac:	0000107c 	.word	0x0000107c

000009b0 <printf>:
     9b0:	e92d000e 	push	{r1, r2, r3}
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd024 	sub	sp, sp, #36	; 0x24
     9c0:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     9c4:	e3a03000 	mov	r3, #0
     9c8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     9cc:	e28b3008 	add	r3, fp, #8
     9d0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9d4:	e3a03000 	mov	r3, #0
     9d8:	e50b3010 	str	r3, [fp, #-16]
     9dc:	ea000074 	b	bb4 <printf+0x204>
     9e0:	e59b2004 	ldr	r2, [fp, #4]
     9e4:	e51b3010 	ldr	r3, [fp, #-16]
     9e8:	e0823003 	add	r3, r2, r3
     9ec:	e5d33000 	ldrb	r3, [r3]
     9f0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     9f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     9f8:	e3530000 	cmp	r3, #0
     9fc:	1a00000b 	bne	a30 <printf+0x80>
     a00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a04:	e3530025 	cmp	r3, #37	; 0x25
     a08:	1a000002 	bne	a18 <printf+0x68>
     a0c:	e3a03025 	mov	r3, #37	; 0x25
     a10:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a14:	ea000063 	b	ba8 <printf+0x1f8>
     a18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a1c:	e6ef3073 	uxtb	r3, r3
     a20:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a24:	e1a01003 	mov	r1, r3
     a28:	ebffff87 	bl	84c <putc>
     a2c:	ea00005d 	b	ba8 <printf+0x1f8>
     a30:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a34:	e3530025 	cmp	r3, #37	; 0x25
     a38:	1a00005a 	bne	ba8 <printf+0x1f8>
     a3c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a40:	e3530064 	cmp	r3, #100	; 0x64
     a44:	1a00000a 	bne	a74 <printf+0xc4>
     a48:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a4c:	e5933000 	ldr	r3, [r3]
     a50:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a54:	e1a01003 	mov	r1, r3
     a58:	e3a0200a 	mov	r2, #10
     a5c:	e3a03001 	mov	r3, #1
     a60:	ebffff86 	bl	880 <printint>
     a64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a68:	e2833004 	add	r3, r3, #4
     a6c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a70:	ea00004a 	b	ba0 <printf+0x1f0>
     a74:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a78:	e3530078 	cmp	r3, #120	; 0x78
     a7c:	0a000002 	beq	a8c <printf+0xdc>
     a80:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a84:	e3530070 	cmp	r3, #112	; 0x70
     a88:	1a00000a 	bne	ab8 <printf+0x108>
     a8c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a98:	e1a01003 	mov	r1, r3
     a9c:	e3a02010 	mov	r2, #16
     aa0:	e3a03000 	mov	r3, #0
     aa4:	ebffff75 	bl	880 <printint>
     aa8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     aac:	e2833004 	add	r3, r3, #4
     ab0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ab4:	ea000039 	b	ba0 <printf+0x1f0>
     ab8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     abc:	e3530073 	cmp	r3, #115	; 0x73
     ac0:	1a000018 	bne	b28 <printf+0x178>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ac8:	e5933000 	ldr	r3, [r3]
     acc:	e50b300c 	str	r3, [fp, #-12]
     ad0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ad4:	e2833004 	add	r3, r3, #4
     ad8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     adc:	e51b300c 	ldr	r3, [fp, #-12]
     ae0:	e3530000 	cmp	r3, #0
     ae4:	1a000001 	bne	af0 <printf+0x140>
     ae8:	e59f30ec 	ldr	r3, [pc, #236]	; bdc <printf+0x22c>
     aec:	e50b300c 	str	r3, [fp, #-12]
     af0:	ea000007 	b	b14 <printf+0x164>
     af4:	e51b300c 	ldr	r3, [fp, #-12]
     af8:	e5d33000 	ldrb	r3, [r3]
     afc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b00:	e1a01003 	mov	r1, r3
     b04:	ebffff50 	bl	84c <putc>
     b08:	e51b300c 	ldr	r3, [fp, #-12]
     b0c:	e2833001 	add	r3, r3, #1
     b10:	e50b300c 	str	r3, [fp, #-12]
     b14:	e51b300c 	ldr	r3, [fp, #-12]
     b18:	e5d33000 	ldrb	r3, [r3]
     b1c:	e3530000 	cmp	r3, #0
     b20:	1afffff3 	bne	af4 <printf+0x144>
     b24:	ea00001d 	b	ba0 <printf+0x1f0>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b2c:	e3530063 	cmp	r3, #99	; 0x63
     b30:	1a000009 	bne	b5c <printf+0x1ac>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b38:	e5933000 	ldr	r3, [r3]
     b3c:	e6ef3073 	uxtb	r3, r3
     b40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b44:	e1a01003 	mov	r1, r3
     b48:	ebffff3f 	bl	84c <putc>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b50:	e2833004 	add	r3, r3, #4
     b54:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b58:	ea000010 	b	ba0 <printf+0x1f0>
     b5c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b60:	e3530025 	cmp	r3, #37	; 0x25
     b64:	1a000005 	bne	b80 <printf+0x1d0>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b6c:	e6ef3073 	uxtb	r3, r3
     b70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b74:	e1a01003 	mov	r1, r3
     b78:	ebffff33 	bl	84c <putc>
     b7c:	ea000007 	b	ba0 <printf+0x1f0>
     b80:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b84:	e3a01025 	mov	r1, #37	; 0x25
     b88:	ebffff2f 	bl	84c <putc>
     b8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b90:	e6ef3073 	uxtb	r3, r3
     b94:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b98:	e1a01003 	mov	r1, r3
     b9c:	ebffff2a 	bl	84c <putc>
     ba0:	e3a03000 	mov	r3, #0
     ba4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ba8:	e51b3010 	ldr	r3, [fp, #-16]
     bac:	e2833001 	add	r3, r3, #1
     bb0:	e50b3010 	str	r3, [fp, #-16]
     bb4:	e59b2004 	ldr	r2, [fp, #4]
     bb8:	e51b3010 	ldr	r3, [fp, #-16]
     bbc:	e0823003 	add	r3, r2, r3
     bc0:	e5d33000 	ldrb	r3, [r3]
     bc4:	e3530000 	cmp	r3, #0
     bc8:	1affff84 	bne	9e0 <printf+0x30>
     bcc:	e24bd004 	sub	sp, fp, #4
     bd0:	e8bd4800 	pop	{fp, lr}
     bd4:	e28dd00c 	add	sp, sp, #12
     bd8:	e12fff1e 	bx	lr
     bdc:	00001074 	.word	0x00001074

00000be0 <free>:
     be0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     be4:	e28db000 	add	fp, sp, #0
     be8:	e24dd014 	sub	sp, sp, #20
     bec:	e50b0010 	str	r0, [fp, #-16]
     bf0:	e51b3010 	ldr	r3, [fp, #-16]
     bf4:	e2433008 	sub	r3, r3, #8
     bf8:	e50b300c 	str	r3, [fp, #-12]
     bfc:	e59f3150 	ldr	r3, [pc, #336]	; d54 <free+0x174>
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e50b3008 	str	r3, [fp, #-8]
     c08:	ea000010 	b	c50 <free+0x70>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e5932000 	ldr	r2, [r3]
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e1520003 	cmp	r2, r3
     c1c:	8a000008 	bhi	c44 <free+0x64>
     c20:	e51b200c 	ldr	r2, [fp, #-12]
     c24:	e51b3008 	ldr	r3, [fp, #-8]
     c28:	e1520003 	cmp	r2, r3
     c2c:	8a000010 	bhi	c74 <free+0x94>
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e5932000 	ldr	r2, [r3]
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e1520003 	cmp	r2, r3
     c40:	8a00000b 	bhi	c74 <free+0x94>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e50b3008 	str	r3, [fp, #-8]
     c50:	e51b200c 	ldr	r2, [fp, #-12]
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e1520003 	cmp	r2, r3
     c5c:	9affffea 	bls	c0c <free+0x2c>
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e5932000 	ldr	r2, [r3]
     c68:	e51b300c 	ldr	r3, [fp, #-12]
     c6c:	e1520003 	cmp	r2, r3
     c70:	9affffe5 	bls	c0c <free+0x2c>
     c74:	e51b300c 	ldr	r3, [fp, #-12]
     c78:	e5933004 	ldr	r3, [r3, #4]
     c7c:	e1a03183 	lsl	r3, r3, #3
     c80:	e51b200c 	ldr	r2, [fp, #-12]
     c84:	e0822003 	add	r2, r2, r3
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e1520003 	cmp	r2, r3
     c94:	1a00000d 	bne	cd0 <free+0xf0>
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e5932004 	ldr	r2, [r3, #4]
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e5933004 	ldr	r3, [r3, #4]
     cac:	e0822003 	add	r2, r2, r3
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e5832004 	str	r2, [r3, #4]
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e5932000 	ldr	r2, [r3]
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5832000 	str	r2, [r3]
     ccc:	ea000003 	b	ce0 <free+0x100>
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5932000 	ldr	r2, [r3]
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e5832000 	str	r2, [r3]
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5933004 	ldr	r3, [r3, #4]
     ce8:	e1a03183 	lsl	r3, r3, #3
     cec:	e51b2008 	ldr	r2, [fp, #-8]
     cf0:	e0822003 	add	r2, r2, r3
     cf4:	e51b300c 	ldr	r3, [fp, #-12]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	1a00000b 	bne	d30 <free+0x150>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5932004 	ldr	r2, [r3, #4]
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5933004 	ldr	r3, [r3, #4]
     d10:	e0822003 	add	r2, r2, r3
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5832004 	str	r2, [r3, #4]
     d1c:	e51b300c 	ldr	r3, [fp, #-12]
     d20:	e5932000 	ldr	r2, [r3]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5832000 	str	r2, [r3]
     d2c:	ea000002 	b	d3c <free+0x15c>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e5832000 	str	r2, [r3]
     d3c:	e59f2010 	ldr	r2, [pc, #16]	; d54 <free+0x174>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5823000 	str	r3, [r2]
     d48:	e24bd000 	sub	sp, fp, #0
     d4c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     d50:	e12fff1e 	bx	lr
     d54:	00001098 	.word	0x00001098

00000d58 <morecore>:
     d58:	e92d4800 	push	{fp, lr}
     d5c:	e28db004 	add	fp, sp, #4
     d60:	e24dd010 	sub	sp, sp, #16
     d64:	e50b0010 	str	r0, [fp, #-16]
     d68:	e51b3010 	ldr	r3, [fp, #-16]
     d6c:	e3530a01 	cmp	r3, #4096	; 0x1000
     d70:	2a000001 	bcs	d7c <morecore+0x24>
     d74:	e3a03a01 	mov	r3, #4096	; 0x1000
     d78:	e50b3010 	str	r3, [fp, #-16]
     d7c:	e51b3010 	ldr	r3, [fp, #-16]
     d80:	e1a03183 	lsl	r3, r3, #3
     d84:	e1a00003 	mov	r0, r3
     d88:	ebfffe94 	bl	7e0 <sbrk>
     d8c:	e50b0008 	str	r0, [fp, #-8]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e3730001 	cmn	r3, #1
     d98:	1a000001 	bne	da4 <morecore+0x4c>
     d9c:	e3a03000 	mov	r3, #0
     da0:	ea00000a 	b	dd0 <morecore+0x78>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e50b300c 	str	r3, [fp, #-12]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e51b2010 	ldr	r2, [fp, #-16]
     db4:	e5832004 	str	r2, [r3, #4]
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e2833008 	add	r3, r3, #8
     dc0:	e1a00003 	mov	r0, r3
     dc4:	ebffff85 	bl	be0 <free>
     dc8:	e59f300c 	ldr	r3, [pc, #12]	; ddc <morecore+0x84>
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e1a00003 	mov	r0, r3
     dd4:	e24bd004 	sub	sp, fp, #4
     dd8:	e8bd8800 	pop	{fp, pc}
     ddc:	00001098 	.word	0x00001098

00000de0 <malloc>:
     de0:	e92d4800 	push	{fp, lr}
     de4:	e28db004 	add	fp, sp, #4
     de8:	e24dd018 	sub	sp, sp, #24
     dec:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     df0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     df4:	e2833007 	add	r3, r3, #7
     df8:	e1a031a3 	lsr	r3, r3, #3
     dfc:	e2833001 	add	r3, r3, #1
     e00:	e50b3010 	str	r3, [fp, #-16]
     e04:	e59f3134 	ldr	r3, [pc, #308]	; f40 <malloc+0x160>
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e3530000 	cmp	r3, #0
     e18:	1a00000b 	bne	e4c <malloc+0x6c>
     e1c:	e59f3120 	ldr	r3, [pc, #288]	; f44 <malloc+0x164>
     e20:	e50b300c 	str	r3, [fp, #-12]
     e24:	e59f2114 	ldr	r2, [pc, #276]	; f40 <malloc+0x160>
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e5823000 	str	r3, [r2]
     e30:	e59f3108 	ldr	r3, [pc, #264]	; f40 <malloc+0x160>
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e59f2104 	ldr	r2, [pc, #260]	; f44 <malloc+0x164>
     e3c:	e5823000 	str	r3, [r2]
     e40:	e59f30fc 	ldr	r3, [pc, #252]	; f44 <malloc+0x164>
     e44:	e3a02000 	mov	r2, #0
     e48:	e5832004 	str	r2, [r3, #4]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e50b3008 	str	r3, [fp, #-8]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5932004 	ldr	r2, [r3, #4]
     e60:	e51b3010 	ldr	r3, [fp, #-16]
     e64:	e1520003 	cmp	r2, r3
     e68:	3a00001e 	bcc	ee8 <malloc+0x108>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5932004 	ldr	r2, [r3, #4]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e1520003 	cmp	r2, r3
     e7c:	1a000004 	bne	e94 <malloc+0xb4>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5932000 	ldr	r2, [r3]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5832000 	str	r2, [r3]
     e90:	ea00000e 	b	ed0 <malloc+0xf0>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5932004 	ldr	r2, [r3, #4]
     e9c:	e51b3010 	ldr	r3, [fp, #-16]
     ea0:	e0632002 	rsb	r2, r3, r2
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5832004 	str	r2, [r3, #4]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5933004 	ldr	r3, [r3, #4]
     eb4:	e1a03183 	lsl	r3, r3, #3
     eb8:	e51b2008 	ldr	r2, [fp, #-8]
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e50b3008 	str	r3, [fp, #-8]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e51b2010 	ldr	r2, [fp, #-16]
     ecc:	e5832004 	str	r2, [r3, #4]
     ed0:	e59f2068 	ldr	r2, [pc, #104]	; f40 <malloc+0x160>
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5823000 	str	r3, [r2]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e2833008 	add	r3, r3, #8
     ee4:	ea000012 	b	f34 <malloc+0x154>
     ee8:	e59f3050 	ldr	r3, [pc, #80]	; f40 <malloc+0x160>
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e51b2008 	ldr	r2, [fp, #-8]
     ef4:	e1520003 	cmp	r2, r3
     ef8:	1a000007 	bne	f1c <malloc+0x13c>
     efc:	e51b0010 	ldr	r0, [fp, #-16]
     f00:	ebffff94 	bl	d58 <morecore>
     f04:	e50b0008 	str	r0, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e3530000 	cmp	r3, #0
     f10:	1a000001 	bne	f1c <malloc+0x13c>
     f14:	e3a03000 	mov	r3, #0
     f18:	ea000005 	b	f34 <malloc+0x154>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e50b3008 	str	r3, [fp, #-8]
     f30:	eaffffc8 	b	e58 <malloc+0x78>
     f34:	e1a00003 	mov	r0, r3
     f38:	e24bd004 	sub	sp, fp, #4
     f3c:	e8bd8800 	pop	{fp, pc}
     f40:	00001098 	.word	0x00001098
     f44:	00001090 	.word	0x00001090

00000f48 <__aeabi_uidiv>:
     f48:	e2512001 	subs	r2, r1, #1
     f4c:	012fff1e 	bxeq	lr
     f50:	3a000036 	bcc	1030 <__aeabi_uidiv+0xe8>
     f54:	e1500001 	cmp	r0, r1
     f58:	9a000022 	bls	fe8 <__aeabi_uidiv+0xa0>
     f5c:	e1110002 	tst	r1, r2
     f60:	0a000023 	beq	ff4 <__aeabi_uidiv+0xac>
     f64:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     f68:	01a01181 	lsleq	r1, r1, #3
     f6c:	03a03008 	moveq	r3, #8
     f70:	13a03001 	movne	r3, #1
     f74:	e3510201 	cmp	r1, #268435456	; 0x10000000
     f78:	31510000 	cmpcc	r1, r0
     f7c:	31a01201 	lslcc	r1, r1, #4
     f80:	31a03203 	lslcc	r3, r3, #4
     f84:	3afffffa 	bcc	f74 <__aeabi_uidiv+0x2c>
     f88:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
     f8c:	31510000 	cmpcc	r1, r0
     f90:	31a01081 	lslcc	r1, r1, #1
     f94:	31a03083 	lslcc	r3, r3, #1
     f98:	3afffffa 	bcc	f88 <__aeabi_uidiv+0x40>
     f9c:	e3a02000 	mov	r2, #0
     fa0:	e1500001 	cmp	r0, r1
     fa4:	20400001 	subcs	r0, r0, r1
     fa8:	21822003 	orrcs	r2, r2, r3
     fac:	e15000a1 	cmp	r0, r1, lsr #1
     fb0:	204000a1 	subcs	r0, r0, r1, lsr #1
     fb4:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fb8:	e1500121 	cmp	r0, r1, lsr #2
     fbc:	20400121 	subcs	r0, r0, r1, lsr #2
     fc0:	21822123 	orrcs	r2, r2, r3, lsr #2
     fc4:	e15001a1 	cmp	r0, r1, lsr #3
     fc8:	204001a1 	subcs	r0, r0, r1, lsr #3
     fcc:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fd0:	e3500000 	cmp	r0, #0
     fd4:	11b03223 	lsrsne	r3, r3, #4
     fd8:	11a01221 	lsrne	r1, r1, #4
     fdc:	1affffef 	bne	fa0 <__aeabi_uidiv+0x58>
     fe0:	e1a00002 	mov	r0, r2
     fe4:	e12fff1e 	bx	lr
     fe8:	03a00001 	moveq	r0, #1
     fec:	13a00000 	movne	r0, #0
     ff0:	e12fff1e 	bx	lr
     ff4:	e3510801 	cmp	r1, #65536	; 0x10000
     ff8:	21a01821 	lsrcs	r1, r1, #16
     ffc:	23a02010 	movcs	r2, #16
    1000:	33a02000 	movcc	r2, #0
    1004:	e3510c01 	cmp	r1, #256	; 0x100
    1008:	21a01421 	lsrcs	r1, r1, #8
    100c:	22822008 	addcs	r2, r2, #8
    1010:	e3510010 	cmp	r1, #16
    1014:	21a01221 	lsrcs	r1, r1, #4
    1018:	22822004 	addcs	r2, r2, #4
    101c:	e3510004 	cmp	r1, #4
    1020:	82822003 	addhi	r2, r2, #3
    1024:	908220a1 	addls	r2, r2, r1, lsr #1
    1028:	e1a00230 	lsr	r0, r0, r2
    102c:	e12fff1e 	bx	lr
    1030:	e3500000 	cmp	r0, #0
    1034:	13e00000 	mvnne	r0, #0
    1038:	ea000007 	b	105c <__aeabi_idiv0>

0000103c <__aeabi_uidivmod>:
    103c:	e3510000 	cmp	r1, #0
    1040:	0afffffa 	beq	1030 <__aeabi_uidiv+0xe8>
    1044:	e92d4003 	push	{r0, r1, lr}
    1048:	ebffffbe 	bl	f48 <__aeabi_uidiv>
    104c:	e8bd4006 	pop	{r1, r2, lr}
    1050:	e0030092 	mul	r3, r2, r0
    1054:	e0411003 	sub	r1, r1, r3
    1058:	e12fff1e 	bx	lr

0000105c <__aeabi_idiv0>:
    105c:	e12fff1e 	bx	lr
