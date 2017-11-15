
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f00cc 	ldr	r0, [pc, #204]	; e0 <main+0xe0>
      10:	e3a01002 	mov	r1, #2
      14:	eb0001bd 	bl	710 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e59f00b4 	ldr	r0, [pc, #180]	; e0 <main+0xe0>
      28:	e3a01001 	mov	r1, #1
      2c:	e3a02001 	mov	r2, #1
      30:	eb0001bf 	bl	734 <mknod>
      34:	e59f00a4 	ldr	r0, [pc, #164]	; e0 <main+0xe0>
      38:	e3a01002 	mov	r1, #2
      3c:	eb0001b3 	bl	710 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0001f0 	bl	80c <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0001ee 	bl	80c <dup>
      50:	e3a00001 	mov	r0, #1
      54:	e59f1088 	ldr	r1, [pc, #136]	; e4 <main+0xe4>
      58:	eb000271 	bl	a24 <printf>
      5c:	eb00015a 	bl	5cc <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e3a00001 	mov	r0, #1
      74:	e59f106c 	ldr	r1, [pc, #108]	; e8 <main+0xe8>
      78:	eb000269 	bl	a24 <printf>
      7c:	eb00015b 	bl	5f0 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000006 	bne	a8 <main+0xa8>
      8c:	e59f0058 	ldr	r0, [pc, #88]	; ec <main+0xec>
      90:	e59f1058 	ldr	r1, [pc, #88]	; f0 <main+0xf0>
      94:	eb000194 	bl	6ec <exec>
      98:	e3a00001 	mov	r0, #1
      9c:	e59f1050 	ldr	r1, [pc, #80]	; f4 <main+0xf4>
      a0:	eb00025f 	bl	a24 <printf>
      a4:	eb000151 	bl	5f0 <exit>
      a8:	ea000002 	b	b8 <main+0xb8>
      ac:	e3a00001 	mov	r0, #1
      b0:	e59f1040 	ldr	r1, [pc, #64]	; f8 <main+0xf8>
      b4:	eb00025a 	bl	a24 <printf>
      b8:	eb000155 	bl	614 <wait>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e51b300c 	ldr	r3, [fp, #-12]
      c4:	e3530000 	cmp	r3, #0
      c8:	ba000003 	blt	dc <main+0xdc>
      cc:	e51b200c 	ldr	r2, [fp, #-12]
      d0:	e51b3008 	ldr	r3, [fp, #-8]
      d4:	e1520003 	cmp	r2, r3
      d8:	1afffff3 	bne	ac <main+0xac>
      dc:	eaffffdb 	b	50 <main+0x50>
      e0:	000010d8 	.word	0x000010d8
      e4:	000010e0 	.word	0x000010e0
      e8:	000010f4 	.word	0x000010f4
      ec:	000010d4 	.word	0x000010d4
      f0:	00001134 	.word	0x00001134
      f4:	00001108 	.word	0x00001108
      f8:	00001120 	.word	0x00001120

000000fc <strcpy>:
      fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     100:	e28db000 	add	fp, sp, #0
     104:	e24dd014 	sub	sp, sp, #20
     108:	e50b0010 	str	r0, [fp, #-16]
     10c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     110:	e51b3010 	ldr	r3, [fp, #-16]
     114:	e50b3008 	str	r3, [fp, #-8]
     118:	e1a00000 	nop			; (mov r0, r0)
     11c:	e51b3010 	ldr	r3, [fp, #-16]
     120:	e2832001 	add	r2, r3, #1
     124:	e50b2010 	str	r2, [fp, #-16]
     128:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     12c:	e2821001 	add	r1, r2, #1
     130:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     134:	e5d22000 	ldrb	r2, [r2]
     138:	e5c32000 	strb	r2, [r3]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e3530000 	cmp	r3, #0
     144:	1afffff4 	bne	11c <strcpy+0x20>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e1a00003 	mov	r0, r3
     150:	e24bd000 	sub	sp, fp, #0
     154:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     158:	e12fff1e 	bx	lr

0000015c <strcmp>:
     15c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     160:	e28db000 	add	fp, sp, #0
     164:	e24dd00c 	sub	sp, sp, #12
     168:	e50b0008 	str	r0, [fp, #-8]
     16c:	e50b100c 	str	r1, [fp, #-12]
     170:	ea000005 	b	18c <strcmp+0x30>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e2833001 	add	r3, r3, #1
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e51b300c 	ldr	r3, [fp, #-12]
     184:	e2833001 	add	r3, r3, #1
     188:	e50b300c 	str	r3, [fp, #-12]
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e3530000 	cmp	r3, #0
     198:	0a000005 	beq	1b4 <strcmp+0x58>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e5d32000 	ldrb	r2, [r3]
     1a4:	e51b300c 	ldr	r3, [fp, #-12]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e1520003 	cmp	r2, r3
     1b0:	0affffef 	beq	174 <strcmp+0x18>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e1a02003 	mov	r2, r3
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e0633002 	rsb	r3, r3, r2
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e24bd000 	sub	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strlen>:
     1dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd014 	sub	sp, sp, #20
     1e8:	e50b0010 	str	r0, [fp, #-16]
     1ec:	e3a03000 	mov	r3, #0
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	ea000002 	b	204 <strlen+0x28>
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e2833001 	add	r3, r3, #1
     200:	e50b3008 	str	r3, [fp, #-8]
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e51b2010 	ldr	r2, [fp, #-16]
     20c:	e0823003 	add	r3, r2, r3
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	1afffff6 	bne	1f8 <strlen+0x1c>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e1a00003 	mov	r0, r3
     224:	e24bd000 	sub	sp, fp, #0
     228:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     22c:	e12fff1e 	bx	lr

00000230 <memset>:
     230:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     234:	e28db000 	add	fp, sp, #0
     238:	e24dd024 	sub	sp, sp, #36	; 0x24
     23c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     240:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     244:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     248:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     24c:	e50b3008 	str	r3, [fp, #-8]
     250:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     254:	e54b300d 	strb	r3, [fp, #-13]
     258:	e55b300d 	ldrb	r3, [fp, #-13]
     25c:	e1a02c03 	lsl	r2, r3, #24
     260:	e55b300d 	ldrb	r3, [fp, #-13]
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1822003 	orr	r2, r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     284:	ea000008 	b	2ac <memset+0x7c>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	0a000003 	beq	2c8 <memset+0x98>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x58>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xc8>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa4>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x104>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe0>
     340:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e24bd000 	sub	sp, fp, #0
     34c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e24bd000 	sub	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000017 	b	43c <gets+0x80>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a00000 	mov	r0, #0
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a02001 	mov	r2, #1
     3ec:	eb00009a 	bl	65c <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	ca000000 	bgt	404 <gets+0x48>
     400:	ea000012 	b	450 <gets+0x94>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2832001 	add	r2, r3, #1
     40c:	e50b2008 	str	r2, [fp, #-8]
     410:	e1a02003 	mov	r2, r3
     414:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     418:	e0833002 	add	r3, r3, r2
     41c:	e55b200d 	ldrb	r2, [fp, #-13]
     420:	e5c32000 	strb	r2, [r3]
     424:	e55b300d 	ldrb	r3, [fp, #-13]
     428:	e353000a 	cmp	r3, #10
     42c:	0a000007 	beq	450 <gets+0x94>
     430:	e55b300d 	ldrb	r3, [fp, #-13]
     434:	e353000d 	cmp	r3, #13
     438:	0a000004 	beq	450 <gets+0x94>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2832001 	add	r2, r3, #1
     444:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     448:	e1520003 	cmp	r2, r3
     44c:	baffffe2 	blt	3dc <gets+0x20>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     458:	e0823003 	add	r3, r2, r3
     45c:	e3a02000 	mov	r2, #0
     460:	e5c32000 	strb	r2, [r3]
     464:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     468:	e1a00003 	mov	r0, r3
     46c:	e24bd004 	sub	sp, fp, #4
     470:	e8bd8800 	pop	{fp, pc}

00000474 <stat>:
     474:	e92d4800 	push	{fp, lr}
     478:	e28db004 	add	fp, sp, #4
     47c:	e24dd010 	sub	sp, sp, #16
     480:	e50b0010 	str	r0, [fp, #-16]
     484:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     488:	e51b0010 	ldr	r0, [fp, #-16]
     48c:	e3a01000 	mov	r1, #0
     490:	eb00009e 	bl	710 <open>
     494:	e50b0008 	str	r0, [fp, #-8]
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e3530000 	cmp	r3, #0
     4a0:	aa000001 	bge	4ac <stat+0x38>
     4a4:	e3e03000 	mvn	r3, #0
     4a8:	ea000006 	b	4c8 <stat+0x54>
     4ac:	e51b0008 	ldr	r0, [fp, #-8]
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     4b4:	eb0000b0 	bl	77c <fstat>
     4b8:	e50b000c 	str	r0, [fp, #-12]
     4bc:	e51b0008 	ldr	r0, [fp, #-8]
     4c0:	eb000077 	bl	6a4 <close>
     4c4:	e51b300c 	ldr	r3, [fp, #-12]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e24bd004 	sub	sp, fp, #4
     4d0:	e8bd8800 	pop	{fp, pc}

000004d4 <atoi>:
     4d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4d8:	e28db000 	add	fp, sp, #0
     4dc:	e24dd014 	sub	sp, sp, #20
     4e0:	e50b0010 	str	r0, [fp, #-16]
     4e4:	e3a03000 	mov	r3, #0
     4e8:	e50b3008 	str	r3, [fp, #-8]
     4ec:	ea00000c 	b	524 <atoi+0x50>
     4f0:	e51b2008 	ldr	r2, [fp, #-8]
     4f4:	e1a03002 	mov	r3, r2
     4f8:	e1a03103 	lsl	r3, r3, #2
     4fc:	e0833002 	add	r3, r3, r2
     500:	e1a03083 	lsl	r3, r3, #1
     504:	e1a01003 	mov	r1, r3
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e2832001 	add	r2, r3, #1
     510:	e50b2010 	str	r2, [fp, #-16]
     514:	e5d33000 	ldrb	r3, [r3]
     518:	e0813003 	add	r3, r1, r3
     51c:	e2433030 	sub	r3, r3, #48	; 0x30
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	e51b3010 	ldr	r3, [fp, #-16]
     528:	e5d33000 	ldrb	r3, [r3]
     52c:	e353002f 	cmp	r3, #47	; 0x2f
     530:	9a000003 	bls	544 <atoi+0x70>
     534:	e51b3010 	ldr	r3, [fp, #-16]
     538:	e5d33000 	ldrb	r3, [r3]
     53c:	e3530039 	cmp	r3, #57	; 0x39
     540:	9affffea 	bls	4f0 <atoi+0x1c>
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e1a00003 	mov	r0, r3
     54c:	e24bd000 	sub	sp, fp, #0
     550:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     554:	e12fff1e 	bx	lr

00000558 <memmove>:
     558:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     55c:	e28db000 	add	fp, sp, #0
     560:	e24dd01c 	sub	sp, sp, #28
     564:	e50b0010 	str	r0, [fp, #-16]
     568:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     56c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     570:	e51b3010 	ldr	r3, [fp, #-16]
     574:	e50b3008 	str	r3, [fp, #-8]
     578:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     57c:	e50b300c 	str	r3, [fp, #-12]
     580:	ea000007 	b	5a4 <memmove+0x4c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2008 	str	r2, [fp, #-8]
     590:	e51b200c 	ldr	r2, [fp, #-12]
     594:	e2821001 	add	r1, r2, #1
     598:	e50b100c 	str	r1, [fp, #-12]
     59c:	e5d22000 	ldrb	r2, [r2]
     5a0:	e5c32000 	strb	r2, [r3]
     5a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5a8:	e2432001 	sub	r2, r3, #1
     5ac:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5b0:	e3530000 	cmp	r3, #0
     5b4:	cafffff2 	bgt	584 <memmove+0x2c>
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e1a00003 	mov	r0, r3
     5c0:	e24bd000 	sub	sp, fp, #0
     5c4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <fork>:
     5cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00001 	mov	r0, #1
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <exit>:
     5f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00002 	mov	r0, #2
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <wait>:
     614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00003 	mov	r0, #3
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <pipe>:
     638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00004 	mov	r0, #4
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <read>:
     65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00005 	mov	r0, #5
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <write>:
     680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00010 	mov	r0, #16
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <close>:
     6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00015 	mov	r0, #21
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <kill>:
     6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00006 	mov	r0, #6
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <exec>:
     6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00007 	mov	r0, #7
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <open>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a0000f 	mov	r0, #15
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <mknod>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00011 	mov	r0, #17
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <unlink>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00012 	mov	r0, #18
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <fstat>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00008 	mov	r0, #8
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <link>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00013 	mov	r0, #19
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <mkdir>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00014 	mov	r0, #20
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <chdir>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00009 	mov	r0, #9
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <dup>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000a 	mov	r0, #10
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <getpid>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000b 	mov	r0, #11
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <sbrk>:
     854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000c 	mov	r0, #12
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <sleep>:
     878:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a0000d 	mov	r0, #13
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <uptime>:
     89c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a0000e 	mov	r0, #14
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <putc>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd008 	sub	sp, sp, #8
     8cc:	e50b0008 	str	r0, [fp, #-8]
     8d0:	e1a03001 	mov	r3, r1
     8d4:	e54b3009 	strb	r3, [fp, #-9]
     8d8:	e24b3009 	sub	r3, fp, #9
     8dc:	e51b0008 	ldr	r0, [fp, #-8]
     8e0:	e1a01003 	mov	r1, r3
     8e4:	e3a02001 	mov	r2, #1
     8e8:	ebffff64 	bl	680 <write>
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}

000008f4 <printint>:
     8f4:	e92d4810 	push	{r4, fp, lr}
     8f8:	e28db008 	add	fp, sp, #8
     8fc:	e24dd034 	sub	sp, sp, #52	; 0x34
     900:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     904:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     908:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     90c:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     910:	e3a03000 	mov	r3, #0
     914:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     918:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     91c:	e3530000 	cmp	r3, #0
     920:	0a000008 	beq	948 <printint+0x54>
     924:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     928:	e3530000 	cmp	r3, #0
     92c:	aa000005 	bge	948 <printint+0x54>
     930:	e3a03001 	mov	r3, #1
     934:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     938:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     93c:	e2633000 	rsb	r3, r3, #0
     940:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     944:	ea000001 	b	950 <printint+0x5c>
     948:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     94c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     950:	e3a03000 	mov	r3, #0
     954:	e50b3010 	str	r3, [fp, #-16]
     958:	e51b4010 	ldr	r4, [fp, #-16]
     95c:	e2843001 	add	r3, r4, #1
     960:	e50b3010 	str	r3, [fp, #-16]
     964:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     968:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     96c:	e1a00002 	mov	r0, r2
     970:	e1a01003 	mov	r1, r3
     974:	eb0001cd 	bl	10b0 <__aeabi_uidivmod>
     978:	e1a03001 	mov	r3, r1
     97c:	e1a02003 	mov	r2, r3
     980:	e59f3098 	ldr	r3, [pc, #152]	; a20 <printint+0x12c>
     984:	e7d32002 	ldrb	r2, [r3, r2]
     988:	e24b300c 	sub	r3, fp, #12
     98c:	e0833004 	add	r3, r3, r4
     990:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     994:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     998:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     99c:	e1a01003 	mov	r1, r3
     9a0:	eb000185 	bl	fbc <__aeabi_uidiv>
     9a4:	e1a03000 	mov	r3, r0
     9a8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     9b0:	e3530000 	cmp	r3, #0
     9b4:	1affffe7 	bne	958 <printint+0x64>
     9b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     9bc:	e3530000 	cmp	r3, #0
     9c0:	0a000006 	beq	9e0 <printint+0xec>
     9c4:	e51b3010 	ldr	r3, [fp, #-16]
     9c8:	e2832001 	add	r2, r3, #1
     9cc:	e50b2010 	str	r2, [fp, #-16]
     9d0:	e24b200c 	sub	r2, fp, #12
     9d4:	e0823003 	add	r3, r2, r3
     9d8:	e3a0202d 	mov	r2, #45	; 0x2d
     9dc:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9e0:	ea000006 	b	a00 <printint+0x10c>
     9e4:	e24b2028 	sub	r2, fp, #40	; 0x28
     9e8:	e51b3010 	ldr	r3, [fp, #-16]
     9ec:	e0823003 	add	r3, r2, r3
     9f0:	e5d33000 	ldrb	r3, [r3]
     9f4:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     9f8:	e1a01003 	mov	r1, r3
     9fc:	ebffffaf 	bl	8c0 <putc>
     a00:	e51b3010 	ldr	r3, [fp, #-16]
     a04:	e2433001 	sub	r3, r3, #1
     a08:	e50b3010 	str	r3, [fp, #-16]
     a0c:	e51b3010 	ldr	r3, [fp, #-16]
     a10:	e3530000 	cmp	r3, #0
     a14:	aafffff2 	bge	9e4 <printint+0xf0>
     a18:	e24bd008 	sub	sp, fp, #8
     a1c:	e8bd8810 	pop	{r4, fp, pc}
     a20:	0000113c 	.word	0x0000113c

00000a24 <printf>:
     a24:	e92d000e 	push	{r1, r2, r3}
     a28:	e92d4800 	push	{fp, lr}
     a2c:	e28db004 	add	fp, sp, #4
     a30:	e24dd024 	sub	sp, sp, #36	; 0x24
     a34:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a38:	e3a03000 	mov	r3, #0
     a3c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a40:	e28b3008 	add	r3, fp, #8
     a44:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a48:	e3a03000 	mov	r3, #0
     a4c:	e50b3010 	str	r3, [fp, #-16]
     a50:	ea000074 	b	c28 <printf+0x204>
     a54:	e59b2004 	ldr	r2, [fp, #4]
     a58:	e51b3010 	ldr	r3, [fp, #-16]
     a5c:	e0823003 	add	r3, r2, r3
     a60:	e5d33000 	ldrb	r3, [r3]
     a64:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a68:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a6c:	e3530000 	cmp	r3, #0
     a70:	1a00000b 	bne	aa4 <printf+0x80>
     a74:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a78:	e3530025 	cmp	r3, #37	; 0x25
     a7c:	1a000002 	bne	a8c <printf+0x68>
     a80:	e3a03025 	mov	r3, #37	; 0x25
     a84:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a88:	ea000063 	b	c1c <printf+0x1f8>
     a8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a90:	e6ef3073 	uxtb	r3, r3
     a94:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a98:	e1a01003 	mov	r1, r3
     a9c:	ebffff87 	bl	8c0 <putc>
     aa0:	ea00005d 	b	c1c <printf+0x1f8>
     aa4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     aa8:	e3530025 	cmp	r3, #37	; 0x25
     aac:	1a00005a 	bne	c1c <printf+0x1f8>
     ab0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ab4:	e3530064 	cmp	r3, #100	; 0x64
     ab8:	1a00000a 	bne	ae8 <printf+0xc4>
     abc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ac0:	e5933000 	ldr	r3, [r3]
     ac4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ac8:	e1a01003 	mov	r1, r3
     acc:	e3a0200a 	mov	r2, #10
     ad0:	e3a03001 	mov	r3, #1
     ad4:	ebffff86 	bl	8f4 <printint>
     ad8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     adc:	e2833004 	add	r3, r3, #4
     ae0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ae4:	ea00004a 	b	c14 <printf+0x1f0>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aec:	e3530078 	cmp	r3, #120	; 0x78
     af0:	0a000002 	beq	b00 <printf+0xdc>
     af4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     af8:	e3530070 	cmp	r3, #112	; 0x70
     afc:	1a00000a 	bne	b2c <printf+0x108>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b04:	e5933000 	ldr	r3, [r3]
     b08:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b0c:	e1a01003 	mov	r1, r3
     b10:	e3a02010 	mov	r2, #16
     b14:	e3a03000 	mov	r3, #0
     b18:	ebffff75 	bl	8f4 <printint>
     b1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b20:	e2833004 	add	r3, r3, #4
     b24:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b28:	ea000039 	b	c14 <printf+0x1f0>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b30:	e3530073 	cmp	r3, #115	; 0x73
     b34:	1a000018 	bne	b9c <printf+0x178>
     b38:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e50b300c 	str	r3, [fp, #-12]
     b44:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b48:	e2833004 	add	r3, r3, #4
     b4c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e3530000 	cmp	r3, #0
     b58:	1a000001 	bne	b64 <printf+0x140>
     b5c:	e59f30ec 	ldr	r3, [pc, #236]	; c50 <printf+0x22c>
     b60:	e50b300c 	str	r3, [fp, #-12]
     b64:	ea000007 	b	b88 <printf+0x164>
     b68:	e51b300c 	ldr	r3, [fp, #-12]
     b6c:	e5d33000 	ldrb	r3, [r3]
     b70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b74:	e1a01003 	mov	r1, r3
     b78:	ebffff50 	bl	8c0 <putc>
     b7c:	e51b300c 	ldr	r3, [fp, #-12]
     b80:	e2833001 	add	r3, r3, #1
     b84:	e50b300c 	str	r3, [fp, #-12]
     b88:	e51b300c 	ldr	r3, [fp, #-12]
     b8c:	e5d33000 	ldrb	r3, [r3]
     b90:	e3530000 	cmp	r3, #0
     b94:	1afffff3 	bne	b68 <printf+0x144>
     b98:	ea00001d 	b	c14 <printf+0x1f0>
     b9c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ba0:	e3530063 	cmp	r3, #99	; 0x63
     ba4:	1a000009 	bne	bd0 <printf+0x1ac>
     ba8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bac:	e5933000 	ldr	r3, [r3]
     bb0:	e6ef3073 	uxtb	r3, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bb8:	e1a01003 	mov	r1, r3
     bbc:	ebffff3f 	bl	8c0 <putc>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bc4:	e2833004 	add	r3, r3, #4
     bc8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bcc:	ea000010 	b	c14 <printf+0x1f0>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bd4:	e3530025 	cmp	r3, #37	; 0x25
     bd8:	1a000005 	bne	bf4 <printf+0x1d0>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     be0:	e6ef3073 	uxtb	r3, r3
     be4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     be8:	e1a01003 	mov	r1, r3
     bec:	ebffff33 	bl	8c0 <putc>
     bf0:	ea000007 	b	c14 <printf+0x1f0>
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bf8:	e3a01025 	mov	r1, #37	; 0x25
     bfc:	ebffff2f 	bl	8c0 <putc>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c04:	e6ef3073 	uxtb	r3, r3
     c08:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c0c:	e1a01003 	mov	r1, r3
     c10:	ebffff2a 	bl	8c0 <putc>
     c14:	e3a03000 	mov	r3, #0
     c18:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c1c:	e51b3010 	ldr	r3, [fp, #-16]
     c20:	e2833001 	add	r3, r3, #1
     c24:	e50b3010 	str	r3, [fp, #-16]
     c28:	e59b2004 	ldr	r2, [fp, #4]
     c2c:	e51b3010 	ldr	r3, [fp, #-16]
     c30:	e0823003 	add	r3, r2, r3
     c34:	e5d33000 	ldrb	r3, [r3]
     c38:	e3530000 	cmp	r3, #0
     c3c:	1affff84 	bne	a54 <printf+0x30>
     c40:	e24bd004 	sub	sp, fp, #4
     c44:	e8bd4800 	pop	{fp, lr}
     c48:	e28dd00c 	add	sp, sp, #12
     c4c:	e12fff1e 	bx	lr
     c50:	0000112c 	.word	0x0000112c

00000c54 <free>:
     c54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c58:	e28db000 	add	fp, sp, #0
     c5c:	e24dd014 	sub	sp, sp, #20
     c60:	e50b0010 	str	r0, [fp, #-16]
     c64:	e51b3010 	ldr	r3, [fp, #-16]
     c68:	e2433008 	sub	r3, r3, #8
     c6c:	e50b300c 	str	r3, [fp, #-12]
     c70:	e59f3150 	ldr	r3, [pc, #336]	; dc8 <free+0x174>
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e50b3008 	str	r3, [fp, #-8]
     c7c:	ea000010 	b	cc4 <free+0x70>
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e5932000 	ldr	r2, [r3]
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e1520003 	cmp	r2, r3
     c90:	8a000008 	bhi	cb8 <free+0x64>
     c94:	e51b200c 	ldr	r2, [fp, #-12]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	8a000010 	bhi	ce8 <free+0x94>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5932000 	ldr	r2, [r3]
     cac:	e51b300c 	ldr	r3, [fp, #-12]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	8a00000b 	bhi	ce8 <free+0x94>
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	e51b200c 	ldr	r2, [fp, #-12]
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	9affffea 	bls	c80 <free+0x2c>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5932000 	ldr	r2, [r3]
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	9affffe5 	bls	c80 <free+0x2c>
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5933004 	ldr	r3, [r3, #4]
     cf0:	e1a03183 	lsl	r3, r3, #3
     cf4:	e51b200c 	ldr	r2, [fp, #-12]
     cf8:	e0822003 	add	r2, r2, r3
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e1520003 	cmp	r2, r3
     d08:	1a00000d 	bne	d44 <free+0xf0>
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5932004 	ldr	r2, [r3, #4]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e5933004 	ldr	r3, [r3, #4]
     d20:	e0822003 	add	r2, r2, r3
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5832004 	str	r2, [r3, #4]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e5932000 	ldr	r2, [r3]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	ea000003 	b	d54 <free+0x100>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5932000 	ldr	r2, [r3]
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5832000 	str	r2, [r3]
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933004 	ldr	r3, [r3, #4]
     d5c:	e1a03183 	lsl	r3, r3, #3
     d60:	e51b2008 	ldr	r2, [fp, #-8]
     d64:	e0822003 	add	r2, r2, r3
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e1520003 	cmp	r2, r3
     d70:	1a00000b 	bne	da4 <free+0x150>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5932004 	ldr	r2, [r3, #4]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5933004 	ldr	r3, [r3, #4]
     d84:	e0822003 	add	r2, r2, r3
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5832004 	str	r2, [r3, #4]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5932000 	ldr	r2, [r3]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5832000 	str	r2, [r3]
     da0:	ea000002 	b	db0 <free+0x15c>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e5832000 	str	r2, [r3]
     db0:	e59f2010 	ldr	r2, [pc, #16]	; dc8 <free+0x174>
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5823000 	str	r3, [r2]
     dbc:	e24bd000 	sub	sp, fp, #0
     dc0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     dc4:	e12fff1e 	bx	lr
     dc8:	00001158 	.word	0x00001158

00000dcc <morecore>:
     dcc:	e92d4800 	push	{fp, lr}
     dd0:	e28db004 	add	fp, sp, #4
     dd4:	e24dd010 	sub	sp, sp, #16
     dd8:	e50b0010 	str	r0, [fp, #-16]
     ddc:	e51b3010 	ldr	r3, [fp, #-16]
     de0:	e3530a01 	cmp	r3, #4096	; 0x1000
     de4:	2a000001 	bcs	df0 <morecore+0x24>
     de8:	e3a03a01 	mov	r3, #4096	; 0x1000
     dec:	e50b3010 	str	r3, [fp, #-16]
     df0:	e51b3010 	ldr	r3, [fp, #-16]
     df4:	e1a03183 	lsl	r3, r3, #3
     df8:	e1a00003 	mov	r0, r3
     dfc:	ebfffe94 	bl	854 <sbrk>
     e00:	e50b0008 	str	r0, [fp, #-8]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e3730001 	cmn	r3, #1
     e0c:	1a000001 	bne	e18 <morecore+0x4c>
     e10:	e3a03000 	mov	r3, #0
     e14:	ea00000a 	b	e44 <morecore+0x78>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e51b2010 	ldr	r2, [fp, #-16]
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e2833008 	add	r3, r3, #8
     e34:	e1a00003 	mov	r0, r3
     e38:	ebffff85 	bl	c54 <free>
     e3c:	e59f300c 	ldr	r3, [pc, #12]	; e50 <morecore+0x84>
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e1a00003 	mov	r0, r3
     e48:	e24bd004 	sub	sp, fp, #4
     e4c:	e8bd8800 	pop	{fp, pc}
     e50:	00001158 	.word	0x00001158

00000e54 <malloc>:
     e54:	e92d4800 	push	{fp, lr}
     e58:	e28db004 	add	fp, sp, #4
     e5c:	e24dd018 	sub	sp, sp, #24
     e60:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e68:	e2833007 	add	r3, r3, #7
     e6c:	e1a031a3 	lsr	r3, r3, #3
     e70:	e2833001 	add	r3, r3, #1
     e74:	e50b3010 	str	r3, [fp, #-16]
     e78:	e59f3134 	ldr	r3, [pc, #308]	; fb4 <malloc+0x160>
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e50b300c 	str	r3, [fp, #-12]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1a00000b 	bne	ec0 <malloc+0x6c>
     e90:	e59f3120 	ldr	r3, [pc, #288]	; fb8 <malloc+0x164>
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	e59f2114 	ldr	r2, [pc, #276]	; fb4 <malloc+0x160>
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e59f3108 	ldr	r3, [pc, #264]	; fb4 <malloc+0x160>
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e59f2104 	ldr	r2, [pc, #260]	; fb8 <malloc+0x164>
     eb0:	e5823000 	str	r3, [r2]
     eb4:	e59f30fc 	ldr	r3, [pc, #252]	; fb8 <malloc+0x164>
     eb8:	e3a02000 	mov	r2, #0
     ebc:	e5832004 	str	r2, [r3, #4]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e50b3008 	str	r3, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5932004 	ldr	r2, [r3, #4]
     ed4:	e51b3010 	ldr	r3, [fp, #-16]
     ed8:	e1520003 	cmp	r2, r3
     edc:	3a00001e 	bcc	f5c <malloc+0x108>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5932004 	ldr	r2, [r3, #4]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e1520003 	cmp	r2, r3
     ef0:	1a000004 	bne	f08 <malloc+0xb4>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5932000 	ldr	r2, [r3]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e5832000 	str	r2, [r3]
     f04:	ea00000e 	b	f44 <malloc+0xf0>
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5932004 	ldr	r2, [r3, #4]
     f10:	e51b3010 	ldr	r3, [fp, #-16]
     f14:	e0632002 	rsb	r2, r3, r2
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5832004 	str	r2, [r3, #4]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933004 	ldr	r3, [r3, #4]
     f28:	e1a03183 	lsl	r3, r3, #3
     f2c:	e51b2008 	ldr	r2, [fp, #-8]
     f30:	e0823003 	add	r3, r2, r3
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e51b2010 	ldr	r2, [fp, #-16]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e59f2068 	ldr	r2, [pc, #104]	; fb4 <malloc+0x160>
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5823000 	str	r3, [r2]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e2833008 	add	r3, r3, #8
     f58:	ea000012 	b	fa8 <malloc+0x154>
     f5c:	e59f3050 	ldr	r3, [pc, #80]	; fb4 <malloc+0x160>
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e51b2008 	ldr	r2, [fp, #-8]
     f68:	e1520003 	cmp	r2, r3
     f6c:	1a000007 	bne	f90 <malloc+0x13c>
     f70:	e51b0010 	ldr	r0, [fp, #-16]
     f74:	ebffff94 	bl	dcc <morecore>
     f78:	e50b0008 	str	r0, [fp, #-8]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e3530000 	cmp	r3, #0
     f84:	1a000001 	bne	f90 <malloc+0x13c>
     f88:	e3a03000 	mov	r3, #0
     f8c:	ea000005 	b	fa8 <malloc+0x154>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e50b300c 	str	r3, [fp, #-12]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e50b3008 	str	r3, [fp, #-8]
     fa4:	eaffffc8 	b	ecc <malloc+0x78>
     fa8:	e1a00003 	mov	r0, r3
     fac:	e24bd004 	sub	sp, fp, #4
     fb0:	e8bd8800 	pop	{fp, pc}
     fb4:	00001158 	.word	0x00001158
     fb8:	00001150 	.word	0x00001150

00000fbc <__aeabi_uidiv>:
     fbc:	e2512001 	subs	r2, r1, #1
     fc0:	012fff1e 	bxeq	lr
     fc4:	3a000036 	bcc	10a4 <__aeabi_uidiv+0xe8>
     fc8:	e1500001 	cmp	r0, r1
     fcc:	9a000022 	bls	105c <__aeabi_uidiv+0xa0>
     fd0:	e1110002 	tst	r1, r2
     fd4:	0a000023 	beq	1068 <__aeabi_uidiv+0xac>
     fd8:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     fdc:	01a01181 	lsleq	r1, r1, #3
     fe0:	03a03008 	moveq	r3, #8
     fe4:	13a03001 	movne	r3, #1
     fe8:	e3510201 	cmp	r1, #268435456	; 0x10000000
     fec:	31510000 	cmpcc	r1, r0
     ff0:	31a01201 	lslcc	r1, r1, #4
     ff4:	31a03203 	lslcc	r3, r3, #4
     ff8:	3afffffa 	bcc	fe8 <__aeabi_uidiv+0x2c>
     ffc:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1000:	31510000 	cmpcc	r1, r0
    1004:	31a01081 	lslcc	r1, r1, #1
    1008:	31a03083 	lslcc	r3, r3, #1
    100c:	3afffffa 	bcc	ffc <__aeabi_uidiv+0x40>
    1010:	e3a02000 	mov	r2, #0
    1014:	e1500001 	cmp	r0, r1
    1018:	20400001 	subcs	r0, r0, r1
    101c:	21822003 	orrcs	r2, r2, r3
    1020:	e15000a1 	cmp	r0, r1, lsr #1
    1024:	204000a1 	subcs	r0, r0, r1, lsr #1
    1028:	218220a3 	orrcs	r2, r2, r3, lsr #1
    102c:	e1500121 	cmp	r0, r1, lsr #2
    1030:	20400121 	subcs	r0, r0, r1, lsr #2
    1034:	21822123 	orrcs	r2, r2, r3, lsr #2
    1038:	e15001a1 	cmp	r0, r1, lsr #3
    103c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1040:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1044:	e3500000 	cmp	r0, #0
    1048:	11b03223 	lsrsne	r3, r3, #4
    104c:	11a01221 	lsrne	r1, r1, #4
    1050:	1affffef 	bne	1014 <__aeabi_uidiv+0x58>
    1054:	e1a00002 	mov	r0, r2
    1058:	e12fff1e 	bx	lr
    105c:	03a00001 	moveq	r0, #1
    1060:	13a00000 	movne	r0, #0
    1064:	e12fff1e 	bx	lr
    1068:	e3510801 	cmp	r1, #65536	; 0x10000
    106c:	21a01821 	lsrcs	r1, r1, #16
    1070:	23a02010 	movcs	r2, #16
    1074:	33a02000 	movcc	r2, #0
    1078:	e3510c01 	cmp	r1, #256	; 0x100
    107c:	21a01421 	lsrcs	r1, r1, #8
    1080:	22822008 	addcs	r2, r2, #8
    1084:	e3510010 	cmp	r1, #16
    1088:	21a01221 	lsrcs	r1, r1, #4
    108c:	22822004 	addcs	r2, r2, #4
    1090:	e3510004 	cmp	r1, #4
    1094:	82822003 	addhi	r2, r2, #3
    1098:	908220a1 	addls	r2, r2, r1, lsr #1
    109c:	e1a00230 	lsr	r0, r0, r2
    10a0:	e12fff1e 	bx	lr
    10a4:	e3500000 	cmp	r0, #0
    10a8:	13e00000 	mvnne	r0, #0
    10ac:	ea000007 	b	10d0 <__aeabi_idiv0>

000010b0 <__aeabi_uidivmod>:
    10b0:	e3510000 	cmp	r1, #0
    10b4:	0afffffa 	beq	10a4 <__aeabi_uidiv+0xe8>
    10b8:	e92d4003 	push	{r0, r1, lr}
    10bc:	ebffffbe 	bl	fbc <__aeabi_uidiv>
    10c0:	e8bd4006 	pop	{r1, r2, lr}
    10c4:	e0030092 	mul	r3, r2, r0
    10c8:	e0411003 	sub	r1, r1, r3
    10cc:	e12fff1e 	bx	lr

000010d0 <__aeabi_idiv0>:
    10d0:	e12fff1e 	bx	lr
