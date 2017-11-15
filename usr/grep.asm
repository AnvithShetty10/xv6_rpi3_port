
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000038 	b	104 <grep+0x104>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	; 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000017 	b	9c <grep+0x9c>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
      4c:	e51b100c 	ldr	r1, [fp, #-12]
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000b 	beq	90 <grep+0x90>
      60:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      70:	e2833001 	add	r3, r3, #1
      74:	e1a02003 	mov	r2, r3
      78:	e51b300c 	ldr	r3, [fp, #-12]
      7c:	e0633002 	rsb	r3, r3, r2
      80:	e3a00001 	mov	r0, #1
      84:	e51b100c 	ldr	r1, [fp, #-12]
      88:	e1a02003 	mov	r2, r3
      8c:	eb000254 	bl	9e4 <write>
      90:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      94:	e2833001 	add	r3, r3, #1
      98:	e50b300c 	str	r3, [fp, #-12]
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	e3a0100a 	mov	r1, #10
      a4:	eb000183 	bl	6b8 <strchr>
      a8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
      ac:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      b0:	e3530000 	cmp	r3, #0
      b4:	1affffe0 	bne	3c <grep+0x3c>
      b8:	e51b300c 	ldr	r3, [fp, #-12]
      bc:	e59f207c 	ldr	r2, [pc, #124]	; 140 <grep+0x140>
      c0:	e1530002 	cmp	r3, r2
      c4:	1a000001 	bne	d0 <grep+0xd0>
      c8:	e3a03000 	mov	r3, #0
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e51b3008 	ldr	r3, [fp, #-8]
      d4:	e3530000 	cmp	r3, #0
      d8:	da000009 	ble	104 <grep+0x104>
      dc:	e59f205c 	ldr	r2, [pc, #92]	; 140 <grep+0x140>
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e0633002 	rsb	r3, r3, r2
      e8:	e51b2008 	ldr	r2, [fp, #-8]
      ec:	e0823003 	add	r3, r2, r3
      f0:	e50b3008 	str	r3, [fp, #-8]
      f4:	e59f0044 	ldr	r0, [pc, #68]	; 140 <grep+0x140>
      f8:	e51b100c 	ldr	r1, [fp, #-12]
      fc:	e51b2008 	ldr	r2, [fp, #-8]
     100:	eb0001ed 	bl	8bc <memmove>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e59f2030 	ldr	r2, [pc, #48]	; 140 <grep+0x140>
     10c:	e0832002 	add	r2, r3, r2
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e2633b01 	rsb	r3, r3, #1024	; 0x400
     118:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
     11c:	e1a01002 	mov	r1, r2
     120:	e1a02003 	mov	r2, r3
     124:	eb000225 	bl	9c0 <read>
     128:	e50b0010 	str	r0, [fp, #-16]
     12c:	e51b3010 	ldr	r3, [fp, #-16]
     130:	e3530000 	cmp	r3, #0
     134:	caffffb9 	bgt	20 <grep+0x20>
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001498 	.word	0x00001498

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e3a00002 	mov	r0, #2
     168:	e59f10c4 	ldr	r1, [pc, #196]	; 234 <main+0xf0>
     16c:	eb000305 	bl	d88 <printf>
     170:	eb0001f7 	bl	954 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e51b000c 	ldr	r0, [fp, #-12]
     190:	e3a01000 	mov	r1, #0
     194:	ebffff99 	bl	0 <grep>
     198:	eb0001ed 	bl	954 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e1a00003 	mov	r0, r3
     1c0:	e3a01000 	mov	r1, #0
     1c4:	eb00022a 	bl	a74 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e3a00001 	mov	r0, #1
     1f0:	e59f1040 	ldr	r1, [pc, #64]	; 238 <main+0xf4>
     1f4:	e1a02003 	mov	r2, r3
     1f8:	eb0002e2 	bl	d88 <printf>
     1fc:	eb0001d4 	bl	954 <exit>
     200:	e51b000c 	ldr	r0, [fp, #-12]
     204:	e51b1010 	ldr	r1, [fp, #-16]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb0001fc 	bl	a08 <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001c7 	bl	954 <exit>
     234:	00001438 	.word	0x00001438
     238:	00001458 	.word	0x00001458

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	; 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e1a00003 	mov	r0, r3
     26c:	e51b100c 	ldr	r1, [fp, #-12]
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b0008 	ldr	r0, [fp, #-8]
     280:	e51b100c 	ldr	r1, [fp, #-12]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000037 	b	3d0 <matchhere+0x10c>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	; 0x2a
     300:	1a00000a 	bne	330 <matchhere+0x6c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a02003 	mov	r2, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e1a00002 	mov	r0, r2
     31c:	e1a01003 	mov	r1, r3
     320:	e51b200c 	ldr	r2, [fp, #-12]
     324:	eb00002c 	bl	3dc <matchstar>
     328:	e1a03000 	mov	r3, r0
     32c:	ea000027 	b	3d0 <matchhere+0x10c>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d33000 	ldrb	r3, [r3]
     338:	e3530024 	cmp	r3, #36	; 0x24
     33c:	1a00000b 	bne	370 <matchhere+0xac>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e3530000 	cmp	r3, #0
     350:	1a000006 	bne	370 <matchhere+0xac>
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	03a03001 	moveq	r3, #1
     364:	13a03000 	movne	r3, #0
     368:	e6ef3073 	uxtb	r3, r3
     36c:	ea000017 	b	3d0 <matchhere+0x10c>
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e3530000 	cmp	r3, #0
     37c:	0a000012 	beq	3cc <matchhere+0x108>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5d33000 	ldrb	r3, [r3]
     388:	e353002e 	cmp	r3, #46	; 0x2e
     38c:	0a000005 	beq	3a8 <matchhere+0xe4>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e5d32000 	ldrb	r2, [r3]
     398:	e51b300c 	ldr	r3, [fp, #-12]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e1520003 	cmp	r2, r3
     3a4:	1a000008 	bne	3cc <matchhere+0x108>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2832001 	add	r2, r3, #1
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e1a00002 	mov	r0, r2
     3bc:	e1a01003 	mov	r1, r3
     3c0:	ebffffbf 	bl	2c4 <matchhere>
     3c4:	e1a03000 	mov	r3, r0
     3c8:	ea000000 	b	3d0 <matchhere+0x10c>
     3cc:	e3a03000 	mov	r3, #0
     3d0:	e1a00003 	mov	r0, r3
     3d4:	e24bd004 	sub	sp, fp, #4
     3d8:	e8bd8800 	pop	{fp, pc}

000003dc <matchstar>:
     3dc:	e92d4800 	push	{fp, lr}
     3e0:	e28db004 	add	fp, sp, #4
     3e4:	e24dd010 	sub	sp, sp, #16
     3e8:	e50b0008 	str	r0, [fp, #-8]
     3ec:	e50b100c 	str	r1, [fp, #-12]
     3f0:	e50b2010 	str	r2, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	e51b1010 	ldr	r1, [fp, #-16]
     3fc:	ebffffb0 	bl	2c4 <matchhere>
     400:	e1a03000 	mov	r3, r0
     404:	e3530000 	cmp	r3, #0
     408:	0a000001 	beq	414 <matchstar+0x38>
     40c:	e3a03001 	mov	r3, #1
     410:	ea00000f 	b	454 <matchstar+0x78>
     414:	e51b3010 	ldr	r3, [fp, #-16]
     418:	e5d33000 	ldrb	r3, [r3]
     41c:	e3530000 	cmp	r3, #0
     420:	0a00000a 	beq	450 <matchstar+0x74>
     424:	e51b3010 	ldr	r3, [fp, #-16]
     428:	e2832001 	add	r2, r3, #1
     42c:	e50b2010 	str	r2, [fp, #-16]
     430:	e5d33000 	ldrb	r3, [r3]
     434:	e1a02003 	mov	r2, r3
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e1520003 	cmp	r2, r3
     440:	0affffeb 	beq	3f4 <matchstar+0x18>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e353002e 	cmp	r3, #46	; 0x2e
     44c:	0affffe8 	beq	3f4 <matchstar+0x18>
     450:	e3a03000 	mov	r3, #0
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <strcpy>:
     460:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd014 	sub	sp, sp, #20
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     474:	e51b3010 	ldr	r3, [fp, #-16]
     478:	e50b3008 	str	r3, [fp, #-8]
     47c:	e1a00000 	nop			; (mov r0, r0)
     480:	e51b3010 	ldr	r3, [fp, #-16]
     484:	e2832001 	add	r2, r3, #1
     488:	e50b2010 	str	r2, [fp, #-16]
     48c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     490:	e2821001 	add	r1, r2, #1
     494:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     498:	e5d22000 	ldrb	r2, [r2]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e3530000 	cmp	r3, #0
     4a8:	1afffff4 	bne	480 <strcpy+0x20>
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e24bd000 	sub	sp, fp, #0
     4b8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4bc:	e12fff1e 	bx	lr

000004c0 <strcmp>:
     4c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4c4:	e28db000 	add	fp, sp, #0
     4c8:	e24dd00c 	sub	sp, sp, #12
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e50b100c 	str	r1, [fp, #-12]
     4d4:	ea000005 	b	4f0 <strcmp+0x30>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e2833001 	add	r3, r3, #1
     4ec:	e50b300c 	str	r3, [fp, #-12]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e3530000 	cmp	r3, #0
     4fc:	0a000005 	beq	518 <strcmp+0x58>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e5d32000 	ldrb	r2, [r3]
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e5d33000 	ldrb	r3, [r3]
     510:	e1520003 	cmp	r2, r3
     514:	0affffef 	beq	4d8 <strcmp+0x18>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e5d33000 	ldrb	r3, [r3]
     520:	e1a02003 	mov	r2, r3
     524:	e51b300c 	ldr	r3, [fp, #-12]
     528:	e5d33000 	ldrb	r3, [r3]
     52c:	e0633002 	rsb	r3, r3, r2
     530:	e1a00003 	mov	r0, r3
     534:	e24bd000 	sub	sp, fp, #0
     538:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <strlen>:
     540:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd014 	sub	sp, sp, #20
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e3a03000 	mov	r3, #0
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	ea000002 	b	568 <strlen+0x28>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e2833001 	add	r3, r3, #1
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e51b2010 	ldr	r2, [fp, #-16]
     570:	e0823003 	add	r3, r2, r3
     574:	e5d33000 	ldrb	r3, [r3]
     578:	e3530000 	cmp	r3, #0
     57c:	1afffff6 	bne	55c <strlen+0x1c>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e1a00003 	mov	r0, r3
     588:	e24bd000 	sub	sp, fp, #0
     58c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <memset>:
     594:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd024 	sub	sp, sp, #36	; 0x24
     5a0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     5a4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     5a8:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     5ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     5b8:	e54b300d 	strb	r3, [fp, #-13]
     5bc:	e55b300d 	ldrb	r3, [fp, #-13]
     5c0:	e1a02c03 	lsl	r2, r3, #24
     5c4:	e55b300d 	ldrb	r3, [fp, #-13]
     5c8:	e1a03803 	lsl	r3, r3, #16
     5cc:	e1822003 	orr	r2, r2, r3
     5d0:	e55b300d 	ldrb	r3, [fp, #-13]
     5d4:	e1a03403 	lsl	r3, r3, #8
     5d8:	e1822003 	orr	r2, r2, r3
     5dc:	e55b300d 	ldrb	r3, [fp, #-13]
     5e0:	e1823003 	orr	r3, r2, r3
     5e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     5e8:	ea000008 	b	610 <memset+0x7c>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e55b200d 	ldrb	r2, [fp, #-13]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5fc:	e2433001 	sub	r3, r3, #1
     600:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     614:	e3530000 	cmp	r3, #0
     618:	0a000003 	beq	62c <memset+0x98>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2033003 	and	r3, r3, #3
     624:	e3530000 	cmp	r3, #0
     628:	1affffef 	bne	5ec <memset+0x58>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000008 	b	65c <memset+0xc8>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     640:	e5832000 	str	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     648:	e2433004 	sub	r3, r3, #4
     64c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     650:	e51b300c 	ldr	r3, [fp, #-12]
     654:	e2833004 	add	r3, r3, #4
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     660:	e3530003 	cmp	r3, #3
     664:	8afffff3 	bhi	638 <memset+0xa4>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	ea000008 	b	698 <memset+0x104>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     684:	e2433001 	sub	r3, r3, #1
     688:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2833001 	add	r3, r3, #1
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff3 	bne	674 <memset+0xe0>
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e24bd000 	sub	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strchr>:
     6b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd00c 	sub	sp, sp, #12
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e54b3009 	strb	r3, [fp, #-9]
     6d0:	ea000009 	b	6fc <strchr+0x44>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e55b2009 	ldrb	r2, [fp, #-9]
     6e0:	e1520003 	cmp	r2, r3
     6e4:	1a000001 	bne	6f0 <strchr+0x38>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	ea000007 	b	710 <strchr+0x58>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e3530000 	cmp	r3, #0
     708:	1afffff1 	bne	6d4 <strchr+0x1c>
     70c:	e3a03000 	mov	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e24bd000 	sub	sp, fp, #0
     718:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <gets>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd018 	sub	sp, sp, #24
     72c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     730:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     734:	e3a03000 	mov	r3, #0
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000017 	b	7a0 <gets+0x80>
     740:	e24b300d 	sub	r3, fp, #13
     744:	e3a00000 	mov	r0, #0
     748:	e1a01003 	mov	r1, r3
     74c:	e3a02001 	mov	r2, #1
     750:	eb00009a 	bl	9c0 <read>
     754:	e50b000c 	str	r0, [fp, #-12]
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e3530000 	cmp	r3, #0
     760:	ca000000 	bgt	768 <gets+0x48>
     764:	ea000012 	b	7b4 <gets+0x94>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2832001 	add	r2, r3, #1
     770:	e50b2008 	str	r2, [fp, #-8]
     774:	e1a02003 	mov	r2, r3
     778:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     77c:	e0833002 	add	r3, r3, r2
     780:	e55b200d 	ldrb	r2, [fp, #-13]
     784:	e5c32000 	strb	r2, [r3]
     788:	e55b300d 	ldrb	r3, [fp, #-13]
     78c:	e353000a 	cmp	r3, #10
     790:	0a000007 	beq	7b4 <gets+0x94>
     794:	e55b300d 	ldrb	r3, [fp, #-13]
     798:	e353000d 	cmp	r3, #13
     79c:	0a000004 	beq	7b4 <gets+0x94>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e2832001 	add	r2, r3, #1
     7a8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     7ac:	e1520003 	cmp	r2, r3
     7b0:	baffffe2 	blt	740 <gets+0x20>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     7bc:	e0823003 	add	r3, r2, r3
     7c0:	e3a02000 	mov	r2, #0
     7c4:	e5c32000 	strb	r2, [r3]
     7c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     7cc:	e1a00003 	mov	r0, r3
     7d0:	e24bd004 	sub	sp, fp, #4
     7d4:	e8bd8800 	pop	{fp, pc}

000007d8 <stat>:
     7d8:	e92d4800 	push	{fp, lr}
     7dc:	e28db004 	add	fp, sp, #4
     7e0:	e24dd010 	sub	sp, sp, #16
     7e4:	e50b0010 	str	r0, [fp, #-16]
     7e8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     7ec:	e51b0010 	ldr	r0, [fp, #-16]
     7f0:	e3a01000 	mov	r1, #0
     7f4:	eb00009e 	bl	a74 <open>
     7f8:	e50b0008 	str	r0, [fp, #-8]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e3530000 	cmp	r3, #0
     804:	aa000001 	bge	810 <stat+0x38>
     808:	e3e03000 	mvn	r3, #0
     80c:	ea000006 	b	82c <stat+0x54>
     810:	e51b0008 	ldr	r0, [fp, #-8]
     814:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     818:	eb0000b0 	bl	ae0 <fstat>
     81c:	e50b000c 	str	r0, [fp, #-12]
     820:	e51b0008 	ldr	r0, [fp, #-8]
     824:	eb000077 	bl	a08 <close>
     828:	e51b300c 	ldr	r3, [fp, #-12]
     82c:	e1a00003 	mov	r0, r3
     830:	e24bd004 	sub	sp, fp, #4
     834:	e8bd8800 	pop	{fp, pc}

00000838 <atoi>:
     838:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     83c:	e28db000 	add	fp, sp, #0
     840:	e24dd014 	sub	sp, sp, #20
     844:	e50b0010 	str	r0, [fp, #-16]
     848:	e3a03000 	mov	r3, #0
     84c:	e50b3008 	str	r3, [fp, #-8]
     850:	ea00000c 	b	888 <atoi+0x50>
     854:	e51b2008 	ldr	r2, [fp, #-8]
     858:	e1a03002 	mov	r3, r2
     85c:	e1a03103 	lsl	r3, r3, #2
     860:	e0833002 	add	r3, r3, r2
     864:	e1a03083 	lsl	r3, r3, #1
     868:	e1a01003 	mov	r1, r3
     86c:	e51b3010 	ldr	r3, [fp, #-16]
     870:	e2832001 	add	r2, r3, #1
     874:	e50b2010 	str	r2, [fp, #-16]
     878:	e5d33000 	ldrb	r3, [r3]
     87c:	e0813003 	add	r3, r1, r3
     880:	e2433030 	sub	r3, r3, #48	; 0x30
     884:	e50b3008 	str	r3, [fp, #-8]
     888:	e51b3010 	ldr	r3, [fp, #-16]
     88c:	e5d33000 	ldrb	r3, [r3]
     890:	e353002f 	cmp	r3, #47	; 0x2f
     894:	9a000003 	bls	8a8 <atoi+0x70>
     898:	e51b3010 	ldr	r3, [fp, #-16]
     89c:	e5d33000 	ldrb	r3, [r3]
     8a0:	e3530039 	cmp	r3, #57	; 0x39
     8a4:	9affffea 	bls	854 <atoi+0x1c>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e1a00003 	mov	r0, r3
     8b0:	e24bd000 	sub	sp, fp, #0
     8b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <memmove>:
     8bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     8c0:	e28db000 	add	fp, sp, #0
     8c4:	e24dd01c 	sub	sp, sp, #28
     8c8:	e50b0010 	str	r0, [fp, #-16]
     8cc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     8d0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     8d4:	e51b3010 	ldr	r3, [fp, #-16]
     8d8:	e50b3008 	str	r3, [fp, #-8]
     8dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     8e0:	e50b300c 	str	r3, [fp, #-12]
     8e4:	ea000007 	b	908 <memmove+0x4c>
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e2832001 	add	r2, r3, #1
     8f0:	e50b2008 	str	r2, [fp, #-8]
     8f4:	e51b200c 	ldr	r2, [fp, #-12]
     8f8:	e2821001 	add	r1, r2, #1
     8fc:	e50b100c 	str	r1, [fp, #-12]
     900:	e5d22000 	ldrb	r2, [r2]
     904:	e5c32000 	strb	r2, [r3]
     908:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     90c:	e2432001 	sub	r2, r3, #1
     910:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     914:	e3530000 	cmp	r3, #0
     918:	cafffff2 	bgt	8e8 <memmove+0x2c>
     91c:	e51b3010 	ldr	r3, [fp, #-16]
     920:	e1a00003 	mov	r0, r3
     924:	e24bd000 	sub	sp, fp, #0
     928:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <fork>:
     930:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00001 	mov	r0, #1
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <exit>:
     954:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00002 	mov	r0, #2
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <wait>:
     978:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00003 	mov	r0, #3
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <pipe>:
     99c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00004 	mov	r0, #4
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <read>:
     9c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00005 	mov	r0, #5
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <write>:
     9e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00010 	mov	r0, #16
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <close>:
     a08:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00015 	mov	r0, #21
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <kill>:
     a2c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00006 	mov	r0, #6
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <exec>:
     a50:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00007 	mov	r0, #7
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <open>:
     a74:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a0000f 	mov	r0, #15
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <mknod>:
     a98:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00011 	mov	r0, #17
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <unlink>:
     abc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00012 	mov	r0, #18
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <fstat>:
     ae0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00008 	mov	r0, #8
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <link>:
     b04:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00013 	mov	r0, #19
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <mkdir>:
     b28:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00014 	mov	r0, #20
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <chdir>:
     b4c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00009 	mov	r0, #9
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <dup>:
     b70:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a0000a 	mov	r0, #10
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <getpid>:
     b94:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a0000b 	mov	r0, #11
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <sbrk>:
     bb8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000c 	mov	r0, #12
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <sleep>:
     bdc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000d 	mov	r0, #13
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <uptime>:
     c00:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a0000e 	mov	r0, #14
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <putc>:
     c24:	e92d4800 	push	{fp, lr}
     c28:	e28db004 	add	fp, sp, #4
     c2c:	e24dd008 	sub	sp, sp, #8
     c30:	e50b0008 	str	r0, [fp, #-8]
     c34:	e1a03001 	mov	r3, r1
     c38:	e54b3009 	strb	r3, [fp, #-9]
     c3c:	e24b3009 	sub	r3, fp, #9
     c40:	e51b0008 	ldr	r0, [fp, #-8]
     c44:	e1a01003 	mov	r1, r3
     c48:	e3a02001 	mov	r2, #1
     c4c:	ebffff64 	bl	9e4 <write>
     c50:	e24bd004 	sub	sp, fp, #4
     c54:	e8bd8800 	pop	{fp, pc}

00000c58 <printint>:
     c58:	e92d4810 	push	{r4, fp, lr}
     c5c:	e28db008 	add	fp, sp, #8
     c60:	e24dd034 	sub	sp, sp, #52	; 0x34
     c64:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     c68:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     c6c:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     c70:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     c74:	e3a03000 	mov	r3, #0
     c78:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c7c:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     c80:	e3530000 	cmp	r3, #0
     c84:	0a000008 	beq	cac <printint+0x54>
     c88:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     c8c:	e3530000 	cmp	r3, #0
     c90:	aa000005 	bge	cac <printint+0x54>
     c94:	e3a03001 	mov	r3, #1
     c98:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c9c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     ca0:	e2633000 	rsb	r3, r3, #0
     ca4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ca8:	ea000001 	b	cb4 <printint+0x5c>
     cac:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     cb0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     cb4:	e3a03000 	mov	r3, #0
     cb8:	e50b3010 	str	r3, [fp, #-16]
     cbc:	e51b4010 	ldr	r4, [fp, #-16]
     cc0:	e2843001 	add	r3, r4, #1
     cc4:	e50b3010 	str	r3, [fp, #-16]
     cc8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     ccc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     cd0:	e1a00002 	mov	r0, r2
     cd4:	e1a01003 	mov	r1, r3
     cd8:	eb0001cd 	bl	1414 <__aeabi_uidivmod>
     cdc:	e1a03001 	mov	r3, r1
     ce0:	e1a02003 	mov	r2, r3
     ce4:	e59f3098 	ldr	r3, [pc, #152]	; d84 <printint+0x12c>
     ce8:	e7d32002 	ldrb	r2, [r3, r2]
     cec:	e24b300c 	sub	r3, fp, #12
     cf0:	e0833004 	add	r3, r3, r4
     cf4:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     cf8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     cfc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     d00:	e1a01003 	mov	r1, r3
     d04:	eb000185 	bl	1320 <__aeabi_uidiv>
     d08:	e1a03000 	mov	r3, r0
     d0c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     d10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     d14:	e3530000 	cmp	r3, #0
     d18:	1affffe7 	bne	cbc <printint+0x64>
     d1c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     d20:	e3530000 	cmp	r3, #0
     d24:	0a000006 	beq	d44 <printint+0xec>
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e2832001 	add	r2, r3, #1
     d30:	e50b2010 	str	r2, [fp, #-16]
     d34:	e24b200c 	sub	r2, fp, #12
     d38:	e0823003 	add	r3, r2, r3
     d3c:	e3a0202d 	mov	r2, #45	; 0x2d
     d40:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     d44:	ea000006 	b	d64 <printint+0x10c>
     d48:	e24b2028 	sub	r2, fp, #40	; 0x28
     d4c:	e51b3010 	ldr	r3, [fp, #-16]
     d50:	e0823003 	add	r3, r2, r3
     d54:	e5d33000 	ldrb	r3, [r3]
     d58:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     d5c:	e1a01003 	mov	r1, r3
     d60:	ebffffaf 	bl	c24 <putc>
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e2433001 	sub	r3, r3, #1
     d6c:	e50b3010 	str	r3, [fp, #-16]
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e3530000 	cmp	r3, #0
     d78:	aafffff2 	bge	d48 <printint+0xf0>
     d7c:	e24bd008 	sub	sp, fp, #8
     d80:	e8bd8810 	pop	{r4, fp, pc}
     d84:	00001478 	.word	0x00001478

00000d88 <printf>:
     d88:	e92d000e 	push	{r1, r2, r3}
     d8c:	e92d4800 	push	{fp, lr}
     d90:	e28db004 	add	fp, sp, #4
     d94:	e24dd024 	sub	sp, sp, #36	; 0x24
     d98:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     d9c:	e3a03000 	mov	r3, #0
     da0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     da4:	e28b3008 	add	r3, fp, #8
     da8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     dac:	e3a03000 	mov	r3, #0
     db0:	e50b3010 	str	r3, [fp, #-16]
     db4:	ea000074 	b	f8c <printf+0x204>
     db8:	e59b2004 	ldr	r2, [fp, #4]
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e0823003 	add	r3, r2, r3
     dc4:	e5d33000 	ldrb	r3, [r3]
     dc8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     dcc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1a00000b 	bne	e08 <printf+0x80>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ddc:	e3530025 	cmp	r3, #37	; 0x25
     de0:	1a000002 	bne	df0 <printf+0x68>
     de4:	e3a03025 	mov	r3, #37	; 0x25
     de8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     dec:	ea000063 	b	f80 <printf+0x1f8>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     df4:	e6ef3073 	uxtb	r3, r3
     df8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     dfc:	e1a01003 	mov	r1, r3
     e00:	ebffff87 	bl	c24 <putc>
     e04:	ea00005d 	b	f80 <printf+0x1f8>
     e08:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     e0c:	e3530025 	cmp	r3, #37	; 0x25
     e10:	1a00005a 	bne	f80 <printf+0x1f8>
     e14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e18:	e3530064 	cmp	r3, #100	; 0x64
     e1c:	1a00000a 	bne	e4c <printf+0xc4>
     e20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e2c:	e1a01003 	mov	r1, r3
     e30:	e3a0200a 	mov	r2, #10
     e34:	e3a03001 	mov	r3, #1
     e38:	ebffff86 	bl	c58 <printint>
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e40:	e2833004 	add	r3, r3, #4
     e44:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e48:	ea00004a 	b	f78 <printf+0x1f0>
     e4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e50:	e3530078 	cmp	r3, #120	; 0x78
     e54:	0a000002 	beq	e64 <printf+0xdc>
     e58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e5c:	e3530070 	cmp	r3, #112	; 0x70
     e60:	1a00000a 	bne	e90 <printf+0x108>
     e64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e70:	e1a01003 	mov	r1, r3
     e74:	e3a02010 	mov	r2, #16
     e78:	e3a03000 	mov	r3, #0
     e7c:	ebffff75 	bl	c58 <printint>
     e80:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e84:	e2833004 	add	r3, r3, #4
     e88:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e8c:	ea000039 	b	f78 <printf+0x1f0>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e94:	e3530073 	cmp	r3, #115	; 0x73
     e98:	1a000018 	bne	f00 <printf+0x178>
     e9c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     eac:	e2833004 	add	r3, r3, #4
     eb0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a000001 	bne	ec8 <printf+0x140>
     ec0:	e59f30ec 	ldr	r3, [pc, #236]	; fb4 <printf+0x22c>
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	ea000007 	b	eec <printf+0x164>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5d33000 	ldrb	r3, [r3]
     ed4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ed8:	e1a01003 	mov	r1, r3
     edc:	ebffff50 	bl	c24 <putc>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e2833001 	add	r3, r3, #1
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1afffff3 	bne	ecc <printf+0x144>
     efc:	ea00001d 	b	f78 <printf+0x1f0>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f04:	e3530063 	cmp	r3, #99	; 0x63
     f08:	1a000009 	bne	f34 <printf+0x1ac>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e6ef3073 	uxtb	r3, r3
     f18:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f1c:	e1a01003 	mov	r1, r3
     f20:	ebffff3f 	bl	c24 <putc>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f28:	e2833004 	add	r3, r3, #4
     f2c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     f30:	ea000010 	b	f78 <printf+0x1f0>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f38:	e3530025 	cmp	r3, #37	; 0x25
     f3c:	1a000005 	bne	f58 <printf+0x1d0>
     f40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f44:	e6ef3073 	uxtb	r3, r3
     f48:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f4c:	e1a01003 	mov	r1, r3
     f50:	ebffff33 	bl	c24 <putc>
     f54:	ea000007 	b	f78 <printf+0x1f0>
     f58:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f5c:	e3a01025 	mov	r1, #37	; 0x25
     f60:	ebffff2f 	bl	c24 <putc>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f68:	e6ef3073 	uxtb	r3, r3
     f6c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f70:	e1a01003 	mov	r1, r3
     f74:	ebffff2a 	bl	c24 <putc>
     f78:	e3a03000 	mov	r3, #0
     f7c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e2833001 	add	r3, r3, #1
     f88:	e50b3010 	str	r3, [fp, #-16]
     f8c:	e59b2004 	ldr	r2, [fp, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0823003 	add	r3, r2, r3
     f98:	e5d33000 	ldrb	r3, [r3]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1affff84 	bne	db8 <printf+0x30>
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd4800 	pop	{fp, lr}
     fac:	e28dd00c 	add	sp, sp, #12
     fb0:	e12fff1e 	bx	lr
     fb4:	00001470 	.word	0x00001470

00000fb8 <free>:
     fb8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     fbc:	e28db000 	add	fp, sp, #0
     fc0:	e24dd014 	sub	sp, sp, #20
     fc4:	e50b0010 	str	r0, [fp, #-16]
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e2433008 	sub	r3, r3, #8
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e59f3150 	ldr	r3, [pc, #336]	; 112c <free+0x174>
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e50b3008 	str	r3, [fp, #-8]
     fe0:	ea000010 	b	1028 <free+0x70>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5932000 	ldr	r2, [r3]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	8a000008 	bhi	101c <free+0x64>
     ff8:	e51b200c 	ldr	r2, [fp, #-12]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e1520003 	cmp	r2, r3
    1004:	8a000010 	bhi	104c <free+0x94>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5932000 	ldr	r2, [r3]
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e1520003 	cmp	r2, r3
    1018:	8a00000b 	bhi	104c <free+0x94>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b3008 	str	r3, [fp, #-8]
    1028:	e51b200c 	ldr	r2, [fp, #-12]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e1520003 	cmp	r2, r3
    1034:	9affffea 	bls	fe4 <free+0x2c>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5932000 	ldr	r2, [r3]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e1520003 	cmp	r2, r3
    1048:	9affffe5 	bls	fe4 <free+0x2c>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e1a03183 	lsl	r3, r3, #3
    1058:	e51b200c 	ldr	r2, [fp, #-12]
    105c:	e0822003 	add	r2, r2, r3
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e1520003 	cmp	r2, r3
    106c:	1a00000d 	bne	10a8 <free+0xf0>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5932004 	ldr	r2, [r3, #4]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e5933004 	ldr	r3, [r3, #4]
    1084:	e0822003 	add	r2, r2, r3
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5832004 	str	r2, [r3, #4]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e5932000 	ldr	r2, [r3]
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e5832000 	str	r2, [r3]
    10a4:	ea000003 	b	10b8 <free+0x100>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5932000 	ldr	r2, [r3]
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5832000 	str	r2, [r3]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933004 	ldr	r3, [r3, #4]
    10c0:	e1a03183 	lsl	r3, r3, #3
    10c4:	e51b2008 	ldr	r2, [fp, #-8]
    10c8:	e0822003 	add	r2, r2, r3
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e1520003 	cmp	r2, r3
    10d4:	1a00000b 	bne	1108 <free+0x150>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5932004 	ldr	r2, [r3, #4]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e5933004 	ldr	r3, [r3, #4]
    10e8:	e0822003 	add	r2, r2, r3
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5932000 	ldr	r2, [r3]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5832000 	str	r2, [r3]
    1104:	ea000002 	b	1114 <free+0x15c>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e5832000 	str	r2, [r3]
    1114:	e59f2010 	ldr	r2, [pc, #16]	; 112c <free+0x174>
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e5823000 	str	r3, [r2]
    1120:	e24bd000 	sub	sp, fp, #0
    1124:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1128:	e12fff1e 	bx	lr
    112c:	00001494 	.word	0x00001494

00001130 <morecore>:
    1130:	e92d4800 	push	{fp, lr}
    1134:	e28db004 	add	fp, sp, #4
    1138:	e24dd010 	sub	sp, sp, #16
    113c:	e50b0010 	str	r0, [fp, #-16]
    1140:	e51b3010 	ldr	r3, [fp, #-16]
    1144:	e3530a01 	cmp	r3, #4096	; 0x1000
    1148:	2a000001 	bcs	1154 <morecore+0x24>
    114c:	e3a03a01 	mov	r3, #4096	; 0x1000
    1150:	e50b3010 	str	r3, [fp, #-16]
    1154:	e51b3010 	ldr	r3, [fp, #-16]
    1158:	e1a03183 	lsl	r3, r3, #3
    115c:	e1a00003 	mov	r0, r3
    1160:	ebfffe94 	bl	bb8 <sbrk>
    1164:	e50b0008 	str	r0, [fp, #-8]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e3730001 	cmn	r3, #1
    1170:	1a000001 	bne	117c <morecore+0x4c>
    1174:	e3a03000 	mov	r3, #0
    1178:	ea00000a 	b	11a8 <morecore+0x78>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e51b2010 	ldr	r2, [fp, #-16]
    118c:	e5832004 	str	r2, [r3, #4]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e2833008 	add	r3, r3, #8
    1198:	e1a00003 	mov	r0, r3
    119c:	ebffff85 	bl	fb8 <free>
    11a0:	e59f300c 	ldr	r3, [pc, #12]	; 11b4 <morecore+0x84>
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e1a00003 	mov	r0, r3
    11ac:	e24bd004 	sub	sp, fp, #4
    11b0:	e8bd8800 	pop	{fp, pc}
    11b4:	00001494 	.word	0x00001494

000011b8 <malloc>:
    11b8:	e92d4800 	push	{fp, lr}
    11bc:	e28db004 	add	fp, sp, #4
    11c0:	e24dd018 	sub	sp, sp, #24
    11c4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    11c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    11cc:	e2833007 	add	r3, r3, #7
    11d0:	e1a031a3 	lsr	r3, r3, #3
    11d4:	e2833001 	add	r3, r3, #1
    11d8:	e50b3010 	str	r3, [fp, #-16]
    11dc:	e59f3134 	ldr	r3, [pc, #308]	; 1318 <malloc+0x160>
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e50b300c 	str	r3, [fp, #-12]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e3530000 	cmp	r3, #0
    11f0:	1a00000b 	bne	1224 <malloc+0x6c>
    11f4:	e59f3120 	ldr	r3, [pc, #288]	; 131c <malloc+0x164>
    11f8:	e50b300c 	str	r3, [fp, #-12]
    11fc:	e59f2114 	ldr	r2, [pc, #276]	; 1318 <malloc+0x160>
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5823000 	str	r3, [r2]
    1208:	e59f3108 	ldr	r3, [pc, #264]	; 1318 <malloc+0x160>
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e59f2104 	ldr	r2, [pc, #260]	; 131c <malloc+0x164>
    1214:	e5823000 	str	r3, [r2]
    1218:	e59f30fc 	ldr	r3, [pc, #252]	; 131c <malloc+0x164>
    121c:	e3a02000 	mov	r2, #0
    1220:	e5832004 	str	r2, [r3, #4]
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e50b3008 	str	r3, [fp, #-8]
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e5932004 	ldr	r2, [r3, #4]
    1238:	e51b3010 	ldr	r3, [fp, #-16]
    123c:	e1520003 	cmp	r2, r3
    1240:	3a00001e 	bcc	12c0 <malloc+0x108>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5932004 	ldr	r2, [r3, #4]
    124c:	e51b3010 	ldr	r3, [fp, #-16]
    1250:	e1520003 	cmp	r2, r3
    1254:	1a000004 	bne	126c <malloc+0xb4>
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5932000 	ldr	r2, [r3]
    1260:	e51b300c 	ldr	r3, [fp, #-12]
    1264:	e5832000 	str	r2, [r3]
    1268:	ea00000e 	b	12a8 <malloc+0xf0>
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5932004 	ldr	r2, [r3, #4]
    1274:	e51b3010 	ldr	r3, [fp, #-16]
    1278:	e0632002 	rsb	r2, r3, r2
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e5832004 	str	r2, [r3, #4]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933004 	ldr	r3, [r3, #4]
    128c:	e1a03183 	lsl	r3, r3, #3
    1290:	e51b2008 	ldr	r2, [fp, #-8]
    1294:	e0823003 	add	r3, r2, r3
    1298:	e50b3008 	str	r3, [fp, #-8]
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e51b2010 	ldr	r2, [fp, #-16]
    12a4:	e5832004 	str	r2, [r3, #4]
    12a8:	e59f2068 	ldr	r2, [pc, #104]	; 1318 <malloc+0x160>
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5823000 	str	r3, [r2]
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e2833008 	add	r3, r3, #8
    12bc:	ea000012 	b	130c <malloc+0x154>
    12c0:	e59f3050 	ldr	r3, [pc, #80]	; 1318 <malloc+0x160>
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e51b2008 	ldr	r2, [fp, #-8]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	1a000007 	bne	12f4 <malloc+0x13c>
    12d4:	e51b0010 	ldr	r0, [fp, #-16]
    12d8:	ebffff94 	bl	1130 <morecore>
    12dc:	e50b0008 	str	r0, [fp, #-8]
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e3530000 	cmp	r3, #0
    12e8:	1a000001 	bne	12f4 <malloc+0x13c>
    12ec:	e3a03000 	mov	r3, #0
    12f0:	ea000005 	b	130c <malloc+0x154>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e50b300c 	str	r3, [fp, #-12]
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e50b3008 	str	r3, [fp, #-8]
    1308:	eaffffc8 	b	1230 <malloc+0x78>
    130c:	e1a00003 	mov	r0, r3
    1310:	e24bd004 	sub	sp, fp, #4
    1314:	e8bd8800 	pop	{fp, pc}
    1318:	00001494 	.word	0x00001494
    131c:	0000148c 	.word	0x0000148c

00001320 <__aeabi_uidiv>:
    1320:	e2512001 	subs	r2, r1, #1
    1324:	012fff1e 	bxeq	lr
    1328:	3a000036 	bcc	1408 <__aeabi_uidiv+0xe8>
    132c:	e1500001 	cmp	r0, r1
    1330:	9a000022 	bls	13c0 <__aeabi_uidiv+0xa0>
    1334:	e1110002 	tst	r1, r2
    1338:	0a000023 	beq	13cc <__aeabi_uidiv+0xac>
    133c:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1340:	01a01181 	lsleq	r1, r1, #3
    1344:	03a03008 	moveq	r3, #8
    1348:	13a03001 	movne	r3, #1
    134c:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1350:	31510000 	cmpcc	r1, r0
    1354:	31a01201 	lslcc	r1, r1, #4
    1358:	31a03203 	lslcc	r3, r3, #4
    135c:	3afffffa 	bcc	134c <__aeabi_uidiv+0x2c>
    1360:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1364:	31510000 	cmpcc	r1, r0
    1368:	31a01081 	lslcc	r1, r1, #1
    136c:	31a03083 	lslcc	r3, r3, #1
    1370:	3afffffa 	bcc	1360 <__aeabi_uidiv+0x40>
    1374:	e3a02000 	mov	r2, #0
    1378:	e1500001 	cmp	r0, r1
    137c:	20400001 	subcs	r0, r0, r1
    1380:	21822003 	orrcs	r2, r2, r3
    1384:	e15000a1 	cmp	r0, r1, lsr #1
    1388:	204000a1 	subcs	r0, r0, r1, lsr #1
    138c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1390:	e1500121 	cmp	r0, r1, lsr #2
    1394:	20400121 	subcs	r0, r0, r1, lsr #2
    1398:	21822123 	orrcs	r2, r2, r3, lsr #2
    139c:	e15001a1 	cmp	r0, r1, lsr #3
    13a0:	204001a1 	subcs	r0, r0, r1, lsr #3
    13a4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13a8:	e3500000 	cmp	r0, #0
    13ac:	11b03223 	lsrsne	r3, r3, #4
    13b0:	11a01221 	lsrne	r1, r1, #4
    13b4:	1affffef 	bne	1378 <__aeabi_uidiv+0x58>
    13b8:	e1a00002 	mov	r0, r2
    13bc:	e12fff1e 	bx	lr
    13c0:	03a00001 	moveq	r0, #1
    13c4:	13a00000 	movne	r0, #0
    13c8:	e12fff1e 	bx	lr
    13cc:	e3510801 	cmp	r1, #65536	; 0x10000
    13d0:	21a01821 	lsrcs	r1, r1, #16
    13d4:	23a02010 	movcs	r2, #16
    13d8:	33a02000 	movcc	r2, #0
    13dc:	e3510c01 	cmp	r1, #256	; 0x100
    13e0:	21a01421 	lsrcs	r1, r1, #8
    13e4:	22822008 	addcs	r2, r2, #8
    13e8:	e3510010 	cmp	r1, #16
    13ec:	21a01221 	lsrcs	r1, r1, #4
    13f0:	22822004 	addcs	r2, r2, #4
    13f4:	e3510004 	cmp	r1, #4
    13f8:	82822003 	addhi	r2, r2, #3
    13fc:	908220a1 	addls	r2, r2, r1, lsr #1
    1400:	e1a00230 	lsr	r0, r0, r2
    1404:	e12fff1e 	bx	lr
    1408:	e3500000 	cmp	r0, #0
    140c:	13e00000 	mvnne	r0, #0
    1410:	ea000007 	b	1434 <__aeabi_idiv0>

00001414 <__aeabi_uidivmod>:
    1414:	e3510000 	cmp	r1, #0
    1418:	0afffffa 	beq	1408 <__aeabi_uidiv+0xe8>
    141c:	e92d4003 	push	{r0, r1, lr}
    1420:	ebffffbe 	bl	1320 <__aeabi_uidiv>
    1424:	e8bd4006 	pop	{r1, r2, lr}
    1428:	e0030092 	mul	r3, r2, r0
    142c:	e0411003 	sub	r1, r1, r3
    1430:	e12fff1e 	bx	lr

00001434 <__aeabi_idiv0>:
    1434:	e12fff1e 	bx	lr
