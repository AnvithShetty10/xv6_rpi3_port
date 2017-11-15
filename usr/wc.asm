
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	; 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      50:	e59f20f4 	ldr	r2, [pc, #244]	; 14c <wc+0x14c>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d0 	ldr	r2, [pc, #208]	; 14c <wc+0x14c>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e59f00c4 	ldr	r0, [pc, #196]	; 150 <wc+0x150>
      88:	e1a01003 	mov	r1, r3
      8c:	eb000101 	bl	498 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
      e8:	e59f105c 	ldr	r1, [pc, #92]	; 14c <wc+0x14c>
      ec:	e3a02c02 	mov	r2, #512	; 0x200
      f0:	eb0001aa 	bl	7a0 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e3a00001 	mov	r0, #1
     114:	e59f1038 	ldr	r1, [pc, #56]	; 154 <wc+0x154>
     118:	eb000292 	bl	b68 <printf>
     11c:	eb000184 	bl	734 <exit>
     120:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     124:	e58d3000 	str	r3, [sp]
     128:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
     12c:	e58d3004 	str	r3, [sp, #4]
     130:	e3a00001 	mov	r0, #1
     134:	e59f101c 	ldr	r1, [pc, #28]	; 158 <wc+0x158>
     138:	e51b200c 	ldr	r2, [fp, #-12]
     13c:	e51b3010 	ldr	r3, [fp, #-16]
     140:	eb000288 	bl	b68 <printf>
     144:	e24bd004 	sub	sp, fp, #4
     148:	e8bd8800 	pop	{fp, pc}
     14c:	00001280 	.word	0x00001280
     150:	00001218 	.word	0x00001218
     154:	00001220 	.word	0x00001220
     158:	00001230 	.word	0x00001230

0000015c <main>:
     15c:	e92d4800 	push	{fp, lr}
     160:	e28db004 	add	fp, sp, #4
     164:	e24dd010 	sub	sp, sp, #16
     168:	e50b0010 	str	r0, [fp, #-16]
     16c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e3530001 	cmp	r3, #1
     178:	ca000003 	bgt	18c <main+0x30>
     17c:	e3a00000 	mov	r0, #0
     180:	e59f10b0 	ldr	r1, [pc, #176]	; 238 <main+0xdc>
     184:	ebffff9d 	bl	0 <wc>
     188:	eb000169 	bl	734 <exit>
     18c:	e3a03001 	mov	r3, #1
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	ea000022 	b	224 <main+0xc8>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e1a03103 	lsl	r3, r3, #2
     1a0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     1a4:	e0823003 	add	r3, r2, r3
     1a8:	e5933000 	ldr	r3, [r3]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e3a01000 	mov	r1, #0
     1b4:	eb0001a6 	bl	854 <open>
     1b8:	e50b000c 	str	r0, [fp, #-12]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	aa000009 	bge	1f0 <main+0x94>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a03103 	lsl	r3, r3, #2
     1d0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     1d4:	e0823003 	add	r3, r2, r3
     1d8:	e5933000 	ldr	r3, [r3]
     1dc:	e3a00001 	mov	r0, #1
     1e0:	e59f1054 	ldr	r1, [pc, #84]	; 23c <main+0xe0>
     1e4:	e1a02003 	mov	r2, r3
     1e8:	eb00025e 	bl	b68 <printf>
     1ec:	eb000150 	bl	734 <exit>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e1a03103 	lsl	r3, r3, #2
     1f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     1fc:	e0823003 	add	r3, r2, r3
     200:	e5933000 	ldr	r3, [r3]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	e1a01003 	mov	r1, r3
     20c:	ebffff7b 	bl	0 <wc>
     210:	e51b000c 	ldr	r0, [fp, #-12]
     214:	eb000173 	bl	7e8 <close>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e2833001 	add	r3, r3, #1
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	e51b2008 	ldr	r2, [fp, #-8]
     228:	e51b3010 	ldr	r3, [fp, #-16]
     22c:	e1520003 	cmp	r2, r3
     230:	baffffd8 	blt	198 <main+0x3c>
     234:	eb00013e 	bl	734 <exit>
     238:	00001240 	.word	0x00001240
     23c:	00001244 	.word	0x00001244

00000240 <strcpy>:
     240:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     244:	e28db000 	add	fp, sp, #0
     248:	e24dd014 	sub	sp, sp, #20
     24c:	e50b0010 	str	r0, [fp, #-16]
     250:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     254:	e51b3010 	ldr	r3, [fp, #-16]
     258:	e50b3008 	str	r3, [fp, #-8]
     25c:	e1a00000 	nop			; (mov r0, r0)
     260:	e51b3010 	ldr	r3, [fp, #-16]
     264:	e2832001 	add	r2, r3, #1
     268:	e50b2010 	str	r2, [fp, #-16]
     26c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     270:	e2821001 	add	r1, r2, #1
     274:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     278:	e5d22000 	ldrb	r2, [r2]
     27c:	e5c32000 	strb	r2, [r3]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e3530000 	cmp	r3, #0
     288:	1afffff4 	bne	260 <strcpy+0x20>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e1a00003 	mov	r0, r3
     294:	e24bd000 	sub	sp, fp, #0
     298:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     29c:	e12fff1e 	bx	lr

000002a0 <strcmp>:
     2a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2a4:	e28db000 	add	fp, sp, #0
     2a8:	e24dd00c 	sub	sp, sp, #12
     2ac:	e50b0008 	str	r0, [fp, #-8]
     2b0:	e50b100c 	str	r1, [fp, #-12]
     2b4:	ea000005 	b	2d0 <strcmp+0x30>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b300c 	ldr	r3, [fp, #-12]
     2c8:	e2833001 	add	r3, r3, #1
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e5d33000 	ldrb	r3, [r3]
     2d8:	e3530000 	cmp	r3, #0
     2dc:	0a000005 	beq	2f8 <strcmp+0x58>
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e5d32000 	ldrb	r2, [r3]
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e5d33000 	ldrb	r3, [r3]
     2f0:	e1520003 	cmp	r2, r3
     2f4:	0affffef 	beq	2b8 <strcmp+0x18>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e5d33000 	ldrb	r3, [r3]
     300:	e1a02003 	mov	r2, r3
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e0633002 	rsb	r3, r3, r2
     310:	e1a00003 	mov	r0, r3
     314:	e24bd000 	sub	sp, fp, #0
     318:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     31c:	e12fff1e 	bx	lr

00000320 <strlen>:
     320:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     324:	e28db000 	add	fp, sp, #0
     328:	e24dd014 	sub	sp, sp, #20
     32c:	e50b0010 	str	r0, [fp, #-16]
     330:	e3a03000 	mov	r3, #0
     334:	e50b3008 	str	r3, [fp, #-8]
     338:	ea000002 	b	348 <strlen+0x28>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e51b2010 	ldr	r2, [fp, #-16]
     350:	e0823003 	add	r3, r2, r3
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	1afffff6 	bne	33c <strlen+0x1c>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e1a00003 	mov	r0, r3
     368:	e24bd000 	sub	sp, fp, #0
     36c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     370:	e12fff1e 	bx	lr

00000374 <memset>:
     374:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     378:	e28db000 	add	fp, sp, #0
     37c:	e24dd024 	sub	sp, sp, #36	; 0x24
     380:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     384:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     388:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     38c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     398:	e54b300d 	strb	r3, [fp, #-13]
     39c:	e55b300d 	ldrb	r3, [fp, #-13]
     3a0:	e1a02c03 	lsl	r2, r3, #24
     3a4:	e55b300d 	ldrb	r3, [fp, #-13]
     3a8:	e1a03803 	lsl	r3, r3, #16
     3ac:	e1822003 	orr	r2, r2, r3
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e1a03403 	lsl	r3, r3, #8
     3b8:	e1822003 	orr	r2, r2, r3
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e1823003 	orr	r3, r2, r3
     3c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     3c8:	ea000008 	b	3f0 <memset+0x7c>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e5c32000 	strb	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3dc:	e2433001 	sub	r3, r3, #1
     3e0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e50b3008 	str	r3, [fp, #-8]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3f4:	e3530000 	cmp	r3, #0
     3f8:	0a000003 	beq	40c <memset+0x98>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e2033003 	and	r3, r3, #3
     404:	e3530000 	cmp	r3, #0
     408:	1affffef 	bne	3cc <memset+0x58>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e50b300c 	str	r3, [fp, #-12]
     414:	ea000008 	b	43c <memset+0xc8>
     418:	e51b300c 	ldr	r3, [fp, #-12]
     41c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     420:	e5832000 	str	r2, [r3]
     424:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     428:	e2433004 	sub	r3, r3, #4
     42c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     430:	e51b300c 	ldr	r3, [fp, #-12]
     434:	e2833004 	add	r3, r3, #4
     438:	e50b300c 	str	r3, [fp, #-12]
     43c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     440:	e3530003 	cmp	r3, #3
     444:	8afffff3 	bhi	418 <memset+0xa4>
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	ea000008 	b	478 <memset+0x104>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     464:	e2433001 	sub	r3, r3, #1
     468:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     47c:	e3530000 	cmp	r3, #0
     480:	1afffff3 	bne	454 <memset+0xe0>
     484:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd000 	sub	sp, fp, #0
     490:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     494:	e12fff1e 	bx	lr

00000498 <strchr>:
     498:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     49c:	e28db000 	add	fp, sp, #0
     4a0:	e24dd00c 	sub	sp, sp, #12
     4a4:	e50b0008 	str	r0, [fp, #-8]
     4a8:	e1a03001 	mov	r3, r1
     4ac:	e54b3009 	strb	r3, [fp, #-9]
     4b0:	ea000009 	b	4dc <strchr+0x44>
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e55b2009 	ldrb	r2, [fp, #-9]
     4c0:	e1520003 	cmp	r2, r3
     4c4:	1a000001 	bne	4d0 <strchr+0x38>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	ea000007 	b	4f0 <strchr+0x58>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e2833001 	add	r3, r3, #1
     4d8:	e50b3008 	str	r3, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e5d33000 	ldrb	r3, [r3]
     4e4:	e3530000 	cmp	r3, #0
     4e8:	1afffff1 	bne	4b4 <strchr+0x1c>
     4ec:	e3a03000 	mov	r3, #0
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd000 	sub	sp, fp, #0
     4f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4fc:	e12fff1e 	bx	lr

00000500 <gets>:
     500:	e92d4800 	push	{fp, lr}
     504:	e28db004 	add	fp, sp, #4
     508:	e24dd018 	sub	sp, sp, #24
     50c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     510:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     514:	e3a03000 	mov	r3, #0
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	ea000017 	b	580 <gets+0x80>
     520:	e24b300d 	sub	r3, fp, #13
     524:	e3a00000 	mov	r0, #0
     528:	e1a01003 	mov	r1, r3
     52c:	e3a02001 	mov	r2, #1
     530:	eb00009a 	bl	7a0 <read>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b300c 	ldr	r3, [fp, #-12]
     53c:	e3530000 	cmp	r3, #0
     540:	ca000000 	bgt	548 <gets+0x48>
     544:	ea000012 	b	594 <gets+0x94>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e2832001 	add	r2, r3, #1
     550:	e50b2008 	str	r2, [fp, #-8]
     554:	e1a02003 	mov	r2, r3
     558:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     55c:	e0833002 	add	r3, r3, r2
     560:	e55b200d 	ldrb	r2, [fp, #-13]
     564:	e5c32000 	strb	r2, [r3]
     568:	e55b300d 	ldrb	r3, [fp, #-13]
     56c:	e353000a 	cmp	r3, #10
     570:	0a000007 	beq	594 <gets+0x94>
     574:	e55b300d 	ldrb	r3, [fp, #-13]
     578:	e353000d 	cmp	r3, #13
     57c:	0a000004 	beq	594 <gets+0x94>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e2832001 	add	r2, r3, #1
     588:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     58c:	e1520003 	cmp	r2, r3
     590:	baffffe2 	blt	520 <gets+0x20>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     59c:	e0823003 	add	r3, r2, r3
     5a0:	e3a02000 	mov	r2, #0
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e24bd004 	sub	sp, fp, #4
     5b4:	e8bd8800 	pop	{fp, pc}

000005b8 <stat>:
     5b8:	e92d4800 	push	{fp, lr}
     5bc:	e28db004 	add	fp, sp, #4
     5c0:	e24dd010 	sub	sp, sp, #16
     5c4:	e50b0010 	str	r0, [fp, #-16]
     5c8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5cc:	e51b0010 	ldr	r0, [fp, #-16]
     5d0:	e3a01000 	mov	r1, #0
     5d4:	eb00009e 	bl	854 <open>
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	aa000001 	bge	5f0 <stat+0x38>
     5e8:	e3e03000 	mvn	r3, #0
     5ec:	ea000006 	b	60c <stat+0x54>
     5f0:	e51b0008 	ldr	r0, [fp, #-8]
     5f4:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     5f8:	eb0000b0 	bl	8c0 <fstat>
     5fc:	e50b000c 	str	r0, [fp, #-12]
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb000077 	bl	7e8 <close>
     608:	e51b300c 	ldr	r3, [fp, #-12]
     60c:	e1a00003 	mov	r0, r3
     610:	e24bd004 	sub	sp, fp, #4
     614:	e8bd8800 	pop	{fp, pc}

00000618 <atoi>:
     618:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd014 	sub	sp, sp, #20
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e3a03000 	mov	r3, #0
     62c:	e50b3008 	str	r3, [fp, #-8]
     630:	ea00000c 	b	668 <atoi+0x50>
     634:	e51b2008 	ldr	r2, [fp, #-8]
     638:	e1a03002 	mov	r3, r2
     63c:	e1a03103 	lsl	r3, r3, #2
     640:	e0833002 	add	r3, r3, r2
     644:	e1a03083 	lsl	r3, r3, #1
     648:	e1a01003 	mov	r1, r3
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e2832001 	add	r2, r3, #1
     654:	e50b2010 	str	r2, [fp, #-16]
     658:	e5d33000 	ldrb	r3, [r3]
     65c:	e0813003 	add	r3, r1, r3
     660:	e2433030 	sub	r3, r3, #48	; 0x30
     664:	e50b3008 	str	r3, [fp, #-8]
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e353002f 	cmp	r3, #47	; 0x2f
     674:	9a000003 	bls	688 <atoi+0x70>
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e3530039 	cmp	r3, #57	; 0x39
     684:	9affffea 	bls	634 <atoi+0x1c>
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e1a00003 	mov	r0, r3
     690:	e24bd000 	sub	sp, fp, #0
     694:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <memmove>:
     69c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     6a0:	e28db000 	add	fp, sp, #0
     6a4:	e24dd01c 	sub	sp, sp, #28
     6a8:	e50b0010 	str	r0, [fp, #-16]
     6ac:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     6b0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     6c0:	e50b300c 	str	r3, [fp, #-12]
     6c4:	ea000007 	b	6e8 <memmove+0x4c>
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e2832001 	add	r2, r3, #1
     6d0:	e50b2008 	str	r2, [fp, #-8]
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e2821001 	add	r1, r2, #1
     6dc:	e50b100c 	str	r1, [fp, #-12]
     6e0:	e5d22000 	ldrb	r2, [r2]
     6e4:	e5c32000 	strb	r2, [r3]
     6e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6ec:	e2432001 	sub	r2, r3, #1
     6f0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     6f4:	e3530000 	cmp	r3, #0
     6f8:	cafffff2 	bgt	6c8 <memmove+0x2c>
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e1a00003 	mov	r0, r3
     704:	e24bd000 	sub	sp, fp, #0
     708:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fork>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00001 	mov	r0, #1
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <exit>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00002 	mov	r0, #2
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <wait>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00003 	mov	r0, #3
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <pipe>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00004 	mov	r0, #4
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <read>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00005 	mov	r0, #5
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <write>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00010 	mov	r0, #16
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <close>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00015 	mov	r0, #21
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <kill>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00006 	mov	r0, #6
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <exec>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00007 	mov	r0, #7
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <open>:
     854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000f 	mov	r0, #15
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <mknod>:
     878:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00011 	mov	r0, #17
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <unlink>:
     89c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00012 	mov	r0, #18
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <fstat>:
     8c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00008 	mov	r0, #8
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <link>:
     8e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00013 	mov	r0, #19
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <mkdir>:
     908:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00014 	mov	r0, #20
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <chdir>:
     92c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00009 	mov	r0, #9
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <dup>:
     950:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000a 	mov	r0, #10
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <getpid>:
     974:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0000b 	mov	r0, #11
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <sbrk>:
     998:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0000c 	mov	r0, #12
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <sleep>:
     9bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a0000d 	mov	r0, #13
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <uptime>:
     9e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a0000e 	mov	r0, #14
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <putc>:
     a04:	e92d4800 	push	{fp, lr}
     a08:	e28db004 	add	fp, sp, #4
     a0c:	e24dd008 	sub	sp, sp, #8
     a10:	e50b0008 	str	r0, [fp, #-8]
     a14:	e1a03001 	mov	r3, r1
     a18:	e54b3009 	strb	r3, [fp, #-9]
     a1c:	e24b3009 	sub	r3, fp, #9
     a20:	e51b0008 	ldr	r0, [fp, #-8]
     a24:	e1a01003 	mov	r1, r3
     a28:	e3a02001 	mov	r2, #1
     a2c:	ebffff64 	bl	7c4 <write>
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}

00000a38 <printint>:
     a38:	e92d4810 	push	{r4, fp, lr}
     a3c:	e28db008 	add	fp, sp, #8
     a40:	e24dd034 	sub	sp, sp, #52	; 0x34
     a44:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
     a48:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
     a4c:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
     a50:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
     a54:	e3a03000 	mov	r3, #0
     a58:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a5c:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
     a60:	e3530000 	cmp	r3, #0
     a64:	0a000008 	beq	a8c <printint+0x54>
     a68:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a6c:	e3530000 	cmp	r3, #0
     a70:	aa000005 	bge	a8c <printint+0x54>
     a74:	e3a03001 	mov	r3, #1
     a78:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a7c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a80:	e2633000 	rsb	r3, r3, #0
     a84:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a88:	ea000001 	b	a94 <printint+0x5c>
     a8c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a90:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a94:	e3a03000 	mov	r3, #0
     a98:	e50b3010 	str	r3, [fp, #-16]
     a9c:	e51b4010 	ldr	r4, [fp, #-16]
     aa0:	e2843001 	add	r3, r4, #1
     aa4:	e50b3010 	str	r3, [fp, #-16]
     aa8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     aac:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     ab0:	e1a00002 	mov	r0, r2
     ab4:	e1a01003 	mov	r1, r3
     ab8:	eb0001cd 	bl	11f4 <__aeabi_uidivmod>
     abc:	e1a03001 	mov	r3, r1
     ac0:	e1a02003 	mov	r2, r3
     ac4:	e59f3098 	ldr	r3, [pc, #152]	; b64 <printint+0x12c>
     ac8:	e7d32002 	ldrb	r2, [r3, r2]
     acc:	e24b300c 	sub	r3, fp, #12
     ad0:	e0833004 	add	r3, r3, r4
     ad4:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ad8:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
     adc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     ae0:	e1a01003 	mov	r1, r3
     ae4:	eb000185 	bl	1100 <__aeabi_uidiv>
     ae8:	e1a03000 	mov	r3, r0
     aec:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     af0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     af4:	e3530000 	cmp	r3, #0
     af8:	1affffe7 	bne	a9c <printint+0x64>
     afc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b00:	e3530000 	cmp	r3, #0
     b04:	0a000006 	beq	b24 <printint+0xec>
     b08:	e51b3010 	ldr	r3, [fp, #-16]
     b0c:	e2832001 	add	r2, r3, #1
     b10:	e50b2010 	str	r2, [fp, #-16]
     b14:	e24b200c 	sub	r2, fp, #12
     b18:	e0823003 	add	r3, r2, r3
     b1c:	e3a0202d 	mov	r2, #45	; 0x2d
     b20:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     b24:	ea000006 	b	b44 <printint+0x10c>
     b28:	e24b2028 	sub	r2, fp, #40	; 0x28
     b2c:	e51b3010 	ldr	r3, [fp, #-16]
     b30:	e0823003 	add	r3, r2, r3
     b34:	e5d33000 	ldrb	r3, [r3]
     b38:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
     b3c:	e1a01003 	mov	r1, r3
     b40:	ebffffaf 	bl	a04 <putc>
     b44:	e51b3010 	ldr	r3, [fp, #-16]
     b48:	e2433001 	sub	r3, r3, #1
     b4c:	e50b3010 	str	r3, [fp, #-16]
     b50:	e51b3010 	ldr	r3, [fp, #-16]
     b54:	e3530000 	cmp	r3, #0
     b58:	aafffff2 	bge	b28 <printint+0xf0>
     b5c:	e24bd008 	sub	sp, fp, #8
     b60:	e8bd8810 	pop	{r4, fp, pc}
     b64:	00001260 	.word	0x00001260

00000b68 <printf>:
     b68:	e92d000e 	push	{r1, r2, r3}
     b6c:	e92d4800 	push	{fp, lr}
     b70:	e28db004 	add	fp, sp, #4
     b74:	e24dd024 	sub	sp, sp, #36	; 0x24
     b78:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b7c:	e3a03000 	mov	r3, #0
     b80:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b84:	e28b3008 	add	r3, fp, #8
     b88:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b8c:	e3a03000 	mov	r3, #0
     b90:	e50b3010 	str	r3, [fp, #-16]
     b94:	ea000074 	b	d6c <printf+0x204>
     b98:	e59b2004 	ldr	r2, [fp, #4]
     b9c:	e51b3010 	ldr	r3, [fp, #-16]
     ba0:	e0823003 	add	r3, r2, r3
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     bac:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     bb0:	e3530000 	cmp	r3, #0
     bb4:	1a00000b 	bne	be8 <printf+0x80>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bbc:	e3530025 	cmp	r3, #37	; 0x25
     bc0:	1a000002 	bne	bd0 <printf+0x68>
     bc4:	e3a03025 	mov	r3, #37	; 0x25
     bc8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bcc:	ea000063 	b	d60 <printf+0x1f8>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bd4:	e6ef3073 	uxtb	r3, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bdc:	e1a01003 	mov	r1, r3
     be0:	ebffff87 	bl	a04 <putc>
     be4:	ea00005d 	b	d60 <printf+0x1f8>
     be8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     bec:	e3530025 	cmp	r3, #37	; 0x25
     bf0:	1a00005a 	bne	d60 <printf+0x1f8>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf8:	e3530064 	cmp	r3, #100	; 0x64
     bfc:	1a00000a 	bne	c2c <printf+0xc4>
     c00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c04:	e5933000 	ldr	r3, [r3]
     c08:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c0c:	e1a01003 	mov	r1, r3
     c10:	e3a0200a 	mov	r2, #10
     c14:	e3a03001 	mov	r3, #1
     c18:	ebffff86 	bl	a38 <printint>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c20:	e2833004 	add	r3, r3, #4
     c24:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c28:	ea00004a 	b	d58 <printf+0x1f0>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c30:	e3530078 	cmp	r3, #120	; 0x78
     c34:	0a000002 	beq	c44 <printf+0xdc>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c3c:	e3530070 	cmp	r3, #112	; 0x70
     c40:	1a00000a 	bne	c70 <printf+0x108>
     c44:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c50:	e1a01003 	mov	r1, r3
     c54:	e3a02010 	mov	r2, #16
     c58:	e3a03000 	mov	r3, #0
     c5c:	ebffff75 	bl	a38 <printint>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c64:	e2833004 	add	r3, r3, #4
     c68:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c6c:	ea000039 	b	d58 <printf+0x1f0>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c74:	e3530073 	cmp	r3, #115	; 0x73
     c78:	1a000018 	bne	ce0 <printf+0x178>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e50b300c 	str	r3, [fp, #-12]
     c88:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c8c:	e2833004 	add	r3, r3, #4
     c90:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e3530000 	cmp	r3, #0
     c9c:	1a000001 	bne	ca8 <printf+0x140>
     ca0:	e59f30ec 	ldr	r3, [pc, #236]	; d94 <printf+0x22c>
     ca4:	e50b300c 	str	r3, [fp, #-12]
     ca8:	ea000007 	b	ccc <printf+0x164>
     cac:	e51b300c 	ldr	r3, [fp, #-12]
     cb0:	e5d33000 	ldrb	r3, [r3]
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cb8:	e1a01003 	mov	r1, r3
     cbc:	ebffff50 	bl	a04 <putc>
     cc0:	e51b300c 	ldr	r3, [fp, #-12]
     cc4:	e2833001 	add	r3, r3, #1
     cc8:	e50b300c 	str	r3, [fp, #-12]
     ccc:	e51b300c 	ldr	r3, [fp, #-12]
     cd0:	e5d33000 	ldrb	r3, [r3]
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1afffff3 	bne	cac <printf+0x144>
     cdc:	ea00001d 	b	d58 <printf+0x1f0>
     ce0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ce4:	e3530063 	cmp	r3, #99	; 0x63
     ce8:	1a000009 	bne	d14 <printf+0x1ac>
     cec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e6ef3073 	uxtb	r3, r3
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cfc:	e1a01003 	mov	r1, r3
     d00:	ebffff3f 	bl	a04 <putc>
     d04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     d08:	e2833004 	add	r3, r3, #4
     d0c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     d10:	ea000010 	b	d58 <printf+0x1f0>
     d14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d18:	e3530025 	cmp	r3, #37	; 0x25
     d1c:	1a000005 	bne	d38 <printf+0x1d0>
     d20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d24:	e6ef3073 	uxtb	r3, r3
     d28:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d2c:	e1a01003 	mov	r1, r3
     d30:	ebffff33 	bl	a04 <putc>
     d34:	ea000007 	b	d58 <printf+0x1f0>
     d38:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d3c:	e3a01025 	mov	r1, #37	; 0x25
     d40:	ebffff2f 	bl	a04 <putc>
     d44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d48:	e6ef3073 	uxtb	r3, r3
     d4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d50:	e1a01003 	mov	r1, r3
     d54:	ebffff2a 	bl	a04 <putc>
     d58:	e3a03000 	mov	r3, #0
     d5c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e2833001 	add	r3, r3, #1
     d68:	e50b3010 	str	r3, [fp, #-16]
     d6c:	e59b2004 	ldr	r2, [fp, #4]
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e0823003 	add	r3, r2, r3
     d78:	e5d33000 	ldrb	r3, [r3]
     d7c:	e3530000 	cmp	r3, #0
     d80:	1affff84 	bne	b98 <printf+0x30>
     d84:	e24bd004 	sub	sp, fp, #4
     d88:	e8bd4800 	pop	{fp, lr}
     d8c:	e28dd00c 	add	sp, sp, #12
     d90:	e12fff1e 	bx	lr
     d94:	00001258 	.word	0x00001258

00000d98 <free>:
     d98:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d9c:	e28db000 	add	fp, sp, #0
     da0:	e24dd014 	sub	sp, sp, #20
     da4:	e50b0010 	str	r0, [fp, #-16]
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e2433008 	sub	r3, r3, #8
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e59f3150 	ldr	r3, [pc, #336]	; f0c <free+0x174>
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e50b3008 	str	r3, [fp, #-8]
     dc0:	ea000010 	b	e08 <free+0x70>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5932000 	ldr	r2, [r3]
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	8a000008 	bhi	dfc <free+0x64>
     dd8:	e51b200c 	ldr	r2, [fp, #-12]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e1520003 	cmp	r2, r3
     de4:	8a000010 	bhi	e2c <free+0x94>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5932000 	ldr	r2, [r3]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e1520003 	cmp	r2, r3
     df8:	8a00000b 	bhi	e2c <free+0x94>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e50b3008 	str	r3, [fp, #-8]
     e08:	e51b200c 	ldr	r2, [fp, #-12]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e1520003 	cmp	r2, r3
     e14:	9affffea 	bls	dc4 <free+0x2c>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5932000 	ldr	r2, [r3]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e1520003 	cmp	r2, r3
     e28:	9affffe5 	bls	dc4 <free+0x2c>
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e1a03183 	lsl	r3, r3, #3
     e38:	e51b200c 	ldr	r2, [fp, #-12]
     e3c:	e0822003 	add	r2, r2, r3
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e1520003 	cmp	r2, r3
     e4c:	1a00000d 	bne	e88 <free+0xf0>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5932004 	ldr	r2, [r3, #4]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e0822003 	add	r2, r2, r3
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5832004 	str	r2, [r3, #4]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e5932000 	ldr	r2, [r3]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5832000 	str	r2, [r3]
     e84:	ea000003 	b	e98 <free+0x100>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5933004 	ldr	r3, [r3, #4]
     ea0:	e1a03183 	lsl	r3, r3, #3
     ea4:	e51b2008 	ldr	r2, [fp, #-8]
     ea8:	e0822003 	add	r2, r2, r3
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a00000b 	bne	ee8 <free+0x150>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5932004 	ldr	r2, [r3, #4]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5933004 	ldr	r3, [r3, #4]
     ec8:	e0822003 	add	r2, r2, r3
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5932000 	ldr	r2, [r3]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	ea000002 	b	ef4 <free+0x15c>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	e59f2010 	ldr	r2, [pc, #16]	; f0c <free+0x174>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5823000 	str	r3, [r2]
     f00:	e24bd000 	sub	sp, fp, #0
     f04:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     f08:	e12fff1e 	bx	lr
     f0c:	0000127c 	.word	0x0000127c

00000f10 <morecore>:
     f10:	e92d4800 	push	{fp, lr}
     f14:	e28db004 	add	fp, sp, #4
     f18:	e24dd010 	sub	sp, sp, #16
     f1c:	e50b0010 	str	r0, [fp, #-16]
     f20:	e51b3010 	ldr	r3, [fp, #-16]
     f24:	e3530a01 	cmp	r3, #4096	; 0x1000
     f28:	2a000001 	bcs	f34 <morecore+0x24>
     f2c:	e3a03a01 	mov	r3, #4096	; 0x1000
     f30:	e50b3010 	str	r3, [fp, #-16]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e1a03183 	lsl	r3, r3, #3
     f3c:	e1a00003 	mov	r0, r3
     f40:	ebfffe94 	bl	998 <sbrk>
     f44:	e50b0008 	str	r0, [fp, #-8]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e3730001 	cmn	r3, #1
     f50:	1a000001 	bne	f5c <morecore+0x4c>
     f54:	e3a03000 	mov	r3, #0
     f58:	ea00000a 	b	f88 <morecore+0x78>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e50b300c 	str	r3, [fp, #-12]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e51b2010 	ldr	r2, [fp, #-16]
     f6c:	e5832004 	str	r2, [r3, #4]
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e2833008 	add	r3, r3, #8
     f78:	e1a00003 	mov	r0, r3
     f7c:	ebffff85 	bl	d98 <free>
     f80:	e59f300c 	ldr	r3, [pc, #12]	; f94 <morecore+0x84>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e1a00003 	mov	r0, r3
     f8c:	e24bd004 	sub	sp, fp, #4
     f90:	e8bd8800 	pop	{fp, pc}
     f94:	0000127c 	.word	0x0000127c

00000f98 <malloc>:
     f98:	e92d4800 	push	{fp, lr}
     f9c:	e28db004 	add	fp, sp, #4
     fa0:	e24dd018 	sub	sp, sp, #24
     fa4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     fa8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     fac:	e2833007 	add	r3, r3, #7
     fb0:	e1a031a3 	lsr	r3, r3, #3
     fb4:	e2833001 	add	r3, r3, #1
     fb8:	e50b3010 	str	r3, [fp, #-16]
     fbc:	e59f3134 	ldr	r3, [pc, #308]	; 10f8 <malloc+0x160>
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e50b300c 	str	r3, [fp, #-12]
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e3530000 	cmp	r3, #0
     fd0:	1a00000b 	bne	1004 <malloc+0x6c>
     fd4:	e59f3120 	ldr	r3, [pc, #288]	; 10fc <malloc+0x164>
     fd8:	e50b300c 	str	r3, [fp, #-12]
     fdc:	e59f2114 	ldr	r2, [pc, #276]	; 10f8 <malloc+0x160>
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5823000 	str	r3, [r2]
     fe8:	e59f3108 	ldr	r3, [pc, #264]	; 10f8 <malloc+0x160>
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e59f2104 	ldr	r2, [pc, #260]	; 10fc <malloc+0x164>
     ff4:	e5823000 	str	r3, [r2]
     ff8:	e59f30fc 	ldr	r3, [pc, #252]	; 10fc <malloc+0x164>
     ffc:	e3a02000 	mov	r2, #0
    1000:	e5832004 	str	r2, [r3, #4]
    1004:	e51b300c 	ldr	r3, [fp, #-12]
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e50b3008 	str	r3, [fp, #-8]
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5932004 	ldr	r2, [r3, #4]
    1018:	e51b3010 	ldr	r3, [fp, #-16]
    101c:	e1520003 	cmp	r2, r3
    1020:	3a00001e 	bcc	10a0 <malloc+0x108>
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5932004 	ldr	r2, [r3, #4]
    102c:	e51b3010 	ldr	r3, [fp, #-16]
    1030:	e1520003 	cmp	r2, r3
    1034:	1a000004 	bne	104c <malloc+0xb4>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5932000 	ldr	r2, [r3]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5832000 	str	r2, [r3]
    1048:	ea00000e 	b	1088 <malloc+0xf0>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5932004 	ldr	r2, [r3, #4]
    1054:	e51b3010 	ldr	r3, [fp, #-16]
    1058:	e0632002 	rsb	r2, r3, r2
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5832004 	str	r2, [r3, #4]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933004 	ldr	r3, [r3, #4]
    106c:	e1a03183 	lsl	r3, r3, #3
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e0823003 	add	r3, r2, r3
    1078:	e50b3008 	str	r3, [fp, #-8]
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e51b2010 	ldr	r2, [fp, #-16]
    1084:	e5832004 	str	r2, [r3, #4]
    1088:	e59f2068 	ldr	r2, [pc, #104]	; 10f8 <malloc+0x160>
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5823000 	str	r3, [r2]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e2833008 	add	r3, r3, #8
    109c:	ea000012 	b	10ec <malloc+0x154>
    10a0:	e59f3050 	ldr	r3, [pc, #80]	; 10f8 <malloc+0x160>
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e51b2008 	ldr	r2, [fp, #-8]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	1a000007 	bne	10d4 <malloc+0x13c>
    10b4:	e51b0010 	ldr	r0, [fp, #-16]
    10b8:	ebffff94 	bl	f10 <morecore>
    10bc:	e50b0008 	str	r0, [fp, #-8]
    10c0:	e51b3008 	ldr	r3, [fp, #-8]
    10c4:	e3530000 	cmp	r3, #0
    10c8:	1a000001 	bne	10d4 <malloc+0x13c>
    10cc:	e3a03000 	mov	r3, #0
    10d0:	ea000005 	b	10ec <malloc+0x154>
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	eaffffc8 	b	1010 <malloc+0x78>
    10ec:	e1a00003 	mov	r0, r3
    10f0:	e24bd004 	sub	sp, fp, #4
    10f4:	e8bd8800 	pop	{fp, pc}
    10f8:	0000127c 	.word	0x0000127c
    10fc:	00001274 	.word	0x00001274

00001100 <__aeabi_uidiv>:
    1100:	e2512001 	subs	r2, r1, #1
    1104:	012fff1e 	bxeq	lr
    1108:	3a000036 	bcc	11e8 <__aeabi_uidiv+0xe8>
    110c:	e1500001 	cmp	r0, r1
    1110:	9a000022 	bls	11a0 <__aeabi_uidiv+0xa0>
    1114:	e1110002 	tst	r1, r2
    1118:	0a000023 	beq	11ac <__aeabi_uidiv+0xac>
    111c:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1120:	01a01181 	lsleq	r1, r1, #3
    1124:	03a03008 	moveq	r3, #8
    1128:	13a03001 	movne	r3, #1
    112c:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1130:	31510000 	cmpcc	r1, r0
    1134:	31a01201 	lslcc	r1, r1, #4
    1138:	31a03203 	lslcc	r3, r3, #4
    113c:	3afffffa 	bcc	112c <__aeabi_uidiv+0x2c>
    1140:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1144:	31510000 	cmpcc	r1, r0
    1148:	31a01081 	lslcc	r1, r1, #1
    114c:	31a03083 	lslcc	r3, r3, #1
    1150:	3afffffa 	bcc	1140 <__aeabi_uidiv+0x40>
    1154:	e3a02000 	mov	r2, #0
    1158:	e1500001 	cmp	r0, r1
    115c:	20400001 	subcs	r0, r0, r1
    1160:	21822003 	orrcs	r2, r2, r3
    1164:	e15000a1 	cmp	r0, r1, lsr #1
    1168:	204000a1 	subcs	r0, r0, r1, lsr #1
    116c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1170:	e1500121 	cmp	r0, r1, lsr #2
    1174:	20400121 	subcs	r0, r0, r1, lsr #2
    1178:	21822123 	orrcs	r2, r2, r3, lsr #2
    117c:	e15001a1 	cmp	r0, r1, lsr #3
    1180:	204001a1 	subcs	r0, r0, r1, lsr #3
    1184:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1188:	e3500000 	cmp	r0, #0
    118c:	11b03223 	lsrsne	r3, r3, #4
    1190:	11a01221 	lsrne	r1, r1, #4
    1194:	1affffef 	bne	1158 <__aeabi_uidiv+0x58>
    1198:	e1a00002 	mov	r0, r2
    119c:	e12fff1e 	bx	lr
    11a0:	03a00001 	moveq	r0, #1
    11a4:	13a00000 	movne	r0, #0
    11a8:	e12fff1e 	bx	lr
    11ac:	e3510801 	cmp	r1, #65536	; 0x10000
    11b0:	21a01821 	lsrcs	r1, r1, #16
    11b4:	23a02010 	movcs	r2, #16
    11b8:	33a02000 	movcc	r2, #0
    11bc:	e3510c01 	cmp	r1, #256	; 0x100
    11c0:	21a01421 	lsrcs	r1, r1, #8
    11c4:	22822008 	addcs	r2, r2, #8
    11c8:	e3510010 	cmp	r1, #16
    11cc:	21a01221 	lsrcs	r1, r1, #4
    11d0:	22822004 	addcs	r2, r2, #4
    11d4:	e3510004 	cmp	r1, #4
    11d8:	82822003 	addhi	r2, r2, #3
    11dc:	908220a1 	addls	r2, r2, r1, lsr #1
    11e0:	e1a00230 	lsr	r0, r0, r2
    11e4:	e12fff1e 	bx	lr
    11e8:	e3500000 	cmp	r0, #0
    11ec:	13e00000 	mvnne	r0, #0
    11f0:	ea000007 	b	1214 <__aeabi_idiv0>

000011f4 <__aeabi_uidivmod>:
    11f4:	e3510000 	cmp	r1, #0
    11f8:	0afffffa 	beq	11e8 <__aeabi_uidiv+0xe8>
    11fc:	e92d4003 	push	{r0, r1, lr}
    1200:	ebffffbe 	bl	1100 <__aeabi_uidiv>
    1204:	e8bd4006 	pop	{r1, r2, lr}
    1208:	e0030092 	mul	r3, r2, r0
    120c:	e0411003 	sub	r1, r1, r3
    1210:	e12fff1e 	bx	lr

00001214 <__aeabi_idiv0>:
    1214:	e12fff1e 	bx	lr
