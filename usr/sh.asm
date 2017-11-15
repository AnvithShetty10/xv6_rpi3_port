
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	; 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb00052e 	bl	14dc <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2433001 	sub	r3, r3, #1
      2c:	e3530004 	cmp	r3, #4
      30:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
      34:	ea000004 	b	4c <runcmd+0x4c>
      38:	00000054 	.word	0x00000054
      3c:	000000a8 	.word	0x000000a8
      40:	00000158 	.word	0x00000158
      44:	00000118 	.word	0x00000118
      48:	0000023c 	.word	0x0000023c
      4c:	e59f021c 	ldr	r0, [pc, #540]	; 270 <runcmd+0x270>
      50:	eb0000e9 	bl	3fc <panic>
      54:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
      58:	e50b3008 	str	r3, [fp, #-8]
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e5933004 	ldr	r3, [r3, #4]
      64:	e3530000 	cmp	r3, #0
      68:	1a000000 	bne	70 <runcmd+0x70>
      6c:	eb00051a 	bl	14dc <exit>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e5932004 	ldr	r2, [r3, #4]
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e2833004 	add	r3, r3, #4
      80:	e1a00002 	mov	r0, r2
      84:	e1a01003 	mov	r1, r3
      88:	eb000552 	bl	15d8 <exec>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e5933004 	ldr	r3, [r3, #4]
      94:	e3a00002 	mov	r0, #2
      98:	e59f11d4 	ldr	r1, [pc, #468]	; 274 <runcmd+0x274>
      9c:	e1a02003 	mov	r2, r3
      a0:	eb00061a 	bl	1910 <printf>
      a4:	ea000070 	b	26c <runcmd+0x26c>
      a8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
      ac:	e50b300c 	str	r3, [fp, #-12]
      b0:	e51b300c 	ldr	r3, [fp, #-12]
      b4:	e5933014 	ldr	r3, [r3, #20]
      b8:	e1a00003 	mov	r0, r3
      bc:	eb000533 	bl	1590 <close>
      c0:	e51b300c 	ldr	r3, [fp, #-12]
      c4:	e5932008 	ldr	r2, [r3, #8]
      c8:	e51b300c 	ldr	r3, [fp, #-12]
      cc:	e5933010 	ldr	r3, [r3, #16]
      d0:	e1a00002 	mov	r0, r2
      d4:	e1a01003 	mov	r1, r3
      d8:	eb000547 	bl	15fc <open>
      dc:	e1a03000 	mov	r3, r0
      e0:	e3530000 	cmp	r3, #0
      e4:	aa000006 	bge	104 <runcmd+0x104>
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5933008 	ldr	r3, [r3, #8]
      f0:	e3a00002 	mov	r0, #2
      f4:	e59f117c 	ldr	r1, [pc, #380]	; 278 <runcmd+0x278>
      f8:	e1a02003 	mov	r2, r3
      fc:	eb000603 	bl	1910 <printf>
     100:	eb0004f5 	bl	14dc <exit>
     104:	e51b300c 	ldr	r3, [fp, #-12]
     108:	e5933004 	ldr	r3, [r3, #4]
     10c:	e1a00003 	mov	r0, r3
     110:	ebffffba 	bl	0 <runcmd>
     114:	ea000054 	b	26c <runcmd+0x26c>
     118:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
     11c:	e50b3010 	str	r3, [fp, #-16]
     120:	eb0000bf 	bl	424 <fork1>
     124:	e1a03000 	mov	r3, r0
     128:	e3530000 	cmp	r3, #0
     12c:	1a000003 	bne	140 <runcmd+0x140>
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e5933004 	ldr	r3, [r3, #4]
     138:	e1a00003 	mov	r0, r3
     13c:	ebffffaf 	bl	0 <runcmd>
     140:	eb0004ee 	bl	1500 <wait>
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e5933008 	ldr	r3, [r3, #8]
     14c:	e1a00003 	mov	r0, r3
     150:	ebffffaa 	bl	0 <runcmd>
     154:	ea000044 	b	26c <runcmd+0x26c>
     158:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
     15c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     160:	e24b3020 	sub	r3, fp, #32
     164:	e1a00003 	mov	r0, r3
     168:	eb0004ed 	bl	1524 <pipe>
     16c:	e1a03000 	mov	r3, r0
     170:	e3530000 	cmp	r3, #0
     174:	aa000001 	bge	180 <runcmd+0x180>
     178:	e59f00fc 	ldr	r0, [pc, #252]	; 27c <runcmd+0x27c>
     17c:	eb00009e 	bl	3fc <panic>
     180:	eb0000a7 	bl	424 <fork1>
     184:	e1a03000 	mov	r3, r0
     188:	e3530000 	cmp	r3, #0
     18c:	1a00000e 	bne	1cc <runcmd+0x1cc>
     190:	e3a00001 	mov	r0, #1
     194:	eb0004fd 	bl	1590 <close>
     198:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     19c:	e1a00003 	mov	r0, r3
     1a0:	eb000554 	bl	16f8 <dup>
     1a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1a8:	e1a00003 	mov	r0, r3
     1ac:	eb0004f7 	bl	1590 <close>
     1b0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0004f4 	bl	1590 <close>
     1bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     1c0:	e5933004 	ldr	r3, [r3, #4]
     1c4:	e1a00003 	mov	r0, r3
     1c8:	ebffff8c 	bl	0 <runcmd>
     1cc:	eb000094 	bl	424 <fork1>
     1d0:	e1a03000 	mov	r3, r0
     1d4:	e3530000 	cmp	r3, #0
     1d8:	1a00000e 	bne	218 <runcmd+0x218>
     1dc:	e3a00000 	mov	r0, #0
     1e0:	eb0004ea 	bl	1590 <close>
     1e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1e8:	e1a00003 	mov	r0, r3
     1ec:	eb000541 	bl	16f8 <dup>
     1f0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1f4:	e1a00003 	mov	r0, r3
     1f8:	eb0004e4 	bl	1590 <close>
     1fc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     200:	e1a00003 	mov	r0, r3
     204:	eb0004e1 	bl	1590 <close>
     208:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     20c:	e5933008 	ldr	r3, [r3, #8]
     210:	e1a00003 	mov	r0, r3
     214:	ebffff79 	bl	0 <runcmd>
     218:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     21c:	e1a00003 	mov	r0, r3
     220:	eb0004da 	bl	1590 <close>
     224:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     228:	e1a00003 	mov	r0, r3
     22c:	eb0004d7 	bl	1590 <close>
     230:	eb0004b2 	bl	1500 <wait>
     234:	eb0004b1 	bl	1500 <wait>
     238:	ea00000b 	b	26c <runcmd+0x26c>
     23c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
     240:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     244:	eb000076 	bl	424 <fork1>
     248:	e1a03000 	mov	r3, r0
     24c:	e3530000 	cmp	r3, #0
     250:	1a000004 	bne	268 <runcmd+0x268>
     254:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     258:	e5933004 	ldr	r3, [r3, #4]
     25c:	e1a00003 	mov	r0, r3
     260:	ebffff66 	bl	0 <runcmd>
     264:	eaffffff 	b	268 <runcmd+0x268>
     268:	e1a00000 	nop			; (mov r0, r0)
     26c:	eb00049a 	bl	14dc <exit>
     270:	00001fc0 	.word	0x00001fc0
     274:	00001fc8 	.word	0x00001fc8
     278:	00001fd8 	.word	0x00001fd8
     27c:	00001fe8 	.word	0x00001fe8

00000280 <getcmd>:
     280:	e92d4800 	push	{fp, lr}
     284:	e28db004 	add	fp, sp, #4
     288:	e24dd008 	sub	sp, sp, #8
     28c:	e50b0008 	str	r0, [fp, #-8]
     290:	e50b100c 	str	r1, [fp, #-12]
     294:	e3a00002 	mov	r0, #2
     298:	e59f1048 	ldr	r1, [pc, #72]	; 2e8 <getcmd+0x68>
     29c:	eb00059b 	bl	1910 <printf>
     2a0:	e51b300c 	ldr	r3, [fp, #-12]
     2a4:	e51b0008 	ldr	r0, [fp, #-8]
     2a8:	e3a01000 	mov	r1, #0
     2ac:	e1a02003 	mov	r2, r3
     2b0:	eb000399 	bl	111c <memset>
     2b4:	e51b0008 	ldr	r0, [fp, #-8]
     2b8:	e51b100c 	ldr	r1, [fp, #-12]
     2bc:	eb0003f9 	bl	12a8 <gets>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e5d33000 	ldrb	r3, [r3]
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1a000001 	bne	2d8 <getcmd+0x58>
     2d0:	e3e03000 	mvn	r3, #0
     2d4:	ea000000 	b	2dc <getcmd+0x5c>
     2d8:	e3a03000 	mov	r3, #0
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e24bd004 	sub	sp, fp, #4
     2e4:	e8bd8800 	pop	{fp, pc}
     2e8:	00001ff0 	.word	0x00001ff0

000002ec <main>:
     2ec:	e92d4800 	push	{fp, lr}
     2f0:	e28db004 	add	fp, sp, #4
     2f4:	e24dd008 	sub	sp, sp, #8
     2f8:	ea000005 	b	314 <main+0x28>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e3530002 	cmp	r3, #2
     304:	da000002 	ble	314 <main+0x28>
     308:	e51b0008 	ldr	r0, [fp, #-8]
     30c:	eb00049f 	bl	1590 <close>
     310:	ea000006 	b	330 <main+0x44>
     314:	e59f00d0 	ldr	r0, [pc, #208]	; 3ec <main+0x100>
     318:	e3a01002 	mov	r1, #2
     31c:	eb0004b6 	bl	15fc <open>
     320:	e50b0008 	str	r0, [fp, #-8]
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e3530000 	cmp	r3, #0
     32c:	aafffff2 	bge	2fc <main+0x10>
     330:	ea000026 	b	3d0 <main+0xe4>
     334:	e59f30b4 	ldr	r3, [pc, #180]	; 3f0 <main+0x104>
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e3530063 	cmp	r3, #99	; 0x63
     340:	1a000018 	bne	3a8 <main+0xbc>
     344:	e59f30a4 	ldr	r3, [pc, #164]	; 3f0 <main+0x104>
     348:	e5d33001 	ldrb	r3, [r3, #1]
     34c:	e3530064 	cmp	r3, #100	; 0x64
     350:	1a000014 	bne	3a8 <main+0xbc>
     354:	e59f3094 	ldr	r3, [pc, #148]	; 3f0 <main+0x104>
     358:	e5d33002 	ldrb	r3, [r3, #2]
     35c:	e3530020 	cmp	r3, #32
     360:	1a000010 	bne	3a8 <main+0xbc>
     364:	e59f0084 	ldr	r0, [pc, #132]	; 3f0 <main+0x104>
     368:	eb000356 	bl	10c8 <strlen>
     36c:	e1a03000 	mov	r3, r0
     370:	e2433001 	sub	r3, r3, #1
     374:	e59f2074 	ldr	r2, [pc, #116]	; 3f0 <main+0x104>
     378:	e3a01000 	mov	r1, #0
     37c:	e7c21003 	strb	r1, [r2, r3]
     380:	e59f006c 	ldr	r0, [pc, #108]	; 3f4 <main+0x108>
     384:	eb0004d2 	bl	16d4 <chdir>
     388:	e1a03000 	mov	r3, r0
     38c:	e3530000 	cmp	r3, #0
     390:	aa000003 	bge	3a4 <main+0xb8>
     394:	e3a00002 	mov	r0, #2
     398:	e59f1058 	ldr	r1, [pc, #88]	; 3f8 <main+0x10c>
     39c:	e59f2050 	ldr	r2, [pc, #80]	; 3f4 <main+0x108>
     3a0:	eb00055a 	bl	1910 <printf>
     3a4:	ea000009 	b	3d0 <main+0xe4>
     3a8:	eb00001d 	bl	424 <fork1>
     3ac:	e1a03000 	mov	r3, r0
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1a000004 	bne	3cc <main+0xe0>
     3b8:	e59f0030 	ldr	r0, [pc, #48]	; 3f0 <main+0x104>
     3bc:	eb000157 	bl	920 <parsecmd>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	e1a00003 	mov	r0, r3
     3c8:	ebffff0c 	bl	0 <runcmd>
     3cc:	eb00044b 	bl	1500 <wait>
     3d0:	e59f0018 	ldr	r0, [pc, #24]	; 3f0 <main+0x104>
     3d4:	e3a01064 	mov	r1, #100	; 0x64
     3d8:	ebffffa8 	bl	280 <getcmd>
     3dc:	e1a03000 	mov	r3, r0
     3e0:	e3530000 	cmp	r3, #0
     3e4:	aaffffd2 	bge	334 <main+0x48>
     3e8:	eb00043b 	bl	14dc <exit>
     3ec:	00001ff4 	.word	0x00001ff4
     3f0:	000020d0 	.word	0x000020d0
     3f4:	000020d3 	.word	0x000020d3
     3f8:	00001ffc 	.word	0x00001ffc

000003fc <panic>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd008 	sub	sp, sp, #8
     408:	e50b0008 	str	r0, [fp, #-8]
     40c:	e3a00002 	mov	r0, #2
     410:	e59f1008 	ldr	r1, [pc, #8]	; 420 <panic+0x24>
     414:	e51b2008 	ldr	r2, [fp, #-8]
     418:	eb00053c 	bl	1910 <printf>
     41c:	eb00042e 	bl	14dc <exit>
     420:	0000200c 	.word	0x0000200c

00000424 <fork1>:
     424:	e92d4800 	push	{fp, lr}
     428:	e28db004 	add	fp, sp, #4
     42c:	e24dd008 	sub	sp, sp, #8
     430:	eb000420 	bl	14b8 <fork>
     434:	e50b0008 	str	r0, [fp, #-8]
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e3730001 	cmn	r3, #1
     440:	1a000001 	bne	44c <fork1+0x28>
     444:	e59f0010 	ldr	r0, [pc, #16]	; 45c <fork1+0x38>
     448:	ebffffeb 	bl	3fc <panic>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}
     45c:	00002010 	.word	0x00002010

00000460 <execcmd>:
     460:	e92d4800 	push	{fp, lr}
     464:	e28db004 	add	fp, sp, #4
     468:	e24dd008 	sub	sp, sp, #8
     46c:	e3a00054 	mov	r0, #84	; 0x54
     470:	eb000632 	bl	1d40 <malloc>
     474:	e50b0008 	str	r0, [fp, #-8]
     478:	e51b0008 	ldr	r0, [fp, #-8]
     47c:	e3a01000 	mov	r1, #0
     480:	e3a02054 	mov	r2, #84	; 0x54
     484:	eb000324 	bl	111c <memset>
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e3a02001 	mov	r2, #1
     490:	e5832000 	str	r2, [r3]
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e1a00003 	mov	r0, r3
     49c:	e24bd004 	sub	sp, fp, #4
     4a0:	e8bd8800 	pop	{fp, pc}

000004a4 <redircmd>:
     4a4:	e92d4800 	push	{fp, lr}
     4a8:	e28db004 	add	fp, sp, #4
     4ac:	e24dd018 	sub	sp, sp, #24
     4b0:	e50b0010 	str	r0, [fp, #-16]
     4b4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4b8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4bc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     4c0:	e3a00018 	mov	r0, #24
     4c4:	eb00061d 	bl	1d40 <malloc>
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e51b0008 	ldr	r0, [fp, #-8]
     4d0:	e3a01000 	mov	r1, #0
     4d4:	e3a02018 	mov	r2, #24
     4d8:	eb00030f 	bl	111c <memset>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3a02002 	mov	r2, #2
     4e4:	e5832000 	str	r2, [r3]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e51b2010 	ldr	r2, [fp, #-16]
     4f0:	e5832004 	str	r2, [r3, #4]
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     4fc:	e5832008 	str	r2, [r3, #8]
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     508:	e583200c 	str	r2, [r3, #12]
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     514:	e5832010 	str	r2, [r3, #16]
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e59b2004 	ldr	r2, [fp, #4]
     520:	e5832014 	str	r2, [r3, #20]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e1a00003 	mov	r0, r3
     52c:	e24bd004 	sub	sp, fp, #4
     530:	e8bd8800 	pop	{fp, pc}

00000534 <pipecmd>:
     534:	e92d4800 	push	{fp, lr}
     538:	e28db004 	add	fp, sp, #4
     53c:	e24dd010 	sub	sp, sp, #16
     540:	e50b0010 	str	r0, [fp, #-16]
     544:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     548:	e3a0000c 	mov	r0, #12
     54c:	eb0005fb 	bl	1d40 <malloc>
     550:	e50b0008 	str	r0, [fp, #-8]
     554:	e51b0008 	ldr	r0, [fp, #-8]
     558:	e3a01000 	mov	r1, #0
     55c:	e3a0200c 	mov	r2, #12
     560:	eb0002ed 	bl	111c <memset>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e3a02003 	mov	r2, #3
     56c:	e5832000 	str	r2, [r3]
     570:	e51b3008 	ldr	r3, [fp, #-8]
     574:	e51b2010 	ldr	r2, [fp, #-16]
     578:	e5832004 	str	r2, [r3, #4]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     584:	e5832008 	str	r2, [r3, #8]
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e1a00003 	mov	r0, r3
     590:	e24bd004 	sub	sp, fp, #4
     594:	e8bd8800 	pop	{fp, pc}

00000598 <listcmd>:
     598:	e92d4800 	push	{fp, lr}
     59c:	e28db004 	add	fp, sp, #4
     5a0:	e24dd010 	sub	sp, sp, #16
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5ac:	e3a0000c 	mov	r0, #12
     5b0:	eb0005e2 	bl	1d40 <malloc>
     5b4:	e50b0008 	str	r0, [fp, #-8]
     5b8:	e51b0008 	ldr	r0, [fp, #-8]
     5bc:	e3a01000 	mov	r1, #0
     5c0:	e3a0200c 	mov	r2, #12
     5c4:	eb0002d4 	bl	111c <memset>
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e3a02004 	mov	r2, #4
     5d0:	e5832000 	str	r2, [r3]
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e51b2010 	ldr	r2, [fp, #-16]
     5dc:	e5832004 	str	r2, [r3, #4]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     5e8:	e5832008 	str	r2, [r3, #8]
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e24bd004 	sub	sp, fp, #4
     5f8:	e8bd8800 	pop	{fp, pc}

000005fc <backcmd>:
     5fc:	e92d4800 	push	{fp, lr}
     600:	e28db004 	add	fp, sp, #4
     604:	e24dd010 	sub	sp, sp, #16
     608:	e50b0010 	str	r0, [fp, #-16]
     60c:	e3a00008 	mov	r0, #8
     610:	eb0005ca 	bl	1d40 <malloc>
     614:	e50b0008 	str	r0, [fp, #-8]
     618:	e51b0008 	ldr	r0, [fp, #-8]
     61c:	e3a01000 	mov	r1, #0
     620:	e3a02008 	mov	r2, #8
     624:	eb0002bc 	bl	111c <memset>
     628:	e51b3008 	ldr	r3, [fp, #-8]
     62c:	e3a02005 	mov	r2, #5
     630:	e5832000 	str	r2, [r3]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e51b2010 	ldr	r2, [fp, #-16]
     63c:	e5832004 	str	r2, [r3, #4]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e1a00003 	mov	r0, r3
     648:	e24bd004 	sub	sp, fp, #4
     64c:	e8bd8800 	pop	{fp, pc}

00000650 <gettoken>:
     650:	e92d4800 	push	{fp, lr}
     654:	e28db004 	add	fp, sp, #4
     658:	e24dd018 	sub	sp, sp, #24
     65c:	e50b0010 	str	r0, [fp, #-16]
     660:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     664:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     668:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e5933000 	ldr	r3, [r3]
     674:	e50b3008 	str	r3, [fp, #-8]
     678:	ea000002 	b	688 <gettoken+0x38>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b2008 	ldr	r2, [fp, #-8]
     68c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     690:	e1520003 	cmp	r2, r3
     694:	2a000007 	bcs	6b8 <gettoken+0x68>
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e5d33000 	ldrb	r3, [r3]
     6a0:	e59f01b4 	ldr	r0, [pc, #436]	; 85c <gettoken+0x20c>
     6a4:	e1a01003 	mov	r1, r3
     6a8:	eb0002e4 	bl	1240 <strchr>
     6ac:	e1a03000 	mov	r3, r0
     6b0:	e3530000 	cmp	r3, #0
     6b4:	1afffff0 	bne	67c <gettoken+0x2c>
     6b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6bc:	e3530000 	cmp	r3, #0
     6c0:	0a000002 	beq	6d0 <gettoken+0x80>
     6c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6c8:	e51b2008 	ldr	r2, [fp, #-8]
     6cc:	e5832000 	str	r2, [r3]
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5d33000 	ldrb	r3, [r3]
     6d8:	e50b300c 	str	r3, [fp, #-12]
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e5d33000 	ldrb	r3, [r3]
     6e4:	e3530029 	cmp	r3, #41	; 0x29
     6e8:	ca000006 	bgt	708 <gettoken+0xb8>
     6ec:	e3530028 	cmp	r3, #40	; 0x28
     6f0:	aa00000e 	bge	730 <gettoken+0xe0>
     6f4:	e3530000 	cmp	r3, #0
     6f8:	0a000039 	beq	7e4 <gettoken+0x194>
     6fc:	e3530026 	cmp	r3, #38	; 0x26
     700:	0a00000a 	beq	730 <gettoken+0xe0>
     704:	ea00001b 	b	778 <gettoken+0x128>
     708:	e353003e 	cmp	r3, #62	; 0x3e
     70c:	0a00000b 	beq	740 <gettoken+0xf0>
     710:	e353003e 	cmp	r3, #62	; 0x3e
     714:	ca000003 	bgt	728 <gettoken+0xd8>
     718:	e243303b 	sub	r3, r3, #59	; 0x3b
     71c:	e3530001 	cmp	r3, #1
     720:	8a000014 	bhi	778 <gettoken+0x128>
     724:	ea000001 	b	730 <gettoken+0xe0>
     728:	e353007c 	cmp	r3, #124	; 0x7c
     72c:	1a000011 	bne	778 <gettoken+0x128>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e2833001 	add	r3, r3, #1
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000029 	b	7e8 <gettoken+0x198>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e2833001 	add	r3, r3, #1
     748:	e50b3008 	str	r3, [fp, #-8]
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e5d33000 	ldrb	r3, [r3]
     754:	e353003e 	cmp	r3, #62	; 0x3e
     758:	1a000005 	bne	774 <gettoken+0x124>
     75c:	e3a0302b 	mov	r3, #43	; 0x2b
     760:	e50b300c 	str	r3, [fp, #-12]
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2833001 	add	r3, r3, #1
     76c:	e50b3008 	str	r3, [fp, #-8]
     770:	ea00001c 	b	7e8 <gettoken+0x198>
     774:	ea00001b 	b	7e8 <gettoken+0x198>
     778:	e3a03061 	mov	r3, #97	; 0x61
     77c:	e50b300c 	str	r3, [fp, #-12]
     780:	ea000002 	b	790 <gettoken+0x140>
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e2833001 	add	r3, r3, #1
     78c:	e50b3008 	str	r3, [fp, #-8]
     790:	e51b2008 	ldr	r2, [fp, #-8]
     794:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     798:	e1520003 	cmp	r2, r3
     79c:	2a00000f 	bcs	7e0 <gettoken+0x190>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e5d33000 	ldrb	r3, [r3]
     7a8:	e59f00ac 	ldr	r0, [pc, #172]	; 85c <gettoken+0x20c>
     7ac:	e1a01003 	mov	r1, r3
     7b0:	eb0002a2 	bl	1240 <strchr>
     7b4:	e1a03000 	mov	r3, r0
     7b8:	e3530000 	cmp	r3, #0
     7bc:	1a000007 	bne	7e0 <gettoken+0x190>
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e59f0090 	ldr	r0, [pc, #144]	; 860 <gettoken+0x210>
     7cc:	e1a01003 	mov	r1, r3
     7d0:	eb00029a 	bl	1240 <strchr>
     7d4:	e1a03000 	mov	r3, r0
     7d8:	e3530000 	cmp	r3, #0
     7dc:	0affffe8 	beq	784 <gettoken+0x134>
     7e0:	ea000000 	b	7e8 <gettoken+0x198>
     7e4:	e1a00000 	nop			; (mov r0, r0)
     7e8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     7ec:	e3530000 	cmp	r3, #0
     7f0:	0a000002 	beq	800 <gettoken+0x1b0>
     7f4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     7f8:	e51b2008 	ldr	r2, [fp, #-8]
     7fc:	e5832000 	str	r2, [r3]
     800:	ea000002 	b	810 <gettoken+0x1c0>
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e2833001 	add	r3, r3, #1
     80c:	e50b3008 	str	r3, [fp, #-8]
     810:	e51b2008 	ldr	r2, [fp, #-8]
     814:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     818:	e1520003 	cmp	r2, r3
     81c:	2a000007 	bcs	840 <gettoken+0x1f0>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5d33000 	ldrb	r3, [r3]
     828:	e59f002c 	ldr	r0, [pc, #44]	; 85c <gettoken+0x20c>
     82c:	e1a01003 	mov	r1, r3
     830:	eb000282 	bl	1240 <strchr>
     834:	e1a03000 	mov	r3, r0
     838:	e3530000 	cmp	r3, #0
     83c:	1afffff0 	bne	804 <gettoken+0x1b4>
     840:	e51b3010 	ldr	r3, [fp, #-16]
     844:	e51b2008 	ldr	r2, [fp, #-8]
     848:	e5832000 	str	r2, [r3]
     84c:	e51b300c 	ldr	r3, [fp, #-12]
     850:	e1a00003 	mov	r0, r3
     854:	e24bd004 	sub	sp, fp, #4
     858:	e8bd8800 	pop	{fp, pc}
     85c:	000020ac 	.word	0x000020ac
     860:	000020b4 	.word	0x000020b4

00000864 <peek>:
     864:	e92d4800 	push	{fp, lr}
     868:	e28db004 	add	fp, sp, #4
     86c:	e24dd018 	sub	sp, sp, #24
     870:	e50b0010 	str	r0, [fp, #-16]
     874:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     878:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     87c:	e51b3010 	ldr	r3, [fp, #-16]
     880:	e5933000 	ldr	r3, [r3]
     884:	e50b3008 	str	r3, [fp, #-8]
     888:	ea000002 	b	898 <peek+0x34>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2833001 	add	r3, r3, #1
     894:	e50b3008 	str	r3, [fp, #-8]
     898:	e51b2008 	ldr	r2, [fp, #-8]
     89c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     8a0:	e1520003 	cmp	r2, r3
     8a4:	2a000007 	bcs	8c8 <peek+0x64>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5d33000 	ldrb	r3, [r3]
     8b0:	e59f0064 	ldr	r0, [pc, #100]	; 91c <peek+0xb8>
     8b4:	e1a01003 	mov	r1, r3
     8b8:	eb000260 	bl	1240 <strchr>
     8bc:	e1a03000 	mov	r3, r0
     8c0:	e3530000 	cmp	r3, #0
     8c4:	1afffff0 	bne	88c <peek+0x28>
     8c8:	e51b3010 	ldr	r3, [fp, #-16]
     8cc:	e51b2008 	ldr	r2, [fp, #-8]
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e5d33000 	ldrb	r3, [r3]
     8dc:	e3530000 	cmp	r3, #0
     8e0:	0a000009 	beq	90c <peek+0xa8>
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e5d33000 	ldrb	r3, [r3]
     8ec:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     8f0:	e1a01003 	mov	r1, r3
     8f4:	eb000251 	bl	1240 <strchr>
     8f8:	e1a03000 	mov	r3, r0
     8fc:	e3530000 	cmp	r3, #0
     900:	0a000001 	beq	90c <peek+0xa8>
     904:	e3a03001 	mov	r3, #1
     908:	ea000000 	b	910 <peek+0xac>
     90c:	e3a03000 	mov	r3, #0
     910:	e1a00003 	mov	r0, r3
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}
     91c:	000020ac 	.word	0x000020ac

00000920 <parsecmd>:
     920:	e92d4810 	push	{r4, fp, lr}
     924:	e28db008 	add	fp, sp, #8
     928:	e24dd014 	sub	sp, sp, #20
     92c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     930:	e51b4018 	ldr	r4, [fp, #-24]	; 0xffffffe8
     934:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     938:	e1a00003 	mov	r0, r3
     93c:	eb0001e1 	bl	10c8 <strlen>
     940:	e1a03000 	mov	r3, r0
     944:	e0843003 	add	r3, r4, r3
     948:	e50b3010 	str	r3, [fp, #-16]
     94c:	e24b3018 	sub	r3, fp, #24
     950:	e1a00003 	mov	r0, r3
     954:	e51b1010 	ldr	r1, [fp, #-16]
     958:	eb000019 	bl	9c4 <parseline>
     95c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     960:	e24b3018 	sub	r3, fp, #24
     964:	e1a00003 	mov	r0, r3
     968:	e51b1010 	ldr	r1, [fp, #-16]
     96c:	e59f2044 	ldr	r2, [pc, #68]	; 9b8 <parsecmd+0x98>
     970:	ebffffbb 	bl	864 <peek>
     974:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e1520003 	cmp	r2, r3
     980:	0a000006 	beq	9a0 <parsecmd+0x80>
     984:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     988:	e3a00002 	mov	r0, #2
     98c:	e59f1028 	ldr	r1, [pc, #40]	; 9bc <parsecmd+0x9c>
     990:	e1a02003 	mov	r2, r3
     994:	eb0003dd 	bl	1910 <printf>
     998:	e59f0020 	ldr	r0, [pc, #32]	; 9c0 <parsecmd+0xa0>
     99c:	ebfffe96 	bl	3fc <panic>
     9a0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     9a4:	eb000137 	bl	e88 <nulterminate>
     9a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     9ac:	e1a00003 	mov	r0, r3
     9b0:	e24bd008 	sub	sp, fp, #8
     9b4:	e8bd8810 	pop	{r4, fp, pc}
     9b8:	00002018 	.word	0x00002018
     9bc:	0000201c 	.word	0x0000201c
     9c0:	0000202c 	.word	0x0000202c

000009c4 <parseline>:
     9c4:	e92d4800 	push	{fp, lr}
     9c8:	e28db004 	add	fp, sp, #4
     9cc:	e24dd010 	sub	sp, sp, #16
     9d0:	e50b0010 	str	r0, [fp, #-16]
     9d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     9d8:	e51b0010 	ldr	r0, [fp, #-16]
     9dc:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     9e0:	eb00002a 	bl	a90 <parsepipe>
     9e4:	e50b0008 	str	r0, [fp, #-8]
     9e8:	ea000007 	b	a0c <parseline+0x48>
     9ec:	e51b0010 	ldr	r0, [fp, #-16]
     9f0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     9f4:	e3a02000 	mov	r2, #0
     9f8:	e3a03000 	mov	r3, #0
     9fc:	ebffff13 	bl	650 <gettoken>
     a00:	e51b0008 	ldr	r0, [fp, #-8]
     a04:	ebfffefc 	bl	5fc <backcmd>
     a08:	e50b0008 	str	r0, [fp, #-8]
     a0c:	e51b0010 	ldr	r0, [fp, #-16]
     a10:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     a14:	e59f206c 	ldr	r2, [pc, #108]	; a88 <parseline+0xc4>
     a18:	ebffff91 	bl	864 <peek>
     a1c:	e1a03000 	mov	r3, r0
     a20:	e3530000 	cmp	r3, #0
     a24:	1afffff0 	bne	9ec <parseline+0x28>
     a28:	e51b0010 	ldr	r0, [fp, #-16]
     a2c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     a30:	e59f2054 	ldr	r2, [pc, #84]	; a8c <parseline+0xc8>
     a34:	ebffff8a 	bl	864 <peek>
     a38:	e1a03000 	mov	r3, r0
     a3c:	e3530000 	cmp	r3, #0
     a40:	0a00000c 	beq	a78 <parseline+0xb4>
     a44:	e51b0010 	ldr	r0, [fp, #-16]
     a48:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     a4c:	e3a02000 	mov	r2, #0
     a50:	e3a03000 	mov	r3, #0
     a54:	ebfffefd 	bl	650 <gettoken>
     a58:	e51b0010 	ldr	r0, [fp, #-16]
     a5c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     a60:	ebffffd7 	bl	9c4 <parseline>
     a64:	e1a03000 	mov	r3, r0
     a68:	e51b0008 	ldr	r0, [fp, #-8]
     a6c:	e1a01003 	mov	r1, r3
     a70:	ebfffec8 	bl	598 <listcmd>
     a74:	e50b0008 	str	r0, [fp, #-8]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e1a00003 	mov	r0, r3
     a80:	e24bd004 	sub	sp, fp, #4
     a84:	e8bd8800 	pop	{fp, pc}
     a88:	00002034 	.word	0x00002034
     a8c:	00002038 	.word	0x00002038

00000a90 <parsepipe>:
     a90:	e92d4800 	push	{fp, lr}
     a94:	e28db004 	add	fp, sp, #4
     a98:	e24dd010 	sub	sp, sp, #16
     a9c:	e50b0010 	str	r0, [fp, #-16]
     aa0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     aa4:	e51b0010 	ldr	r0, [fp, #-16]
     aa8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     aac:	eb000093 	bl	d00 <parseexec>
     ab0:	e50b0008 	str	r0, [fp, #-8]
     ab4:	e51b0010 	ldr	r0, [fp, #-16]
     ab8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     abc:	e59f2050 	ldr	r2, [pc, #80]	; b14 <parsepipe+0x84>
     ac0:	ebffff67 	bl	864 <peek>
     ac4:	e1a03000 	mov	r3, r0
     ac8:	e3530000 	cmp	r3, #0
     acc:	0a00000c 	beq	b04 <parsepipe+0x74>
     ad0:	e51b0010 	ldr	r0, [fp, #-16]
     ad4:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     ad8:	e3a02000 	mov	r2, #0
     adc:	e3a03000 	mov	r3, #0
     ae0:	ebfffeda 	bl	650 <gettoken>
     ae4:	e51b0010 	ldr	r0, [fp, #-16]
     ae8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     aec:	ebffffe7 	bl	a90 <parsepipe>
     af0:	e1a03000 	mov	r3, r0
     af4:	e51b0008 	ldr	r0, [fp, #-8]
     af8:	e1a01003 	mov	r1, r3
     afc:	ebfffe8c 	bl	534 <pipecmd>
     b00:	e50b0008 	str	r0, [fp, #-8]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e1a00003 	mov	r0, r3
     b0c:	e24bd004 	sub	sp, fp, #4
     b10:	e8bd8800 	pop	{fp, pc}
     b14:	0000203c 	.word	0x0000203c

00000b18 <parseredirs>:
     b18:	e92d4800 	push	{fp, lr}
     b1c:	e28db004 	add	fp, sp, #4
     b20:	e24dd028 	sub	sp, sp, #40	; 0x28
     b24:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     b28:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     b2c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     b30:	ea000032 	b	c00 <parseredirs+0xe8>
     b34:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
     b38:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
     b3c:	e3a02000 	mov	r2, #0
     b40:	e3a03000 	mov	r3, #0
     b44:	ebfffec1 	bl	650 <gettoken>
     b48:	e50b0008 	str	r0, [fp, #-8]
     b4c:	e24b200c 	sub	r2, fp, #12
     b50:	e24b3010 	sub	r3, fp, #16
     b54:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
     b58:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
     b5c:	ebfffebb 	bl	650 <gettoken>
     b60:	e1a03000 	mov	r3, r0
     b64:	e3530061 	cmp	r3, #97	; 0x61
     b68:	0a000001 	beq	b74 <parseredirs+0x5c>
     b6c:	e59f00b8 	ldr	r0, [pc, #184]	; c2c <parseredirs+0x114>
     b70:	ebfffe21 	bl	3fc <panic>
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e353003c 	cmp	r3, #60	; 0x3c
     b7c:	0a000004 	beq	b94 <parseredirs+0x7c>
     b80:	e353003e 	cmp	r3, #62	; 0x3e
     b84:	0a00000b 	beq	bb8 <parseredirs+0xa0>
     b88:	e353002b 	cmp	r3, #43	; 0x2b
     b8c:	0a000012 	beq	bdc <parseredirs+0xc4>
     b90:	ea00001a 	b	c00 <parseredirs+0xe8>
     b94:	e51b100c 	ldr	r1, [fp, #-12]
     b98:	e51b2010 	ldr	r2, [fp, #-16]
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e58d3000 	str	r3, [sp]
     ba4:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     ba8:	e3a03000 	mov	r3, #0
     bac:	ebfffe3c 	bl	4a4 <redircmd>
     bb0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     bb4:	ea000011 	b	c00 <parseredirs+0xe8>
     bb8:	e51b100c 	ldr	r1, [fp, #-12]
     bbc:	e51b2010 	ldr	r2, [fp, #-16]
     bc0:	e3a03001 	mov	r3, #1
     bc4:	e58d3000 	str	r3, [sp]
     bc8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     bcc:	e59f305c 	ldr	r3, [pc, #92]	; c30 <parseredirs+0x118>
     bd0:	ebfffe33 	bl	4a4 <redircmd>
     bd4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     bd8:	ea000008 	b	c00 <parseredirs+0xe8>
     bdc:	e51b100c 	ldr	r1, [fp, #-12]
     be0:	e51b2010 	ldr	r2, [fp, #-16]
     be4:	e3a03001 	mov	r3, #1
     be8:	e58d3000 	str	r3, [sp]
     bec:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     bf0:	e59f3038 	ldr	r3, [pc, #56]	; c30 <parseredirs+0x118>
     bf4:	ebfffe2a 	bl	4a4 <redircmd>
     bf8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     bfc:	e1a00000 	nop			; (mov r0, r0)
     c00:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
     c04:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
     c08:	e59f2024 	ldr	r2, [pc, #36]	; c34 <parseredirs+0x11c>
     c0c:	ebffff14 	bl	864 <peek>
     c10:	e1a03000 	mov	r3, r0
     c14:	e3530000 	cmp	r3, #0
     c18:	1affffc5 	bne	b34 <parseredirs+0x1c>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c20:	e1a00003 	mov	r0, r3
     c24:	e24bd004 	sub	sp, fp, #4
     c28:	e8bd8800 	pop	{fp, pc}
     c2c:	00002040 	.word	0x00002040
     c30:	00000201 	.word	0x00000201
     c34:	00002060 	.word	0x00002060

00000c38 <parseblock>:
     c38:	e92d4800 	push	{fp, lr}
     c3c:	e28db004 	add	fp, sp, #4
     c40:	e24dd010 	sub	sp, sp, #16
     c44:	e50b0010 	str	r0, [fp, #-16]
     c48:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     c4c:	e51b0010 	ldr	r0, [fp, #-16]
     c50:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     c54:	e59f2094 	ldr	r2, [pc, #148]	; cf0 <parseblock+0xb8>
     c58:	ebffff01 	bl	864 <peek>
     c5c:	e1a03000 	mov	r3, r0
     c60:	e3530000 	cmp	r3, #0
     c64:	1a000001 	bne	c70 <parseblock+0x38>
     c68:	e59f0084 	ldr	r0, [pc, #132]	; cf4 <parseblock+0xbc>
     c6c:	ebfffde2 	bl	3fc <panic>
     c70:	e51b0010 	ldr	r0, [fp, #-16]
     c74:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     c78:	e3a02000 	mov	r2, #0
     c7c:	e3a03000 	mov	r3, #0
     c80:	ebfffe72 	bl	650 <gettoken>
     c84:	e51b0010 	ldr	r0, [fp, #-16]
     c88:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     c8c:	ebffff4c 	bl	9c4 <parseline>
     c90:	e50b0008 	str	r0, [fp, #-8]
     c94:	e51b0010 	ldr	r0, [fp, #-16]
     c98:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     c9c:	e59f2054 	ldr	r2, [pc, #84]	; cf8 <parseblock+0xc0>
     ca0:	ebfffeef 	bl	864 <peek>
     ca4:	e1a03000 	mov	r3, r0
     ca8:	e3530000 	cmp	r3, #0
     cac:	1a000001 	bne	cb8 <parseblock+0x80>
     cb0:	e59f0044 	ldr	r0, [pc, #68]	; cfc <parseblock+0xc4>
     cb4:	ebfffdd0 	bl	3fc <panic>
     cb8:	e51b0010 	ldr	r0, [fp, #-16]
     cbc:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     cc0:	e3a02000 	mov	r2, #0
     cc4:	e3a03000 	mov	r3, #0
     cc8:	ebfffe60 	bl	650 <gettoken>
     ccc:	e51b0008 	ldr	r0, [fp, #-8]
     cd0:	e51b1010 	ldr	r1, [fp, #-16]
     cd4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     cd8:	ebffff8e 	bl	b18 <parseredirs>
     cdc:	e50b0008 	str	r0, [fp, #-8]
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e1a00003 	mov	r0, r3
     ce8:	e24bd004 	sub	sp, fp, #4
     cec:	e8bd8800 	pop	{fp, pc}
     cf0:	00002064 	.word	0x00002064
     cf4:	00002068 	.word	0x00002068
     cf8:	00002074 	.word	0x00002074
     cfc:	00002078 	.word	0x00002078

00000d00 <parseexec>:
     d00:	e92d4800 	push	{fp, lr}
     d04:	e28db004 	add	fp, sp, #4
     d08:	e24dd020 	sub	sp, sp, #32
     d0c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
     d10:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
     d14:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
     d18:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     d1c:	e59f2154 	ldr	r2, [pc, #340]	; e78 <parseexec+0x178>
     d20:	ebfffecf 	bl	864 <peek>
     d24:	e1a03000 	mov	r3, r0
     d28:	e3530000 	cmp	r3, #0
     d2c:	0a000004 	beq	d44 <parseexec+0x44>
     d30:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
     d34:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     d38:	ebffffbe 	bl	c38 <parseblock>
     d3c:	e1a03000 	mov	r3, r0
     d40:	ea000049 	b	e6c <parseexec+0x16c>
     d44:	ebfffdc5 	bl	460 <execcmd>
     d48:	e50b000c 	str	r0, [fp, #-12]
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e50b3010 	str	r3, [fp, #-16]
     d54:	e3a03000 	mov	r3, #0
     d58:	e50b3008 	str	r3, [fp, #-8]
     d5c:	e51b000c 	ldr	r0, [fp, #-12]
     d60:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
     d64:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
     d68:	ebffff6a 	bl	b18 <parseredirs>
     d6c:	e50b000c 	str	r0, [fp, #-12]
     d70:	ea000028 	b	e18 <parseexec+0x118>
     d74:	e24b2018 	sub	r2, fp, #24
     d78:	e24b301c 	sub	r3, fp, #28
     d7c:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
     d80:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     d84:	ebfffe31 	bl	650 <gettoken>
     d88:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     d8c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     d90:	e3530000 	cmp	r3, #0
     d94:	1a000000 	bne	d9c <parseexec+0x9c>
     d98:	ea000025 	b	e34 <parseexec+0x134>
     d9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     da0:	e3530061 	cmp	r3, #97	; 0x61
     da4:	0a000001 	beq	db0 <parseexec+0xb0>
     da8:	e59f00cc 	ldr	r0, [pc, #204]	; e7c <parseexec+0x17c>
     dac:	ebfffd92 	bl	3fc <panic>
     db0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     db4:	e51b1010 	ldr	r1, [fp, #-16]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e1a03103 	lsl	r3, r3, #2
     dc0:	e0813003 	add	r3, r1, r3
     dc4:	e5832004 	str	r2, [r3, #4]
     dc8:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     dcc:	e51b1010 	ldr	r1, [fp, #-16]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e283300a 	add	r3, r3, #10
     dd8:	e1a03103 	lsl	r3, r3, #2
     ddc:	e0813003 	add	r3, r1, r3
     de0:	e5832004 	str	r2, [r3, #4]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e2833001 	add	r3, r3, #1
     dec:	e50b3008 	str	r3, [fp, #-8]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e3530009 	cmp	r3, #9
     df8:	da000001 	ble	e04 <parseexec+0x104>
     dfc:	e59f007c 	ldr	r0, [pc, #124]	; e80 <parseexec+0x180>
     e00:	ebfffd7d 	bl	3fc <panic>
     e04:	e51b000c 	ldr	r0, [fp, #-12]
     e08:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
     e0c:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
     e10:	ebffff40 	bl	b18 <parseredirs>
     e14:	e50b000c 	str	r0, [fp, #-12]
     e18:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
     e1c:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     e20:	e59f205c 	ldr	r2, [pc, #92]	; e84 <parseexec+0x184>
     e24:	ebfffe8e 	bl	864 <peek>
     e28:	e1a03000 	mov	r3, r0
     e2c:	e3530000 	cmp	r3, #0
     e30:	0affffcf 	beq	d74 <parseexec+0x74>
     e34:	e51b2010 	ldr	r2, [fp, #-16]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e1a03103 	lsl	r3, r3, #2
     e40:	e0823003 	add	r3, r2, r3
     e44:	e3a02000 	mov	r2, #0
     e48:	e5832004 	str	r2, [r3, #4]
     e4c:	e51b2010 	ldr	r2, [fp, #-16]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e283300a 	add	r3, r3, #10
     e58:	e1a03103 	lsl	r3, r3, #2
     e5c:	e0823003 	add	r3, r2, r3
     e60:	e3a02000 	mov	r2, #0
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e1a00003 	mov	r0, r3
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd8800 	pop	{fp, pc}
     e78:	00002064 	.word	0x00002064
     e7c:	0000202c 	.word	0x0000202c
     e80:	0000208c 	.word	0x0000208c
     e84:	0000209c 	.word	0x0000209c

00000e88 <nulterminate>:
     e88:	e92d4800 	push	{fp, lr}
     e8c:	e28db004 	add	fp, sp, #4
     e90:	e24dd020 	sub	sp, sp, #32
     e94:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
     e98:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     e9c:	e3530000 	cmp	r3, #0
     ea0:	1a000001 	bne	eac <nulterminate+0x24>
     ea4:	e3a03000 	mov	r3, #0
     ea8:	ea00004b 	b	fdc <nulterminate+0x154>
     eac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     eb0:	e5933000 	ldr	r3, [r3]
     eb4:	e2433001 	sub	r3, r3, #1
     eb8:	e3530004 	cmp	r3, #4
     ebc:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     ec0:	ea000044 	b	fd8 <nulterminate+0x150>
     ec4:	00000ed8 	.word	0x00000ed8
     ec8:	00000f38 	.word	0x00000f38
     ecc:	00000f64 	.word	0x00000f64
     ed0:	00000f90 	.word	0x00000f90
     ed4:	00000fbc 	.word	0x00000fbc
     ed8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	e3a03000 	mov	r3, #0
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	ea00000a 	b	f18 <nulterminate+0x90>
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e283300a 	add	r3, r3, #10
     ef8:	e1a03103 	lsl	r3, r3, #2
     efc:	e0823003 	add	r3, r2, r3
     f00:	e5933004 	ldr	r3, [r3, #4]
     f04:	e3a02000 	mov	r2, #0
     f08:	e5c32000 	strb	r2, [r3]
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e2833001 	add	r3, r3, #1
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	e51b200c 	ldr	r2, [fp, #-12]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e1a03103 	lsl	r3, r3, #2
     f24:	e0823003 	add	r3, r2, r3
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e3530000 	cmp	r3, #0
     f30:	1affffed 	bne	eec <nulterminate+0x64>
     f34:	ea000027 	b	fd8 <nulterminate+0x150>
     f38:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     f3c:	e50b3010 	str	r3, [fp, #-16]
     f40:	e51b3010 	ldr	r3, [fp, #-16]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e1a00003 	mov	r0, r3
     f4c:	ebffffcd 	bl	e88 <nulterminate>
     f50:	e51b3010 	ldr	r3, [fp, #-16]
     f54:	e593300c 	ldr	r3, [r3, #12]
     f58:	e3a02000 	mov	r2, #0
     f5c:	e5c32000 	strb	r2, [r3]
     f60:	ea00001c 	b	fd8 <nulterminate+0x150>
     f64:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     f68:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     f6c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e1a00003 	mov	r0, r3
     f78:	ebffffc2 	bl	e88 <nulterminate>
     f7c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     f80:	e5933008 	ldr	r3, [r3, #8]
     f84:	e1a00003 	mov	r0, r3
     f88:	ebffffbe 	bl	e88 <nulterminate>
     f8c:	ea000011 	b	fd8 <nulterminate+0x150>
     f90:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     f94:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     f98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f9c:	e5933004 	ldr	r3, [r3, #4]
     fa0:	e1a00003 	mov	r0, r3
     fa4:	ebffffb7 	bl	e88 <nulterminate>
     fa8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     fac:	e5933008 	ldr	r3, [r3, #8]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	ebffffb3 	bl	e88 <nulterminate>
     fb8:	ea000006 	b	fd8 <nulterminate+0x150>
     fbc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     fc0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     fc4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     fc8:	e5933004 	ldr	r3, [r3, #4]
     fcc:	e1a00003 	mov	r0, r3
     fd0:	ebffffac 	bl	e88 <nulterminate>
     fd4:	e1a00000 	nop			; (mov r0, r0)
     fd8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     fdc:	e1a00003 	mov	r0, r3
     fe0:	e24bd004 	sub	sp, fp, #4
     fe4:	e8bd8800 	pop	{fp, pc}

00000fe8 <strcpy>:
     fe8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     fec:	e28db000 	add	fp, sp, #0
     ff0:	e24dd014 	sub	sp, sp, #20
     ff4:	e50b0010 	str	r0, [fp, #-16]
     ff8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     ffc:	e51b3010 	ldr	r3, [fp, #-16]
    1000:	e50b3008 	str	r3, [fp, #-8]
    1004:	e1a00000 	nop			; (mov r0, r0)
    1008:	e51b3010 	ldr	r3, [fp, #-16]
    100c:	e2832001 	add	r2, r3, #1
    1010:	e50b2010 	str	r2, [fp, #-16]
    1014:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    1018:	e2821001 	add	r1, r2, #1
    101c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    1020:	e5d22000 	ldrb	r2, [r2]
    1024:	e5c32000 	strb	r2, [r3]
    1028:	e5d33000 	ldrb	r3, [r3]
    102c:	e3530000 	cmp	r3, #0
    1030:	1afffff4 	bne	1008 <strcpy+0x20>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e1a00003 	mov	r0, r3
    103c:	e24bd000 	sub	sp, fp, #0
    1040:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <strcmp>:
    1048:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    104c:	e28db000 	add	fp, sp, #0
    1050:	e24dd00c 	sub	sp, sp, #12
    1054:	e50b0008 	str	r0, [fp, #-8]
    1058:	e50b100c 	str	r1, [fp, #-12]
    105c:	ea000005 	b	1078 <strcmp+0x30>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e2833001 	add	r3, r3, #1
    1068:	e50b3008 	str	r3, [fp, #-8]
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e2833001 	add	r3, r3, #1
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5d33000 	ldrb	r3, [r3]
    1080:	e3530000 	cmp	r3, #0
    1084:	0a000005 	beq	10a0 <strcmp+0x58>
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5d32000 	ldrb	r2, [r3]
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5d33000 	ldrb	r3, [r3]
    1098:	e1520003 	cmp	r2, r3
    109c:	0affffef 	beq	1060 <strcmp+0x18>
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e5d33000 	ldrb	r3, [r3]
    10a8:	e1a02003 	mov	r2, r3
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5d33000 	ldrb	r3, [r3]
    10b4:	e0633002 	rsb	r3, r3, r2
    10b8:	e1a00003 	mov	r0, r3
    10bc:	e24bd000 	sub	sp, fp, #0
    10c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    10c4:	e12fff1e 	bx	lr

000010c8 <strlen>:
    10c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    10cc:	e28db000 	add	fp, sp, #0
    10d0:	e24dd014 	sub	sp, sp, #20
    10d4:	e50b0010 	str	r0, [fp, #-16]
    10d8:	e3a03000 	mov	r3, #0
    10dc:	e50b3008 	str	r3, [fp, #-8]
    10e0:	ea000002 	b	10f0 <strlen+0x28>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e2833001 	add	r3, r3, #1
    10ec:	e50b3008 	str	r3, [fp, #-8]
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e51b2010 	ldr	r2, [fp, #-16]
    10f8:	e0823003 	add	r3, r2, r3
    10fc:	e5d33000 	ldrb	r3, [r3]
    1100:	e3530000 	cmp	r3, #0
    1104:	1afffff6 	bne	10e4 <strlen+0x1c>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e1a00003 	mov	r0, r3
    1110:	e24bd000 	sub	sp, fp, #0
    1114:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1118:	e12fff1e 	bx	lr

0000111c <memset>:
    111c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    1120:	e28db000 	add	fp, sp, #0
    1124:	e24dd024 	sub	sp, sp, #36	; 0x24
    1128:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    112c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    1130:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    1134:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1138:	e50b3008 	str	r3, [fp, #-8]
    113c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1140:	e54b300d 	strb	r3, [fp, #-13]
    1144:	e55b300d 	ldrb	r3, [fp, #-13]
    1148:	e1a02c03 	lsl	r2, r3, #24
    114c:	e55b300d 	ldrb	r3, [fp, #-13]
    1150:	e1a03803 	lsl	r3, r3, #16
    1154:	e1822003 	orr	r2, r2, r3
    1158:	e55b300d 	ldrb	r3, [fp, #-13]
    115c:	e1a03403 	lsl	r3, r3, #8
    1160:	e1822003 	orr	r2, r2, r3
    1164:	e55b300d 	ldrb	r3, [fp, #-13]
    1168:	e1823003 	orr	r3, r2, r3
    116c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    1170:	ea000008 	b	1198 <memset+0x7c>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e55b200d 	ldrb	r2, [fp, #-13]
    117c:	e5c32000 	strb	r2, [r3]
    1180:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    1184:	e2433001 	sub	r3, r3, #1
    1188:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e2833001 	add	r3, r3, #1
    1194:	e50b3008 	str	r3, [fp, #-8]
    1198:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    119c:	e3530000 	cmp	r3, #0
    11a0:	0a000003 	beq	11b4 <memset+0x98>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e2033003 	and	r3, r3, #3
    11ac:	e3530000 	cmp	r3, #0
    11b0:	1affffef 	bne	1174 <memset+0x58>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e50b300c 	str	r3, [fp, #-12]
    11bc:	ea000008 	b	11e4 <memset+0xc8>
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    11c8:	e5832000 	str	r2, [r3]
    11cc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    11d0:	e2433004 	sub	r3, r3, #4
    11d4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e2833004 	add	r3, r3, #4
    11e0:	e50b300c 	str	r3, [fp, #-12]
    11e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    11e8:	e3530003 	cmp	r3, #3
    11ec:	8afffff3 	bhi	11c0 <memset+0xa4>
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e50b3008 	str	r3, [fp, #-8]
    11f8:	ea000008 	b	1220 <memset+0x104>
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e55b200d 	ldrb	r2, [fp, #-13]
    1204:	e5c32000 	strb	r2, [r3]
    1208:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    120c:	e2433001 	sub	r3, r3, #1
    1210:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e2833001 	add	r3, r3, #1
    121c:	e50b3008 	str	r3, [fp, #-8]
    1220:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    1224:	e3530000 	cmp	r3, #0
    1228:	1afffff3 	bne	11fc <memset+0xe0>
    122c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1230:	e1a00003 	mov	r0, r3
    1234:	e24bd000 	sub	sp, fp, #0
    1238:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    123c:	e12fff1e 	bx	lr

00001240 <strchr>:
    1240:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    1244:	e28db000 	add	fp, sp, #0
    1248:	e24dd00c 	sub	sp, sp, #12
    124c:	e50b0008 	str	r0, [fp, #-8]
    1250:	e1a03001 	mov	r3, r1
    1254:	e54b3009 	strb	r3, [fp, #-9]
    1258:	ea000009 	b	1284 <strchr+0x44>
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5d33000 	ldrb	r3, [r3]
    1264:	e55b2009 	ldrb	r2, [fp, #-9]
    1268:	e1520003 	cmp	r2, r3
    126c:	1a000001 	bne	1278 <strchr+0x38>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	ea000007 	b	1298 <strchr+0x58>
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e2833001 	add	r3, r3, #1
    1280:	e50b3008 	str	r3, [fp, #-8]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5d33000 	ldrb	r3, [r3]
    128c:	e3530000 	cmp	r3, #0
    1290:	1afffff1 	bne	125c <strchr+0x1c>
    1294:	e3a03000 	mov	r3, #0
    1298:	e1a00003 	mov	r0, r3
    129c:	e24bd000 	sub	sp, fp, #0
    12a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    12a4:	e12fff1e 	bx	lr

000012a8 <gets>:
    12a8:	e92d4800 	push	{fp, lr}
    12ac:	e28db004 	add	fp, sp, #4
    12b0:	e24dd018 	sub	sp, sp, #24
    12b4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    12b8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    12bc:	e3a03000 	mov	r3, #0
    12c0:	e50b3008 	str	r3, [fp, #-8]
    12c4:	ea000017 	b	1328 <gets+0x80>
    12c8:	e24b300d 	sub	r3, fp, #13
    12cc:	e3a00000 	mov	r0, #0
    12d0:	e1a01003 	mov	r1, r3
    12d4:	e3a02001 	mov	r2, #1
    12d8:	eb00009a 	bl	1548 <read>
    12dc:	e50b000c 	str	r0, [fp, #-12]
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e3530000 	cmp	r3, #0
    12e8:	ca000000 	bgt	12f0 <gets+0x48>
    12ec:	ea000012 	b	133c <gets+0x94>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e2832001 	add	r2, r3, #1
    12f8:	e50b2008 	str	r2, [fp, #-8]
    12fc:	e1a02003 	mov	r2, r3
    1300:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1304:	e0833002 	add	r3, r3, r2
    1308:	e55b200d 	ldrb	r2, [fp, #-13]
    130c:	e5c32000 	strb	r2, [r3]
    1310:	e55b300d 	ldrb	r3, [fp, #-13]
    1314:	e353000a 	cmp	r3, #10
    1318:	0a000007 	beq	133c <gets+0x94>
    131c:	e55b300d 	ldrb	r3, [fp, #-13]
    1320:	e353000d 	cmp	r3, #13
    1324:	0a000004 	beq	133c <gets+0x94>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e2832001 	add	r2, r3, #1
    1330:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1334:	e1520003 	cmp	r2, r3
    1338:	baffffe2 	blt	12c8 <gets+0x20>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    1344:	e0823003 	add	r3, r2, r3
    1348:	e3a02000 	mov	r2, #0
    134c:	e5c32000 	strb	r2, [r3]
    1350:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1354:	e1a00003 	mov	r0, r3
    1358:	e24bd004 	sub	sp, fp, #4
    135c:	e8bd8800 	pop	{fp, pc}

00001360 <stat>:
    1360:	e92d4800 	push	{fp, lr}
    1364:	e28db004 	add	fp, sp, #4
    1368:	e24dd010 	sub	sp, sp, #16
    136c:	e50b0010 	str	r0, [fp, #-16]
    1370:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    1374:	e51b0010 	ldr	r0, [fp, #-16]
    1378:	e3a01000 	mov	r1, #0
    137c:	eb00009e 	bl	15fc <open>
    1380:	e50b0008 	str	r0, [fp, #-8]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e3530000 	cmp	r3, #0
    138c:	aa000001 	bge	1398 <stat+0x38>
    1390:	e3e03000 	mvn	r3, #0
    1394:	ea000006 	b	13b4 <stat+0x54>
    1398:	e51b0008 	ldr	r0, [fp, #-8]
    139c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    13a0:	eb0000b0 	bl	1668 <fstat>
    13a4:	e50b000c 	str	r0, [fp, #-12]
    13a8:	e51b0008 	ldr	r0, [fp, #-8]
    13ac:	eb000077 	bl	1590 <close>
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e1a00003 	mov	r0, r3
    13b8:	e24bd004 	sub	sp, fp, #4
    13bc:	e8bd8800 	pop	{fp, pc}

000013c0 <atoi>:
    13c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    13c4:	e28db000 	add	fp, sp, #0
    13c8:	e24dd014 	sub	sp, sp, #20
    13cc:	e50b0010 	str	r0, [fp, #-16]
    13d0:	e3a03000 	mov	r3, #0
    13d4:	e50b3008 	str	r3, [fp, #-8]
    13d8:	ea00000c 	b	1410 <atoi+0x50>
    13dc:	e51b2008 	ldr	r2, [fp, #-8]
    13e0:	e1a03002 	mov	r3, r2
    13e4:	e1a03103 	lsl	r3, r3, #2
    13e8:	e0833002 	add	r3, r3, r2
    13ec:	e1a03083 	lsl	r3, r3, #1
    13f0:	e1a01003 	mov	r1, r3
    13f4:	e51b3010 	ldr	r3, [fp, #-16]
    13f8:	e2832001 	add	r2, r3, #1
    13fc:	e50b2010 	str	r2, [fp, #-16]
    1400:	e5d33000 	ldrb	r3, [r3]
    1404:	e0813003 	add	r3, r1, r3
    1408:	e2433030 	sub	r3, r3, #48	; 0x30
    140c:	e50b3008 	str	r3, [fp, #-8]
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e5d33000 	ldrb	r3, [r3]
    1418:	e353002f 	cmp	r3, #47	; 0x2f
    141c:	9a000003 	bls	1430 <atoi+0x70>
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e5d33000 	ldrb	r3, [r3]
    1428:	e3530039 	cmp	r3, #57	; 0x39
    142c:	9affffea 	bls	13dc <atoi+0x1c>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e1a00003 	mov	r0, r3
    1438:	e24bd000 	sub	sp, fp, #0
    143c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1440:	e12fff1e 	bx	lr

00001444 <memmove>:
    1444:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    1448:	e28db000 	add	fp, sp, #0
    144c:	e24dd01c 	sub	sp, sp, #28
    1450:	e50b0010 	str	r0, [fp, #-16]
    1454:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    1458:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    145c:	e51b3010 	ldr	r3, [fp, #-16]
    1460:	e50b3008 	str	r3, [fp, #-8]
    1464:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1468:	e50b300c 	str	r3, [fp, #-12]
    146c:	ea000007 	b	1490 <memmove+0x4c>
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e2832001 	add	r2, r3, #1
    1478:	e50b2008 	str	r2, [fp, #-8]
    147c:	e51b200c 	ldr	r2, [fp, #-12]
    1480:	e2821001 	add	r1, r2, #1
    1484:	e50b100c 	str	r1, [fp, #-12]
    1488:	e5d22000 	ldrb	r2, [r2]
    148c:	e5c32000 	strb	r2, [r3]
    1490:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1494:	e2432001 	sub	r2, r3, #1
    1498:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    149c:	e3530000 	cmp	r3, #0
    14a0:	cafffff2 	bgt	1470 <memmove+0x2c>
    14a4:	e51b3010 	ldr	r3, [fp, #-16]
    14a8:	e1a00003 	mov	r0, r3
    14ac:	e24bd000 	sub	sp, fp, #0
    14b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    14b4:	e12fff1e 	bx	lr

000014b8 <fork>:
    14b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    14bc:	e1a04003 	mov	r4, r3
    14c0:	e1a03002 	mov	r3, r2
    14c4:	e1a02001 	mov	r2, r1
    14c8:	e1a01000 	mov	r1, r0
    14cc:	e3a00001 	mov	r0, #1
    14d0:	ef000000 	svc	0x00000000
    14d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    14d8:	e12fff1e 	bx	lr

000014dc <exit>:
    14dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    14e0:	e1a04003 	mov	r4, r3
    14e4:	e1a03002 	mov	r3, r2
    14e8:	e1a02001 	mov	r2, r1
    14ec:	e1a01000 	mov	r1, r0
    14f0:	e3a00002 	mov	r0, #2
    14f4:	ef000000 	svc	0x00000000
    14f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    14fc:	e12fff1e 	bx	lr

00001500 <wait>:
    1500:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1504:	e1a04003 	mov	r4, r3
    1508:	e1a03002 	mov	r3, r2
    150c:	e1a02001 	mov	r2, r1
    1510:	e1a01000 	mov	r1, r0
    1514:	e3a00003 	mov	r0, #3
    1518:	ef000000 	svc	0x00000000
    151c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1520:	e12fff1e 	bx	lr

00001524 <pipe>:
    1524:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1528:	e1a04003 	mov	r4, r3
    152c:	e1a03002 	mov	r3, r2
    1530:	e1a02001 	mov	r2, r1
    1534:	e1a01000 	mov	r1, r0
    1538:	e3a00004 	mov	r0, #4
    153c:	ef000000 	svc	0x00000000
    1540:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1544:	e12fff1e 	bx	lr

00001548 <read>:
    1548:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    154c:	e1a04003 	mov	r4, r3
    1550:	e1a03002 	mov	r3, r2
    1554:	e1a02001 	mov	r2, r1
    1558:	e1a01000 	mov	r1, r0
    155c:	e3a00005 	mov	r0, #5
    1560:	ef000000 	svc	0x00000000
    1564:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1568:	e12fff1e 	bx	lr

0000156c <write>:
    156c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1570:	e1a04003 	mov	r4, r3
    1574:	e1a03002 	mov	r3, r2
    1578:	e1a02001 	mov	r2, r1
    157c:	e1a01000 	mov	r1, r0
    1580:	e3a00010 	mov	r0, #16
    1584:	ef000000 	svc	0x00000000
    1588:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    158c:	e12fff1e 	bx	lr

00001590 <close>:
    1590:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1594:	e1a04003 	mov	r4, r3
    1598:	e1a03002 	mov	r3, r2
    159c:	e1a02001 	mov	r2, r1
    15a0:	e1a01000 	mov	r1, r0
    15a4:	e3a00015 	mov	r0, #21
    15a8:	ef000000 	svc	0x00000000
    15ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    15b0:	e12fff1e 	bx	lr

000015b4 <kill>:
    15b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    15b8:	e1a04003 	mov	r4, r3
    15bc:	e1a03002 	mov	r3, r2
    15c0:	e1a02001 	mov	r2, r1
    15c4:	e1a01000 	mov	r1, r0
    15c8:	e3a00006 	mov	r0, #6
    15cc:	ef000000 	svc	0x00000000
    15d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    15d4:	e12fff1e 	bx	lr

000015d8 <exec>:
    15d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    15dc:	e1a04003 	mov	r4, r3
    15e0:	e1a03002 	mov	r3, r2
    15e4:	e1a02001 	mov	r2, r1
    15e8:	e1a01000 	mov	r1, r0
    15ec:	e3a00007 	mov	r0, #7
    15f0:	ef000000 	svc	0x00000000
    15f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    15f8:	e12fff1e 	bx	lr

000015fc <open>:
    15fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1600:	e1a04003 	mov	r4, r3
    1604:	e1a03002 	mov	r3, r2
    1608:	e1a02001 	mov	r2, r1
    160c:	e1a01000 	mov	r1, r0
    1610:	e3a0000f 	mov	r0, #15
    1614:	ef000000 	svc	0x00000000
    1618:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    161c:	e12fff1e 	bx	lr

00001620 <mknod>:
    1620:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1624:	e1a04003 	mov	r4, r3
    1628:	e1a03002 	mov	r3, r2
    162c:	e1a02001 	mov	r2, r1
    1630:	e1a01000 	mov	r1, r0
    1634:	e3a00011 	mov	r0, #17
    1638:	ef000000 	svc	0x00000000
    163c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1640:	e12fff1e 	bx	lr

00001644 <unlink>:
    1644:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1648:	e1a04003 	mov	r4, r3
    164c:	e1a03002 	mov	r3, r2
    1650:	e1a02001 	mov	r2, r1
    1654:	e1a01000 	mov	r1, r0
    1658:	e3a00012 	mov	r0, #18
    165c:	ef000000 	svc	0x00000000
    1660:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1664:	e12fff1e 	bx	lr

00001668 <fstat>:
    1668:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    166c:	e1a04003 	mov	r4, r3
    1670:	e1a03002 	mov	r3, r2
    1674:	e1a02001 	mov	r2, r1
    1678:	e1a01000 	mov	r1, r0
    167c:	e3a00008 	mov	r0, #8
    1680:	ef000000 	svc	0x00000000
    1684:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1688:	e12fff1e 	bx	lr

0000168c <link>:
    168c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1690:	e1a04003 	mov	r4, r3
    1694:	e1a03002 	mov	r3, r2
    1698:	e1a02001 	mov	r2, r1
    169c:	e1a01000 	mov	r1, r0
    16a0:	e3a00013 	mov	r0, #19
    16a4:	ef000000 	svc	0x00000000
    16a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    16ac:	e12fff1e 	bx	lr

000016b0 <mkdir>:
    16b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    16b4:	e1a04003 	mov	r4, r3
    16b8:	e1a03002 	mov	r3, r2
    16bc:	e1a02001 	mov	r2, r1
    16c0:	e1a01000 	mov	r1, r0
    16c4:	e3a00014 	mov	r0, #20
    16c8:	ef000000 	svc	0x00000000
    16cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    16d0:	e12fff1e 	bx	lr

000016d4 <chdir>:
    16d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    16d8:	e1a04003 	mov	r4, r3
    16dc:	e1a03002 	mov	r3, r2
    16e0:	e1a02001 	mov	r2, r1
    16e4:	e1a01000 	mov	r1, r0
    16e8:	e3a00009 	mov	r0, #9
    16ec:	ef000000 	svc	0x00000000
    16f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    16f4:	e12fff1e 	bx	lr

000016f8 <dup>:
    16f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    16fc:	e1a04003 	mov	r4, r3
    1700:	e1a03002 	mov	r3, r2
    1704:	e1a02001 	mov	r2, r1
    1708:	e1a01000 	mov	r1, r0
    170c:	e3a0000a 	mov	r0, #10
    1710:	ef000000 	svc	0x00000000
    1714:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1718:	e12fff1e 	bx	lr

0000171c <getpid>:
    171c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1720:	e1a04003 	mov	r4, r3
    1724:	e1a03002 	mov	r3, r2
    1728:	e1a02001 	mov	r2, r1
    172c:	e1a01000 	mov	r1, r0
    1730:	e3a0000b 	mov	r0, #11
    1734:	ef000000 	svc	0x00000000
    1738:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    173c:	e12fff1e 	bx	lr

00001740 <sbrk>:
    1740:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1744:	e1a04003 	mov	r4, r3
    1748:	e1a03002 	mov	r3, r2
    174c:	e1a02001 	mov	r2, r1
    1750:	e1a01000 	mov	r1, r0
    1754:	e3a0000c 	mov	r0, #12
    1758:	ef000000 	svc	0x00000000
    175c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1760:	e12fff1e 	bx	lr

00001764 <sleep>:
    1764:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    1768:	e1a04003 	mov	r4, r3
    176c:	e1a03002 	mov	r3, r2
    1770:	e1a02001 	mov	r2, r1
    1774:	e1a01000 	mov	r1, r0
    1778:	e3a0000d 	mov	r0, #13
    177c:	ef000000 	svc	0x00000000
    1780:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    1784:	e12fff1e 	bx	lr

00001788 <uptime>:
    1788:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    178c:	e1a04003 	mov	r4, r3
    1790:	e1a03002 	mov	r3, r2
    1794:	e1a02001 	mov	r2, r1
    1798:	e1a01000 	mov	r1, r0
    179c:	e3a0000e 	mov	r0, #14
    17a0:	ef000000 	svc	0x00000000
    17a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    17a8:	e12fff1e 	bx	lr

000017ac <putc>:
    17ac:	e92d4800 	push	{fp, lr}
    17b0:	e28db004 	add	fp, sp, #4
    17b4:	e24dd008 	sub	sp, sp, #8
    17b8:	e50b0008 	str	r0, [fp, #-8]
    17bc:	e1a03001 	mov	r3, r1
    17c0:	e54b3009 	strb	r3, [fp, #-9]
    17c4:	e24b3009 	sub	r3, fp, #9
    17c8:	e51b0008 	ldr	r0, [fp, #-8]
    17cc:	e1a01003 	mov	r1, r3
    17d0:	e3a02001 	mov	r2, #1
    17d4:	ebffff64 	bl	156c <write>
    17d8:	e24bd004 	sub	sp, fp, #4
    17dc:	e8bd8800 	pop	{fp, pc}

000017e0 <printint>:
    17e0:	e92d4810 	push	{r4, fp, lr}
    17e4:	e28db008 	add	fp, sp, #8
    17e8:	e24dd034 	sub	sp, sp, #52	; 0x34
    17ec:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
    17f0:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
    17f4:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
    17f8:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
    17fc:	e3a03000 	mov	r3, #0
    1800:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    1804:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    1808:	e3530000 	cmp	r3, #0
    180c:	0a000008 	beq	1834 <printint+0x54>
    1810:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    1814:	e3530000 	cmp	r3, #0
    1818:	aa000005 	bge	1834 <printint+0x54>
    181c:	e3a03001 	mov	r3, #1
    1820:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    1824:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    1828:	e2633000 	rsb	r3, r3, #0
    182c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1830:	ea000001 	b	183c <printint+0x5c>
    1834:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    1838:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    183c:	e3a03000 	mov	r3, #0
    1840:	e50b3010 	str	r3, [fp, #-16]
    1844:	e51b4010 	ldr	r4, [fp, #-16]
    1848:	e2843001 	add	r3, r4, #1
    184c:	e50b3010 	str	r3, [fp, #-16]
    1850:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    1854:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    1858:	e1a00002 	mov	r0, r2
    185c:	e1a01003 	mov	r1, r3
    1860:	eb0001cd 	bl	1f9c <__aeabi_uidivmod>
    1864:	e1a03001 	mov	r3, r1
    1868:	e1a02003 	mov	r2, r3
    186c:	e59f3098 	ldr	r3, [pc, #152]	; 190c <printint+0x12c>
    1870:	e7d32002 	ldrb	r2, [r3, r2]
    1874:	e24b300c 	sub	r3, fp, #12
    1878:	e0833004 	add	r3, r3, r4
    187c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
    1880:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    1884:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    1888:	e1a01003 	mov	r1, r3
    188c:	eb000185 	bl	1ea8 <__aeabi_uidiv>
    1890:	e1a03000 	mov	r3, r0
    1894:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1898:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    189c:	e3530000 	cmp	r3, #0
    18a0:	1affffe7 	bne	1844 <printint+0x64>
    18a4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    18a8:	e3530000 	cmp	r3, #0
    18ac:	0a000006 	beq	18cc <printint+0xec>
    18b0:	e51b3010 	ldr	r3, [fp, #-16]
    18b4:	e2832001 	add	r2, r3, #1
    18b8:	e50b2010 	str	r2, [fp, #-16]
    18bc:	e24b200c 	sub	r2, fp, #12
    18c0:	e0823003 	add	r3, r2, r3
    18c4:	e3a0202d 	mov	r2, #45	; 0x2d
    18c8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
    18cc:	ea000006 	b	18ec <printint+0x10c>
    18d0:	e24b2028 	sub	r2, fp, #40	; 0x28
    18d4:	e51b3010 	ldr	r3, [fp, #-16]
    18d8:	e0823003 	add	r3, r2, r3
    18dc:	e5d33000 	ldrb	r3, [r3]
    18e0:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
    18e4:	e1a01003 	mov	r1, r3
    18e8:	ebffffaf 	bl	17ac <putc>
    18ec:	e51b3010 	ldr	r3, [fp, #-16]
    18f0:	e2433001 	sub	r3, r3, #1
    18f4:	e50b3010 	str	r3, [fp, #-16]
    18f8:	e51b3010 	ldr	r3, [fp, #-16]
    18fc:	e3530000 	cmp	r3, #0
    1900:	aafffff2 	bge	18d0 <printint+0xf0>
    1904:	e24bd008 	sub	sp, fp, #8
    1908:	e8bd8810 	pop	{r4, fp, pc}
    190c:	000020bc 	.word	0x000020bc

00001910 <printf>:
    1910:	e92d000e 	push	{r1, r2, r3}
    1914:	e92d4800 	push	{fp, lr}
    1918:	e28db004 	add	fp, sp, #4
    191c:	e24dd024 	sub	sp, sp, #36	; 0x24
    1920:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    1924:	e3a03000 	mov	r3, #0
    1928:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    192c:	e28b3008 	add	r3, fp, #8
    1930:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1934:	e3a03000 	mov	r3, #0
    1938:	e50b3010 	str	r3, [fp, #-16]
    193c:	ea000074 	b	1b14 <printf+0x204>
    1940:	e59b2004 	ldr	r2, [fp, #4]
    1944:	e51b3010 	ldr	r3, [fp, #-16]
    1948:	e0823003 	add	r3, r2, r3
    194c:	e5d33000 	ldrb	r3, [r3]
    1950:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    1954:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1958:	e3530000 	cmp	r3, #0
    195c:	1a00000b 	bne	1990 <printf+0x80>
    1960:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1964:	e3530025 	cmp	r3, #37	; 0x25
    1968:	1a000002 	bne	1978 <printf+0x68>
    196c:	e3a03025 	mov	r3, #37	; 0x25
    1970:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    1974:	ea000063 	b	1b08 <printf+0x1f8>
    1978:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    197c:	e6ef3073 	uxtb	r3, r3
    1980:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1984:	e1a01003 	mov	r1, r3
    1988:	ebffff87 	bl	17ac <putc>
    198c:	ea00005d 	b	1b08 <printf+0x1f8>
    1990:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1994:	e3530025 	cmp	r3, #37	; 0x25
    1998:	1a00005a 	bne	1b08 <printf+0x1f8>
    199c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    19a0:	e3530064 	cmp	r3, #100	; 0x64
    19a4:	1a00000a 	bne	19d4 <printf+0xc4>
    19a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    19ac:	e5933000 	ldr	r3, [r3]
    19b0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    19b4:	e1a01003 	mov	r1, r3
    19b8:	e3a0200a 	mov	r2, #10
    19bc:	e3a03001 	mov	r3, #1
    19c0:	ebffff86 	bl	17e0 <printint>
    19c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    19c8:	e2833004 	add	r3, r3, #4
    19cc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    19d0:	ea00004a 	b	1b00 <printf+0x1f0>
    19d4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    19d8:	e3530078 	cmp	r3, #120	; 0x78
    19dc:	0a000002 	beq	19ec <printf+0xdc>
    19e0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    19e4:	e3530070 	cmp	r3, #112	; 0x70
    19e8:	1a00000a 	bne	1a18 <printf+0x108>
    19ec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    19f0:	e5933000 	ldr	r3, [r3]
    19f4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    19f8:	e1a01003 	mov	r1, r3
    19fc:	e3a02010 	mov	r2, #16
    1a00:	e3a03000 	mov	r3, #0
    1a04:	ebffff75 	bl	17e0 <printint>
    1a08:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1a0c:	e2833004 	add	r3, r3, #4
    1a10:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1a14:	ea000039 	b	1b00 <printf+0x1f0>
    1a18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1a1c:	e3530073 	cmp	r3, #115	; 0x73
    1a20:	1a000018 	bne	1a88 <printf+0x178>
    1a24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1a28:	e5933000 	ldr	r3, [r3]
    1a2c:	e50b300c 	str	r3, [fp, #-12]
    1a30:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1a34:	e2833004 	add	r3, r3, #4
    1a38:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1a3c:	e51b300c 	ldr	r3, [fp, #-12]
    1a40:	e3530000 	cmp	r3, #0
    1a44:	1a000001 	bne	1a50 <printf+0x140>
    1a48:	e59f30ec 	ldr	r3, [pc, #236]	; 1b3c <printf+0x22c>
    1a4c:	e50b300c 	str	r3, [fp, #-12]
    1a50:	ea000007 	b	1a74 <printf+0x164>
    1a54:	e51b300c 	ldr	r3, [fp, #-12]
    1a58:	e5d33000 	ldrb	r3, [r3]
    1a5c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1a60:	e1a01003 	mov	r1, r3
    1a64:	ebffff50 	bl	17ac <putc>
    1a68:	e51b300c 	ldr	r3, [fp, #-12]
    1a6c:	e2833001 	add	r3, r3, #1
    1a70:	e50b300c 	str	r3, [fp, #-12]
    1a74:	e51b300c 	ldr	r3, [fp, #-12]
    1a78:	e5d33000 	ldrb	r3, [r3]
    1a7c:	e3530000 	cmp	r3, #0
    1a80:	1afffff3 	bne	1a54 <printf+0x144>
    1a84:	ea00001d 	b	1b00 <printf+0x1f0>
    1a88:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1a8c:	e3530063 	cmp	r3, #99	; 0x63
    1a90:	1a000009 	bne	1abc <printf+0x1ac>
    1a94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1a98:	e5933000 	ldr	r3, [r3]
    1a9c:	e6ef3073 	uxtb	r3, r3
    1aa0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1aa4:	e1a01003 	mov	r1, r3
    1aa8:	ebffff3f 	bl	17ac <putc>
    1aac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1ab0:	e2833004 	add	r3, r3, #4
    1ab4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    1ab8:	ea000010 	b	1b00 <printf+0x1f0>
    1abc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1ac0:	e3530025 	cmp	r3, #37	; 0x25
    1ac4:	1a000005 	bne	1ae0 <printf+0x1d0>
    1ac8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1acc:	e6ef3073 	uxtb	r3, r3
    1ad0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1ad4:	e1a01003 	mov	r1, r3
    1ad8:	ebffff33 	bl	17ac <putc>
    1adc:	ea000007 	b	1b00 <printf+0x1f0>
    1ae0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1ae4:	e3a01025 	mov	r1, #37	; 0x25
    1ae8:	ebffff2f 	bl	17ac <putc>
    1aec:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1af0:	e6ef3073 	uxtb	r3, r3
    1af4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    1af8:	e1a01003 	mov	r1, r3
    1afc:	ebffff2a 	bl	17ac <putc>
    1b00:	e3a03000 	mov	r3, #0
    1b04:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    1b08:	e51b3010 	ldr	r3, [fp, #-16]
    1b0c:	e2833001 	add	r3, r3, #1
    1b10:	e50b3010 	str	r3, [fp, #-16]
    1b14:	e59b2004 	ldr	r2, [fp, #4]
    1b18:	e51b3010 	ldr	r3, [fp, #-16]
    1b1c:	e0823003 	add	r3, r2, r3
    1b20:	e5d33000 	ldrb	r3, [r3]
    1b24:	e3530000 	cmp	r3, #0
    1b28:	1affff84 	bne	1940 <printf+0x30>
    1b2c:	e24bd004 	sub	sp, fp, #4
    1b30:	e8bd4800 	pop	{fp, lr}
    1b34:	e28dd00c 	add	sp, sp, #12
    1b38:	e12fff1e 	bx	lr
    1b3c:	000020a4 	.word	0x000020a4

00001b40 <free>:
    1b40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    1b44:	e28db000 	add	fp, sp, #0
    1b48:	e24dd014 	sub	sp, sp, #20
    1b4c:	e50b0010 	str	r0, [fp, #-16]
    1b50:	e51b3010 	ldr	r3, [fp, #-16]
    1b54:	e2433008 	sub	r3, r3, #8
    1b58:	e50b300c 	str	r3, [fp, #-12]
    1b5c:	e59f3150 	ldr	r3, [pc, #336]	; 1cb4 <free+0x174>
    1b60:	e5933000 	ldr	r3, [r3]
    1b64:	e50b3008 	str	r3, [fp, #-8]
    1b68:	ea000010 	b	1bb0 <free+0x70>
    1b6c:	e51b3008 	ldr	r3, [fp, #-8]
    1b70:	e5932000 	ldr	r2, [r3]
    1b74:	e51b3008 	ldr	r3, [fp, #-8]
    1b78:	e1520003 	cmp	r2, r3
    1b7c:	8a000008 	bhi	1ba4 <free+0x64>
    1b80:	e51b200c 	ldr	r2, [fp, #-12]
    1b84:	e51b3008 	ldr	r3, [fp, #-8]
    1b88:	e1520003 	cmp	r2, r3
    1b8c:	8a000010 	bhi	1bd4 <free+0x94>
    1b90:	e51b3008 	ldr	r3, [fp, #-8]
    1b94:	e5932000 	ldr	r2, [r3]
    1b98:	e51b300c 	ldr	r3, [fp, #-12]
    1b9c:	e1520003 	cmp	r2, r3
    1ba0:	8a00000b 	bhi	1bd4 <free+0x94>
    1ba4:	e51b3008 	ldr	r3, [fp, #-8]
    1ba8:	e5933000 	ldr	r3, [r3]
    1bac:	e50b3008 	str	r3, [fp, #-8]
    1bb0:	e51b200c 	ldr	r2, [fp, #-12]
    1bb4:	e51b3008 	ldr	r3, [fp, #-8]
    1bb8:	e1520003 	cmp	r2, r3
    1bbc:	9affffea 	bls	1b6c <free+0x2c>
    1bc0:	e51b3008 	ldr	r3, [fp, #-8]
    1bc4:	e5932000 	ldr	r2, [r3]
    1bc8:	e51b300c 	ldr	r3, [fp, #-12]
    1bcc:	e1520003 	cmp	r2, r3
    1bd0:	9affffe5 	bls	1b6c <free+0x2c>
    1bd4:	e51b300c 	ldr	r3, [fp, #-12]
    1bd8:	e5933004 	ldr	r3, [r3, #4]
    1bdc:	e1a03183 	lsl	r3, r3, #3
    1be0:	e51b200c 	ldr	r2, [fp, #-12]
    1be4:	e0822003 	add	r2, r2, r3
    1be8:	e51b3008 	ldr	r3, [fp, #-8]
    1bec:	e5933000 	ldr	r3, [r3]
    1bf0:	e1520003 	cmp	r2, r3
    1bf4:	1a00000d 	bne	1c30 <free+0xf0>
    1bf8:	e51b300c 	ldr	r3, [fp, #-12]
    1bfc:	e5932004 	ldr	r2, [r3, #4]
    1c00:	e51b3008 	ldr	r3, [fp, #-8]
    1c04:	e5933000 	ldr	r3, [r3]
    1c08:	e5933004 	ldr	r3, [r3, #4]
    1c0c:	e0822003 	add	r2, r2, r3
    1c10:	e51b300c 	ldr	r3, [fp, #-12]
    1c14:	e5832004 	str	r2, [r3, #4]
    1c18:	e51b3008 	ldr	r3, [fp, #-8]
    1c1c:	e5933000 	ldr	r3, [r3]
    1c20:	e5932000 	ldr	r2, [r3]
    1c24:	e51b300c 	ldr	r3, [fp, #-12]
    1c28:	e5832000 	str	r2, [r3]
    1c2c:	ea000003 	b	1c40 <free+0x100>
    1c30:	e51b3008 	ldr	r3, [fp, #-8]
    1c34:	e5932000 	ldr	r2, [r3]
    1c38:	e51b300c 	ldr	r3, [fp, #-12]
    1c3c:	e5832000 	str	r2, [r3]
    1c40:	e51b3008 	ldr	r3, [fp, #-8]
    1c44:	e5933004 	ldr	r3, [r3, #4]
    1c48:	e1a03183 	lsl	r3, r3, #3
    1c4c:	e51b2008 	ldr	r2, [fp, #-8]
    1c50:	e0822003 	add	r2, r2, r3
    1c54:	e51b300c 	ldr	r3, [fp, #-12]
    1c58:	e1520003 	cmp	r2, r3
    1c5c:	1a00000b 	bne	1c90 <free+0x150>
    1c60:	e51b3008 	ldr	r3, [fp, #-8]
    1c64:	e5932004 	ldr	r2, [r3, #4]
    1c68:	e51b300c 	ldr	r3, [fp, #-12]
    1c6c:	e5933004 	ldr	r3, [r3, #4]
    1c70:	e0822003 	add	r2, r2, r3
    1c74:	e51b3008 	ldr	r3, [fp, #-8]
    1c78:	e5832004 	str	r2, [r3, #4]
    1c7c:	e51b300c 	ldr	r3, [fp, #-12]
    1c80:	e5932000 	ldr	r2, [r3]
    1c84:	e51b3008 	ldr	r3, [fp, #-8]
    1c88:	e5832000 	str	r2, [r3]
    1c8c:	ea000002 	b	1c9c <free+0x15c>
    1c90:	e51b3008 	ldr	r3, [fp, #-8]
    1c94:	e51b200c 	ldr	r2, [fp, #-12]
    1c98:	e5832000 	str	r2, [r3]
    1c9c:	e59f2010 	ldr	r2, [pc, #16]	; 1cb4 <free+0x174>
    1ca0:	e51b3008 	ldr	r3, [fp, #-8]
    1ca4:	e5823000 	str	r3, [r2]
    1ca8:	e24bd000 	sub	sp, fp, #0
    1cac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1cb0:	e12fff1e 	bx	lr
    1cb4:	0000213c 	.word	0x0000213c

00001cb8 <morecore>:
    1cb8:	e92d4800 	push	{fp, lr}
    1cbc:	e28db004 	add	fp, sp, #4
    1cc0:	e24dd010 	sub	sp, sp, #16
    1cc4:	e50b0010 	str	r0, [fp, #-16]
    1cc8:	e51b3010 	ldr	r3, [fp, #-16]
    1ccc:	e3530a01 	cmp	r3, #4096	; 0x1000
    1cd0:	2a000001 	bcs	1cdc <morecore+0x24>
    1cd4:	e3a03a01 	mov	r3, #4096	; 0x1000
    1cd8:	e50b3010 	str	r3, [fp, #-16]
    1cdc:	e51b3010 	ldr	r3, [fp, #-16]
    1ce0:	e1a03183 	lsl	r3, r3, #3
    1ce4:	e1a00003 	mov	r0, r3
    1ce8:	ebfffe94 	bl	1740 <sbrk>
    1cec:	e50b0008 	str	r0, [fp, #-8]
    1cf0:	e51b3008 	ldr	r3, [fp, #-8]
    1cf4:	e3730001 	cmn	r3, #1
    1cf8:	1a000001 	bne	1d04 <morecore+0x4c>
    1cfc:	e3a03000 	mov	r3, #0
    1d00:	ea00000a 	b	1d30 <morecore+0x78>
    1d04:	e51b3008 	ldr	r3, [fp, #-8]
    1d08:	e50b300c 	str	r3, [fp, #-12]
    1d0c:	e51b300c 	ldr	r3, [fp, #-12]
    1d10:	e51b2010 	ldr	r2, [fp, #-16]
    1d14:	e5832004 	str	r2, [r3, #4]
    1d18:	e51b300c 	ldr	r3, [fp, #-12]
    1d1c:	e2833008 	add	r3, r3, #8
    1d20:	e1a00003 	mov	r0, r3
    1d24:	ebffff85 	bl	1b40 <free>
    1d28:	e59f300c 	ldr	r3, [pc, #12]	; 1d3c <morecore+0x84>
    1d2c:	e5933000 	ldr	r3, [r3]
    1d30:	e1a00003 	mov	r0, r3
    1d34:	e24bd004 	sub	sp, fp, #4
    1d38:	e8bd8800 	pop	{fp, pc}
    1d3c:	0000213c 	.word	0x0000213c

00001d40 <malloc>:
    1d40:	e92d4800 	push	{fp, lr}
    1d44:	e28db004 	add	fp, sp, #4
    1d48:	e24dd018 	sub	sp, sp, #24
    1d4c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    1d50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1d54:	e2833007 	add	r3, r3, #7
    1d58:	e1a031a3 	lsr	r3, r3, #3
    1d5c:	e2833001 	add	r3, r3, #1
    1d60:	e50b3010 	str	r3, [fp, #-16]
    1d64:	e59f3134 	ldr	r3, [pc, #308]	; 1ea0 <malloc+0x160>
    1d68:	e5933000 	ldr	r3, [r3]
    1d6c:	e50b300c 	str	r3, [fp, #-12]
    1d70:	e51b300c 	ldr	r3, [fp, #-12]
    1d74:	e3530000 	cmp	r3, #0
    1d78:	1a00000b 	bne	1dac <malloc+0x6c>
    1d7c:	e59f3120 	ldr	r3, [pc, #288]	; 1ea4 <malloc+0x164>
    1d80:	e50b300c 	str	r3, [fp, #-12]
    1d84:	e59f2114 	ldr	r2, [pc, #276]	; 1ea0 <malloc+0x160>
    1d88:	e51b300c 	ldr	r3, [fp, #-12]
    1d8c:	e5823000 	str	r3, [r2]
    1d90:	e59f3108 	ldr	r3, [pc, #264]	; 1ea0 <malloc+0x160>
    1d94:	e5933000 	ldr	r3, [r3]
    1d98:	e59f2104 	ldr	r2, [pc, #260]	; 1ea4 <malloc+0x164>
    1d9c:	e5823000 	str	r3, [r2]
    1da0:	e59f30fc 	ldr	r3, [pc, #252]	; 1ea4 <malloc+0x164>
    1da4:	e3a02000 	mov	r2, #0
    1da8:	e5832004 	str	r2, [r3, #4]
    1dac:	e51b300c 	ldr	r3, [fp, #-12]
    1db0:	e5933000 	ldr	r3, [r3]
    1db4:	e50b3008 	str	r3, [fp, #-8]
    1db8:	e51b3008 	ldr	r3, [fp, #-8]
    1dbc:	e5932004 	ldr	r2, [r3, #4]
    1dc0:	e51b3010 	ldr	r3, [fp, #-16]
    1dc4:	e1520003 	cmp	r2, r3
    1dc8:	3a00001e 	bcc	1e48 <malloc+0x108>
    1dcc:	e51b3008 	ldr	r3, [fp, #-8]
    1dd0:	e5932004 	ldr	r2, [r3, #4]
    1dd4:	e51b3010 	ldr	r3, [fp, #-16]
    1dd8:	e1520003 	cmp	r2, r3
    1ddc:	1a000004 	bne	1df4 <malloc+0xb4>
    1de0:	e51b3008 	ldr	r3, [fp, #-8]
    1de4:	e5932000 	ldr	r2, [r3]
    1de8:	e51b300c 	ldr	r3, [fp, #-12]
    1dec:	e5832000 	str	r2, [r3]
    1df0:	ea00000e 	b	1e30 <malloc+0xf0>
    1df4:	e51b3008 	ldr	r3, [fp, #-8]
    1df8:	e5932004 	ldr	r2, [r3, #4]
    1dfc:	e51b3010 	ldr	r3, [fp, #-16]
    1e00:	e0632002 	rsb	r2, r3, r2
    1e04:	e51b3008 	ldr	r3, [fp, #-8]
    1e08:	e5832004 	str	r2, [r3, #4]
    1e0c:	e51b3008 	ldr	r3, [fp, #-8]
    1e10:	e5933004 	ldr	r3, [r3, #4]
    1e14:	e1a03183 	lsl	r3, r3, #3
    1e18:	e51b2008 	ldr	r2, [fp, #-8]
    1e1c:	e0823003 	add	r3, r2, r3
    1e20:	e50b3008 	str	r3, [fp, #-8]
    1e24:	e51b3008 	ldr	r3, [fp, #-8]
    1e28:	e51b2010 	ldr	r2, [fp, #-16]
    1e2c:	e5832004 	str	r2, [r3, #4]
    1e30:	e59f2068 	ldr	r2, [pc, #104]	; 1ea0 <malloc+0x160>
    1e34:	e51b300c 	ldr	r3, [fp, #-12]
    1e38:	e5823000 	str	r3, [r2]
    1e3c:	e51b3008 	ldr	r3, [fp, #-8]
    1e40:	e2833008 	add	r3, r3, #8
    1e44:	ea000012 	b	1e94 <malloc+0x154>
    1e48:	e59f3050 	ldr	r3, [pc, #80]	; 1ea0 <malloc+0x160>
    1e4c:	e5933000 	ldr	r3, [r3]
    1e50:	e51b2008 	ldr	r2, [fp, #-8]
    1e54:	e1520003 	cmp	r2, r3
    1e58:	1a000007 	bne	1e7c <malloc+0x13c>
    1e5c:	e51b0010 	ldr	r0, [fp, #-16]
    1e60:	ebffff94 	bl	1cb8 <morecore>
    1e64:	e50b0008 	str	r0, [fp, #-8]
    1e68:	e51b3008 	ldr	r3, [fp, #-8]
    1e6c:	e3530000 	cmp	r3, #0
    1e70:	1a000001 	bne	1e7c <malloc+0x13c>
    1e74:	e3a03000 	mov	r3, #0
    1e78:	ea000005 	b	1e94 <malloc+0x154>
    1e7c:	e51b3008 	ldr	r3, [fp, #-8]
    1e80:	e50b300c 	str	r3, [fp, #-12]
    1e84:	e51b3008 	ldr	r3, [fp, #-8]
    1e88:	e5933000 	ldr	r3, [r3]
    1e8c:	e50b3008 	str	r3, [fp, #-8]
    1e90:	eaffffc8 	b	1db8 <malloc+0x78>
    1e94:	e1a00003 	mov	r0, r3
    1e98:	e24bd004 	sub	sp, fp, #4
    1e9c:	e8bd8800 	pop	{fp, pc}
    1ea0:	0000213c 	.word	0x0000213c
    1ea4:	00002134 	.word	0x00002134

00001ea8 <__aeabi_uidiv>:
    1ea8:	e2512001 	subs	r2, r1, #1
    1eac:	012fff1e 	bxeq	lr
    1eb0:	3a000036 	bcc	1f90 <__aeabi_uidiv+0xe8>
    1eb4:	e1500001 	cmp	r0, r1
    1eb8:	9a000022 	bls	1f48 <__aeabi_uidiv+0xa0>
    1ebc:	e1110002 	tst	r1, r2
    1ec0:	0a000023 	beq	1f54 <__aeabi_uidiv+0xac>
    1ec4:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1ec8:	01a01181 	lsleq	r1, r1, #3
    1ecc:	03a03008 	moveq	r3, #8
    1ed0:	13a03001 	movne	r3, #1
    1ed4:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1ed8:	31510000 	cmpcc	r1, r0
    1edc:	31a01201 	lslcc	r1, r1, #4
    1ee0:	31a03203 	lslcc	r3, r3, #4
    1ee4:	3afffffa 	bcc	1ed4 <__aeabi_uidiv+0x2c>
    1ee8:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1eec:	31510000 	cmpcc	r1, r0
    1ef0:	31a01081 	lslcc	r1, r1, #1
    1ef4:	31a03083 	lslcc	r3, r3, #1
    1ef8:	3afffffa 	bcc	1ee8 <__aeabi_uidiv+0x40>
    1efc:	e3a02000 	mov	r2, #0
    1f00:	e1500001 	cmp	r0, r1
    1f04:	20400001 	subcs	r0, r0, r1
    1f08:	21822003 	orrcs	r2, r2, r3
    1f0c:	e15000a1 	cmp	r0, r1, lsr #1
    1f10:	204000a1 	subcs	r0, r0, r1, lsr #1
    1f14:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1f18:	e1500121 	cmp	r0, r1, lsr #2
    1f1c:	20400121 	subcs	r0, r0, r1, lsr #2
    1f20:	21822123 	orrcs	r2, r2, r3, lsr #2
    1f24:	e15001a1 	cmp	r0, r1, lsr #3
    1f28:	204001a1 	subcs	r0, r0, r1, lsr #3
    1f2c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1f30:	e3500000 	cmp	r0, #0
    1f34:	11b03223 	lsrsne	r3, r3, #4
    1f38:	11a01221 	lsrne	r1, r1, #4
    1f3c:	1affffef 	bne	1f00 <__aeabi_uidiv+0x58>
    1f40:	e1a00002 	mov	r0, r2
    1f44:	e12fff1e 	bx	lr
    1f48:	03a00001 	moveq	r0, #1
    1f4c:	13a00000 	movne	r0, #0
    1f50:	e12fff1e 	bx	lr
    1f54:	e3510801 	cmp	r1, #65536	; 0x10000
    1f58:	21a01821 	lsrcs	r1, r1, #16
    1f5c:	23a02010 	movcs	r2, #16
    1f60:	33a02000 	movcc	r2, #0
    1f64:	e3510c01 	cmp	r1, #256	; 0x100
    1f68:	21a01421 	lsrcs	r1, r1, #8
    1f6c:	22822008 	addcs	r2, r2, #8
    1f70:	e3510010 	cmp	r1, #16
    1f74:	21a01221 	lsrcs	r1, r1, #4
    1f78:	22822004 	addcs	r2, r2, #4
    1f7c:	e3510004 	cmp	r1, #4
    1f80:	82822003 	addhi	r2, r2, #3
    1f84:	908220a1 	addls	r2, r2, r1, lsr #1
    1f88:	e1a00230 	lsr	r0, r0, r2
    1f8c:	e12fff1e 	bx	lr
    1f90:	e3500000 	cmp	r0, #0
    1f94:	13e00000 	mvnne	r0, #0
    1f98:	ea000007 	b	1fbc <__aeabi_idiv0>

00001f9c <__aeabi_uidivmod>:
    1f9c:	e3510000 	cmp	r1, #0
    1fa0:	0afffffa 	beq	1f90 <__aeabi_uidiv+0xe8>
    1fa4:	e92d4003 	push	{r0, r1, lr}
    1fa8:	ebffffbe 	bl	1ea8 <__aeabi_uidiv>
    1fac:	e8bd4006 	pop	{r1, r2, lr}
    1fb0:	e0030092 	mul	r3, r2, r0
    1fb4:	e0411003 	sub	r1, r1, r3
    1fb8:	e12fff1e 	bx	lr

00001fbc <__aeabi_idiv0>:
    1fbc:	e12fff1e 	bx	lr
