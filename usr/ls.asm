
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
      14:	eb00011a 	bl	484 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	; 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000105 	bl	484 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fe 	bl	484 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e59f004c 	ldr	r0, [pc, #76]	; e0 <fmtname+0xe0>
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e1a02003 	mov	r2, r3
      98:	eb0001d8 	bl	800 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f7 	bl	484 <strlen>
      a4:	e1a02000 	mov	r2, r0
      a8:	e59f3030 	ldr	r3, [pc, #48]	; e0 <fmtname+0xe0>
      ac:	e0824003 	add	r4, r2, r3
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f2 	bl	484 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a00004 	mov	r0, r4
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a02003 	mov	r2, r3
      cc:	eb000101 	bl	4d8 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	; e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	000013e8 	.word	0x000013e8

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	; 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	; 0xfffffdc8
      f4:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
      f8:	e3a01000 	mov	r1, #0
      fc:	eb00022d 	bl	9b8 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e3a00002 	mov	r0, #2
     114:	e59f1200 	ldr	r1, [pc, #512]	; 31c <ls+0x238>
     118:	e51b2238 	ldr	r2, [fp, #-568]	; 0xfffffdc8
     11c:	eb0002ea 	bl	ccc <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	; 0x230
     128:	e51b0008 	ldr	r0, [fp, #-8]
     12c:	e1a01003 	mov	r1, r3
     130:	eb00023b 	bl	a24 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e3a00002 	mov	r0, #2
     144:	e59f11d4 	ldr	r1, [pc, #468]	; 320 <ls+0x23c>
     148:	e51b2238 	ldr	r2, [fp, #-568]	; 0xfffffdc8
     14c:	eb0002de 	bl	ccc <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0001fc 	bl	94c <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     164:	e1d330b0 	ldrh	r3, [r3]
     168:	e6bf3073 	sxth	r3, r3
     16c:	e3530001 	cmp	r3, #1
     170:	0a000012 	beq	1c0 <ls+0xdc>
     174:	e3530002 	cmp	r3, #2
     178:	1a000063 	bne	30c <ls+0x228>
     17c:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
     180:	ebffff9e 	bl	0 <fmtname>
     184:	e1a0e000 	mov	lr, r0
     188:	e24b3004 	sub	r3, fp, #4
     18c:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     190:	e1d330b0 	ldrh	r3, [r3]
     194:	e6bfc073 	sxth	ip, r3
     198:	e51b2228 	ldr	r2, [fp, #-552]	; 0xfffffdd8
     19c:	e51b3220 	ldr	r3, [fp, #-544]	; 0xfffffde0
     1a0:	e58d2000 	str	r2, [sp]
     1a4:	e58d3004 	str	r3, [sp, #4]
     1a8:	e3a00001 	mov	r0, #1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	; 324 <ls+0x240>
     1b0:	e1a0200e 	mov	r2, lr
     1b4:	e1a0300c 	mov	r3, ip
     1b8:	eb0002c3 	bl	ccc <printf>
     1bc:	ea000052 	b	30c <ls+0x228>
     1c0:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
     1c4:	eb0000ae 	bl	484 <strlen>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e2833010 	add	r3, r3, #16
     1d0:	e3530c02 	cmp	r3, #512	; 0x200
     1d4:	9a000003 	bls	1e8 <ls+0x104>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	e59f1144 	ldr	r1, [pc, #324]	; 328 <ls+0x244>
     1e0:	eb0002b9 	bl	ccc <printf>
     1e4:	ea000048 	b	30c <ls+0x228>
     1e8:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     1ec:	e1a00003 	mov	r0, r3
     1f0:	e51b1238 	ldr	r1, [fp, #-568]	; 0xfffffdc8
     1f4:	eb00006a 	bl	3a4 <strcpy>
     1f8:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     1fc:	e1a00003 	mov	r0, r3
     200:	eb00009f 	bl	484 <strlen>
     204:	e1a02000 	mov	r2, r0
     208:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     20c:	e0833002 	add	r3, r3, r2
     210:	e50b300c 	str	r3, [fp, #-12]
     214:	e51b300c 	ldr	r3, [fp, #-12]
     218:	e2832001 	add	r2, r3, #1
     21c:	e50b200c 	str	r2, [fp, #-12]
     220:	e3a0202f 	mov	r2, #47	; 0x2f
     224:	e5c32000 	strb	r2, [r3]
     228:	ea00002e 	b	2e8 <ls+0x204>
     22c:	e24b3004 	sub	r3, fp, #4
     230:	e2433f86 	sub	r3, r3, #536	; 0x218
     234:	e1d330b0 	ldrh	r3, [r3]
     238:	e3530000 	cmp	r3, #0
     23c:	1a000000 	bne	244 <ls+0x160>
     240:	ea000028 	b	2e8 <ls+0x204>
     244:	e24b3f87 	sub	r3, fp, #540	; 0x21c
     248:	e2833002 	add	r3, r3, #2
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	e1a01003 	mov	r1, r3
     254:	e3a0200e 	mov	r2, #14
     258:	eb000168 	bl	800 <memmove>
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e283300e 	add	r3, r3, #14
     264:	e3a02000 	mov	r2, #0
     268:	e5c32000 	strb	r2, [r3]
     26c:	e24b2f83 	sub	r2, fp, #524	; 0x20c
     270:	e24b3e23 	sub	r3, fp, #560	; 0x230
     274:	e1a00002 	mov	r0, r2
     278:	e1a01003 	mov	r1, r3
     27c:	eb000126 	bl	71c <stat>
     280:	e1a03000 	mov	r3, r0
     284:	e3530000 	cmp	r3, #0
     288:	aa000005 	bge	2a4 <ls+0x1c0>
     28c:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     290:	e3a00001 	mov	r0, #1
     294:	e59f1084 	ldr	r1, [pc, #132]	; 320 <ls+0x23c>
     298:	e1a02003 	mov	r2, r3
     29c:	eb00028a 	bl	ccc <printf>
     2a0:	ea000010 	b	2e8 <ls+0x204>
     2a4:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     2a8:	e1a00003 	mov	r0, r3
     2ac:	ebffff53 	bl	0 <fmtname>
     2b0:	e1a0e000 	mov	lr, r0
     2b4:	e24b3004 	sub	r3, fp, #4
     2b8:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     2bc:	e1d330b0 	ldrh	r3, [r3]
     2c0:	e6bfc073 	sxth	ip, r3
     2c4:	e51b2228 	ldr	r2, [fp, #-552]	; 0xfffffdd8
     2c8:	e51b3220 	ldr	r3, [fp, #-544]	; 0xfffffde0
     2cc:	e58d2000 	str	r2, [sp]
     2d0:	e58d3004 	str	r3, [sp, #4]
     2d4:	e3a00001 	mov	r0, #1
     2d8:	e59f1044 	ldr	r1, [pc, #68]	; 324 <ls+0x240>
     2dc:	e1a0200e 	mov	r2, lr
     2e0:	e1a0300c 	mov	r3, ip
     2e4:	eb000278 	bl	ccc <printf>
     2e8:	e24b3f87 	sub	r3, fp, #540	; 0x21c
     2ec:	e51b0008 	ldr	r0, [fp, #-8]
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e3a02010 	mov	r2, #16
     2f8:	eb000181 	bl	904 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc8 	beq	22c <ls+0x148>
     308:	e1a00000 	nop			; (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb00018d 	bl	94c <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	0000137c 	.word	0x0000137c
     320:	00001390 	.word	0x00001390
     324:	000013a4 	.word	0x000013a4
     328:	000013b4 	.word	0x000013b4

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	; 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb00014f 	bl	898 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb00013d 	bl	898 <exit>
     3a0:	000013c8 	.word	0x000013c8

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			; (mov r0, r0)
     3c4:	e51b3010 	ldr	r3, [fp, #-16]
     3c8:	e2832001 	add	r2, r3, #1
     3cc:	e50b2010 	str	r2, [fp, #-16]
     3d0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     3d4:	e2821001 	add	r1, r2, #1
     3d8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e24bd000 	sub	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strcmp>:
     404:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	ea000005 	b	434 <strcmp+0x30>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b300c 	str	r3, [fp, #-12]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e5d33000 	ldrb	r3, [r3]
     43c:	e3530000 	cmp	r3, #0
     440:	0a000005 	beq	45c <strcmp+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e5d32000 	ldrb	r2, [r3]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e1520003 	cmp	r2, r3
     458:	0affffef 	beq	41c <strcmp+0x18>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e1a02003 	mov	r2, r3
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0633002 	rsb	r3, r3, r2
     474:	e1a00003 	mov	r0, r3
     478:	e24bd000 	sub	sp, fp, #0
     47c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strlen>:
     484:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea000002 	b	4ac <strlen+0x28>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2010 	ldr	r2, [fp, #-16]
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff6 	bne	4a0 <strlen+0x1c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e24bd000 	sub	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <memset>:
     4d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd024 	sub	sp, sp, #36	; 0x24
     4e4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     4e8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     4ec:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     4fc:	e54b300d 	strb	r3, [fp, #-13]
     500:	e55b300d 	ldrb	r3, [fp, #-13]
     504:	e1a02c03 	lsl	r2, r3, #24
     508:	e55b300d 	ldrb	r3, [fp, #-13]
     50c:	e1a03803 	lsl	r3, r3, #16
     510:	e1822003 	orr	r2, r2, r3
     514:	e55b300d 	ldrb	r3, [fp, #-13]
     518:	e1a03403 	lsl	r3, r3, #8
     51c:	e1822003 	orr	r2, r2, r3
     520:	e55b300d 	ldrb	r3, [fp, #-13]
     524:	e1823003 	orr	r3, r2, r3
     528:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     52c:	ea000008 	b	554 <memset+0x7c>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e55b200d 	ldrb	r2, [fp, #-13]
     538:	e5c32000 	strb	r2, [r3]
     53c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     540:	e2433001 	sub	r3, r3, #1
     544:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e2833001 	add	r3, r3, #1
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     558:	e3530000 	cmp	r3, #0
     55c:	0a000003 	beq	570 <memset+0x98>
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e2033003 	and	r3, r3, #3
     568:	e3530000 	cmp	r3, #0
     56c:	1affffef 	bne	530 <memset+0x58>
     570:	e51b3008 	ldr	r3, [fp, #-8]
     574:	e50b300c 	str	r3, [fp, #-12]
     578:	ea000008 	b	5a0 <memset+0xc8>
     57c:	e51b300c 	ldr	r3, [fp, #-12]
     580:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     584:	e5832000 	str	r2, [r3]
     588:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     58c:	e2433004 	sub	r3, r3, #4
     590:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     594:	e51b300c 	ldr	r3, [fp, #-12]
     598:	e2833004 	add	r3, r3, #4
     59c:	e50b300c 	str	r3, [fp, #-12]
     5a0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5a4:	e3530003 	cmp	r3, #3
     5a8:	8afffff3 	bhi	57c <memset+0xa4>
     5ac:	e51b300c 	ldr	r3, [fp, #-12]
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	ea000008 	b	5dc <memset+0x104>
     5b8:	e51b3008 	ldr	r3, [fp, #-8]
     5bc:	e55b200d 	ldrb	r2, [fp, #-13]
     5c0:	e5c32000 	strb	r2, [r3]
     5c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5c8:	e2433001 	sub	r3, r3, #1
     5cc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5e0:	e3530000 	cmp	r3, #0
     5e4:	1afffff3 	bne	5b8 <memset+0xe0>
     5e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e24bd000 	sub	sp, fp, #0
     5f4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <strchr>:
     5fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     600:	e28db000 	add	fp, sp, #0
     604:	e24dd00c 	sub	sp, sp, #12
     608:	e50b0008 	str	r0, [fp, #-8]
     60c:	e1a03001 	mov	r3, r1
     610:	e54b3009 	strb	r3, [fp, #-9]
     614:	ea000009 	b	640 <strchr+0x44>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e5d33000 	ldrb	r3, [r3]
     620:	e55b2009 	ldrb	r2, [fp, #-9]
     624:	e1520003 	cmp	r2, r3
     628:	1a000001 	bne	634 <strchr+0x38>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	ea000007 	b	654 <strchr+0x58>
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e2833001 	add	r3, r3, #1
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e5d33000 	ldrb	r3, [r3]
     648:	e3530000 	cmp	r3, #0
     64c:	1afffff1 	bne	618 <strchr+0x1c>
     650:	e3a03000 	mov	r3, #0
     654:	e1a00003 	mov	r0, r3
     658:	e24bd000 	sub	sp, fp, #0
     65c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <gets>:
     664:	e92d4800 	push	{fp, lr}
     668:	e28db004 	add	fp, sp, #4
     66c:	e24dd018 	sub	sp, sp, #24
     670:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     674:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     678:	e3a03000 	mov	r3, #0
     67c:	e50b3008 	str	r3, [fp, #-8]
     680:	ea000017 	b	6e4 <gets+0x80>
     684:	e24b300d 	sub	r3, fp, #13
     688:	e3a00000 	mov	r0, #0
     68c:	e1a01003 	mov	r1, r3
     690:	e3a02001 	mov	r2, #1
     694:	eb00009a 	bl	904 <read>
     698:	e50b000c 	str	r0, [fp, #-12]
     69c:	e51b300c 	ldr	r3, [fp, #-12]
     6a0:	e3530000 	cmp	r3, #0
     6a4:	ca000000 	bgt	6ac <gets+0x48>
     6a8:	ea000012 	b	6f8 <gets+0x94>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2008 	str	r2, [fp, #-8]
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6c0:	e0833002 	add	r3, r3, r2
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e55b300d 	ldrb	r3, [fp, #-13]
     6d0:	e353000a 	cmp	r3, #10
     6d4:	0a000007 	beq	6f8 <gets+0x94>
     6d8:	e55b300d 	ldrb	r3, [fp, #-13]
     6dc:	e353000d 	cmp	r3, #13
     6e0:	0a000004 	beq	6f8 <gets+0x94>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2832001 	add	r2, r3, #1
     6ec:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     6f0:	e1520003 	cmp	r2, r3
     6f4:	baffffe2 	blt	684 <gets+0x20>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     700:	e0823003 	add	r3, r2, r3
     704:	e3a02000 	mov	r2, #0
     708:	e5c32000 	strb	r2, [r3]
     70c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     710:	e1a00003 	mov	r0, r3
     714:	e24bd004 	sub	sp, fp, #4
     718:	e8bd8800 	pop	{fp, pc}

0000071c <stat>:
     71c:	e92d4800 	push	{fp, lr}
     720:	e28db004 	add	fp, sp, #4
     724:	e24dd010 	sub	sp, sp, #16
     728:	e50b0010 	str	r0, [fp, #-16]
     72c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     730:	e51b0010 	ldr	r0, [fp, #-16]
     734:	e3a01000 	mov	r1, #0
     738:	eb00009e 	bl	9b8 <open>
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3530000 	cmp	r3, #0
     748:	aa000001 	bge	754 <stat+0x38>
     74c:	e3e03000 	mvn	r3, #0
     750:	ea000006 	b	770 <stat+0x54>
     754:	e51b0008 	ldr	r0, [fp, #-8]
     758:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     75c:	eb0000b0 	bl	a24 <fstat>
     760:	e50b000c 	str	r0, [fp, #-12]
     764:	e51b0008 	ldr	r0, [fp, #-8]
     768:	eb000077 	bl	94c <close>
     76c:	e51b300c 	ldr	r3, [fp, #-12]
     770:	e1a00003 	mov	r0, r3
     774:	e24bd004 	sub	sp, fp, #4
     778:	e8bd8800 	pop	{fp, pc}

0000077c <atoi>:
     77c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     780:	e28db000 	add	fp, sp, #0
     784:	e24dd014 	sub	sp, sp, #20
     788:	e50b0010 	str	r0, [fp, #-16]
     78c:	e3a03000 	mov	r3, #0
     790:	e50b3008 	str	r3, [fp, #-8]
     794:	ea00000c 	b	7cc <atoi+0x50>
     798:	e51b2008 	ldr	r2, [fp, #-8]
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a03103 	lsl	r3, r3, #2
     7a4:	e0833002 	add	r3, r3, r2
     7a8:	e1a03083 	lsl	r3, r3, #1
     7ac:	e1a01003 	mov	r1, r3
     7b0:	e51b3010 	ldr	r3, [fp, #-16]
     7b4:	e2832001 	add	r2, r3, #1
     7b8:	e50b2010 	str	r2, [fp, #-16]
     7bc:	e5d33000 	ldrb	r3, [r3]
     7c0:	e0813003 	add	r3, r1, r3
     7c4:	e2433030 	sub	r3, r3, #48	; 0x30
     7c8:	e50b3008 	str	r3, [fp, #-8]
     7cc:	e51b3010 	ldr	r3, [fp, #-16]
     7d0:	e5d33000 	ldrb	r3, [r3]
     7d4:	e353002f 	cmp	r3, #47	; 0x2f
     7d8:	9a000003 	bls	7ec <atoi+0x70>
     7dc:	e51b3010 	ldr	r3, [fp, #-16]
     7e0:	e5d33000 	ldrb	r3, [r3]
     7e4:	e3530039 	cmp	r3, #57	; 0x39
     7e8:	9affffea 	bls	798 <atoi+0x1c>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e1a00003 	mov	r0, r3
     7f4:	e24bd000 	sub	sp, fp, #0
     7f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <memmove>:
     800:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     804:	e28db000 	add	fp, sp, #0
     808:	e24dd01c 	sub	sp, sp, #28
     80c:	e50b0010 	str	r0, [fp, #-16]
     810:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     814:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     818:	e51b3010 	ldr	r3, [fp, #-16]
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     824:	e50b300c 	str	r3, [fp, #-12]
     828:	ea000007 	b	84c <memmove+0x4c>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e2832001 	add	r2, r3, #1
     834:	e50b2008 	str	r2, [fp, #-8]
     838:	e51b200c 	ldr	r2, [fp, #-12]
     83c:	e2821001 	add	r1, r2, #1
     840:	e50b100c 	str	r1, [fp, #-12]
     844:	e5d22000 	ldrb	r2, [r2]
     848:	e5c32000 	strb	r2, [r3]
     84c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     850:	e2432001 	sub	r2, r3, #1
     854:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     858:	e3530000 	cmp	r3, #0
     85c:	cafffff2 	bgt	82c <memmove+0x2c>
     860:	e51b3010 	ldr	r3, [fp, #-16]
     864:	e1a00003 	mov	r0, r3
     868:	e24bd000 	sub	sp, fp, #0
     86c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <fork>:
     874:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00001 	mov	r0, #1
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <exit>:
     898:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00002 	mov	r0, #2
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <wait>:
     8bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00003 	mov	r0, #3
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <pipe>:
     8e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00004 	mov	r0, #4
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <read>:
     904:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00005 	mov	r0, #5
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <write>:
     928:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00010 	mov	r0, #16
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <close>:
     94c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00015 	mov	r0, #21
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <kill>:
     970:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00006 	mov	r0, #6
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <exec>:
     994:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00007 	mov	r0, #7
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <open>:
     9b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a0000f 	mov	r0, #15
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <mknod>:
     9dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00011 	mov	r0, #17
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <unlink>:
     a00:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00012 	mov	r0, #18
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <fstat>:
     a24:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00008 	mov	r0, #8
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <link>:
     a48:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00013 	mov	r0, #19
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <mkdir>:
     a6c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00014 	mov	r0, #20
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <chdir>:
     a90:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00009 	mov	r0, #9
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <dup>:
     ab4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a0000a 	mov	r0, #10
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <getpid>:
     ad8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a0000b 	mov	r0, #11
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <sbrk>:
     afc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000c 	mov	r0, #12
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <sleep>:
     b20:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a0000d 	mov	r0, #13
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <uptime>:
     b44:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a0000e 	mov	r0, #14
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <putc>:
     b68:	e92d4800 	push	{fp, lr}
     b6c:	e28db004 	add	fp, sp, #4
     b70:	e24dd008 	sub	sp, sp, #8
     b74:	e50b0008 	str	r0, [fp, #-8]
     b78:	e1a03001 	mov	r3, r1
     b7c:	e54b3009 	strb	r3, [fp, #-9]
     b80:	e24b3009 	sub	r3, fp, #9
     b84:	e51b0008 	ldr	r0, [fp, #-8]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e3a02001 	mov	r2, #1
     b90:	ebffff64 	bl	928 <write>
     b94:	e24bd004 	sub	sp, fp, #4
     b98:	e8bd8800 	pop	{fp, pc}

00000b9c <printint>:
     b9c:	e92d4810 	push	{r4, fp, lr}
     ba0:	e28db008 	add	fp, sp, #8
     ba4:	e24dd034 	sub	sp, sp, #52	; 0x34
     ba8:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     bac:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     bb0:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     bb4:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     bb8:	e3a03000 	mov	r3, #0
     bbc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bc0:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     bc4:	e3530000 	cmp	r3, #0
     bc8:	0a000008 	beq	bf0 <printint+0x54>
     bcc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     bd0:	e3530000 	cmp	r3, #0
     bd4:	aa000005 	bge	bf0 <printint+0x54>
     bd8:	e3a03001 	mov	r3, #1
     bdc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     be0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     be4:	e2633000 	rsb	r3, r3, #0
     be8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bec:	ea000001 	b	bf8 <printint+0x5c>
     bf0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     bf4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bf8:	e3a03000 	mov	r3, #0
     bfc:	e50b3010 	str	r3, [fp, #-16]
     c00:	e51b4010 	ldr	r4, [fp, #-16]
     c04:	e2843001 	add	r3, r4, #1
     c08:	e50b3010 	str	r3, [fp, #-16]
     c0c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     c10:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     c14:	e1a00002 	mov	r0, r2
     c18:	e1a01003 	mov	r1, r3
     c1c:	eb0001cd 	bl	1358 <__aeabi_uidivmod>
     c20:	e1a03001 	mov	r3, r1
     c24:	e1a02003 	mov	r2, r3
     c28:	e59f3098 	ldr	r3, [pc, #152]	; cc8 <printint+0x12c>
     c2c:	e7d32002 	ldrb	r2, [r3, r2]
     c30:	e24b300c 	sub	r3, fp, #12
     c34:	e0833004 	add	r3, r3, r4
     c38:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     c3c:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     c40:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     c44:	e1a01003 	mov	r1, r3
     c48:	eb000185 	bl	1264 <__aeabi_uidiv>
     c4c:	e1a03000 	mov	r3, r0
     c50:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c58:	e3530000 	cmp	r3, #0
     c5c:	1affffe7 	bne	c00 <printint+0x64>
     c60:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     c64:	e3530000 	cmp	r3, #0
     c68:	0a000006 	beq	c88 <printint+0xec>
     c6c:	e51b3010 	ldr	r3, [fp, #-16]
     c70:	e2832001 	add	r2, r3, #1
     c74:	e50b2010 	str	r2, [fp, #-16]
     c78:	e24b200c 	sub	r2, fp, #12
     c7c:	e0823003 	add	r3, r2, r3
     c80:	e3a0202d 	mov	r2, #45	; 0x2d
     c84:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     c88:	ea000006 	b	ca8 <printint+0x10c>
     c8c:	e24b2028 	sub	r2, fp, #40	; 0x28
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e0823003 	add	r3, r2, r3
     c98:	e5d33000 	ldrb	r3, [r3]
     c9c:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     ca0:	e1a01003 	mov	r1, r3
     ca4:	ebffffaf 	bl	b68 <putc>
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e2433001 	sub	r3, r3, #1
     cb0:	e50b3010 	str	r3, [fp, #-16]
     cb4:	e51b3010 	ldr	r3, [fp, #-16]
     cb8:	e3530000 	cmp	r3, #0
     cbc:	aafffff2 	bge	c8c <printint+0xf0>
     cc0:	e24bd008 	sub	sp, fp, #8
     cc4:	e8bd8810 	pop	{r4, fp, pc}
     cc8:	000013d4 	.word	0x000013d4

00000ccc <printf>:
     ccc:	e92d000e 	push	{r1, r2, r3}
     cd0:	e92d4800 	push	{fp, lr}
     cd4:	e28db004 	add	fp, sp, #4
     cd8:	e24dd024 	sub	sp, sp, #36	; 0x24
     cdc:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     ce0:	e3a03000 	mov	r3, #0
     ce4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ce8:	e28b3008 	add	r3, fp, #8
     cec:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     cf0:	e3a03000 	mov	r3, #0
     cf4:	e50b3010 	str	r3, [fp, #-16]
     cf8:	ea000074 	b	ed0 <printf+0x204>
     cfc:	e59b2004 	ldr	r2, [fp, #4]
     d00:	e51b3010 	ldr	r3, [fp, #-16]
     d04:	e0823003 	add	r3, r2, r3
     d08:	e5d33000 	ldrb	r3, [r3]
     d0c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     d10:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     d14:	e3530000 	cmp	r3, #0
     d18:	1a00000b 	bne	d4c <printf+0x80>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d20:	e3530025 	cmp	r3, #37	; 0x25
     d24:	1a000002 	bne	d34 <printf+0x68>
     d28:	e3a03025 	mov	r3, #37	; 0x25
     d2c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d30:	ea000063 	b	ec4 <printf+0x1f8>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d38:	e6ef3073 	uxtb	r3, r3
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d40:	e1a01003 	mov	r1, r3
     d44:	ebffff87 	bl	b68 <putc>
     d48:	ea00005d 	b	ec4 <printf+0x1f8>
     d4c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     d50:	e3530025 	cmp	r3, #37	; 0x25
     d54:	1a00005a 	bne	ec4 <printf+0x1f8>
     d58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d5c:	e3530064 	cmp	r3, #100	; 0x64
     d60:	1a00000a 	bne	d90 <printf+0xc4>
     d64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     d68:	e5933000 	ldr	r3, [r3]
     d6c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d70:	e1a01003 	mov	r1, r3
     d74:	e3a0200a 	mov	r2, #10
     d78:	e3a03001 	mov	r3, #1
     d7c:	ebffff86 	bl	b9c <printint>
     d80:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     d84:	e2833004 	add	r3, r3, #4
     d88:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     d8c:	ea00004a 	b	ebc <printf+0x1f0>
     d90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d94:	e3530078 	cmp	r3, #120	; 0x78
     d98:	0a000002 	beq	da8 <printf+0xdc>
     d9c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     da0:	e3530070 	cmp	r3, #112	; 0x70
     da4:	1a00000a 	bne	dd4 <printf+0x108>
     da8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     db4:	e1a01003 	mov	r1, r3
     db8:	e3a02010 	mov	r2, #16
     dbc:	e3a03000 	mov	r3, #0
     dc0:	ebffff75 	bl	b9c <printint>
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     dc8:	e2833004 	add	r3, r3, #4
     dcc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     dd0:	ea000039 	b	ebc <printf+0x1f0>
     dd4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     dd8:	e3530073 	cmp	r3, #115	; 0x73
     ddc:	1a000018 	bne	e44 <printf+0x178>
     de0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e50b300c 	str	r3, [fp, #-12]
     dec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     df0:	e2833004 	add	r3, r3, #4
     df4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e3530000 	cmp	r3, #0
     e00:	1a000001 	bne	e0c <printf+0x140>
     e04:	e59f30ec 	ldr	r3, [pc, #236]	; ef8 <printf+0x22c>
     e08:	e50b300c 	str	r3, [fp, #-12]
     e0c:	ea000007 	b	e30 <printf+0x164>
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5d33000 	ldrb	r3, [r3]
     e18:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e1c:	e1a01003 	mov	r1, r3
     e20:	ebffff50 	bl	b68 <putc>
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e2833001 	add	r3, r3, #1
     e2c:	e50b300c 	str	r3, [fp, #-12]
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5d33000 	ldrb	r3, [r3]
     e38:	e3530000 	cmp	r3, #0
     e3c:	1afffff3 	bne	e10 <printf+0x144>
     e40:	ea00001d 	b	ebc <printf+0x1f0>
     e44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e48:	e3530063 	cmp	r3, #99	; 0x63
     e4c:	1a000009 	bne	e78 <printf+0x1ac>
     e50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e6ef3073 	uxtb	r3, r3
     e5c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e60:	e1a01003 	mov	r1, r3
     e64:	ebffff3f 	bl	b68 <putc>
     e68:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e6c:	e2833004 	add	r3, r3, #4
     e70:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e74:	ea000010 	b	ebc <printf+0x1f0>
     e78:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e7c:	e3530025 	cmp	r3, #37	; 0x25
     e80:	1a000005 	bne	e9c <printf+0x1d0>
     e84:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e88:	e6ef3073 	uxtb	r3, r3
     e8c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e90:	e1a01003 	mov	r1, r3
     e94:	ebffff33 	bl	b68 <putc>
     e98:	ea000007 	b	ebc <printf+0x1f0>
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ea0:	e3a01025 	mov	r1, #37	; 0x25
     ea4:	ebffff2f 	bl	b68 <putc>
     ea8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     eac:	e6ef3073 	uxtb	r3, r3
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     eb4:	e1a01003 	mov	r1, r3
     eb8:	ebffff2a 	bl	b68 <putc>
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ec4:	e51b3010 	ldr	r3, [fp, #-16]
     ec8:	e2833001 	add	r3, r3, #1
     ecc:	e50b3010 	str	r3, [fp, #-16]
     ed0:	e59b2004 	ldr	r2, [fp, #4]
     ed4:	e51b3010 	ldr	r3, [fp, #-16]
     ed8:	e0823003 	add	r3, r2, r3
     edc:	e5d33000 	ldrb	r3, [r3]
     ee0:	e3530000 	cmp	r3, #0
     ee4:	1affff84 	bne	cfc <printf+0x30>
     ee8:	e24bd004 	sub	sp, fp, #4
     eec:	e8bd4800 	pop	{fp, lr}
     ef0:	e28dd00c 	add	sp, sp, #12
     ef4:	e12fff1e 	bx	lr
     ef8:	000013cc 	.word	0x000013cc

00000efc <free>:
     efc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     f00:	e28db000 	add	fp, sp, #0
     f04:	e24dd014 	sub	sp, sp, #20
     f08:	e50b0010 	str	r0, [fp, #-16]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e2433008 	sub	r3, r3, #8
     f14:	e50b300c 	str	r3, [fp, #-12]
     f18:	e59f3150 	ldr	r3, [pc, #336]	; 1070 <free+0x174>
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e50b3008 	str	r3, [fp, #-8]
     f24:	ea000010 	b	f6c <free+0x70>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5932000 	ldr	r2, [r3]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e1520003 	cmp	r2, r3
     f38:	8a000008 	bhi	f60 <free+0x64>
     f3c:	e51b200c 	ldr	r2, [fp, #-12]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e1520003 	cmp	r2, r3
     f48:	8a000010 	bhi	f90 <free+0x94>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5932000 	ldr	r2, [r3]
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e1520003 	cmp	r2, r3
     f5c:	8a00000b 	bhi	f90 <free+0x94>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b200c 	ldr	r2, [fp, #-12]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e1520003 	cmp	r2, r3
     f78:	9affffea 	bls	f28 <free+0x2c>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5932000 	ldr	r2, [r3]
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e1520003 	cmp	r2, r3
     f8c:	9affffe5 	bls	f28 <free+0x2c>
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5933004 	ldr	r3, [r3, #4]
     f98:	e1a03183 	lsl	r3, r3, #3
     f9c:	e51b200c 	ldr	r2, [fp, #-12]
     fa0:	e0822003 	add	r2, r2, r3
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e1520003 	cmp	r2, r3
     fb0:	1a00000d 	bne	fec <free+0xf0>
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5932004 	ldr	r2, [r3, #4]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e5933004 	ldr	r3, [r3, #4]
     fc8:	e0822003 	add	r2, r2, r3
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5832004 	str	r2, [r3, #4]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e5932000 	ldr	r2, [r3]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5832000 	str	r2, [r3]
     fe8:	ea000003 	b	ffc <free+0x100>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5932000 	ldr	r2, [r3]
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e5832000 	str	r2, [r3]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933004 	ldr	r3, [r3, #4]
    1004:	e1a03183 	lsl	r3, r3, #3
    1008:	e51b2008 	ldr	r2, [fp, #-8]
    100c:	e0822003 	add	r2, r2, r3
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a00000b 	bne	104c <free+0x150>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5932004 	ldr	r2, [r3, #4]
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e0822003 	add	r2, r2, r3
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5832004 	str	r2, [r3, #4]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5932000 	ldr	r2, [r3]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5832000 	str	r2, [r3]
    1048:	ea000002 	b	1058 <free+0x15c>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e51b200c 	ldr	r2, [fp, #-12]
    1054:	e5832000 	str	r2, [r3]
    1058:	e59f2010 	ldr	r2, [pc, #16]	; 1070 <free+0x174>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5823000 	str	r3, [r2]
    1064:	e24bd000 	sub	sp, fp, #0
    1068:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    106c:	e12fff1e 	bx	lr
    1070:	00001400 	.word	0x00001400

00001074 <morecore>:
    1074:	e92d4800 	push	{fp, lr}
    1078:	e28db004 	add	fp, sp, #4
    107c:	e24dd010 	sub	sp, sp, #16
    1080:	e50b0010 	str	r0, [fp, #-16]
    1084:	e51b3010 	ldr	r3, [fp, #-16]
    1088:	e3530a01 	cmp	r3, #4096	; 0x1000
    108c:	2a000001 	bcs	1098 <morecore+0x24>
    1090:	e3a03a01 	mov	r3, #4096	; 0x1000
    1094:	e50b3010 	str	r3, [fp, #-16]
    1098:	e51b3010 	ldr	r3, [fp, #-16]
    109c:	e1a03183 	lsl	r3, r3, #3
    10a0:	e1a00003 	mov	r0, r3
    10a4:	ebfffe94 	bl	afc <sbrk>
    10a8:	e50b0008 	str	r0, [fp, #-8]
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e3730001 	cmn	r3, #1
    10b4:	1a000001 	bne	10c0 <morecore+0x4c>
    10b8:	e3a03000 	mov	r3, #0
    10bc:	ea00000a 	b	10ec <morecore+0x78>
    10c0:	e51b3008 	ldr	r3, [fp, #-8]
    10c4:	e50b300c 	str	r3, [fp, #-12]
    10c8:	e51b300c 	ldr	r3, [fp, #-12]
    10cc:	e51b2010 	ldr	r2, [fp, #-16]
    10d0:	e5832004 	str	r2, [r3, #4]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e2833008 	add	r3, r3, #8
    10dc:	e1a00003 	mov	r0, r3
    10e0:	ebffff85 	bl	efc <free>
    10e4:	e59f300c 	ldr	r3, [pc, #12]	; 10f8 <morecore+0x84>
    10e8:	e5933000 	ldr	r3, [r3]
    10ec:	e1a00003 	mov	r0, r3
    10f0:	e24bd004 	sub	sp, fp, #4
    10f4:	e8bd8800 	pop	{fp, pc}
    10f8:	00001400 	.word	0x00001400

000010fc <malloc>:
    10fc:	e92d4800 	push	{fp, lr}
    1100:	e28db004 	add	fp, sp, #4
    1104:	e24dd018 	sub	sp, sp, #24
    1108:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    110c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1110:	e2833007 	add	r3, r3, #7
    1114:	e1a031a3 	lsr	r3, r3, #3
    1118:	e2833001 	add	r3, r3, #1
    111c:	e50b3010 	str	r3, [fp, #-16]
    1120:	e59f3134 	ldr	r3, [pc, #308]	; 125c <malloc+0x160>
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e3530000 	cmp	r3, #0
    1134:	1a00000b 	bne	1168 <malloc+0x6c>
    1138:	e59f3120 	ldr	r3, [pc, #288]	; 1260 <malloc+0x164>
    113c:	e50b300c 	str	r3, [fp, #-12]
    1140:	e59f2114 	ldr	r2, [pc, #276]	; 125c <malloc+0x160>
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5823000 	str	r3, [r2]
    114c:	e59f3108 	ldr	r3, [pc, #264]	; 125c <malloc+0x160>
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e59f2104 	ldr	r2, [pc, #260]	; 1260 <malloc+0x164>
    1158:	e5823000 	str	r3, [r2]
    115c:	e59f30fc 	ldr	r3, [pc, #252]	; 1260 <malloc+0x164>
    1160:	e3a02000 	mov	r2, #0
    1164:	e5832004 	str	r2, [r3, #4]
    1168:	e51b300c 	ldr	r3, [fp, #-12]
    116c:	e5933000 	ldr	r3, [r3]
    1170:	e50b3008 	str	r3, [fp, #-8]
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5932004 	ldr	r2, [r3, #4]
    117c:	e51b3010 	ldr	r3, [fp, #-16]
    1180:	e1520003 	cmp	r2, r3
    1184:	3a00001e 	bcc	1204 <malloc+0x108>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5932004 	ldr	r2, [r3, #4]
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e1520003 	cmp	r2, r3
    1198:	1a000004 	bne	11b0 <malloc+0xb4>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5932000 	ldr	r2, [r3]
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5832000 	str	r2, [r3]
    11ac:	ea00000e 	b	11ec <malloc+0xf0>
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e5932004 	ldr	r2, [r3, #4]
    11b8:	e51b3010 	ldr	r3, [fp, #-16]
    11bc:	e0632002 	rsb	r2, r3, r2
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5832004 	str	r2, [r3, #4]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933004 	ldr	r3, [r3, #4]
    11d0:	e1a03183 	lsl	r3, r3, #3
    11d4:	e51b2008 	ldr	r2, [fp, #-8]
    11d8:	e0823003 	add	r3, r2, r3
    11dc:	e50b3008 	str	r3, [fp, #-8]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e51b2010 	ldr	r2, [fp, #-16]
    11e8:	e5832004 	str	r2, [r3, #4]
    11ec:	e59f2068 	ldr	r2, [pc, #104]	; 125c <malloc+0x160>
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e5823000 	str	r3, [r2]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e2833008 	add	r3, r3, #8
    1200:	ea000012 	b	1250 <malloc+0x154>
    1204:	e59f3050 	ldr	r3, [pc, #80]	; 125c <malloc+0x160>
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e51b2008 	ldr	r2, [fp, #-8]
    1210:	e1520003 	cmp	r2, r3
    1214:	1a000007 	bne	1238 <malloc+0x13c>
    1218:	e51b0010 	ldr	r0, [fp, #-16]
    121c:	ebffff94 	bl	1074 <morecore>
    1220:	e50b0008 	str	r0, [fp, #-8]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e3530000 	cmp	r3, #0
    122c:	1a000001 	bne	1238 <malloc+0x13c>
    1230:	e3a03000 	mov	r3, #0
    1234:	ea000005 	b	1250 <malloc+0x154>
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e50b300c 	str	r3, [fp, #-12]
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e50b3008 	str	r3, [fp, #-8]
    124c:	eaffffc8 	b	1174 <malloc+0x78>
    1250:	e1a00003 	mov	r0, r3
    1254:	e24bd004 	sub	sp, fp, #4
    1258:	e8bd8800 	pop	{fp, pc}
    125c:	00001400 	.word	0x00001400
    1260:	000013f8 	.word	0x000013f8

00001264 <__aeabi_uidiv>:
    1264:	e2512001 	subs	r2, r1, #1
    1268:	012fff1e 	bxeq	lr
    126c:	3a000036 	bcc	134c <__aeabi_uidiv+0xe8>
    1270:	e1500001 	cmp	r0, r1
    1274:	9a000022 	bls	1304 <__aeabi_uidiv+0xa0>
    1278:	e1110002 	tst	r1, r2
    127c:	0a000023 	beq	1310 <__aeabi_uidiv+0xac>
    1280:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1284:	01a01181 	lsleq	r1, r1, #3
    1288:	03a03008 	moveq	r3, #8
    128c:	13a03001 	movne	r3, #1
    1290:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1294:	31510000 	cmpcc	r1, r0
    1298:	31a01201 	lslcc	r1, r1, #4
    129c:	31a03203 	lslcc	r3, r3, #4
    12a0:	3afffffa 	bcc	1290 <__aeabi_uidiv+0x2c>
    12a4:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    12a8:	31510000 	cmpcc	r1, r0
    12ac:	31a01081 	lslcc	r1, r1, #1
    12b0:	31a03083 	lslcc	r3, r3, #1
    12b4:	3afffffa 	bcc	12a4 <__aeabi_uidiv+0x40>
    12b8:	e3a02000 	mov	r2, #0
    12bc:	e1500001 	cmp	r0, r1
    12c0:	20400001 	subcs	r0, r0, r1
    12c4:	21822003 	orrcs	r2, r2, r3
    12c8:	e15000a1 	cmp	r0, r1, lsr #1
    12cc:	204000a1 	subcs	r0, r0, r1, lsr #1
    12d0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12d4:	e1500121 	cmp	r0, r1, lsr #2
    12d8:	20400121 	subcs	r0, r0, r1, lsr #2
    12dc:	21822123 	orrcs	r2, r2, r3, lsr #2
    12e0:	e15001a1 	cmp	r0, r1, lsr #3
    12e4:	204001a1 	subcs	r0, r0, r1, lsr #3
    12e8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12ec:	e3500000 	cmp	r0, #0
    12f0:	11b03223 	lsrsne	r3, r3, #4
    12f4:	11a01221 	lsrne	r1, r1, #4
    12f8:	1affffef 	bne	12bc <__aeabi_uidiv+0x58>
    12fc:	e1a00002 	mov	r0, r2
    1300:	e12fff1e 	bx	lr
    1304:	03a00001 	moveq	r0, #1
    1308:	13a00000 	movne	r0, #0
    130c:	e12fff1e 	bx	lr
    1310:	e3510801 	cmp	r1, #65536	; 0x10000
    1314:	21a01821 	lsrcs	r1, r1, #16
    1318:	23a02010 	movcs	r2, #16
    131c:	33a02000 	movcc	r2, #0
    1320:	e3510c01 	cmp	r1, #256	; 0x100
    1324:	21a01421 	lsrcs	r1, r1, #8
    1328:	22822008 	addcs	r2, r2, #8
    132c:	e3510010 	cmp	r1, #16
    1330:	21a01221 	lsrcs	r1, r1, #4
    1334:	22822004 	addcs	r2, r2, #4
    1338:	e3510004 	cmp	r1, #4
    133c:	82822003 	addhi	r2, r2, #3
    1340:	908220a1 	addls	r2, r2, r1, lsr #1
    1344:	e1a00230 	lsr	r0, r0, r2
    1348:	e12fff1e 	bx	lr
    134c:	e3500000 	cmp	r0, #0
    1350:	13e00000 	mvnne	r0, #0
    1354:	ea000007 	b	1378 <__aeabi_idiv0>

00001358 <__aeabi_uidivmod>:
    1358:	e3510000 	cmp	r1, #0
    135c:	0afffffa 	beq	134c <__aeabi_uidiv+0xe8>
    1360:	e92d4003 	push	{r0, r1, lr}
    1364:	ebffffbe 	bl	1264 <__aeabi_uidiv>
    1368:	e8bd4006 	pop	{r1, r2, lr}
    136c:	e0030092 	mul	r3, r2, r0
    1370:	e0411003 	sub	r1, r1, r3
    1374:	e12fff1e 	bx	lr

00001378 <__aeabi_idiv0>:
    1378:	e12fff1e 	bx	lr
