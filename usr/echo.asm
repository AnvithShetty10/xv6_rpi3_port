
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e593c000 	ldr	ip, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2832001 	add	r2, r3, #1
      3c:	e51b3010 	ldr	r3, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	aa000001 	bge	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	; 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	; 88 <main+0x88>
      54:	e3a00001 	mov	r0, #1
      58:	e59f102c 	ldr	r1, [pc, #44]	; 8c <main+0x8c>
      5c:	e1a0200c 	mov	r2, ip
      60:	eb000254 	bl	9b8 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb00013f 	bl	584 <exit>
      84:	00001068 	.word	0x00001068
      88:	0000106c 	.word	0x0000106c
      8c:	00001070 	.word	0x00001070

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			; (mov r0, r0)
      b0:	e51b3010 	ldr	r3, [fp, #-16]
      b4:	e2832001 	add	r2, r3, #1
      b8:	e50b2010 	str	r2, [fp, #-16]
      bc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      c0:	e2821001 	add	r1, r2, #1
      c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e24bd000 	sub	sp, fp, #0
      e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0633002 	rsb	r3, r3, r2
     160:	e1a00003 	mov	r0, r3
     164:	e24bd000 	sub	sp, fp, #0
     168:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e24bd000 	sub	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	; 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b300d 	ldrb	r3, [fp, #-13]
     1f0:	e1a02c03 	lsl	r2, r3, #24
     1f4:	e55b300d 	ldrb	r3, [fp, #-13]
     1f8:	e1a03803 	lsl	r3, r3, #16
     1fc:	e1822003 	orr	r2, r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1a03403 	lsl	r3, r3, #8
     208:	e1822003 	orr	r2, r2, r3
     20c:	e55b300d 	ldrb	r3, [fp, #-13]
     210:	e1823003 	orr	r3, r2, r3
     214:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     218:	ea000008 	b	240 <memset+0x7c>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e55b200d 	ldrb	r2, [fp, #-13]
     224:	e5c32000 	strb	r2, [r3]
     228:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     22c:	e2433001 	sub	r3, r3, #1
     230:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     244:	e3530000 	cmp	r3, #0
     248:	0a000003 	beq	25c <memset+0x98>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2033003 	and	r3, r3, #3
     254:	e3530000 	cmp	r3, #0
     258:	1affffef 	bne	21c <memset+0x58>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e50b300c 	str	r3, [fp, #-12]
     264:	ea000008 	b	28c <memset+0xc8>
     268:	e51b300c 	ldr	r3, [fp, #-12]
     26c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     270:	e5832000 	str	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     278:	e2433004 	sub	r3, r3, #4
     27c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e2833004 	add	r3, r3, #4
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     290:	e3530003 	cmp	r3, #3
     294:	8afffff3 	bhi	268 <memset+0xa4>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	ea000008 	b	2c8 <memset+0x104>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff3 	bne	2a4 <memset+0xe0>
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e24bd000 	sub	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <strchr>:
     2e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd00c 	sub	sp, sp, #12
     2f4:	e50b0008 	str	r0, [fp, #-8]
     2f8:	e1a03001 	mov	r3, r1
     2fc:	e54b3009 	strb	r3, [fp, #-9]
     300:	ea000009 	b	32c <strchr+0x44>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e55b2009 	ldrb	r2, [fp, #-9]
     310:	e1520003 	cmp	r2, r3
     314:	1a000001 	bne	320 <strchr+0x38>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	ea000007 	b	340 <strchr+0x58>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530000 	cmp	r3, #0
     338:	1afffff1 	bne	304 <strchr+0x1c>
     33c:	e3a03000 	mov	r3, #0
     340:	e1a00003 	mov	r0, r3
     344:	e24bd000 	sub	sp, fp, #0
     348:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     34c:	e12fff1e 	bx	lr

00000350 <gets>:
     350:	e92d4800 	push	{fp, lr}
     354:	e28db004 	add	fp, sp, #4
     358:	e24dd018 	sub	sp, sp, #24
     35c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     360:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     364:	e3a03000 	mov	r3, #0
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000017 	b	3d0 <gets+0x80>
     370:	e24b300d 	sub	r3, fp, #13
     374:	e3a00000 	mov	r0, #0
     378:	e1a01003 	mov	r1, r3
     37c:	e3a02001 	mov	r2, #1
     380:	eb00009a 	bl	5f0 <read>
     384:	e50b000c 	str	r0, [fp, #-12]
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e3530000 	cmp	r3, #0
     390:	ca000000 	bgt	398 <gets+0x48>
     394:	ea000012 	b	3e4 <gets+0x94>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2832001 	add	r2, r3, #1
     3a0:	e50b2008 	str	r2, [fp, #-8]
     3a4:	e1a02003 	mov	r2, r3
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e55b200d 	ldrb	r2, [fp, #-13]
     3b4:	e5c32000 	strb	r2, [r3]
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e353000a 	cmp	r3, #10
     3c0:	0a000007 	beq	3e4 <gets+0x94>
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e353000d 	cmp	r3, #13
     3cc:	0a000004 	beq	3e4 <gets+0x94>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2832001 	add	r2, r3, #1
     3d8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     3dc:	e1520003 	cmp	r2, r3
     3e0:	baffffe2 	blt	370 <gets+0x20>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     41c:	e51b0010 	ldr	r0, [fp, #-16]
     420:	e3a01000 	mov	r1, #0
     424:	eb00009e 	bl	6a4 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b0008 	ldr	r0, [fp, #-8]
     444:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     448:	eb0000b0 	bl	710 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000077 	bl	638 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	; 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	; 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	; 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e24bd000 	sub	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e2832001 	add	r2, r3, #1
     520:	e50b2008 	str	r2, [fp, #-8]
     524:	e51b200c 	ldr	r2, [fp, #-12]
     528:	e2821001 	add	r1, r2, #1
     52c:	e50b100c 	str	r1, [fp, #-12]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd000 	sub	sp, fp, #0
     558:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <fork>:
     560:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00001 	mov	r0, #1
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <exit>:
     584:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00002 	mov	r0, #2
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <wait>:
     5a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00003 	mov	r0, #3
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <pipe>:
     5cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00004 	mov	r0, #4
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <read>:
     5f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00005 	mov	r0, #5
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <write>:
     614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00010 	mov	r0, #16
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <close>:
     638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00015 	mov	r0, #21
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <kill>:
     65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00006 	mov	r0, #6
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <exec>:
     680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00007 	mov	r0, #7
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <open>:
     6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a0000f 	mov	r0, #15
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <mknod>:
     6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00011 	mov	r0, #17
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <unlink>:
     6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00012 	mov	r0, #18
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fstat>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00008 	mov	r0, #8
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <link>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00013 	mov	r0, #19
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <mkdir>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00014 	mov	r0, #20
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <chdir>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00009 	mov	r0, #9
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <dup>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000a 	mov	r0, #10
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <getpid>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000b 	mov	r0, #11
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <sbrk>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000c 	mov	r0, #12
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sleep>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000d 	mov	r0, #13
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <uptime>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000e 	mov	r0, #14
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <putc>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e1a03001 	mov	r3, r1
     868:	e54b3009 	strb	r3, [fp, #-9]
     86c:	e24b3009 	sub	r3, fp, #9
     870:	e51b0008 	ldr	r0, [fp, #-8]
     874:	e1a01003 	mov	r1, r3
     878:	e3a02001 	mov	r2, #1
     87c:	ebffff64 	bl	614 <write>
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}

00000888 <printint>:
     888:	e92d4810 	push	{r4, fp, lr}
     88c:	e28db008 	add	fp, sp, #8
     890:	e24dd034 	sub	sp, sp, #52	; 0x34
     894:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     898:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     89c:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     8a0:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     8a4:	e3a03000 	mov	r3, #0
     8a8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8ac:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     8b0:	e3530000 	cmp	r3, #0
     8b4:	0a000008 	beq	8dc <printint+0x54>
     8b8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8bc:	e3530000 	cmp	r3, #0
     8c0:	aa000005 	bge	8dc <printint+0x54>
     8c4:	e3a03001 	mov	r3, #1
     8c8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     8cc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8d0:	e2633000 	rsb	r3, r3, #0
     8d4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     8d8:	ea000001 	b	8e4 <printint+0x5c>
     8dc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     8e0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     8e4:	e3a03000 	mov	r3, #0
     8e8:	e50b3010 	str	r3, [fp, #-16]
     8ec:	e51b4010 	ldr	r4, [fp, #-16]
     8f0:	e2843001 	add	r3, r4, #1
     8f4:	e50b3010 	str	r3, [fp, #-16]
     8f8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     8fc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     900:	e1a00002 	mov	r0, r2
     904:	e1a01003 	mov	r1, r3
     908:	eb0001cd 	bl	1044 <__aeabi_uidivmod>
     90c:	e1a03001 	mov	r3, r1
     910:	e1a02003 	mov	r2, r3
     914:	e59f3098 	ldr	r3, [pc, #152]	; 9b4 <printint+0x12c>
     918:	e7d32002 	ldrb	r2, [r3, r2]
     91c:	e24b300c 	sub	r3, fp, #12
     920:	e0833004 	add	r3, r3, r4
     924:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     928:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     92c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     930:	e1a01003 	mov	r1, r3
     934:	eb000185 	bl	f50 <__aeabi_uidiv>
     938:	e1a03000 	mov	r3, r0
     93c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     940:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     944:	e3530000 	cmp	r3, #0
     948:	1affffe7 	bne	8ec <printint+0x64>
     94c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     950:	e3530000 	cmp	r3, #0
     954:	0a000006 	beq	974 <printint+0xec>
     958:	e51b3010 	ldr	r3, [fp, #-16]
     95c:	e2832001 	add	r2, r3, #1
     960:	e50b2010 	str	r2, [fp, #-16]
     964:	e24b200c 	sub	r2, fp, #12
     968:	e0823003 	add	r3, r2, r3
     96c:	e3a0202d 	mov	r2, #45	; 0x2d
     970:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     974:	ea000006 	b	994 <printint+0x10c>
     978:	e24b2028 	sub	r2, fp, #40	; 0x28
     97c:	e51b3010 	ldr	r3, [fp, #-16]
     980:	e0823003 	add	r3, r2, r3
     984:	e5d33000 	ldrb	r3, [r3]
     988:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     98c:	e1a01003 	mov	r1, r3
     990:	ebffffaf 	bl	854 <putc>
     994:	e51b3010 	ldr	r3, [fp, #-16]
     998:	e2433001 	sub	r3, r3, #1
     99c:	e50b3010 	str	r3, [fp, #-16]
     9a0:	e51b3010 	ldr	r3, [fp, #-16]
     9a4:	e3530000 	cmp	r3, #0
     9a8:	aafffff2 	bge	978 <printint+0xf0>
     9ac:	e24bd008 	sub	sp, fp, #8
     9b0:	e8bd8810 	pop	{r4, fp, pc}
     9b4:	00001080 	.word	0x00001080

000009b8 <printf>:
     9b8:	e92d000e 	push	{r1, r2, r3}
     9bc:	e92d4800 	push	{fp, lr}
     9c0:	e28db004 	add	fp, sp, #4
     9c4:	e24dd024 	sub	sp, sp, #36	; 0x24
     9c8:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     9cc:	e3a03000 	mov	r3, #0
     9d0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     9d4:	e28b3008 	add	r3, fp, #8
     9d8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9dc:	e3a03000 	mov	r3, #0
     9e0:	e50b3010 	str	r3, [fp, #-16]
     9e4:	ea000074 	b	bbc <printf+0x204>
     9e8:	e59b2004 	ldr	r2, [fp, #4]
     9ec:	e51b3010 	ldr	r3, [fp, #-16]
     9f0:	e0823003 	add	r3, r2, r3
     9f4:	e5d33000 	ldrb	r3, [r3]
     9f8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     9fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a00:	e3530000 	cmp	r3, #0
     a04:	1a00000b 	bne	a38 <printf+0x80>
     a08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a0c:	e3530025 	cmp	r3, #37	; 0x25
     a10:	1a000002 	bne	a20 <printf+0x68>
     a14:	e3a03025 	mov	r3, #37	; 0x25
     a18:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a1c:	ea000063 	b	bb0 <printf+0x1f8>
     a20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a24:	e6ef3073 	uxtb	r3, r3
     a28:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a2c:	e1a01003 	mov	r1, r3
     a30:	ebffff87 	bl	854 <putc>
     a34:	ea00005d 	b	bb0 <printf+0x1f8>
     a38:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a3c:	e3530025 	cmp	r3, #37	; 0x25
     a40:	1a00005a 	bne	bb0 <printf+0x1f8>
     a44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a48:	e3530064 	cmp	r3, #100	; 0x64
     a4c:	1a00000a 	bne	a7c <printf+0xc4>
     a50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a54:	e5933000 	ldr	r3, [r3]
     a58:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a5c:	e1a01003 	mov	r1, r3
     a60:	e3a0200a 	mov	r2, #10
     a64:	e3a03001 	mov	r3, #1
     a68:	ebffff86 	bl	888 <printint>
     a6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a70:	e2833004 	add	r3, r3, #4
     a74:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a78:	ea00004a 	b	ba8 <printf+0x1f0>
     a7c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a80:	e3530078 	cmp	r3, #120	; 0x78
     a84:	0a000002 	beq	a94 <printf+0xdc>
     a88:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a8c:	e3530070 	cmp	r3, #112	; 0x70
     a90:	1a00000a 	bne	ac0 <printf+0x108>
     a94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a98:	e5933000 	ldr	r3, [r3]
     a9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     aa0:	e1a01003 	mov	r1, r3
     aa4:	e3a02010 	mov	r2, #16
     aa8:	e3a03000 	mov	r3, #0
     aac:	ebffff75 	bl	888 <printint>
     ab0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ab4:	e2833004 	add	r3, r3, #4
     ab8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     abc:	ea000039 	b	ba8 <printf+0x1f0>
     ac0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ac4:	e3530073 	cmp	r3, #115	; 0x73
     ac8:	1a000018 	bne	b30 <printf+0x178>
     acc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e50b300c 	str	r3, [fp, #-12]
     ad8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     adc:	e2833004 	add	r3, r3, #4
     ae0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ae4:	e51b300c 	ldr	r3, [fp, #-12]
     ae8:	e3530000 	cmp	r3, #0
     aec:	1a000001 	bne	af8 <printf+0x140>
     af0:	e59f30ec 	ldr	r3, [pc, #236]	; be4 <printf+0x22c>
     af4:	e50b300c 	str	r3, [fp, #-12]
     af8:	ea000007 	b	b1c <printf+0x164>
     afc:	e51b300c 	ldr	r3, [fp, #-12]
     b00:	e5d33000 	ldrb	r3, [r3]
     b04:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b08:	e1a01003 	mov	r1, r3
     b0c:	ebffff50 	bl	854 <putc>
     b10:	e51b300c 	ldr	r3, [fp, #-12]
     b14:	e2833001 	add	r3, r3, #1
     b18:	e50b300c 	str	r3, [fp, #-12]
     b1c:	e51b300c 	ldr	r3, [fp, #-12]
     b20:	e5d33000 	ldrb	r3, [r3]
     b24:	e3530000 	cmp	r3, #0
     b28:	1afffff3 	bne	afc <printf+0x144>
     b2c:	ea00001d 	b	ba8 <printf+0x1f0>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b34:	e3530063 	cmp	r3, #99	; 0x63
     b38:	1a000009 	bne	b64 <printf+0x1ac>
     b3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b40:	e5933000 	ldr	r3, [r3]
     b44:	e6ef3073 	uxtb	r3, r3
     b48:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b4c:	e1a01003 	mov	r1, r3
     b50:	ebffff3f 	bl	854 <putc>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b60:	ea000010 	b	ba8 <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b68:	e3530025 	cmp	r3, #37	; 0x25
     b6c:	1a000005 	bne	b88 <printf+0x1d0>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b74:	e6ef3073 	uxtb	r3, r3
     b78:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b7c:	e1a01003 	mov	r1, r3
     b80:	ebffff33 	bl	854 <putc>
     b84:	ea000007 	b	ba8 <printf+0x1f0>
     b88:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b8c:	e3a01025 	mov	r1, #37	; 0x25
     b90:	ebffff2f 	bl	854 <putc>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b98:	e6ef3073 	uxtb	r3, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba0:	e1a01003 	mov	r1, r3
     ba4:	ebffff2a 	bl	854 <putc>
     ba8:	e3a03000 	mov	r3, #0
     bac:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bb0:	e51b3010 	ldr	r3, [fp, #-16]
     bb4:	e2833001 	add	r3, r3, #1
     bb8:	e50b3010 	str	r3, [fp, #-16]
     bbc:	e59b2004 	ldr	r2, [fp, #4]
     bc0:	e51b3010 	ldr	r3, [fp, #-16]
     bc4:	e0823003 	add	r3, r2, r3
     bc8:	e5d33000 	ldrb	r3, [r3]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1affff84 	bne	9e8 <printf+0x30>
     bd4:	e24bd004 	sub	sp, fp, #4
     bd8:	e8bd4800 	pop	{fp, lr}
     bdc:	e28dd00c 	add	sp, sp, #12
     be0:	e12fff1e 	bx	lr
     be4:	00001078 	.word	0x00001078

00000be8 <free>:
     be8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     bec:	e28db000 	add	fp, sp, #0
     bf0:	e24dd014 	sub	sp, sp, #20
     bf4:	e50b0010 	str	r0, [fp, #-16]
     bf8:	e51b3010 	ldr	r3, [fp, #-16]
     bfc:	e2433008 	sub	r3, r3, #8
     c00:	e50b300c 	str	r3, [fp, #-12]
     c04:	e59f3150 	ldr	r3, [pc, #336]	; d5c <free+0x174>
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e50b3008 	str	r3, [fp, #-8]
     c10:	ea000010 	b	c58 <free+0x70>
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e5932000 	ldr	r2, [r3]
     c1c:	e51b3008 	ldr	r3, [fp, #-8]
     c20:	e1520003 	cmp	r2, r3
     c24:	8a000008 	bhi	c4c <free+0x64>
     c28:	e51b200c 	ldr	r2, [fp, #-12]
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e1520003 	cmp	r2, r3
     c34:	8a000010 	bhi	c7c <free+0x94>
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e5932000 	ldr	r2, [r3]
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e1520003 	cmp	r2, r3
     c48:	8a00000b 	bhi	c7c <free+0x94>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e50b3008 	str	r3, [fp, #-8]
     c58:	e51b200c 	ldr	r2, [fp, #-12]
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e1520003 	cmp	r2, r3
     c64:	9affffea 	bls	c14 <free+0x2c>
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e5932000 	ldr	r2, [r3]
     c70:	e51b300c 	ldr	r3, [fp, #-12]
     c74:	e1520003 	cmp	r2, r3
     c78:	9affffe5 	bls	c14 <free+0x2c>
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e5933004 	ldr	r3, [r3, #4]
     c84:	e1a03183 	lsl	r3, r3, #3
     c88:	e51b200c 	ldr	r2, [fp, #-12]
     c8c:	e0822003 	add	r2, r2, r3
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e1520003 	cmp	r2, r3
     c9c:	1a00000d 	bne	cd8 <free+0xf0>
     ca0:	e51b300c 	ldr	r3, [fp, #-12]
     ca4:	e5932004 	ldr	r2, [r3, #4]
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e5933004 	ldr	r3, [r3, #4]
     cb4:	e0822003 	add	r2, r2, r3
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e5832004 	str	r2, [r3, #4]
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e5932000 	ldr	r2, [r3]
     ccc:	e51b300c 	ldr	r3, [fp, #-12]
     cd0:	e5832000 	str	r2, [r3]
     cd4:	ea000003 	b	ce8 <free+0x100>
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5932000 	ldr	r2, [r3]
     ce0:	e51b300c 	ldr	r3, [fp, #-12]
     ce4:	e5832000 	str	r2, [r3]
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933004 	ldr	r3, [r3, #4]
     cf0:	e1a03183 	lsl	r3, r3, #3
     cf4:	e51b2008 	ldr	r2, [fp, #-8]
     cf8:	e0822003 	add	r2, r2, r3
     cfc:	e51b300c 	ldr	r3, [fp, #-12]
     d00:	e1520003 	cmp	r2, r3
     d04:	1a00000b 	bne	d38 <free+0x150>
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5932004 	ldr	r2, [r3, #4]
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5933004 	ldr	r3, [r3, #4]
     d18:	e0822003 	add	r2, r2, r3
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5832004 	str	r2, [r3, #4]
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5932000 	ldr	r2, [r3]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5832000 	str	r2, [r3]
     d34:	ea000002 	b	d44 <free+0x15c>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e51b200c 	ldr	r2, [fp, #-12]
     d40:	e5832000 	str	r2, [r3]
     d44:	e59f2010 	ldr	r2, [pc, #16]	; d5c <free+0x174>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5823000 	str	r3, [r2]
     d50:	e24bd000 	sub	sp, fp, #0
     d54:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     d58:	e12fff1e 	bx	lr
     d5c:	0000109c 	.word	0x0000109c

00000d60 <morecore>:
     d60:	e92d4800 	push	{fp, lr}
     d64:	e28db004 	add	fp, sp, #4
     d68:	e24dd010 	sub	sp, sp, #16
     d6c:	e50b0010 	str	r0, [fp, #-16]
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e3530a01 	cmp	r3, #4096	; 0x1000
     d78:	2a000001 	bcs	d84 <morecore+0x24>
     d7c:	e3a03a01 	mov	r3, #4096	; 0x1000
     d80:	e50b3010 	str	r3, [fp, #-16]
     d84:	e51b3010 	ldr	r3, [fp, #-16]
     d88:	e1a03183 	lsl	r3, r3, #3
     d8c:	e1a00003 	mov	r0, r3
     d90:	ebfffe94 	bl	7e8 <sbrk>
     d94:	e50b0008 	str	r0, [fp, #-8]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e3730001 	cmn	r3, #1
     da0:	1a000001 	bne	dac <morecore+0x4c>
     da4:	e3a03000 	mov	r3, #0
     da8:	ea00000a 	b	dd8 <morecore+0x78>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e51b2010 	ldr	r2, [fp, #-16]
     dbc:	e5832004 	str	r2, [r3, #4]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e2833008 	add	r3, r3, #8
     dc8:	e1a00003 	mov	r0, r3
     dcc:	ebffff85 	bl	be8 <free>
     dd0:	e59f300c 	ldr	r3, [pc, #12]	; de4 <morecore+0x84>
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e1a00003 	mov	r0, r3
     ddc:	e24bd004 	sub	sp, fp, #4
     de0:	e8bd8800 	pop	{fp, pc}
     de4:	0000109c 	.word	0x0000109c

00000de8 <malloc>:
     de8:	e92d4800 	push	{fp, lr}
     dec:	e28db004 	add	fp, sp, #4
     df0:	e24dd018 	sub	sp, sp, #24
     df4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     df8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     dfc:	e2833007 	add	r3, r3, #7
     e00:	e1a031a3 	lsr	r3, r3, #3
     e04:	e2833001 	add	r3, r3, #1
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e59f3134 	ldr	r3, [pc, #308]	; f48 <malloc+0x160>
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e3530000 	cmp	r3, #0
     e20:	1a00000b 	bne	e54 <malloc+0x6c>
     e24:	e59f3120 	ldr	r3, [pc, #288]	; f4c <malloc+0x164>
     e28:	e50b300c 	str	r3, [fp, #-12]
     e2c:	e59f2114 	ldr	r2, [pc, #276]	; f48 <malloc+0x160>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5823000 	str	r3, [r2]
     e38:	e59f3108 	ldr	r3, [pc, #264]	; f48 <malloc+0x160>
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e59f2104 	ldr	r2, [pc, #260]	; f4c <malloc+0x164>
     e44:	e5823000 	str	r3, [r2]
     e48:	e59f30fc 	ldr	r3, [pc, #252]	; f4c <malloc+0x164>
     e4c:	e3a02000 	mov	r2, #0
     e50:	e5832004 	str	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e50b3008 	str	r3, [fp, #-8]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5932004 	ldr	r2, [r3, #4]
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e1520003 	cmp	r2, r3
     e70:	3a00001e 	bcc	ef0 <malloc+0x108>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e1520003 	cmp	r2, r3
     e84:	1a000004 	bne	e9c <malloc+0xb4>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	ea00000e 	b	ed8 <malloc+0xf0>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5932004 	ldr	r2, [r3, #4]
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e0632002 	rsb	r2, r3, r2
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933004 	ldr	r3, [r3, #4]
     ebc:	e1a03183 	lsl	r3, r3, #3
     ec0:	e51b2008 	ldr	r2, [fp, #-8]
     ec4:	e0823003 	add	r3, r2, r3
     ec8:	e50b3008 	str	r3, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e51b2010 	ldr	r2, [fp, #-16]
     ed4:	e5832004 	str	r2, [r3, #4]
     ed8:	e59f2068 	ldr	r2, [pc, #104]	; f48 <malloc+0x160>
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5823000 	str	r3, [r2]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e2833008 	add	r3, r3, #8
     eec:	ea000012 	b	f3c <malloc+0x154>
     ef0:	e59f3050 	ldr	r3, [pc, #80]	; f48 <malloc+0x160>
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e51b2008 	ldr	r2, [fp, #-8]
     efc:	e1520003 	cmp	r2, r3
     f00:	1a000007 	bne	f24 <malloc+0x13c>
     f04:	e51b0010 	ldr	r0, [fp, #-16]
     f08:	ebffff94 	bl	d60 <morecore>
     f0c:	e50b0008 	str	r0, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e3530000 	cmp	r3, #0
     f18:	1a000001 	bne	f24 <malloc+0x13c>
     f1c:	e3a03000 	mov	r3, #0
     f20:	ea000005 	b	f3c <malloc+0x154>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	eaffffc8 	b	e60 <malloc+0x78>
     f3c:	e1a00003 	mov	r0, r3
     f40:	e24bd004 	sub	sp, fp, #4
     f44:	e8bd8800 	pop	{fp, pc}
     f48:	0000109c 	.word	0x0000109c
     f4c:	00001094 	.word	0x00001094

00000f50 <__aeabi_uidiv>:
     f50:	e2512001 	subs	r2, r1, #1
     f54:	012fff1e 	bxeq	lr
     f58:	3a000036 	bcc	1038 <__aeabi_uidiv+0xe8>
     f5c:	e1500001 	cmp	r0, r1
     f60:	9a000022 	bls	ff0 <__aeabi_uidiv+0xa0>
     f64:	e1110002 	tst	r1, r2
     f68:	0a000023 	beq	ffc <__aeabi_uidiv+0xac>
     f6c:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     f70:	01a01181 	lsleq	r1, r1, #3
     f74:	03a03008 	moveq	r3, #8
     f78:	13a03001 	movne	r3, #1
     f7c:	e3510201 	cmp	r1, #268435456	; 0x10000000
     f80:	31510000 	cmpcc	r1, r0
     f84:	31a01201 	lslcc	r1, r1, #4
     f88:	31a03203 	lslcc	r3, r3, #4
     f8c:	3afffffa 	bcc	f7c <__aeabi_uidiv+0x2c>
     f90:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
     f94:	31510000 	cmpcc	r1, r0
     f98:	31a01081 	lslcc	r1, r1, #1
     f9c:	31a03083 	lslcc	r3, r3, #1
     fa0:	3afffffa 	bcc	f90 <__aeabi_uidiv+0x40>
     fa4:	e3a02000 	mov	r2, #0
     fa8:	e1500001 	cmp	r0, r1
     fac:	20400001 	subcs	r0, r0, r1
     fb0:	21822003 	orrcs	r2, r2, r3
     fb4:	e15000a1 	cmp	r0, r1, lsr #1
     fb8:	204000a1 	subcs	r0, r0, r1, lsr #1
     fbc:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fc0:	e1500121 	cmp	r0, r1, lsr #2
     fc4:	20400121 	subcs	r0, r0, r1, lsr #2
     fc8:	21822123 	orrcs	r2, r2, r3, lsr #2
     fcc:	e15001a1 	cmp	r0, r1, lsr #3
     fd0:	204001a1 	subcs	r0, r0, r1, lsr #3
     fd4:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fd8:	e3500000 	cmp	r0, #0
     fdc:	11b03223 	lsrsne	r3, r3, #4
     fe0:	11a01221 	lsrne	r1, r1, #4
     fe4:	1affffef 	bne	fa8 <__aeabi_uidiv+0x58>
     fe8:	e1a00002 	mov	r0, r2
     fec:	e12fff1e 	bx	lr
     ff0:	03a00001 	moveq	r0, #1
     ff4:	13a00000 	movne	r0, #0
     ff8:	e12fff1e 	bx	lr
     ffc:	e3510801 	cmp	r1, #65536	; 0x10000
    1000:	21a01821 	lsrcs	r1, r1, #16
    1004:	23a02010 	movcs	r2, #16
    1008:	33a02000 	movcc	r2, #0
    100c:	e3510c01 	cmp	r1, #256	; 0x100
    1010:	21a01421 	lsrcs	r1, r1, #8
    1014:	22822008 	addcs	r2, r2, #8
    1018:	e3510010 	cmp	r1, #16
    101c:	21a01221 	lsrcs	r1, r1, #4
    1020:	22822004 	addcs	r2, r2, #4
    1024:	e3510004 	cmp	r1, #4
    1028:	82822003 	addhi	r2, r2, #3
    102c:	908220a1 	addls	r2, r2, r1, lsr #1
    1030:	e1a00230 	lsr	r0, r0, r2
    1034:	e12fff1e 	bx	lr
    1038:	e3500000 	cmp	r0, #0
    103c:	13e00000 	mvnne	r0, #0
    1040:	ea000007 	b	1064 <__aeabi_idiv0>

00001044 <__aeabi_uidivmod>:
    1044:	e3510000 	cmp	r1, #0
    1048:	0afffffa 	beq	1038 <__aeabi_uidiv+0xe8>
    104c:	e92d4003 	push	{r0, r1, lr}
    1050:	ebffffbe 	bl	f50 <__aeabi_uidiv>
    1054:	e8bd4006 	pop	{r1, r2, lr}
    1058:	e0030092 	mul	r3, r2, r0
    105c:	e0411003 	sub	r1, r1, r3
    1060:	e12fff1e 	bx	lr

00001064 <__aeabi_idiv0>:
    1064:	e12fff1e 	bx	lr
