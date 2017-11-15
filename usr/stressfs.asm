
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	; 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	; 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	; 0xfffffddc
      14:	e59f2148 	ldr	r2, [pc, #328]	; 164 <main+0x164>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e3a00001 	mov	r0, #1
      2c:	e59f1134 	ldr	r1, [pc, #308]	; 168 <main+0x168>
      30:	eb00029a 	bl	aa0 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	; 0x218
      38:	e1a00003 	mov	r0, r3
      3c:	e3a01061 	mov	r1, #97	; 0x61
      40:	e3a02c02 	mov	r2, #512	; 0x200
      44:	eb000098 	bl	2ac <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000007 	b	74 <main+0x74>
      54:	eb00017b 	bl	648 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	da000000 	ble	68 <main+0x68>
      64:	ea000005 	b	80 <main+0x80>
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b3008 	str	r3, [fp, #-8]
      74:	e51b3008 	ldr	r3, [fp, #-8]
      78:	e3530003 	cmp	r3, #3
      7c:	dafffff4 	ble	54 <main+0x54>
      80:	e3a00001 	mov	r0, #1
      84:	e59f10e0 	ldr	r1, [pc, #224]	; 16c <main+0x16c>
      88:	e51b2008 	ldr	r2, [fp, #-8]
      8c:	eb000283 	bl	aa0 <printf>
      90:	e55b2010 	ldrb	r2, [fp, #-16]
      94:	e51b3008 	ldr	r3, [fp, #-8]
      98:	e6ef3073 	uxtb	r3, r3
      9c:	e0823003 	add	r3, r2, r3
      a0:	e6ef3073 	uxtb	r3, r3
      a4:	e54b3010 	strb	r3, [fp, #-16]
      a8:	e24b3018 	sub	r3, fp, #24
      ac:	e1a00003 	mov	r0, r3
      b0:	e59f10b8 	ldr	r1, [pc, #184]	; 170 <main+0x170>
      b4:	eb0001b4 	bl	78c <open>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e3a03000 	mov	r3, #0
      c0:	e50b3008 	str	r3, [fp, #-8]
      c4:	ea000007 	b	e8 <main+0xe8>
      c8:	e24b3f86 	sub	r3, fp, #536	; 0x218
      cc:	e51b000c 	ldr	r0, [fp, #-12]
      d0:	e1a01003 	mov	r1, r3
      d4:	e3a02c02 	mov	r2, #512	; 0x200
      d8:	eb000187 	bl	6fc <write>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e2833001 	add	r3, r3, #1
      e4:	e50b3008 	str	r3, [fp, #-8]
      e8:	e51b3008 	ldr	r3, [fp, #-8]
      ec:	e3530013 	cmp	r3, #19
      f0:	dafffff4 	ble	c8 <main+0xc8>
      f4:	e51b000c 	ldr	r0, [fp, #-12]
      f8:	eb000188 	bl	720 <close>
      fc:	e3a00001 	mov	r0, #1
     100:	e59f106c 	ldr	r1, [pc, #108]	; 174 <main+0x174>
     104:	eb000265 	bl	aa0 <printf>
     108:	e24b3018 	sub	r3, fp, #24
     10c:	e1a00003 	mov	r0, r3
     110:	e3a01000 	mov	r1, #0
     114:	eb00019c 	bl	78c <open>
     118:	e50b000c 	str	r0, [fp, #-12]
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000007 	b	148 <main+0x148>
     128:	e24b3f86 	sub	r3, fp, #536	; 0x218
     12c:	e51b000c 	ldr	r0, [fp, #-12]
     130:	e1a01003 	mov	r1, r3
     134:	e3a02c02 	mov	r2, #512	; 0x200
     138:	eb000166 	bl	6d8 <read>
     13c:	e51b3008 	ldr	r3, [fp, #-8]
     140:	e2833001 	add	r3, r3, #1
     144:	e50b3008 	str	r3, [fp, #-8]
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e3530013 	cmp	r3, #19
     150:	dafffff4 	ble	128 <main+0x128>
     154:	e51b000c 	ldr	r0, [fp, #-12]
     158:	eb000170 	bl	720 <close>
     15c:	eb00014b 	bl	690 <wait>
     160:	eb000141 	bl	66c <exit>
     164:	00001178 	.word	0x00001178
     168:	00001150 	.word	0x00001150
     16c:	00001164 	.word	0x00001164
     170:	00000202 	.word	0x00000202
     174:	00001170 	.word	0x00001170

00000178 <strcpy>:
     178:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     17c:	e28db000 	add	fp, sp, #0
     180:	e24dd014 	sub	sp, sp, #20
     184:	e50b0010 	str	r0, [fp, #-16]
     188:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     18c:	e51b3010 	ldr	r3, [fp, #-16]
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	e1a00000 	nop			; (mov r0, r0)
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e2832001 	add	r2, r3, #1
     1a0:	e50b2010 	str	r2, [fp, #-16]
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     1a8:	e2821001 	add	r1, r2, #1
     1ac:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     1b0:	e5d22000 	ldrb	r2, [r2]
     1b4:	e5c32000 	strb	r2, [r3]
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e3530000 	cmp	r3, #0
     1c0:	1afffff4 	bne	198 <strcpy+0x20>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e24bd000 	sub	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strcmp>:
     1d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd00c 	sub	sp, sp, #12
     1e4:	e50b0008 	str	r0, [fp, #-8]
     1e8:	e50b100c 	str	r1, [fp, #-12]
     1ec:	ea000005 	b	208 <strcmp+0x30>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e2833001 	add	r3, r3, #1
     1f8:	e50b3008 	str	r3, [fp, #-8]
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e2833001 	add	r3, r3, #1
     204:	e50b300c 	str	r3, [fp, #-12]
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	0a000005 	beq	230 <strcmp+0x58>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d32000 	ldrb	r2, [r3]
     220:	e51b300c 	ldr	r3, [fp, #-12]
     224:	e5d33000 	ldrb	r3, [r3]
     228:	e1520003 	cmp	r2, r3
     22c:	0affffef 	beq	1f0 <strcmp+0x18>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1a02003 	mov	r2, r3
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e0633002 	rsb	r3, r3, r2
     248:	e1a00003 	mov	r0, r3
     24c:	e24bd000 	sub	sp, fp, #0
     250:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     254:	e12fff1e 	bx	lr

00000258 <strlen>:
     258:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     25c:	e28db000 	add	fp, sp, #0
     260:	e24dd014 	sub	sp, sp, #20
     264:	e50b0010 	str	r0, [fp, #-16]
     268:	e3a03000 	mov	r3, #0
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	ea000002 	b	280 <strlen+0x28>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e51b2010 	ldr	r2, [fp, #-16]
     288:	e0823003 	add	r3, r2, r3
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e3530000 	cmp	r3, #0
     294:	1afffff6 	bne	274 <strlen+0x1c>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e1a00003 	mov	r0, r3
     2a0:	e24bd000 	sub	sp, fp, #0
     2a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2a8:	e12fff1e 	bx	lr

000002ac <memset>:
     2ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2b0:	e28db000 	add	fp, sp, #0
     2b4:	e24dd024 	sub	sp, sp, #36	; 0x24
     2b8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     2bc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     2c0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     2c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     2d0:	e54b300d 	strb	r3, [fp, #-13]
     2d4:	e55b300d 	ldrb	r3, [fp, #-13]
     2d8:	e1a02c03 	lsl	r2, r3, #24
     2dc:	e55b300d 	ldrb	r3, [fp, #-13]
     2e0:	e1a03803 	lsl	r3, r3, #16
     2e4:	e1822003 	orr	r2, r2, r3
     2e8:	e55b300d 	ldrb	r3, [fp, #-13]
     2ec:	e1a03403 	lsl	r3, r3, #8
     2f0:	e1822003 	orr	r2, r2, r3
     2f4:	e55b300d 	ldrb	r3, [fp, #-13]
     2f8:	e1823003 	orr	r3, r2, r3
     2fc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     300:	ea000008 	b	328 <memset+0x7c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e55b200d 	ldrb	r2, [fp, #-13]
     30c:	e5c32000 	strb	r2, [r3]
     310:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     314:	e2433001 	sub	r3, r3, #1
     318:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     32c:	e3530000 	cmp	r3, #0
     330:	0a000003 	beq	344 <memset+0x98>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e2033003 	and	r3, r3, #3
     33c:	e3530000 	cmp	r3, #0
     340:	1affffef 	bne	304 <memset+0x58>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e50b300c 	str	r3, [fp, #-12]
     34c:	ea000008 	b	374 <memset+0xc8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     358:	e5832000 	str	r2, [r3]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     360:	e2433004 	sub	r3, r3, #4
     364:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     368:	e51b300c 	ldr	r3, [fp, #-12]
     36c:	e2833004 	add	r3, r3, #4
     370:	e50b300c 	str	r3, [fp, #-12]
     374:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     378:	e3530003 	cmp	r3, #3
     37c:	8afffff3 	bhi	350 <memset+0xa4>
     380:	e51b300c 	ldr	r3, [fp, #-12]
     384:	e50b3008 	str	r3, [fp, #-8]
     388:	ea000008 	b	3b0 <memset+0x104>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e55b200d 	ldrb	r2, [fp, #-13]
     394:	e5c32000 	strb	r2, [r3]
     398:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     39c:	e2433001 	sub	r3, r3, #1
     3a0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2833001 	add	r3, r3, #1
     3ac:	e50b3008 	str	r3, [fp, #-8]
     3b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3b4:	e3530000 	cmp	r3, #0
     3b8:	1afffff3 	bne	38c <memset+0xe0>
     3bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3c0:	e1a00003 	mov	r0, r3
     3c4:	e24bd000 	sub	sp, fp, #0
     3c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3cc:	e12fff1e 	bx	lr

000003d0 <strchr>:
     3d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3d4:	e28db000 	add	fp, sp, #0
     3d8:	e24dd00c 	sub	sp, sp, #12
     3dc:	e50b0008 	str	r0, [fp, #-8]
     3e0:	e1a03001 	mov	r3, r1
     3e4:	e54b3009 	strb	r3, [fp, #-9]
     3e8:	ea000009 	b	414 <strchr+0x44>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e5d33000 	ldrb	r3, [r3]
     3f4:	e55b2009 	ldrb	r2, [fp, #-9]
     3f8:	e1520003 	cmp	r2, r3
     3fc:	1a000001 	bne	408 <strchr+0x38>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	ea000007 	b	428 <strchr+0x58>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e2833001 	add	r3, r3, #1
     410:	e50b3008 	str	r3, [fp, #-8]
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e5d33000 	ldrb	r3, [r3]
     41c:	e3530000 	cmp	r3, #0
     420:	1afffff1 	bne	3ec <strchr+0x1c>
     424:	e3a03000 	mov	r3, #0
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd000 	sub	sp, fp, #0
     430:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     434:	e12fff1e 	bx	lr

00000438 <gets>:
     438:	e92d4800 	push	{fp, lr}
     43c:	e28db004 	add	fp, sp, #4
     440:	e24dd018 	sub	sp, sp, #24
     444:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     448:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     44c:	e3a03000 	mov	r3, #0
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	ea000017 	b	4b8 <gets+0x80>
     458:	e24b300d 	sub	r3, fp, #13
     45c:	e3a00000 	mov	r0, #0
     460:	e1a01003 	mov	r1, r3
     464:	e3a02001 	mov	r2, #1
     468:	eb00009a 	bl	6d8 <read>
     46c:	e50b000c 	str	r0, [fp, #-12]
     470:	e51b300c 	ldr	r3, [fp, #-12]
     474:	e3530000 	cmp	r3, #0
     478:	ca000000 	bgt	480 <gets+0x48>
     47c:	ea000012 	b	4cc <gets+0x94>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e2832001 	add	r2, r3, #1
     488:	e50b2008 	str	r2, [fp, #-8]
     48c:	e1a02003 	mov	r2, r3
     490:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     494:	e0833002 	add	r3, r3, r2
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e55b300d 	ldrb	r3, [fp, #-13]
     4a4:	e353000a 	cmp	r3, #10
     4a8:	0a000007 	beq	4cc <gets+0x94>
     4ac:	e55b300d 	ldrb	r3, [fp, #-13]
     4b0:	e353000d 	cmp	r3, #13
     4b4:	0a000004 	beq	4cc <gets+0x94>
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2832001 	add	r2, r3, #1
     4c0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     4c4:	e1520003 	cmp	r2, r3
     4c8:	baffffe2 	blt	458 <gets+0x20>
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     4d4:	e0823003 	add	r3, r2, r3
     4d8:	e3a02000 	mov	r2, #0
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e24bd004 	sub	sp, fp, #4
     4ec:	e8bd8800 	pop	{fp, pc}

000004f0 <stat>:
     4f0:	e92d4800 	push	{fp, lr}
     4f4:	e28db004 	add	fp, sp, #4
     4f8:	e24dd010 	sub	sp, sp, #16
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     504:	e51b0010 	ldr	r0, [fp, #-16]
     508:	e3a01000 	mov	r1, #0
     50c:	eb00009e 	bl	78c <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b0008 	ldr	r0, [fp, #-8]
     52c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     530:	eb0000b0 	bl	7f8 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb000077 	bl	720 <close>
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <atoi>:
     550:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     554:	e28db000 	add	fp, sp, #0
     558:	e24dd014 	sub	sp, sp, #20
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e3a03000 	mov	r3, #0
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	ea00000c 	b	5a0 <atoi+0x50>
     56c:	e51b2008 	ldr	r2, [fp, #-8]
     570:	e1a03002 	mov	r3, r2
     574:	e1a03103 	lsl	r3, r3, #2
     578:	e0833002 	add	r3, r3, r2
     57c:	e1a03083 	lsl	r3, r3, #1
     580:	e1a01003 	mov	r1, r3
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2010 	str	r2, [fp, #-16]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e0813003 	add	r3, r1, r3
     598:	e2433030 	sub	r3, r3, #48	; 0x30
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e353002f 	cmp	r3, #47	; 0x2f
     5ac:	9a000003 	bls	5c0 <atoi+0x70>
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e3530039 	cmp	r3, #57	; 0x39
     5bc:	9affffea 	bls	56c <atoi+0x1c>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e24bd000 	sub	sp, fp, #0
     5cc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <memmove>:
     5d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     5d8:	e28db000 	add	fp, sp, #0
     5dc:	e24dd01c 	sub	sp, sp, #28
     5e0:	e50b0010 	str	r0, [fp, #-16]
     5e4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5e8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e50b3008 	str	r3, [fp, #-8]
     5f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     5f8:	e50b300c 	str	r3, [fp, #-12]
     5fc:	ea000007 	b	620 <memmove+0x4c>
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e2832001 	add	r2, r3, #1
     608:	e50b2008 	str	r2, [fp, #-8]
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2821001 	add	r1, r2, #1
     614:	e50b100c 	str	r1, [fp, #-12]
     618:	e5d22000 	ldrb	r2, [r2]
     61c:	e5c32000 	strb	r2, [r3]
     620:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     624:	e2432001 	sub	r2, r3, #1
     628:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     62c:	e3530000 	cmp	r3, #0
     630:	cafffff2 	bgt	600 <memmove+0x2c>
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e1a00003 	mov	r0, r3
     63c:	e24bd000 	sub	sp, fp, #0
     640:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <fork>:
     648:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a00001 	mov	r0, #1
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <exit>:
     66c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00002 	mov	r0, #2
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <wait>:
     690:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00003 	mov	r0, #3
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <pipe>:
     6b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00004 	mov	r0, #4
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <read>:
     6d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00005 	mov	r0, #5
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <write>:
     6fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00010 	mov	r0, #16
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <close>:
     720:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00015 	mov	r0, #21
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <kill>:
     744:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00006 	mov	r0, #6
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <exec>:
     768:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00007 	mov	r0, #7
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <open>:
     78c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a0000f 	mov	r0, #15
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <mknod>:
     7b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00011 	mov	r0, #17
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <unlink>:
     7d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00012 	mov	r0, #18
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <fstat>:
     7f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00008 	mov	r0, #8
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <link>:
     81c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00013 	mov	r0, #19
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <mkdir>:
     840:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00014 	mov	r0, #20
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <chdir>:
     864:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00009 	mov	r0, #9
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <dup>:
     888:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a0000a 	mov	r0, #10
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <getpid>:
     8ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a0000b 	mov	r0, #11
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <sbrk>:
     8d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000c 	mov	r0, #12
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <sleep>:
     8f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0000d 	mov	r0, #13
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <uptime>:
     918:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a0000e 	mov	r0, #14
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <putc>:
     93c:	e92d4800 	push	{fp, lr}
     940:	e28db004 	add	fp, sp, #4
     944:	e24dd008 	sub	sp, sp, #8
     948:	e50b0008 	str	r0, [fp, #-8]
     94c:	e1a03001 	mov	r3, r1
     950:	e54b3009 	strb	r3, [fp, #-9]
     954:	e24b3009 	sub	r3, fp, #9
     958:	e51b0008 	ldr	r0, [fp, #-8]
     95c:	e1a01003 	mov	r1, r3
     960:	e3a02001 	mov	r2, #1
     964:	ebffff64 	bl	6fc <write>
     968:	e24bd004 	sub	sp, fp, #4
     96c:	e8bd8800 	pop	{fp, pc}

00000970 <printint>:
     970:	e92d4810 	push	{r4, fp, lr}
     974:	e28db008 	add	fp, sp, #8
     978:	e24dd034 	sub	sp, sp, #52	; 0x34
     97c:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     980:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     984:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     988:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     98c:	e3a03000 	mov	r3, #0
     990:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     994:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     998:	e3530000 	cmp	r3, #0
     99c:	0a000008 	beq	9c4 <printint+0x54>
     9a0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     9a4:	e3530000 	cmp	r3, #0
     9a8:	aa000005 	bge	9c4 <printint+0x54>
     9ac:	e3a03001 	mov	r3, #1
     9b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     9b4:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     9b8:	e2633000 	rsb	r3, r3, #0
     9bc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9c0:	ea000001 	b	9cc <printint+0x5c>
     9c4:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     9c8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9cc:	e3a03000 	mov	r3, #0
     9d0:	e50b3010 	str	r3, [fp, #-16]
     9d4:	e51b4010 	ldr	r4, [fp, #-16]
     9d8:	e2843001 	add	r3, r4, #1
     9dc:	e50b3010 	str	r3, [fp, #-16]
     9e0:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     9e4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     9e8:	e1a00002 	mov	r0, r2
     9ec:	e1a01003 	mov	r1, r3
     9f0:	eb0001cd 	bl	112c <__aeabi_uidivmod>
     9f4:	e1a03001 	mov	r3, r1
     9f8:	e1a02003 	mov	r2, r3
     9fc:	e59f3098 	ldr	r3, [pc, #152]	; a9c <printint+0x12c>
     a00:	e7d32002 	ldrb	r2, [r3, r2]
     a04:	e24b300c 	sub	r3, fp, #12
     a08:	e0833004 	add	r3, r3, r4
     a0c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a10:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     a14:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     a18:	e1a01003 	mov	r1, r3
     a1c:	eb000185 	bl	1038 <__aeabi_uidiv>
     a20:	e1a03000 	mov	r3, r0
     a24:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a28:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     a2c:	e3530000 	cmp	r3, #0
     a30:	1affffe7 	bne	9d4 <printint+0x64>
     a34:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a38:	e3530000 	cmp	r3, #0
     a3c:	0a000006 	beq	a5c <printint+0xec>
     a40:	e51b3010 	ldr	r3, [fp, #-16]
     a44:	e2832001 	add	r2, r3, #1
     a48:	e50b2010 	str	r2, [fp, #-16]
     a4c:	e24b200c 	sub	r2, fp, #12
     a50:	e0823003 	add	r3, r2, r3
     a54:	e3a0202d 	mov	r2, #45	; 0x2d
     a58:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a5c:	ea000006 	b	a7c <printint+0x10c>
     a60:	e24b2028 	sub	r2, fp, #40	; 0x28
     a64:	e51b3010 	ldr	r3, [fp, #-16]
     a68:	e0823003 	add	r3, r2, r3
     a6c:	e5d33000 	ldrb	r3, [r3]
     a70:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     a74:	e1a01003 	mov	r1, r3
     a78:	ebffffaf 	bl	93c <putc>
     a7c:	e51b3010 	ldr	r3, [fp, #-16]
     a80:	e2433001 	sub	r3, r3, #1
     a84:	e50b3010 	str	r3, [fp, #-16]
     a88:	e51b3010 	ldr	r3, [fp, #-16]
     a8c:	e3530000 	cmp	r3, #0
     a90:	aafffff2 	bge	a60 <printint+0xf0>
     a94:	e24bd008 	sub	sp, fp, #8
     a98:	e8bd8810 	pop	{r4, fp, pc}
     a9c:	0000118c 	.word	0x0000118c

00000aa0 <printf>:
     aa0:	e92d000e 	push	{r1, r2, r3}
     aa4:	e92d4800 	push	{fp, lr}
     aa8:	e28db004 	add	fp, sp, #4
     aac:	e24dd024 	sub	sp, sp, #36	; 0x24
     ab0:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     ab4:	e3a03000 	mov	r3, #0
     ab8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     abc:	e28b3008 	add	r3, fp, #8
     ac0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ac4:	e3a03000 	mov	r3, #0
     ac8:	e50b3010 	str	r3, [fp, #-16]
     acc:	ea000074 	b	ca4 <printf+0x204>
     ad0:	e59b2004 	ldr	r2, [fp, #4]
     ad4:	e51b3010 	ldr	r3, [fp, #-16]
     ad8:	e0823003 	add	r3, r2, r3
     adc:	e5d33000 	ldrb	r3, [r3]
     ae0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     ae4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ae8:	e3530000 	cmp	r3, #0
     aec:	1a00000b 	bne	b20 <printf+0x80>
     af0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     af4:	e3530025 	cmp	r3, #37	; 0x25
     af8:	1a000002 	bne	b08 <printf+0x68>
     afc:	e3a03025 	mov	r3, #37	; 0x25
     b00:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b04:	ea000063 	b	c98 <printf+0x1f8>
     b08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b0c:	e6ef3073 	uxtb	r3, r3
     b10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b14:	e1a01003 	mov	r1, r3
     b18:	ebffff87 	bl	93c <putc>
     b1c:	ea00005d 	b	c98 <printf+0x1f8>
     b20:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b24:	e3530025 	cmp	r3, #37	; 0x25
     b28:	1a00005a 	bne	c98 <printf+0x1f8>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b30:	e3530064 	cmp	r3, #100	; 0x64
     b34:	1a00000a 	bne	b64 <printf+0xc4>
     b38:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b44:	e1a01003 	mov	r1, r3
     b48:	e3a0200a 	mov	r2, #10
     b4c:	e3a03001 	mov	r3, #1
     b50:	ebffff86 	bl	970 <printint>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b60:	ea00004a 	b	c90 <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b68:	e3530078 	cmp	r3, #120	; 0x78
     b6c:	0a000002 	beq	b7c <printf+0xdc>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b74:	e3530070 	cmp	r3, #112	; 0x70
     b78:	1a00000a 	bne	ba8 <printf+0x108>
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b80:	e5933000 	ldr	r3, [r3]
     b84:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b88:	e1a01003 	mov	r1, r3
     b8c:	e3a02010 	mov	r2, #16
     b90:	e3a03000 	mov	r3, #0
     b94:	ebffff75 	bl	970 <printint>
     b98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b9c:	e2833004 	add	r3, r3, #4
     ba0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ba4:	ea000039 	b	c90 <printf+0x1f0>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bac:	e3530073 	cmp	r3, #115	; 0x73
     bb0:	1a000018 	bne	c18 <printf+0x178>
     bb4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bc4:	e2833004 	add	r3, r3, #4
     bc8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bcc:	e51b300c 	ldr	r3, [fp, #-12]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	1a000001 	bne	be0 <printf+0x140>
     bd8:	e59f30ec 	ldr	r3, [pc, #236]	; ccc <printf+0x22c>
     bdc:	e50b300c 	str	r3, [fp, #-12]
     be0:	ea000007 	b	c04 <printf+0x164>
     be4:	e51b300c 	ldr	r3, [fp, #-12]
     be8:	e5d33000 	ldrb	r3, [r3]
     bec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bf0:	e1a01003 	mov	r1, r3
     bf4:	ebffff50 	bl	93c <putc>
     bf8:	e51b300c 	ldr	r3, [fp, #-12]
     bfc:	e2833001 	add	r3, r3, #1
     c00:	e50b300c 	str	r3, [fp, #-12]
     c04:	e51b300c 	ldr	r3, [fp, #-12]
     c08:	e5d33000 	ldrb	r3, [r3]
     c0c:	e3530000 	cmp	r3, #0
     c10:	1afffff3 	bne	be4 <printf+0x144>
     c14:	ea00001d 	b	c90 <printf+0x1f0>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c1c:	e3530063 	cmp	r3, #99	; 0x63
     c20:	1a000009 	bne	c4c <printf+0x1ac>
     c24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c28:	e5933000 	ldr	r3, [r3]
     c2c:	e6ef3073 	uxtb	r3, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c34:	e1a01003 	mov	r1, r3
     c38:	ebffff3f 	bl	93c <putc>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c40:	e2833004 	add	r3, r3, #4
     c44:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c48:	ea000010 	b	c90 <printf+0x1f0>
     c4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c50:	e3530025 	cmp	r3, #37	; 0x25
     c54:	1a000005 	bne	c70 <printf+0x1d0>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c5c:	e6ef3073 	uxtb	r3, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c64:	e1a01003 	mov	r1, r3
     c68:	ebffff33 	bl	93c <putc>
     c6c:	ea000007 	b	c90 <printf+0x1f0>
     c70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c74:	e3a01025 	mov	r1, #37	; 0x25
     c78:	ebffff2f 	bl	93c <putc>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c80:	e6ef3073 	uxtb	r3, r3
     c84:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c88:	e1a01003 	mov	r1, r3
     c8c:	ebffff2a 	bl	93c <putc>
     c90:	e3a03000 	mov	r3, #0
     c94:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c98:	e51b3010 	ldr	r3, [fp, #-16]
     c9c:	e2833001 	add	r3, r3, #1
     ca0:	e50b3010 	str	r3, [fp, #-16]
     ca4:	e59b2004 	ldr	r2, [fp, #4]
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e0823003 	add	r3, r2, r3
     cb0:	e5d33000 	ldrb	r3, [r3]
     cb4:	e3530000 	cmp	r3, #0
     cb8:	1affff84 	bne	ad0 <printf+0x30>
     cbc:	e24bd004 	sub	sp, fp, #4
     cc0:	e8bd4800 	pop	{fp, lr}
     cc4:	e28dd00c 	add	sp, sp, #12
     cc8:	e12fff1e 	bx	lr
     ccc:	00001184 	.word	0x00001184

00000cd0 <free>:
     cd0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     cd4:	e28db000 	add	fp, sp, #0
     cd8:	e24dd014 	sub	sp, sp, #20
     cdc:	e50b0010 	str	r0, [fp, #-16]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2433008 	sub	r3, r3, #8
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	e59f3150 	ldr	r3, [pc, #336]	; e44 <free+0x174>
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e50b3008 	str	r3, [fp, #-8]
     cf8:	ea000010 	b	d40 <free+0x70>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5932000 	ldr	r2, [r3]
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e1520003 	cmp	r2, r3
     d0c:	8a000008 	bhi	d34 <free+0x64>
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e1520003 	cmp	r2, r3
     d1c:	8a000010 	bhi	d64 <free+0x94>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5932000 	ldr	r2, [r3]
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e1520003 	cmp	r2, r3
     d30:	8a00000b 	bhi	d64 <free+0x94>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e1520003 	cmp	r2, r3
     d4c:	9affffea 	bls	cfc <free+0x2c>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5932000 	ldr	r2, [r3]
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e1520003 	cmp	r2, r3
     d60:	9affffe5 	bls	cfc <free+0x2c>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5933004 	ldr	r3, [r3, #4]
     d6c:	e1a03183 	lsl	r3, r3, #3
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e0822003 	add	r2, r2, r3
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e1520003 	cmp	r2, r3
     d84:	1a00000d 	bne	dc0 <free+0xf0>
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5932004 	ldr	r2, [r3, #4]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000003 	b	dd0 <free+0x100>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5932000 	ldr	r2, [r3]
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933004 	ldr	r3, [r3, #4]
     dd8:	e1a03183 	lsl	r3, r3, #3
     ddc:	e51b2008 	ldr	r2, [fp, #-8]
     de0:	e0822003 	add	r2, r2, r3
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	1a00000b 	bne	e20 <free+0x150>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5932004 	ldr	r2, [r3, #4]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5933004 	ldr	r3, [r3, #4]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5832004 	str	r2, [r3, #4]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5832000 	str	r2, [r3]
     e1c:	ea000002 	b	e2c <free+0x15c>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e51b200c 	ldr	r2, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e59f2010 	ldr	r2, [pc, #16]	; e44 <free+0x174>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5823000 	str	r3, [r2]
     e38:	e24bd000 	sub	sp, fp, #0
     e3c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     e40:	e12fff1e 	bx	lr
     e44:	000011a8 	.word	0x000011a8

00000e48 <morecore>:
     e48:	e92d4800 	push	{fp, lr}
     e4c:	e28db004 	add	fp, sp, #4
     e50:	e24dd010 	sub	sp, sp, #16
     e54:	e50b0010 	str	r0, [fp, #-16]
     e58:	e51b3010 	ldr	r3, [fp, #-16]
     e5c:	e3530a01 	cmp	r3, #4096	; 0x1000
     e60:	2a000001 	bcs	e6c <morecore+0x24>
     e64:	e3a03a01 	mov	r3, #4096	; 0x1000
     e68:	e50b3010 	str	r3, [fp, #-16]
     e6c:	e51b3010 	ldr	r3, [fp, #-16]
     e70:	e1a03183 	lsl	r3, r3, #3
     e74:	e1a00003 	mov	r0, r3
     e78:	ebfffe94 	bl	8d0 <sbrk>
     e7c:	e50b0008 	str	r0, [fp, #-8]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e3730001 	cmn	r3, #1
     e88:	1a000001 	bne	e94 <morecore+0x4c>
     e8c:	e3a03000 	mov	r3, #0
     e90:	ea00000a 	b	ec0 <morecore+0x78>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e51b2010 	ldr	r2, [fp, #-16]
     ea4:	e5832004 	str	r2, [r3, #4]
     ea8:	e51b300c 	ldr	r3, [fp, #-12]
     eac:	e2833008 	add	r3, r3, #8
     eb0:	e1a00003 	mov	r0, r3
     eb4:	ebffff85 	bl	cd0 <free>
     eb8:	e59f300c 	ldr	r3, [pc, #12]	; ecc <morecore+0x84>
     ebc:	e5933000 	ldr	r3, [r3]
     ec0:	e1a00003 	mov	r0, r3
     ec4:	e24bd004 	sub	sp, fp, #4
     ec8:	e8bd8800 	pop	{fp, pc}
     ecc:	000011a8 	.word	0x000011a8

00000ed0 <malloc>:
     ed0:	e92d4800 	push	{fp, lr}
     ed4:	e28db004 	add	fp, sp, #4
     ed8:	e24dd018 	sub	sp, sp, #24
     edc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     ee0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ee4:	e2833007 	add	r3, r3, #7
     ee8:	e1a031a3 	lsr	r3, r3, #3
     eec:	e2833001 	add	r3, r3, #1
     ef0:	e50b3010 	str	r3, [fp, #-16]
     ef4:	e59f3134 	ldr	r3, [pc, #308]	; 1030 <malloc+0x160>
     ef8:	e5933000 	ldr	r3, [r3]
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e3530000 	cmp	r3, #0
     f08:	1a00000b 	bne	f3c <malloc+0x6c>
     f0c:	e59f3120 	ldr	r3, [pc, #288]	; 1034 <malloc+0x164>
     f10:	e50b300c 	str	r3, [fp, #-12]
     f14:	e59f2114 	ldr	r2, [pc, #276]	; 1030 <malloc+0x160>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5823000 	str	r3, [r2]
     f20:	e59f3108 	ldr	r3, [pc, #264]	; 1030 <malloc+0x160>
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e59f2104 	ldr	r2, [pc, #260]	; 1034 <malloc+0x164>
     f2c:	e5823000 	str	r3, [r2]
     f30:	e59f30fc 	ldr	r3, [pc, #252]	; 1034 <malloc+0x164>
     f34:	e3a02000 	mov	r2, #0
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e50b3008 	str	r3, [fp, #-8]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5932004 	ldr	r2, [r3, #4]
     f50:	e51b3010 	ldr	r3, [fp, #-16]
     f54:	e1520003 	cmp	r2, r3
     f58:	3a00001e 	bcc	fd8 <malloc+0x108>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5932004 	ldr	r2, [r3, #4]
     f64:	e51b3010 	ldr	r3, [fp, #-16]
     f68:	e1520003 	cmp	r2, r3
     f6c:	1a000004 	bne	f84 <malloc+0xb4>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5932000 	ldr	r2, [r3]
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5832000 	str	r2, [r3]
     f80:	ea00000e 	b	fc0 <malloc+0xf0>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5932004 	ldr	r2, [r3, #4]
     f8c:	e51b3010 	ldr	r3, [fp, #-16]
     f90:	e0632002 	rsb	r2, r3, r2
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5832004 	str	r2, [r3, #4]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933004 	ldr	r3, [r3, #4]
     fa4:	e1a03183 	lsl	r3, r3, #3
     fa8:	e51b2008 	ldr	r2, [fp, #-8]
     fac:	e0823003 	add	r3, r2, r3
     fb0:	e50b3008 	str	r3, [fp, #-8]
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e51b2010 	ldr	r2, [fp, #-16]
     fbc:	e5832004 	str	r2, [r3, #4]
     fc0:	e59f2068 	ldr	r2, [pc, #104]	; 1030 <malloc+0x160>
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5823000 	str	r3, [r2]
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e2833008 	add	r3, r3, #8
     fd4:	ea000012 	b	1024 <malloc+0x154>
     fd8:	e59f3050 	ldr	r3, [pc, #80]	; 1030 <malloc+0x160>
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e51b2008 	ldr	r2, [fp, #-8]
     fe4:	e1520003 	cmp	r2, r3
     fe8:	1a000007 	bne	100c <malloc+0x13c>
     fec:	e51b0010 	ldr	r0, [fp, #-16]
     ff0:	ebffff94 	bl	e48 <morecore>
     ff4:	e50b0008 	str	r0, [fp, #-8]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e3530000 	cmp	r3, #0
    1000:	1a000001 	bne	100c <malloc+0x13c>
    1004:	e3a03000 	mov	r3, #0
    1008:	ea000005 	b	1024 <malloc+0x154>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e50b300c 	str	r3, [fp, #-12]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e50b3008 	str	r3, [fp, #-8]
    1020:	eaffffc8 	b	f48 <malloc+0x78>
    1024:	e1a00003 	mov	r0, r3
    1028:	e24bd004 	sub	sp, fp, #4
    102c:	e8bd8800 	pop	{fp, pc}
    1030:	000011a8 	.word	0x000011a8
    1034:	000011a0 	.word	0x000011a0

00001038 <__aeabi_uidiv>:
    1038:	e2512001 	subs	r2, r1, #1
    103c:	012fff1e 	bxeq	lr
    1040:	3a000036 	bcc	1120 <__aeabi_uidiv+0xe8>
    1044:	e1500001 	cmp	r0, r1
    1048:	9a000022 	bls	10d8 <__aeabi_uidiv+0xa0>
    104c:	e1110002 	tst	r1, r2
    1050:	0a000023 	beq	10e4 <__aeabi_uidiv+0xac>
    1054:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1058:	01a01181 	lsleq	r1, r1, #3
    105c:	03a03008 	moveq	r3, #8
    1060:	13a03001 	movne	r3, #1
    1064:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1068:	31510000 	cmpcc	r1, r0
    106c:	31a01201 	lslcc	r1, r1, #4
    1070:	31a03203 	lslcc	r3, r3, #4
    1074:	3afffffa 	bcc	1064 <__aeabi_uidiv+0x2c>
    1078:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    107c:	31510000 	cmpcc	r1, r0
    1080:	31a01081 	lslcc	r1, r1, #1
    1084:	31a03083 	lslcc	r3, r3, #1
    1088:	3afffffa 	bcc	1078 <__aeabi_uidiv+0x40>
    108c:	e3a02000 	mov	r2, #0
    1090:	e1500001 	cmp	r0, r1
    1094:	20400001 	subcs	r0, r0, r1
    1098:	21822003 	orrcs	r2, r2, r3
    109c:	e15000a1 	cmp	r0, r1, lsr #1
    10a0:	204000a1 	subcs	r0, r0, r1, lsr #1
    10a4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10a8:	e1500121 	cmp	r0, r1, lsr #2
    10ac:	20400121 	subcs	r0, r0, r1, lsr #2
    10b0:	21822123 	orrcs	r2, r2, r3, lsr #2
    10b4:	e15001a1 	cmp	r0, r1, lsr #3
    10b8:	204001a1 	subcs	r0, r0, r1, lsr #3
    10bc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10c0:	e3500000 	cmp	r0, #0
    10c4:	11b03223 	lsrsne	r3, r3, #4
    10c8:	11a01221 	lsrne	r1, r1, #4
    10cc:	1affffef 	bne	1090 <__aeabi_uidiv+0x58>
    10d0:	e1a00002 	mov	r0, r2
    10d4:	e12fff1e 	bx	lr
    10d8:	03a00001 	moveq	r0, #1
    10dc:	13a00000 	movne	r0, #0
    10e0:	e12fff1e 	bx	lr
    10e4:	e3510801 	cmp	r1, #65536	; 0x10000
    10e8:	21a01821 	lsrcs	r1, r1, #16
    10ec:	23a02010 	movcs	r2, #16
    10f0:	33a02000 	movcc	r2, #0
    10f4:	e3510c01 	cmp	r1, #256	; 0x100
    10f8:	21a01421 	lsrcs	r1, r1, #8
    10fc:	22822008 	addcs	r2, r2, #8
    1100:	e3510010 	cmp	r1, #16
    1104:	21a01221 	lsrcs	r1, r1, #4
    1108:	22822004 	addcs	r2, r2, #4
    110c:	e3510004 	cmp	r1, #4
    1110:	82822003 	addhi	r2, r2, #3
    1114:	908220a1 	addls	r2, r2, r1, lsr #1
    1118:	e1a00230 	lsr	r0, r0, r2
    111c:	e12fff1e 	bx	lr
    1120:	e3500000 	cmp	r0, #0
    1124:	13e00000 	mvnne	r0, #0
    1128:	ea000007 	b	114c <__aeabi_idiv0>

0000112c <__aeabi_uidivmod>:
    112c:	e3510000 	cmp	r1, #0
    1130:	0afffffa 	beq	1120 <__aeabi_uidiv+0xe8>
    1134:	e92d4003 	push	{r0, r1, lr}
    1138:	ebffffbe 	bl	1038 <__aeabi_uidiv>
    113c:	e8bd4006 	pop	{r1, r2, lr}
    1140:	e0030092 	mul	r3, r2, r0
    1144:	e0411003 	sub	r1, r1, r3
    1148:	e12fff1e 	bx	lr

0000114c <__aeabi_idiv0>:
    114c:	e12fff1e 	bx	lr
