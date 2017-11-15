
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e3a00001 	mov	r0, #1
      18:	e59f1048 	ldr	r1, [pc, #72]	; 68 <cat+0x68>
      1c:	e51b2008 	ldr	r2, [fp, #-8]
      20:	eb0001a4 	bl	6b8 <write>
      24:	e51b0010 	ldr	r0, [fp, #-16]
      28:	e59f1038 	ldr	r1, [pc, #56]	; 68 <cat+0x68>
      2c:	e3a02c02 	mov	r2, #512	; 0x200
      30:	eb000197 	bl	694 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e3a00001 	mov	r0, #1
      54:	e59f1010 	ldr	r1, [pc, #16]	; 6c <cat+0x6c>
      58:	eb00027f 	bl	a5c <printf>
      5c:	eb000171 	bl	628 <exit>
      60:	e24bd004 	sub	sp, fp, #4
      64:	e8bd8800 	pop	{fp, pc}
      68:	00001160 	.word	0x00001160
      6c:	0000110c 	.word	0x0000110c

00000070 <main>:
      70:	e92d4800 	push	{fp, lr}
      74:	e28db004 	add	fp, sp, #4
      78:	e24dd010 	sub	sp, sp, #16
      7c:	e50b0010 	str	r0, [fp, #-16]
      80:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e3530001 	cmp	r3, #1
      8c:	ca000002 	bgt	9c <main+0x2c>
      90:	e3a00000 	mov	r0, #0
      94:	ebffffd9 	bl	0 <cat>
      98:	eb000162 	bl	628 <exit>
      9c:	e3a03001 	mov	r3, #1
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	ea00001c 	b	11c <main+0xac>
      a8:	e51b3008 	ldr	r3, [fp, #-8]
      ac:	e1a03103 	lsl	r3, r3, #2
      b0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      b4:	e0823003 	add	r3, r2, r3
      b8:	e5933000 	ldr	r3, [r3]
      bc:	e1a00003 	mov	r0, r3
      c0:	e3a01000 	mov	r1, #0
      c4:	eb00019f 	bl	748 <open>
      c8:	e50b000c 	str	r0, [fp, #-12]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e3530000 	cmp	r3, #0
      d4:	aa000009 	bge	100 <main+0x90>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e1a03103 	lsl	r3, r3, #2
      e0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      e4:	e0823003 	add	r3, r2, r3
      e8:	e5933000 	ldr	r3, [r3]
      ec:	e3a00001 	mov	r0, #1
      f0:	e59f1038 	ldr	r1, [pc, #56]	; 130 <main+0xc0>
      f4:	e1a02003 	mov	r2, r3
      f8:	eb000257 	bl	a5c <printf>
      fc:	eb000149 	bl	628 <exit>
     100:	e51b000c 	ldr	r0, [fp, #-12]
     104:	ebffffbd 	bl	0 <cat>
     108:	e51b000c 	ldr	r0, [fp, #-12]
     10c:	eb000172 	bl	6dc <close>
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e2833001 	add	r3, r3, #1
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	e51b2008 	ldr	r2, [fp, #-8]
     120:	e51b3010 	ldr	r3, [fp, #-16]
     124:	e1520003 	cmp	r2, r3
     128:	baffffde 	blt	a8 <main+0x38>
     12c:	eb00013d 	bl	628 <exit>
     130:	00001120 	.word	0x00001120

00000134 <strcpy>:
     134:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     138:	e28db000 	add	fp, sp, #0
     13c:	e24dd014 	sub	sp, sp, #20
     140:	e50b0010 	str	r0, [fp, #-16]
     144:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     148:	e51b3010 	ldr	r3, [fp, #-16]
     14c:	e50b3008 	str	r3, [fp, #-8]
     150:	e1a00000 	nop			; (mov r0, r0)
     154:	e51b3010 	ldr	r3, [fp, #-16]
     158:	e2832001 	add	r2, r3, #1
     15c:	e50b2010 	str	r2, [fp, #-16]
     160:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     164:	e2821001 	add	r1, r2, #1
     168:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     16c:	e5d22000 	ldrb	r2, [r2]
     170:	e5c32000 	strb	r2, [r3]
     174:	e5d33000 	ldrb	r3, [r3]
     178:	e3530000 	cmp	r3, #0
     17c:	1afffff4 	bne	154 <strcpy+0x20>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e1a00003 	mov	r0, r3
     188:	e24bd000 	sub	sp, fp, #0
     18c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strcmp>:
     194:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd00c 	sub	sp, sp, #12
     1a0:	e50b0008 	str	r0, [fp, #-8]
     1a4:	e50b100c 	str	r1, [fp, #-12]
     1a8:	ea000005 	b	1c4 <strcmp+0x30>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b300c 	ldr	r3, [fp, #-12]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b300c 	str	r3, [fp, #-12]
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	0a000005 	beq	1ec <strcmp+0x58>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d32000 	ldrb	r2, [r3]
     1dc:	e51b300c 	ldr	r3, [fp, #-12]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e1520003 	cmp	r2, r3
     1e8:	0affffef 	beq	1ac <strcmp+0x18>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e1a02003 	mov	r2, r3
     1f8:	e51b300c 	ldr	r3, [fp, #-12]
     1fc:	e5d33000 	ldrb	r3, [r3]
     200:	e0633002 	rsb	r3, r3, r2
     204:	e1a00003 	mov	r0, r3
     208:	e24bd000 	sub	sp, fp, #0
     20c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <strlen>:
     214:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd014 	sub	sp, sp, #20
     220:	e50b0010 	str	r0, [fp, #-16]
     224:	e3a03000 	mov	r3, #0
     228:	e50b3008 	str	r3, [fp, #-8]
     22c:	ea000002 	b	23c <strlen+0x28>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e51b2010 	ldr	r2, [fp, #-16]
     244:	e0823003 	add	r3, r2, r3
     248:	e5d33000 	ldrb	r3, [r3]
     24c:	e3530000 	cmp	r3, #0
     250:	1afffff6 	bne	230 <strlen+0x1c>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e1a00003 	mov	r0, r3
     25c:	e24bd000 	sub	sp, fp, #0
     260:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     264:	e12fff1e 	bx	lr

00000268 <memset>:
     268:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     26c:	e28db000 	add	fp, sp, #0
     270:	e24dd024 	sub	sp, sp, #36	; 0x24
     274:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     278:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     27c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     280:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     28c:	e54b300d 	strb	r3, [fp, #-13]
     290:	e55b300d 	ldrb	r3, [fp, #-13]
     294:	e1a02c03 	lsl	r2, r3, #24
     298:	e55b300d 	ldrb	r3, [fp, #-13]
     29c:	e1a03803 	lsl	r3, r3, #16
     2a0:	e1822003 	orr	r2, r2, r3
     2a4:	e55b300d 	ldrb	r3, [fp, #-13]
     2a8:	e1a03403 	lsl	r3, r3, #8
     2ac:	e1822003 	orr	r2, r2, r3
     2b0:	e55b300d 	ldrb	r3, [fp, #-13]
     2b4:	e1823003 	orr	r3, r2, r3
     2b8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     2bc:	ea000008 	b	2e4 <memset+0x7c>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e55b200d 	ldrb	r2, [fp, #-13]
     2c8:	e5c32000 	strb	r2, [r3]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2d0:	e2433001 	sub	r3, r3, #1
     2d4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e2833001 	add	r3, r3, #1
     2e0:	e50b3008 	str	r3, [fp, #-8]
     2e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2e8:	e3530000 	cmp	r3, #0
     2ec:	0a000003 	beq	300 <memset+0x98>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2033003 	and	r3, r3, #3
     2f8:	e3530000 	cmp	r3, #0
     2fc:	1affffef 	bne	2c0 <memset+0x58>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e50b300c 	str	r3, [fp, #-12]
     308:	ea000008 	b	330 <memset+0xc8>
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     314:	e5832000 	str	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     31c:	e2433004 	sub	r3, r3, #4
     320:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e2833004 	add	r3, r3, #4
     32c:	e50b300c 	str	r3, [fp, #-12]
     330:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     334:	e3530003 	cmp	r3, #3
     338:	8afffff3 	bhi	30c <memset+0xa4>
     33c:	e51b300c 	ldr	r3, [fp, #-12]
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	ea000008 	b	36c <memset+0x104>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     358:	e2433001 	sub	r3, r3, #1
     35c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     370:	e3530000 	cmp	r3, #0
     374:	1afffff3 	bne	348 <memset+0xe0>
     378:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     37c:	e1a00003 	mov	r0, r3
     380:	e24bd000 	sub	sp, fp, #0
     384:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     388:	e12fff1e 	bx	lr

0000038c <strchr>:
     38c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     390:	e28db000 	add	fp, sp, #0
     394:	e24dd00c 	sub	sp, sp, #12
     398:	e50b0008 	str	r0, [fp, #-8]
     39c:	e1a03001 	mov	r3, r1
     3a0:	e54b3009 	strb	r3, [fp, #-9]
     3a4:	ea000009 	b	3d0 <strchr+0x44>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e5d33000 	ldrb	r3, [r3]
     3b0:	e55b2009 	ldrb	r2, [fp, #-9]
     3b4:	e1520003 	cmp	r2, r3
     3b8:	1a000001 	bne	3c4 <strchr+0x38>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	ea000007 	b	3e4 <strchr+0x58>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e2833001 	add	r3, r3, #1
     3cc:	e50b3008 	str	r3, [fp, #-8]
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e5d33000 	ldrb	r3, [r3]
     3d8:	e3530000 	cmp	r3, #0
     3dc:	1afffff1 	bne	3a8 <strchr+0x1c>
     3e0:	e3a03000 	mov	r3, #0
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd000 	sub	sp, fp, #0
     3ec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3f0:	e12fff1e 	bx	lr

000003f4 <gets>:
     3f4:	e92d4800 	push	{fp, lr}
     3f8:	e28db004 	add	fp, sp, #4
     3fc:	e24dd018 	sub	sp, sp, #24
     400:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     404:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     408:	e3a03000 	mov	r3, #0
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	ea000017 	b	474 <gets+0x80>
     414:	e24b300d 	sub	r3, fp, #13
     418:	e3a00000 	mov	r0, #0
     41c:	e1a01003 	mov	r1, r3
     420:	e3a02001 	mov	r2, #1
     424:	eb00009a 	bl	694 <read>
     428:	e50b000c 	str	r0, [fp, #-12]
     42c:	e51b300c 	ldr	r3, [fp, #-12]
     430:	e3530000 	cmp	r3, #0
     434:	ca000000 	bgt	43c <gets+0x48>
     438:	ea000012 	b	488 <gets+0x94>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2832001 	add	r2, r3, #1
     444:	e50b2008 	str	r2, [fp, #-8]
     448:	e1a02003 	mov	r2, r3
     44c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     450:	e0833002 	add	r3, r3, r2
     454:	e55b200d 	ldrb	r2, [fp, #-13]
     458:	e5c32000 	strb	r2, [r3]
     45c:	e55b300d 	ldrb	r3, [fp, #-13]
     460:	e353000a 	cmp	r3, #10
     464:	0a000007 	beq	488 <gets+0x94>
     468:	e55b300d 	ldrb	r3, [fp, #-13]
     46c:	e353000d 	cmp	r3, #13
     470:	0a000004 	beq	488 <gets+0x94>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2832001 	add	r2, r3, #1
     47c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     480:	e1520003 	cmp	r2, r3
     484:	baffffe2 	blt	414 <gets+0x20>
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     490:	e0823003 	add	r3, r2, r3
     494:	e3a02000 	mov	r2, #0
     498:	e5c32000 	strb	r2, [r3]
     49c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4a0:	e1a00003 	mov	r0, r3
     4a4:	e24bd004 	sub	sp, fp, #4
     4a8:	e8bd8800 	pop	{fp, pc}

000004ac <stat>:
     4ac:	e92d4800 	push	{fp, lr}
     4b0:	e28db004 	add	fp, sp, #4
     4b4:	e24dd010 	sub	sp, sp, #16
     4b8:	e50b0010 	str	r0, [fp, #-16]
     4bc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4c0:	e51b0010 	ldr	r0, [fp, #-16]
     4c4:	e3a01000 	mov	r1, #0
     4c8:	eb00009e 	bl	748 <open>
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e3530000 	cmp	r3, #0
     4d8:	aa000001 	bge	4e4 <stat+0x38>
     4dc:	e3e03000 	mvn	r3, #0
     4e0:	ea000006 	b	500 <stat+0x54>
     4e4:	e51b0008 	ldr	r0, [fp, #-8]
     4e8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     4ec:	eb0000b0 	bl	7b4 <fstat>
     4f0:	e50b000c 	str	r0, [fp, #-12]
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb000077 	bl	6dc <close>
     4fc:	e51b300c 	ldr	r3, [fp, #-12]
     500:	e1a00003 	mov	r0, r3
     504:	e24bd004 	sub	sp, fp, #4
     508:	e8bd8800 	pop	{fp, pc}

0000050c <atoi>:
     50c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     510:	e28db000 	add	fp, sp, #0
     514:	e24dd014 	sub	sp, sp, #20
     518:	e50b0010 	str	r0, [fp, #-16]
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea00000c 	b	55c <atoi+0x50>
     528:	e51b2008 	ldr	r2, [fp, #-8]
     52c:	e1a03002 	mov	r3, r2
     530:	e1a03103 	lsl	r3, r3, #2
     534:	e0833002 	add	r3, r3, r2
     538:	e1a03083 	lsl	r3, r3, #1
     53c:	e1a01003 	mov	r1, r3
     540:	e51b3010 	ldr	r3, [fp, #-16]
     544:	e2832001 	add	r2, r3, #1
     548:	e50b2010 	str	r2, [fp, #-16]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e0813003 	add	r3, r1, r3
     554:	e2433030 	sub	r3, r3, #48	; 0x30
     558:	e50b3008 	str	r3, [fp, #-8]
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e5d33000 	ldrb	r3, [r3]
     564:	e353002f 	cmp	r3, #47	; 0x2f
     568:	9a000003 	bls	57c <atoi+0x70>
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530039 	cmp	r3, #57	; 0x39
     578:	9affffea 	bls	528 <atoi+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e24bd000 	sub	sp, fp, #0
     588:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memmove>:
     590:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd01c 	sub	sp, sp, #28
     59c:	e50b0010 	str	r0, [fp, #-16]
     5a0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5a4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     5b4:	e50b300c 	str	r3, [fp, #-12]
     5b8:	ea000007 	b	5dc <memmove+0x4c>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e2832001 	add	r2, r3, #1
     5c4:	e50b2008 	str	r2, [fp, #-8]
     5c8:	e51b200c 	ldr	r2, [fp, #-12]
     5cc:	e2821001 	add	r1, r2, #1
     5d0:	e50b100c 	str	r1, [fp, #-12]
     5d4:	e5d22000 	ldrb	r2, [r2]
     5d8:	e5c32000 	strb	r2, [r3]
     5dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5e0:	e2432001 	sub	r2, r3, #1
     5e4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5e8:	e3530000 	cmp	r3, #0
     5ec:	cafffff2 	bgt	5bc <memmove+0x2c>
     5f0:	e51b3010 	ldr	r3, [fp, #-16]
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e24bd000 	sub	sp, fp, #0
     5fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <fork>:
     604:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     608:	e1a04003 	mov	r4, r3
     60c:	e1a03002 	mov	r3, r2
     610:	e1a02001 	mov	r2, r1
     614:	e1a01000 	mov	r1, r0
     618:	e3a00001 	mov	r0, #1
     61c:	ef000000 	svc	0x00000000
     620:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <exit>:
     628:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     62c:	e1a04003 	mov	r4, r3
     630:	e1a03002 	mov	r3, r2
     634:	e1a02001 	mov	r2, r1
     638:	e1a01000 	mov	r1, r0
     63c:	e3a00002 	mov	r0, #2
     640:	ef000000 	svc	0x00000000
     644:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <wait>:
     64c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     650:	e1a04003 	mov	r4, r3
     654:	e1a03002 	mov	r3, r2
     658:	e1a02001 	mov	r2, r1
     65c:	e1a01000 	mov	r1, r0
     660:	e3a00003 	mov	r0, #3
     664:	ef000000 	svc	0x00000000
     668:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <pipe>:
     670:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     674:	e1a04003 	mov	r4, r3
     678:	e1a03002 	mov	r3, r2
     67c:	e1a02001 	mov	r2, r1
     680:	e1a01000 	mov	r1, r0
     684:	e3a00004 	mov	r0, #4
     688:	ef000000 	svc	0x00000000
     68c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <read>:
     694:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     698:	e1a04003 	mov	r4, r3
     69c:	e1a03002 	mov	r3, r2
     6a0:	e1a02001 	mov	r2, r1
     6a4:	e1a01000 	mov	r1, r0
     6a8:	e3a00005 	mov	r0, #5
     6ac:	ef000000 	svc	0x00000000
     6b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <write>:
     6b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6bc:	e1a04003 	mov	r4, r3
     6c0:	e1a03002 	mov	r3, r2
     6c4:	e1a02001 	mov	r2, r1
     6c8:	e1a01000 	mov	r1, r0
     6cc:	e3a00010 	mov	r0, #16
     6d0:	ef000000 	svc	0x00000000
     6d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <close>:
     6dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6e0:	e1a04003 	mov	r4, r3
     6e4:	e1a03002 	mov	r3, r2
     6e8:	e1a02001 	mov	r2, r1
     6ec:	e1a01000 	mov	r1, r0
     6f0:	e3a00015 	mov	r0, #21
     6f4:	ef000000 	svc	0x00000000
     6f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <kill>:
     700:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     704:	e1a04003 	mov	r4, r3
     708:	e1a03002 	mov	r3, r2
     70c:	e1a02001 	mov	r2, r1
     710:	e1a01000 	mov	r1, r0
     714:	e3a00006 	mov	r0, #6
     718:	ef000000 	svc	0x00000000
     71c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <exec>:
     724:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     728:	e1a04003 	mov	r4, r3
     72c:	e1a03002 	mov	r3, r2
     730:	e1a02001 	mov	r2, r1
     734:	e1a01000 	mov	r1, r0
     738:	e3a00007 	mov	r0, #7
     73c:	ef000000 	svc	0x00000000
     740:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     744:	e12fff1e 	bx	lr

00000748 <open>:
     748:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     74c:	e1a04003 	mov	r4, r3
     750:	e1a03002 	mov	r3, r2
     754:	e1a02001 	mov	r2, r1
     758:	e1a01000 	mov	r1, r0
     75c:	e3a0000f 	mov	r0, #15
     760:	ef000000 	svc	0x00000000
     764:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <mknod>:
     76c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     770:	e1a04003 	mov	r4, r3
     774:	e1a03002 	mov	r3, r2
     778:	e1a02001 	mov	r2, r1
     77c:	e1a01000 	mov	r1, r0
     780:	e3a00011 	mov	r0, #17
     784:	ef000000 	svc	0x00000000
     788:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <unlink>:
     790:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     794:	e1a04003 	mov	r4, r3
     798:	e1a03002 	mov	r3, r2
     79c:	e1a02001 	mov	r2, r1
     7a0:	e1a01000 	mov	r1, r0
     7a4:	e3a00012 	mov	r0, #18
     7a8:	ef000000 	svc	0x00000000
     7ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7b0:	e12fff1e 	bx	lr

000007b4 <fstat>:
     7b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7b8:	e1a04003 	mov	r4, r3
     7bc:	e1a03002 	mov	r3, r2
     7c0:	e1a02001 	mov	r2, r1
     7c4:	e1a01000 	mov	r1, r0
     7c8:	e3a00008 	mov	r0, #8
     7cc:	ef000000 	svc	0x00000000
     7d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <link>:
     7d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00013 	mov	r0, #19
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <mkdir>:
     7fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00014 	mov	r0, #20
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <chdir>:
     820:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00009 	mov	r0, #9
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <dup>:
     844:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a0000a 	mov	r0, #10
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <getpid>:
     868:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a0000b 	mov	r0, #11
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <sbrk>:
     88c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a0000c 	mov	r0, #12
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <sleep>:
     8b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a0000d 	mov	r0, #13
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <uptime>:
     8d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a0000e 	mov	r0, #14
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <putc>:
     8f8:	e92d4800 	push	{fp, lr}
     8fc:	e28db004 	add	fp, sp, #4
     900:	e24dd008 	sub	sp, sp, #8
     904:	e50b0008 	str	r0, [fp, #-8]
     908:	e1a03001 	mov	r3, r1
     90c:	e54b3009 	strb	r3, [fp, #-9]
     910:	e24b3009 	sub	r3, fp, #9
     914:	e51b0008 	ldr	r0, [fp, #-8]
     918:	e1a01003 	mov	r1, r3
     91c:	e3a02001 	mov	r2, #1
     920:	ebffff64 	bl	6b8 <write>
     924:	e24bd004 	sub	sp, fp, #4
     928:	e8bd8800 	pop	{fp, pc}

0000092c <printint>:
     92c:	e92d4810 	push	{r4, fp, lr}
     930:	e28db008 	add	fp, sp, #8
     934:	e24dd034 	sub	sp, sp, #52	; 0x34
     938:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     93c:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     940:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     944:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     948:	e3a03000 	mov	r3, #0
     94c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     950:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     954:	e3530000 	cmp	r3, #0
     958:	0a000008 	beq	980 <printint+0x54>
     95c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     960:	e3530000 	cmp	r3, #0
     964:	aa000005 	bge	980 <printint+0x54>
     968:	e3a03001 	mov	r3, #1
     96c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     970:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     974:	e2633000 	rsb	r3, r3, #0
     978:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     97c:	ea000001 	b	988 <printint+0x5c>
     980:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     984:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     988:	e3a03000 	mov	r3, #0
     98c:	e50b3010 	str	r3, [fp, #-16]
     990:	e51b4010 	ldr	r4, [fp, #-16]
     994:	e2843001 	add	r3, r4, #1
     998:	e50b3010 	str	r3, [fp, #-16]
     99c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     9a0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     9a4:	e1a00002 	mov	r0, r2
     9a8:	e1a01003 	mov	r1, r3
     9ac:	eb0001cd 	bl	10e8 <__aeabi_uidivmod>
     9b0:	e1a03001 	mov	r3, r1
     9b4:	e1a02003 	mov	r2, r3
     9b8:	e59f3098 	ldr	r3, [pc, #152]	; a58 <printint+0x12c>
     9bc:	e7d32002 	ldrb	r2, [r3, r2]
     9c0:	e24b300c 	sub	r3, fp, #12
     9c4:	e0833004 	add	r3, r3, r4
     9c8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9cc:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     9d0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     9d4:	e1a01003 	mov	r1, r3
     9d8:	eb000185 	bl	ff4 <__aeabi_uidiv>
     9dc:	e1a03000 	mov	r3, r0
     9e0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     9e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     9e8:	e3530000 	cmp	r3, #0
     9ec:	1affffe7 	bne	990 <printint+0x64>
     9f0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     9f4:	e3530000 	cmp	r3, #0
     9f8:	0a000006 	beq	a18 <printint+0xec>
     9fc:	e51b3010 	ldr	r3, [fp, #-16]
     a00:	e2832001 	add	r2, r3, #1
     a04:	e50b2010 	str	r2, [fp, #-16]
     a08:	e24b200c 	sub	r2, fp, #12
     a0c:	e0823003 	add	r3, r2, r3
     a10:	e3a0202d 	mov	r2, #45	; 0x2d
     a14:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a18:	ea000006 	b	a38 <printint+0x10c>
     a1c:	e24b2028 	sub	r2, fp, #40	; 0x28
     a20:	e51b3010 	ldr	r3, [fp, #-16]
     a24:	e0823003 	add	r3, r2, r3
     a28:	e5d33000 	ldrb	r3, [r3]
     a2c:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     a30:	e1a01003 	mov	r1, r3
     a34:	ebffffaf 	bl	8f8 <putc>
     a38:	e51b3010 	ldr	r3, [fp, #-16]
     a3c:	e2433001 	sub	r3, r3, #1
     a40:	e50b3010 	str	r3, [fp, #-16]
     a44:	e51b3010 	ldr	r3, [fp, #-16]
     a48:	e3530000 	cmp	r3, #0
     a4c:	aafffff2 	bge	a1c <printint+0xf0>
     a50:	e24bd008 	sub	sp, fp, #8
     a54:	e8bd8810 	pop	{r4, fp, pc}
     a58:	00001140 	.word	0x00001140

00000a5c <printf>:
     a5c:	e92d000e 	push	{r1, r2, r3}
     a60:	e92d4800 	push	{fp, lr}
     a64:	e28db004 	add	fp, sp, #4
     a68:	e24dd024 	sub	sp, sp, #36	; 0x24
     a6c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a70:	e3a03000 	mov	r3, #0
     a74:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a78:	e28b3008 	add	r3, fp, #8
     a7c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a80:	e3a03000 	mov	r3, #0
     a84:	e50b3010 	str	r3, [fp, #-16]
     a88:	ea000074 	b	c60 <printf+0x204>
     a8c:	e59b2004 	ldr	r2, [fp, #4]
     a90:	e51b3010 	ldr	r3, [fp, #-16]
     a94:	e0823003 	add	r3, r2, r3
     a98:	e5d33000 	ldrb	r3, [r3]
     a9c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     aa0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     aa4:	e3530000 	cmp	r3, #0
     aa8:	1a00000b 	bne	adc <printf+0x80>
     aac:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ab0:	e3530025 	cmp	r3, #37	; 0x25
     ab4:	1a000002 	bne	ac4 <printf+0x68>
     ab8:	e3a03025 	mov	r3, #37	; 0x25
     abc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ac0:	ea000063 	b	c54 <printf+0x1f8>
     ac4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ac8:	e6ef3073 	uxtb	r3, r3
     acc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ad0:	e1a01003 	mov	r1, r3
     ad4:	ebffff87 	bl	8f8 <putc>
     ad8:	ea00005d 	b	c54 <printf+0x1f8>
     adc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ae0:	e3530025 	cmp	r3, #37	; 0x25
     ae4:	1a00005a 	bne	c54 <printf+0x1f8>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aec:	e3530064 	cmp	r3, #100	; 0x64
     af0:	1a00000a 	bne	b20 <printf+0xc4>
     af4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     af8:	e5933000 	ldr	r3, [r3]
     afc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b00:	e1a01003 	mov	r1, r3
     b04:	e3a0200a 	mov	r2, #10
     b08:	e3a03001 	mov	r3, #1
     b0c:	ebffff86 	bl	92c <printint>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b14:	e2833004 	add	r3, r3, #4
     b18:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b1c:	ea00004a 	b	c4c <printf+0x1f0>
     b20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b24:	e3530078 	cmp	r3, #120	; 0x78
     b28:	0a000002 	beq	b38 <printf+0xdc>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b30:	e3530070 	cmp	r3, #112	; 0x70
     b34:	1a00000a 	bne	b64 <printf+0x108>
     b38:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b44:	e1a01003 	mov	r1, r3
     b48:	e3a02010 	mov	r2, #16
     b4c:	e3a03000 	mov	r3, #0
     b50:	ebffff75 	bl	92c <printint>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b60:	ea000039 	b	c4c <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b68:	e3530073 	cmp	r3, #115	; 0x73
     b6c:	1a000018 	bne	bd4 <printf+0x178>
     b70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b74:	e5933000 	ldr	r3, [r3]
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b80:	e2833004 	add	r3, r3, #4
     b84:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b88:	e51b300c 	ldr	r3, [fp, #-12]
     b8c:	e3530000 	cmp	r3, #0
     b90:	1a000001 	bne	b9c <printf+0x140>
     b94:	e59f30ec 	ldr	r3, [pc, #236]	; c88 <printf+0x22c>
     b98:	e50b300c 	str	r3, [fp, #-12]
     b9c:	ea000007 	b	bc0 <printf+0x164>
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bac:	e1a01003 	mov	r1, r3
     bb0:	ebffff50 	bl	8f8 <putc>
     bb4:	e51b300c 	ldr	r3, [fp, #-12]
     bb8:	e2833001 	add	r3, r3, #1
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	e51b300c 	ldr	r3, [fp, #-12]
     bc4:	e5d33000 	ldrb	r3, [r3]
     bc8:	e3530000 	cmp	r3, #0
     bcc:	1afffff3 	bne	ba0 <printf+0x144>
     bd0:	ea00001d 	b	c4c <printf+0x1f0>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bd8:	e3530063 	cmp	r3, #99	; 0x63
     bdc:	1a000009 	bne	c08 <printf+0x1ac>
     be0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     be4:	e5933000 	ldr	r3, [r3]
     be8:	e6ef3073 	uxtb	r3, r3
     bec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bf0:	e1a01003 	mov	r1, r3
     bf4:	ebffff3f 	bl	8f8 <putc>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bfc:	e2833004 	add	r3, r3, #4
     c00:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c04:	ea000010 	b	c4c <printf+0x1f0>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c0c:	e3530025 	cmp	r3, #37	; 0x25
     c10:	1a000005 	bne	c2c <printf+0x1d0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c18:	e6ef3073 	uxtb	r3, r3
     c1c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c20:	e1a01003 	mov	r1, r3
     c24:	ebffff33 	bl	8f8 <putc>
     c28:	ea000007 	b	c4c <printf+0x1f0>
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c30:	e3a01025 	mov	r1, #37	; 0x25
     c34:	ebffff2f 	bl	8f8 <putc>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c3c:	e6ef3073 	uxtb	r3, r3
     c40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c44:	e1a01003 	mov	r1, r3
     c48:	ebffff2a 	bl	8f8 <putc>
     c4c:	e3a03000 	mov	r3, #0
     c50:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c54:	e51b3010 	ldr	r3, [fp, #-16]
     c58:	e2833001 	add	r3, r3, #1
     c5c:	e50b3010 	str	r3, [fp, #-16]
     c60:	e59b2004 	ldr	r2, [fp, #4]
     c64:	e51b3010 	ldr	r3, [fp, #-16]
     c68:	e0823003 	add	r3, r2, r3
     c6c:	e5d33000 	ldrb	r3, [r3]
     c70:	e3530000 	cmp	r3, #0
     c74:	1affff84 	bne	a8c <printf+0x30>
     c78:	e24bd004 	sub	sp, fp, #4
     c7c:	e8bd4800 	pop	{fp, lr}
     c80:	e28dd00c 	add	sp, sp, #12
     c84:	e12fff1e 	bx	lr
     c88:	00001138 	.word	0x00001138

00000c8c <free>:
     c8c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c90:	e28db000 	add	fp, sp, #0
     c94:	e24dd014 	sub	sp, sp, #20
     c98:	e50b0010 	str	r0, [fp, #-16]
     c9c:	e51b3010 	ldr	r3, [fp, #-16]
     ca0:	e2433008 	sub	r3, r3, #8
     ca4:	e50b300c 	str	r3, [fp, #-12]
     ca8:	e59f3150 	ldr	r3, [pc, #336]	; e00 <free+0x174>
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e50b3008 	str	r3, [fp, #-8]
     cb4:	ea000010 	b	cfc <free+0x70>
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5932000 	ldr	r2, [r3]
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e1520003 	cmp	r2, r3
     cc8:	8a000008 	bhi	cf0 <free+0x64>
     ccc:	e51b200c 	ldr	r2, [fp, #-12]
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	8a000010 	bhi	d20 <free+0x94>
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e5932000 	ldr	r2, [r3]
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e1520003 	cmp	r2, r3
     cec:	8a00000b 	bhi	d20 <free+0x94>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	e51b200c 	ldr	r2, [fp, #-12]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e1520003 	cmp	r2, r3
     d08:	9affffea 	bls	cb8 <free+0x2c>
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e5932000 	ldr	r2, [r3]
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e1520003 	cmp	r2, r3
     d1c:	9affffe5 	bls	cb8 <free+0x2c>
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5933004 	ldr	r3, [r3, #4]
     d28:	e1a03183 	lsl	r3, r3, #3
     d2c:	e51b200c 	ldr	r2, [fp, #-12]
     d30:	e0822003 	add	r2, r2, r3
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e1520003 	cmp	r2, r3
     d40:	1a00000d 	bne	d7c <free+0xf0>
     d44:	e51b300c 	ldr	r3, [fp, #-12]
     d48:	e5932004 	ldr	r2, [r3, #4]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e5933004 	ldr	r3, [r3, #4]
     d58:	e0822003 	add	r2, r2, r3
     d5c:	e51b300c 	ldr	r3, [fp, #-12]
     d60:	e5832004 	str	r2, [r3, #4]
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5933000 	ldr	r3, [r3]
     d6c:	e5932000 	ldr	r2, [r3]
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5832000 	str	r2, [r3]
     d78:	ea000003 	b	d8c <free+0x100>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5932000 	ldr	r2, [r3]
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e5832000 	str	r2, [r3]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5933004 	ldr	r3, [r3, #4]
     d94:	e1a03183 	lsl	r3, r3, #3
     d98:	e51b2008 	ldr	r2, [fp, #-8]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e1520003 	cmp	r2, r3
     da8:	1a00000b 	bne	ddc <free+0x150>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5932004 	ldr	r2, [r3, #4]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e0822003 	add	r2, r2, r3
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5832004 	str	r2, [r3, #4]
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5932000 	ldr	r2, [r3]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5832000 	str	r2, [r3]
     dd8:	ea000002 	b	de8 <free+0x15c>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e51b200c 	ldr	r2, [fp, #-12]
     de4:	e5832000 	str	r2, [r3]
     de8:	e59f2010 	ldr	r2, [pc, #16]	; e00 <free+0x174>
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5823000 	str	r3, [r2]
     df4:	e24bd000 	sub	sp, fp, #0
     df8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     dfc:	e12fff1e 	bx	lr
     e00:	0000115c 	.word	0x0000115c

00000e04 <morecore>:
     e04:	e92d4800 	push	{fp, lr}
     e08:	e28db004 	add	fp, sp, #4
     e0c:	e24dd010 	sub	sp, sp, #16
     e10:	e50b0010 	str	r0, [fp, #-16]
     e14:	e51b3010 	ldr	r3, [fp, #-16]
     e18:	e3530a01 	cmp	r3, #4096	; 0x1000
     e1c:	2a000001 	bcs	e28 <morecore+0x24>
     e20:	e3a03a01 	mov	r3, #4096	; 0x1000
     e24:	e50b3010 	str	r3, [fp, #-16]
     e28:	e51b3010 	ldr	r3, [fp, #-16]
     e2c:	e1a03183 	lsl	r3, r3, #3
     e30:	e1a00003 	mov	r0, r3
     e34:	ebfffe94 	bl	88c <sbrk>
     e38:	e50b0008 	str	r0, [fp, #-8]
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e3730001 	cmn	r3, #1
     e44:	1a000001 	bne	e50 <morecore+0x4c>
     e48:	e3a03000 	mov	r3, #0
     e4c:	ea00000a 	b	e7c <morecore+0x78>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e50b300c 	str	r3, [fp, #-12]
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e51b2010 	ldr	r2, [fp, #-16]
     e60:	e5832004 	str	r2, [r3, #4]
     e64:	e51b300c 	ldr	r3, [fp, #-12]
     e68:	e2833008 	add	r3, r3, #8
     e6c:	e1a00003 	mov	r0, r3
     e70:	ebffff85 	bl	c8c <free>
     e74:	e59f300c 	ldr	r3, [pc, #12]	; e88 <morecore+0x84>
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e1a00003 	mov	r0, r3
     e80:	e24bd004 	sub	sp, fp, #4
     e84:	e8bd8800 	pop	{fp, pc}
     e88:	0000115c 	.word	0x0000115c

00000e8c <malloc>:
     e8c:	e92d4800 	push	{fp, lr}
     e90:	e28db004 	add	fp, sp, #4
     e94:	e24dd018 	sub	sp, sp, #24
     e98:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e9c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ea0:	e2833007 	add	r3, r3, #7
     ea4:	e1a031a3 	lsr	r3, r3, #3
     ea8:	e2833001 	add	r3, r3, #1
     eac:	e50b3010 	str	r3, [fp, #-16]
     eb0:	e59f3134 	ldr	r3, [pc, #308]	; fec <malloc+0x160>
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e50b300c 	str	r3, [fp, #-12]
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e3530000 	cmp	r3, #0
     ec4:	1a00000b 	bne	ef8 <malloc+0x6c>
     ec8:	e59f3120 	ldr	r3, [pc, #288]	; ff0 <malloc+0x164>
     ecc:	e50b300c 	str	r3, [fp, #-12]
     ed0:	e59f2114 	ldr	r2, [pc, #276]	; fec <malloc+0x160>
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5823000 	str	r3, [r2]
     edc:	e59f3108 	ldr	r3, [pc, #264]	; fec <malloc+0x160>
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e59f2104 	ldr	r2, [pc, #260]	; ff0 <malloc+0x164>
     ee8:	e5823000 	str	r3, [r2]
     eec:	e59f30fc 	ldr	r3, [pc, #252]	; ff0 <malloc+0x164>
     ef0:	e3a02000 	mov	r2, #0
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e50b3008 	str	r3, [fp, #-8]
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5932004 	ldr	r2, [r3, #4]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e1520003 	cmp	r2, r3
     f14:	3a00001e 	bcc	f94 <malloc+0x108>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5932004 	ldr	r2, [r3, #4]
     f20:	e51b3010 	ldr	r3, [fp, #-16]
     f24:	e1520003 	cmp	r2, r3
     f28:	1a000004 	bne	f40 <malloc+0xb4>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5932000 	ldr	r2, [r3]
     f34:	e51b300c 	ldr	r3, [fp, #-12]
     f38:	e5832000 	str	r2, [r3]
     f3c:	ea00000e 	b	f7c <malloc+0xf0>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5932004 	ldr	r2, [r3, #4]
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e0632002 	rsb	r2, r3, r2
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5832004 	str	r2, [r3, #4]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5933004 	ldr	r3, [r3, #4]
     f60:	e1a03183 	lsl	r3, r3, #3
     f64:	e51b2008 	ldr	r2, [fp, #-8]
     f68:	e0823003 	add	r3, r2, r3
     f6c:	e50b3008 	str	r3, [fp, #-8]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e51b2010 	ldr	r2, [fp, #-16]
     f78:	e5832004 	str	r2, [r3, #4]
     f7c:	e59f2068 	ldr	r2, [pc, #104]	; fec <malloc+0x160>
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e5823000 	str	r3, [r2]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e2833008 	add	r3, r3, #8
     f90:	ea000012 	b	fe0 <malloc+0x154>
     f94:	e59f3050 	ldr	r3, [pc, #80]	; fec <malloc+0x160>
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e51b2008 	ldr	r2, [fp, #-8]
     fa0:	e1520003 	cmp	r2, r3
     fa4:	1a000007 	bne	fc8 <malloc+0x13c>
     fa8:	e51b0010 	ldr	r0, [fp, #-16]
     fac:	ebffff94 	bl	e04 <morecore>
     fb0:	e50b0008 	str	r0, [fp, #-8]
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e3530000 	cmp	r3, #0
     fbc:	1a000001 	bne	fc8 <malloc+0x13c>
     fc0:	e3a03000 	mov	r3, #0
     fc4:	ea000005 	b	fe0 <malloc+0x154>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e50b300c 	str	r3, [fp, #-12]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5933000 	ldr	r3, [r3]
     fd8:	e50b3008 	str	r3, [fp, #-8]
     fdc:	eaffffc8 	b	f04 <malloc+0x78>
     fe0:	e1a00003 	mov	r0, r3
     fe4:	e24bd004 	sub	sp, fp, #4
     fe8:	e8bd8800 	pop	{fp, pc}
     fec:	0000115c 	.word	0x0000115c
     ff0:	00001154 	.word	0x00001154

00000ff4 <__aeabi_uidiv>:
     ff4:	e2512001 	subs	r2, r1, #1
     ff8:	012fff1e 	bxeq	lr
     ffc:	3a000036 	bcc	10dc <__aeabi_uidiv+0xe8>
    1000:	e1500001 	cmp	r0, r1
    1004:	9a000022 	bls	1094 <__aeabi_uidiv+0xa0>
    1008:	e1110002 	tst	r1, r2
    100c:	0a000023 	beq	10a0 <__aeabi_uidiv+0xac>
    1010:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1014:	01a01181 	lsleq	r1, r1, #3
    1018:	03a03008 	moveq	r3, #8
    101c:	13a03001 	movne	r3, #1
    1020:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1024:	31510000 	cmpcc	r1, r0
    1028:	31a01201 	lslcc	r1, r1, #4
    102c:	31a03203 	lslcc	r3, r3, #4
    1030:	3afffffa 	bcc	1020 <__aeabi_uidiv+0x2c>
    1034:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1038:	31510000 	cmpcc	r1, r0
    103c:	31a01081 	lslcc	r1, r1, #1
    1040:	31a03083 	lslcc	r3, r3, #1
    1044:	3afffffa 	bcc	1034 <__aeabi_uidiv+0x40>
    1048:	e3a02000 	mov	r2, #0
    104c:	e1500001 	cmp	r0, r1
    1050:	20400001 	subcs	r0, r0, r1
    1054:	21822003 	orrcs	r2, r2, r3
    1058:	e15000a1 	cmp	r0, r1, lsr #1
    105c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1060:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1064:	e1500121 	cmp	r0, r1, lsr #2
    1068:	20400121 	subcs	r0, r0, r1, lsr #2
    106c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1070:	e15001a1 	cmp	r0, r1, lsr #3
    1074:	204001a1 	subcs	r0, r0, r1, lsr #3
    1078:	218221a3 	orrcs	r2, r2, r3, lsr #3
    107c:	e3500000 	cmp	r0, #0
    1080:	11b03223 	lsrsne	r3, r3, #4
    1084:	11a01221 	lsrne	r1, r1, #4
    1088:	1affffef 	bne	104c <__aeabi_uidiv+0x58>
    108c:	e1a00002 	mov	r0, r2
    1090:	e12fff1e 	bx	lr
    1094:	03a00001 	moveq	r0, #1
    1098:	13a00000 	movne	r0, #0
    109c:	e12fff1e 	bx	lr
    10a0:	e3510801 	cmp	r1, #65536	; 0x10000
    10a4:	21a01821 	lsrcs	r1, r1, #16
    10a8:	23a02010 	movcs	r2, #16
    10ac:	33a02000 	movcc	r2, #0
    10b0:	e3510c01 	cmp	r1, #256	; 0x100
    10b4:	21a01421 	lsrcs	r1, r1, #8
    10b8:	22822008 	addcs	r2, r2, #8
    10bc:	e3510010 	cmp	r1, #16
    10c0:	21a01221 	lsrcs	r1, r1, #4
    10c4:	22822004 	addcs	r2, r2, #4
    10c8:	e3510004 	cmp	r1, #4
    10cc:	82822003 	addhi	r2, r2, #3
    10d0:	908220a1 	addls	r2, r2, r1, lsr #1
    10d4:	e1a00230 	lsr	r0, r0, r2
    10d8:	e12fff1e 	bx	lr
    10dc:	e3500000 	cmp	r0, #0
    10e0:	13e00000 	mvnne	r0, #0
    10e4:	ea000007 	b	1108 <__aeabi_idiv0>

000010e8 <__aeabi_uidivmod>:
    10e8:	e3510000 	cmp	r1, #0
    10ec:	0afffffa 	beq	10dc <__aeabi_uidiv+0xe8>
    10f0:	e92d4003 	push	{r0, r1, lr}
    10f4:	ebffffbe 	bl	ff4 <__aeabi_uidiv>
    10f8:	e8bd4006 	pop	{r1, r2, lr}
    10fc:	e0030092 	mul	r3, r2, r0
    1100:	e0411003 	sub	r1, r1, r3
    1104:	e12fff1e 	bx	lr

00001108 <__aeabi_idiv0>:
    1108:	e12fff1e 	bx	lr
