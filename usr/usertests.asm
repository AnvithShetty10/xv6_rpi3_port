
_usertests:     file format elf32-littlearm


Disassembly of section .text:

00000000 <opentest>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f3098 	ldr	r3, [pc, #152]	; ac <opentest+0xac>
      10:	e5933000 	ldr	r3, [r3]
      14:	e1a00003 	mov	r0, r3
      18:	e59f1090 	ldr	r1, [pc, #144]	; b0 <opentest+0xb0>
      1c:	eb001256 	bl	497c <printf>
      20:	e59f008c 	ldr	r0, [pc, #140]	; b4 <opentest+0xb4>
      24:	e3a01000 	mov	r1, #0
      28:	eb00118e 	bl	4668 <open>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3530000 	cmp	r3, #0
      38:	aa000005 	bge	54 <opentest+0x54>
      3c:	e59f3068 	ldr	r3, [pc, #104]	; ac <opentest+0xac>
      40:	e5933000 	ldr	r3, [r3]
      44:	e1a00003 	mov	r0, r3
      48:	e59f1068 	ldr	r1, [pc, #104]	; b8 <opentest+0xb8>
      4c:	eb00124a 	bl	497c <printf>
      50:	eb00113c 	bl	4548 <exit>
      54:	e51b0008 	ldr	r0, [fp, #-8]
      58:	eb001167 	bl	45fc <close>
      5c:	e59f0058 	ldr	r0, [pc, #88]	; bc <opentest+0xbc>
      60:	e3a01000 	mov	r1, #0
      64:	eb00117f 	bl	4668 <open>
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530000 	cmp	r3, #0
      74:	ba000005 	blt	90 <opentest+0x90>
      78:	e59f302c 	ldr	r3, [pc, #44]	; ac <opentest+0xac>
      7c:	e5933000 	ldr	r3, [r3]
      80:	e1a00003 	mov	r0, r3
      84:	e59f1034 	ldr	r1, [pc, #52]	; c0 <opentest+0xc0>
      88:	eb00123b 	bl	497c <printf>
      8c:	eb00112d 	bl	4548 <exit>
      90:	e59f3014 	ldr	r3, [pc, #20]	; ac <opentest+0xac>
      94:	e5933000 	ldr	r3, [r3]
      98:	e1a00003 	mov	r0, r3
      9c:	e59f1020 	ldr	r1, [pc, #32]	; c4 <opentest+0xc4>
      a0:	eb001235 	bl	497c <printf>
      a4:	e24bd004 	sub	sp, fp, #4
      a8:	e8bd8800 	pop	{fp, pc}
      ac:	000068c8 	.word	0x000068c8
      b0:	00005048 	.word	0x00005048
      b4:	0000502c 	.word	0x0000502c
      b8:	00005054 	.word	0x00005054
      bc:	00005068 	.word	0x00005068
      c0:	00005078 	.word	0x00005078
      c4:	00005098 	.word	0x00005098

000000c8 <writetest>:
      c8:	e92d4800 	push	{fp, lr}
      cc:	e28db004 	add	fp, sp, #4
      d0:	e24dd008 	sub	sp, sp, #8
      d4:	e59f31f0 	ldr	r3, [pc, #496]	; 2cc <writetest+0x204>
      d8:	e5933000 	ldr	r3, [r3]
      dc:	e1a00003 	mov	r0, r3
      e0:	e59f11e8 	ldr	r1, [pc, #488]	; 2d0 <writetest+0x208>
      e4:	eb001224 	bl	497c <printf>
      e8:	e59f01e4 	ldr	r0, [pc, #484]	; 2d4 <writetest+0x20c>
      ec:	e59f11e4 	ldr	r1, [pc, #484]	; 2d8 <writetest+0x210>
      f0:	eb00115c 	bl	4668 <open>
      f4:	e50b000c 	str	r0, [fp, #-12]
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e3530000 	cmp	r3, #0
     100:	ba000007 	blt	124 <writetest+0x5c>
     104:	e59f31c0 	ldr	r3, [pc, #448]	; 2cc <writetest+0x204>
     108:	e5933000 	ldr	r3, [r3]
     10c:	e1a00003 	mov	r0, r3
     110:	e59f11c4 	ldr	r1, [pc, #452]	; 2dc <writetest+0x214>
     114:	eb001218 	bl	497c <printf>
     118:	e3a03000 	mov	r3, #0
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	ea000024 	b	1b8 <writetest+0xf0>
     124:	e59f31a0 	ldr	r3, [pc, #416]	; 2cc <writetest+0x204>
     128:	e5933000 	ldr	r3, [r3]
     12c:	e1a00003 	mov	r0, r3
     130:	e59f11a8 	ldr	r1, [pc, #424]	; 2e0 <writetest+0x218>
     134:	eb001210 	bl	497c <printf>
     138:	eb001102 	bl	4548 <exit>
     13c:	e51b000c 	ldr	r0, [fp, #-12]
     140:	e59f119c 	ldr	r1, [pc, #412]	; 2e4 <writetest+0x21c>
     144:	e3a0200a 	mov	r2, #10
     148:	eb001122 	bl	45d8 <write>
     14c:	e1a03000 	mov	r3, r0
     150:	e353000a 	cmp	r3, #10
     154:	0a000006 	beq	174 <writetest+0xac>
     158:	e59f316c 	ldr	r3, [pc, #364]	; 2cc <writetest+0x204>
     15c:	e5933000 	ldr	r3, [r3]
     160:	e1a00003 	mov	r0, r3
     164:	e59f117c 	ldr	r1, [pc, #380]	; 2e8 <writetest+0x220>
     168:	e51b2008 	ldr	r2, [fp, #-8]
     16c:	eb001202 	bl	497c <printf>
     170:	eb0010f4 	bl	4548 <exit>
     174:	e51b000c 	ldr	r0, [fp, #-12]
     178:	e59f116c 	ldr	r1, [pc, #364]	; 2ec <writetest+0x224>
     17c:	e3a0200a 	mov	r2, #10
     180:	eb001114 	bl	45d8 <write>
     184:	e1a03000 	mov	r3, r0
     188:	e353000a 	cmp	r3, #10
     18c:	0a000006 	beq	1ac <writetest+0xe4>
     190:	e59f3134 	ldr	r3, [pc, #308]	; 2cc <writetest+0x204>
     194:	e5933000 	ldr	r3, [r3]
     198:	e1a00003 	mov	r0, r3
     19c:	e59f114c 	ldr	r1, [pc, #332]	; 2f0 <writetest+0x228>
     1a0:	e51b2008 	ldr	r2, [fp, #-8]
     1a4:	eb0011f4 	bl	497c <printf>
     1a8:	eb0010e6 	bl	4548 <exit>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e3530063 	cmp	r3, #99	; 0x63
     1c0:	daffffdd 	ble	13c <writetest+0x74>
     1c4:	e59f3100 	ldr	r3, [pc, #256]	; 2cc <writetest+0x204>
     1c8:	e5933000 	ldr	r3, [r3]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e59f111c 	ldr	r1, [pc, #284]	; 2f4 <writetest+0x22c>
     1d4:	eb0011e8 	bl	497c <printf>
     1d8:	e51b000c 	ldr	r0, [fp, #-12]
     1dc:	eb001106 	bl	45fc <close>
     1e0:	e59f00ec 	ldr	r0, [pc, #236]	; 2d4 <writetest+0x20c>
     1e4:	e3a01000 	mov	r1, #0
     1e8:	eb00111e 	bl	4668 <open>
     1ec:	e50b000c 	str	r0, [fp, #-12]
     1f0:	e51b300c 	ldr	r3, [fp, #-12]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	ba00000d 	blt	234 <writetest+0x16c>
     1fc:	e59f30c8 	ldr	r3, [pc, #200]	; 2cc <writetest+0x204>
     200:	e5933000 	ldr	r3, [r3]
     204:	e1a00003 	mov	r0, r3
     208:	e59f10e8 	ldr	r1, [pc, #232]	; 2f8 <writetest+0x230>
     20c:	eb0011da 	bl	497c <printf>
     210:	e51b000c 	ldr	r0, [fp, #-12]
     214:	e59f10e0 	ldr	r1, [pc, #224]	; 2fc <writetest+0x234>
     218:	e3a02e7d 	mov	r2, #2000	; 0x7d0
     21c:	eb0010e4 	bl	45b4 <read>
     220:	e50b0008 	str	r0, [fp, #-8]
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e3530e7d 	cmp	r3, #2000	; 0x7d0
     22c:	1a000013 	bne	280 <writetest+0x1b8>
     230:	ea000005 	b	24c <writetest+0x184>
     234:	e59f3090 	ldr	r3, [pc, #144]	; 2cc <writetest+0x204>
     238:	e5933000 	ldr	r3, [r3]
     23c:	e1a00003 	mov	r0, r3
     240:	e59f10b8 	ldr	r1, [pc, #184]	; 300 <writetest+0x238>
     244:	eb0011cc 	bl	497c <printf>
     248:	eb0010be 	bl	4548 <exit>
     24c:	e59f3078 	ldr	r3, [pc, #120]	; 2cc <writetest+0x204>
     250:	e5933000 	ldr	r3, [r3]
     254:	e1a00003 	mov	r0, r3
     258:	e59f10a4 	ldr	r1, [pc, #164]	; 304 <writetest+0x23c>
     25c:	eb0011c6 	bl	497c <printf>
     260:	e51b000c 	ldr	r0, [fp, #-12]
     264:	eb0010e4 	bl	45fc <close>
     268:	e59f0064 	ldr	r0, [pc, #100]	; 2d4 <writetest+0x20c>
     26c:	eb00110f 	bl	46b0 <unlink>
     270:	e1a03000 	mov	r3, r0
     274:	e3530000 	cmp	r3, #0
     278:	aa00000c 	bge	2b0 <writetest+0x1e8>
     27c:	ea000005 	b	298 <writetest+0x1d0>
     280:	e59f3044 	ldr	r3, [pc, #68]	; 2cc <writetest+0x204>
     284:	e5933000 	ldr	r3, [r3]
     288:	e1a00003 	mov	r0, r3
     28c:	e59f1074 	ldr	r1, [pc, #116]	; 308 <writetest+0x240>
     290:	eb0011b9 	bl	497c <printf>
     294:	eb0010ab 	bl	4548 <exit>
     298:	e59f302c 	ldr	r3, [pc, #44]	; 2cc <writetest+0x204>
     29c:	e5933000 	ldr	r3, [r3]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e59f1060 	ldr	r1, [pc, #96]	; 30c <writetest+0x244>
     2a8:	eb0011b3 	bl	497c <printf>
     2ac:	eb0010a5 	bl	4548 <exit>
     2b0:	e59f3014 	ldr	r3, [pc, #20]	; 2cc <writetest+0x204>
     2b4:	e5933000 	ldr	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e59f104c 	ldr	r1, [pc, #76]	; 310 <writetest+0x248>
     2c0:	eb0011ad 	bl	497c <printf>
     2c4:	e24bd004 	sub	sp, fp, #4
     2c8:	e8bd8800 	pop	{fp, pc}
     2cc:	000068c8 	.word	0x000068c8
     2d0:	000050a8 	.word	0x000050a8
     2d4:	000050bc 	.word	0x000050bc
     2d8:	00000202 	.word	0x00000202
     2dc:	000050c4 	.word	0x000050c4
     2e0:	000050e0 	.word	0x000050e0
     2e4:	000050fc 	.word	0x000050fc
     2e8:	00005108 	.word	0x00005108
     2ec:	0000512c 	.word	0x0000512c
     2f0:	00005138 	.word	0x00005138
     2f4:	0000515c 	.word	0x0000515c
     2f8:	00005168 	.word	0x00005168
     2fc:	00009080 	.word	0x00009080
     300:	00005184 	.word	0x00005184
     304:	000051a0 	.word	0x000051a0
     308:	000051b4 	.word	0x000051b4
     30c:	000051c4 	.word	0x000051c4
     310:	000051dc 	.word	0x000051dc

00000314 <writetest1>:
     314:	e92d4800 	push	{fp, lr}
     318:	e28db004 	add	fp, sp, #4
     31c:	e24dd010 	sub	sp, sp, #16
     320:	e59f31fc 	ldr	r3, [pc, #508]	; 524 <writetest1+0x210>
     324:	e5933000 	ldr	r3, [r3]
     328:	e1a00003 	mov	r0, r3
     32c:	e59f11f4 	ldr	r1, [pc, #500]	; 528 <writetest1+0x214>
     330:	eb001191 	bl	497c <printf>
     334:	e59f01f0 	ldr	r0, [pc, #496]	; 52c <writetest1+0x218>
     338:	e59f11f0 	ldr	r1, [pc, #496]	; 530 <writetest1+0x21c>
     33c:	eb0010c9 	bl	4668 <open>
     340:	e50b0010 	str	r0, [fp, #-16]
     344:	e51b3010 	ldr	r3, [fp, #-16]
     348:	e3530000 	cmp	r3, #0
     34c:	aa000005 	bge	368 <writetest1+0x54>
     350:	e59f31cc 	ldr	r3, [pc, #460]	; 524 <writetest1+0x210>
     354:	e5933000 	ldr	r3, [r3]
     358:	e1a00003 	mov	r0, r3
     35c:	e59f11d0 	ldr	r1, [pc, #464]	; 534 <writetest1+0x220>
     360:	eb001185 	bl	497c <printf>
     364:	eb001077 	bl	4548 <exit>
     368:	e3a03000 	mov	r3, #0
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	ea000013 	b	3c4 <writetest1+0xb0>
     374:	e59f21bc 	ldr	r2, [pc, #444]	; 538 <writetest1+0x224>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e5823000 	str	r3, [r2]
     380:	e51b0010 	ldr	r0, [fp, #-16]
     384:	e59f11ac 	ldr	r1, [pc, #428]	; 538 <writetest1+0x224>
     388:	e3a02c02 	mov	r2, #512	; 0x200
     38c:	eb001091 	bl	45d8 <write>
     390:	e1a03000 	mov	r3, r0
     394:	e3530c02 	cmp	r3, #512	; 0x200
     398:	0a000006 	beq	3b8 <writetest1+0xa4>
     39c:	e59f3180 	ldr	r3, [pc, #384]	; 524 <writetest1+0x210>
     3a0:	e5933000 	ldr	r3, [r3]
     3a4:	e1a00003 	mov	r0, r3
     3a8:	e59f118c 	ldr	r1, [pc, #396]	; 53c <writetest1+0x228>
     3ac:	e51b2008 	ldr	r2, [fp, #-8]
     3b0:	eb001171 	bl	497c <printf>
     3b4:	eb001063 	bl	4548 <exit>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2833001 	add	r3, r3, #1
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e353008b 	cmp	r3, #139	; 0x8b
     3cc:	9affffe8 	bls	374 <writetest1+0x60>
     3d0:	e51b0010 	ldr	r0, [fp, #-16]
     3d4:	eb001088 	bl	45fc <close>
     3d8:	e59f014c 	ldr	r0, [pc, #332]	; 52c <writetest1+0x218>
     3dc:	e3a01000 	mov	r1, #0
     3e0:	eb0010a0 	bl	4668 <open>
     3e4:	e50b0010 	str	r0, [fp, #-16]
     3e8:	e51b3010 	ldr	r3, [fp, #-16]
     3ec:	e3530000 	cmp	r3, #0
     3f0:	aa000005 	bge	40c <writetest1+0xf8>
     3f4:	e59f3128 	ldr	r3, [pc, #296]	; 524 <writetest1+0x210>
     3f8:	e5933000 	ldr	r3, [r3]
     3fc:	e1a00003 	mov	r0, r3
     400:	e59f1138 	ldr	r1, [pc, #312]	; 540 <writetest1+0x22c>
     404:	eb00115c 	bl	497c <printf>
     408:	eb00104e 	bl	4548 <exit>
     40c:	e3a03000 	mov	r3, #0
     410:	e50b300c 	str	r3, [fp, #-12]
     414:	e51b0010 	ldr	r0, [fp, #-16]
     418:	e59f1118 	ldr	r1, [pc, #280]	; 538 <writetest1+0x224>
     41c:	e3a02c02 	mov	r2, #512	; 0x200
     420:	eb001063 	bl	45b4 <read>
     424:	e50b0008 	str	r0, [fp, #-8]
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e3530000 	cmp	r3, #0
     430:	1a000012 	bne	480 <writetest1+0x16c>
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e353008b 	cmp	r3, #139	; 0x8b
     43c:	1a000006 	bne	45c <writetest1+0x148>
     440:	e59f30dc 	ldr	r3, [pc, #220]	; 524 <writetest1+0x210>
     444:	e5933000 	ldr	r3, [r3]
     448:	e1a00003 	mov	r0, r3
     44c:	e59f10f0 	ldr	r1, [pc, #240]	; 544 <writetest1+0x230>
     450:	e51b200c 	ldr	r2, [fp, #-12]
     454:	eb001148 	bl	497c <printf>
     458:	eb00103a 	bl	4548 <exit>
     45c:	e1a00000 	nop			; (mov r0, r0)
     460:	e51b0010 	ldr	r0, [fp, #-16]
     464:	eb001064 	bl	45fc <close>
     468:	e59f00bc 	ldr	r0, [pc, #188]	; 52c <writetest1+0x218>
     46c:	eb00108f 	bl	46b0 <unlink>
     470:	e1a03000 	mov	r3, r0
     474:	e3530000 	cmp	r3, #0
     478:	aa000022 	bge	508 <writetest1+0x1f4>
     47c:	ea00001b 	b	4f0 <writetest1+0x1dc>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e3530c02 	cmp	r3, #512	; 0x200
     488:	0a000006 	beq	4a8 <writetest1+0x194>
     48c:	e59f3090 	ldr	r3, [pc, #144]	; 524 <writetest1+0x210>
     490:	e5933000 	ldr	r3, [r3]
     494:	e1a00003 	mov	r0, r3
     498:	e59f10a8 	ldr	r1, [pc, #168]	; 548 <writetest1+0x234>
     49c:	e51b2008 	ldr	r2, [fp, #-8]
     4a0:	eb001135 	bl	497c <printf>
     4a4:	eb001027 	bl	4548 <exit>
     4a8:	e59f3088 	ldr	r3, [pc, #136]	; 538 <writetest1+0x224>
     4ac:	e5932000 	ldr	r2, [r3]
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e1520003 	cmp	r2, r3
     4b8:	0a000008 	beq	4e0 <writetest1+0x1cc>
     4bc:	e59f3060 	ldr	r3, [pc, #96]	; 524 <writetest1+0x210>
     4c0:	e5932000 	ldr	r2, [r3]
     4c4:	e59f306c 	ldr	r3, [pc, #108]	; 538 <writetest1+0x224>
     4c8:	e5933000 	ldr	r3, [r3]
     4cc:	e1a00002 	mov	r0, r2
     4d0:	e59f1074 	ldr	r1, [pc, #116]	; 54c <writetest1+0x238>
     4d4:	e51b200c 	ldr	r2, [fp, #-12]
     4d8:	eb001127 	bl	497c <printf>
     4dc:	eb001019 	bl	4548 <exit>
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	eaffffc8 	b	414 <writetest1+0x100>
     4f0:	e59f302c 	ldr	r3, [pc, #44]	; 524 <writetest1+0x210>
     4f4:	e5933000 	ldr	r3, [r3]
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e59f104c 	ldr	r1, [pc, #76]	; 550 <writetest1+0x23c>
     500:	eb00111d 	bl	497c <printf>
     504:	eb00100f 	bl	4548 <exit>
     508:	e59f3014 	ldr	r3, [pc, #20]	; 524 <writetest1+0x210>
     50c:	e5933000 	ldr	r3, [r3]
     510:	e1a00003 	mov	r0, r3
     514:	e59f1038 	ldr	r1, [pc, #56]	; 554 <writetest1+0x240>
     518:	eb001117 	bl	497c <printf>
     51c:	e24bd004 	sub	sp, fp, #4
     520:	e8bd8800 	pop	{fp, pc}
     524:	000068c8 	.word	0x000068c8
     528:	000051f0 	.word	0x000051f0
     52c:	00005200 	.word	0x00005200
     530:	00000202 	.word	0x00000202
     534:	00005204 	.word	0x00005204
     538:	00009080 	.word	0x00009080
     53c:	00005220 	.word	0x00005220
     540:	00005240 	.word	0x00005240
     544:	0000525c 	.word	0x0000525c
     548:	0000527c 	.word	0x0000527c
     54c:	0000528c 	.word	0x0000528c
     550:	000052ac 	.word	0x000052ac
     554:	000052c0 	.word	0x000052c0

00000558 <createtest>:
     558:	e92d4800 	push	{fp, lr}
     55c:	e28db004 	add	fp, sp, #4
     560:	e24dd008 	sub	sp, sp, #8
     564:	e59f30f0 	ldr	r3, [pc, #240]	; 65c <createtest+0x104>
     568:	e5933000 	ldr	r3, [r3]
     56c:	e1a00003 	mov	r0, r3
     570:	e59f10e8 	ldr	r1, [pc, #232]	; 660 <createtest+0x108>
     574:	eb001100 	bl	497c <printf>
     578:	e59f30e4 	ldr	r3, [pc, #228]	; 664 <createtest+0x10c>
     57c:	e3a02061 	mov	r2, #97	; 0x61
     580:	e5c32000 	strb	r2, [r3]
     584:	e59f30d8 	ldr	r3, [pc, #216]	; 664 <createtest+0x10c>
     588:	e3a02000 	mov	r2, #0
     58c:	e5c32002 	strb	r2, [r3, #2]
     590:	e3a03000 	mov	r3, #0
     594:	e50b3008 	str	r3, [fp, #-8]
     598:	ea00000e 	b	5d8 <createtest+0x80>
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e6ef3073 	uxtb	r3, r3
     5a4:	e2833030 	add	r3, r3, #48	; 0x30
     5a8:	e6ef2073 	uxtb	r2, r3
     5ac:	e59f30b0 	ldr	r3, [pc, #176]	; 664 <createtest+0x10c>
     5b0:	e5c32001 	strb	r2, [r3, #1]
     5b4:	e59f00a8 	ldr	r0, [pc, #168]	; 664 <createtest+0x10c>
     5b8:	e59f10a8 	ldr	r1, [pc, #168]	; 668 <createtest+0x110>
     5bc:	eb001029 	bl	4668 <open>
     5c0:	e50b000c 	str	r0, [fp, #-12]
     5c4:	e51b000c 	ldr	r0, [fp, #-12]
     5c8:	eb00100b 	bl	45fc <close>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e2833001 	add	r3, r3, #1
     5d4:	e50b3008 	str	r3, [fp, #-8]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e3530033 	cmp	r3, #51	; 0x33
     5e0:	daffffed 	ble	59c <createtest+0x44>
     5e4:	e59f3078 	ldr	r3, [pc, #120]	; 664 <createtest+0x10c>
     5e8:	e3a02061 	mov	r2, #97	; 0x61
     5ec:	e5c32000 	strb	r2, [r3]
     5f0:	e59f306c 	ldr	r3, [pc, #108]	; 664 <createtest+0x10c>
     5f4:	e3a02000 	mov	r2, #0
     5f8:	e5c32002 	strb	r2, [r3, #2]
     5fc:	e3a03000 	mov	r3, #0
     600:	e50b3008 	str	r3, [fp, #-8]
     604:	ea00000a 	b	634 <createtest+0xdc>
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e6ef3073 	uxtb	r3, r3
     610:	e2833030 	add	r3, r3, #48	; 0x30
     614:	e6ef2073 	uxtb	r2, r3
     618:	e59f3044 	ldr	r3, [pc, #68]	; 664 <createtest+0x10c>
     61c:	e5c32001 	strb	r2, [r3, #1]
     620:	e59f003c 	ldr	r0, [pc, #60]	; 664 <createtest+0x10c>
     624:	eb001021 	bl	46b0 <unlink>
     628:	e51b3008 	ldr	r3, [fp, #-8]
     62c:	e2833001 	add	r3, r3, #1
     630:	e50b3008 	str	r3, [fp, #-8]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e3530033 	cmp	r3, #51	; 0x33
     63c:	dafffff1 	ble	608 <createtest+0xb0>
     640:	e59f3014 	ldr	r3, [pc, #20]	; 65c <createtest+0x104>
     644:	e5933000 	ldr	r3, [r3]
     648:	e1a00003 	mov	r0, r3
     64c:	e59f1018 	ldr	r1, [pc, #24]	; 66c <createtest+0x114>
     650:	eb0010c9 	bl	497c <printf>
     654:	e24bd004 	sub	sp, fp, #4
     658:	e8bd8800 	pop	{fp, pc}
     65c:	000068c8 	.word	0x000068c8
     660:	000052d0 	.word	0x000052d0
     664:	0000b080 	.word	0x0000b080
     668:	00000202 	.word	0x00000202
     66c:	000052f8 	.word	0x000052f8

00000670 <dirtest>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e59f30d4 	ldr	r3, [pc, #212]	; 754 <dirtest+0xe4>
     67c:	e5933000 	ldr	r3, [r3]
     680:	e1a00003 	mov	r0, r3
     684:	e59f10cc 	ldr	r1, [pc, #204]	; 758 <dirtest+0xe8>
     688:	eb0010bb 	bl	497c <printf>
     68c:	e59f00c8 	ldr	r0, [pc, #200]	; 75c <dirtest+0xec>
     690:	eb001021 	bl	471c <mkdir>
     694:	e1a03000 	mov	r3, r0
     698:	e3530000 	cmp	r3, #0
     69c:	aa000005 	bge	6b8 <dirtest+0x48>
     6a0:	e59f30ac 	ldr	r3, [pc, #172]	; 754 <dirtest+0xe4>
     6a4:	e5933000 	ldr	r3, [r3]
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e59f10ac 	ldr	r1, [pc, #172]	; 760 <dirtest+0xf0>
     6b0:	eb0010b1 	bl	497c <printf>
     6b4:	eb000fa3 	bl	4548 <exit>
     6b8:	e59f009c 	ldr	r0, [pc, #156]	; 75c <dirtest+0xec>
     6bc:	eb00101f 	bl	4740 <chdir>
     6c0:	e1a03000 	mov	r3, r0
     6c4:	e3530000 	cmp	r3, #0
     6c8:	aa000005 	bge	6e4 <dirtest+0x74>
     6cc:	e59f3080 	ldr	r3, [pc, #128]	; 754 <dirtest+0xe4>
     6d0:	e5933000 	ldr	r3, [r3]
     6d4:	e1a00003 	mov	r0, r3
     6d8:	e59f1084 	ldr	r1, [pc, #132]	; 764 <dirtest+0xf4>
     6dc:	eb0010a6 	bl	497c <printf>
     6e0:	eb000f98 	bl	4548 <exit>
     6e4:	e59f007c 	ldr	r0, [pc, #124]	; 768 <dirtest+0xf8>
     6e8:	eb001014 	bl	4740 <chdir>
     6ec:	e1a03000 	mov	r3, r0
     6f0:	e3530000 	cmp	r3, #0
     6f4:	aa000005 	bge	710 <dirtest+0xa0>
     6f8:	e59f3054 	ldr	r3, [pc, #84]	; 754 <dirtest+0xe4>
     6fc:	e5933000 	ldr	r3, [r3]
     700:	e1a00003 	mov	r0, r3
     704:	e59f1060 	ldr	r1, [pc, #96]	; 76c <dirtest+0xfc>
     708:	eb00109b 	bl	497c <printf>
     70c:	eb000f8d 	bl	4548 <exit>
     710:	e59f0044 	ldr	r0, [pc, #68]	; 75c <dirtest+0xec>
     714:	eb000fe5 	bl	46b0 <unlink>
     718:	e1a03000 	mov	r3, r0
     71c:	e3530000 	cmp	r3, #0
     720:	aa000005 	bge	73c <dirtest+0xcc>
     724:	e59f3028 	ldr	r3, [pc, #40]	; 754 <dirtest+0xe4>
     728:	e5933000 	ldr	r3, [r3]
     72c:	e1a00003 	mov	r0, r3
     730:	e59f1038 	ldr	r1, [pc, #56]	; 770 <dirtest+0x100>
     734:	eb001090 	bl	497c <printf>
     738:	eb000f82 	bl	4548 <exit>
     73c:	e59f3010 	ldr	r3, [pc, #16]	; 754 <dirtest+0xe4>
     740:	e5933000 	ldr	r3, [r3]
     744:	e1a00003 	mov	r0, r3
     748:	e59f1008 	ldr	r1, [pc, #8]	; 758 <dirtest+0xe8>
     74c:	eb00108a 	bl	497c <printf>
     750:	e8bd8800 	pop	{fp, pc}
     754:	000068c8 	.word	0x000068c8
     758:	00005320 	.word	0x00005320
     75c:	0000532c 	.word	0x0000532c
     760:	00005334 	.word	0x00005334
     764:	00005344 	.word	0x00005344
     768:	00005358 	.word	0x00005358
     76c:	0000535c 	.word	0x0000535c
     770:	00005370 	.word	0x00005370

00000774 <exectest>:
     774:	e92d4800 	push	{fp, lr}
     778:	e28db004 	add	fp, sp, #4
     77c:	e59f3040 	ldr	r3, [pc, #64]	; 7c4 <exectest+0x50>
     780:	e5933000 	ldr	r3, [r3]
     784:	e1a00003 	mov	r0, r3
     788:	e59f1038 	ldr	r1, [pc, #56]	; 7c8 <exectest+0x54>
     78c:	eb00107a 	bl	497c <printf>
     790:	e59f0034 	ldr	r0, [pc, #52]	; 7cc <exectest+0x58>
     794:	e59f1034 	ldr	r1, [pc, #52]	; 7d0 <exectest+0x5c>
     798:	eb000fa9 	bl	4644 <exec>
     79c:	e1a03000 	mov	r3, r0
     7a0:	e3530000 	cmp	r3, #0
     7a4:	aa000005 	bge	7c0 <exectest+0x4c>
     7a8:	e59f3014 	ldr	r3, [pc, #20]	; 7c4 <exectest+0x50>
     7ac:	e5933000 	ldr	r3, [r3]
     7b0:	e1a00003 	mov	r0, r3
     7b4:	e59f1018 	ldr	r1, [pc, #24]	; 7d4 <exectest+0x60>
     7b8:	eb00106f 	bl	497c <printf>
     7bc:	eb000f61 	bl	4548 <exit>
     7c0:	e8bd8800 	pop	{fp, pc}
     7c4:	000068c8 	.word	0x000068c8
     7c8:	00005384 	.word	0x00005384
     7cc:	0000502c 	.word	0x0000502c
     7d0:	000068b4 	.word	0x000068b4
     7d4:	00005390 	.word	0x00005390

000007d8 <pipe1>:
     7d8:	e92d4800 	push	{fp, lr}
     7dc:	e28db004 	add	fp, sp, #4
     7e0:	e24dd020 	sub	sp, sp, #32
     7e4:	e3a00001 	mov	r0, #1
     7e8:	e59f1238 	ldr	r1, [pc, #568]	; a28 <pipe1+0x250>
     7ec:	eb001062 	bl	497c <printf>
     7f0:	e24b3024 	sub	r3, fp, #36	; 0x24
     7f4:	e1a00003 	mov	r0, r3
     7f8:	eb000f64 	bl	4590 <pipe>
     7fc:	e1a03000 	mov	r3, r0
     800:	e3530000 	cmp	r3, #0
     804:	0a000003 	beq	818 <pipe1+0x40>
     808:	e3a00001 	mov	r0, #1
     80c:	e59f1218 	ldr	r1, [pc, #536]	; a2c <pipe1+0x254>
     810:	eb001059 	bl	497c <printf>
     814:	eb000f4b 	bl	4548 <exit>
     818:	eb000f41 	bl	4524 <fork>
     81c:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
     820:	e3a03000 	mov	r3, #0
     824:	e50b3008 	str	r3, [fp, #-8]
     828:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     82c:	e3530000 	cmp	r3, #0
     830:	1a00002c 	bne	8e8 <pipe1+0x110>
     834:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
     838:	e1a00003 	mov	r0, r3
     83c:	eb000f6e 	bl	45fc <close>
     840:	e3a03000 	mov	r3, #0
     844:	e50b3010 	str	r3, [fp, #-16]
     848:	ea000022 	b	8d8 <pipe1+0x100>
     84c:	e3a03000 	mov	r3, #0
     850:	e50b300c 	str	r3, [fp, #-12]
     854:	ea00000b 	b	888 <pipe1+0xb0>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e2832001 	add	r2, r3, #1
     860:	e50b2008 	str	r2, [fp, #-8]
     864:	e6ef1073 	uxtb	r1, r3
     868:	e59f21c0 	ldr	r2, [pc, #448]	; a30 <pipe1+0x258>
     86c:	e51b300c 	ldr	r3, [fp, #-12]
     870:	e0823003 	add	r3, r2, r3
     874:	e1a02001 	mov	r2, r1
     878:	e5c32000 	strb	r2, [r3]
     87c:	e51b300c 	ldr	r3, [fp, #-12]
     880:	e2833001 	add	r3, r3, #1
     884:	e50b300c 	str	r3, [fp, #-12]
     888:	e51b300c 	ldr	r3, [fp, #-12]
     88c:	e59f21a0 	ldr	r2, [pc, #416]	; a34 <pipe1+0x25c>
     890:	e1530002 	cmp	r3, r2
     894:	daffffef 	ble	858 <pipe1+0x80>
     898:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     89c:	e1a00003 	mov	r0, r3
     8a0:	e59f1188 	ldr	r1, [pc, #392]	; a30 <pipe1+0x258>
     8a4:	e59f218c 	ldr	r2, [pc, #396]	; a38 <pipe1+0x260>
     8a8:	eb000f4a 	bl	45d8 <write>
     8ac:	e1a02000 	mov	r2, r0
     8b0:	e59f3180 	ldr	r3, [pc, #384]	; a38 <pipe1+0x260>
     8b4:	e1520003 	cmp	r2, r3
     8b8:	0a000003 	beq	8cc <pipe1+0xf4>
     8bc:	e3a00001 	mov	r0, #1
     8c0:	e59f1174 	ldr	r1, [pc, #372]	; a3c <pipe1+0x264>
     8c4:	eb00102c 	bl	497c <printf>
     8c8:	eb000f1e 	bl	4548 <exit>
     8cc:	e51b3010 	ldr	r3, [fp, #-16]
     8d0:	e2833001 	add	r3, r3, #1
     8d4:	e50b3010 	str	r3, [fp, #-16]
     8d8:	e51b3010 	ldr	r3, [fp, #-16]
     8dc:	e3530004 	cmp	r3, #4
     8e0:	daffffd9 	ble	84c <pipe1+0x74>
     8e4:	eb000f17 	bl	4548 <exit>
     8e8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     8ec:	e3530000 	cmp	r3, #0
     8f0:	da000046 	ble	a10 <pipe1+0x238>
     8f4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     8f8:	e1a00003 	mov	r0, r3
     8fc:	eb000f3e 	bl	45fc <close>
     900:	e3a03000 	mov	r3, #0
     904:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     908:	e3a03001 	mov	r3, #1
     90c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     910:	ea000024 	b	9a8 <pipe1+0x1d0>
     914:	e3a03000 	mov	r3, #0
     918:	e50b300c 	str	r3, [fp, #-12]
     91c:	ea000011 	b	968 <pipe1+0x190>
     920:	e59f2108 	ldr	r2, [pc, #264]	; a30 <pipe1+0x258>
     924:	e51b300c 	ldr	r3, [fp, #-12]
     928:	e0823003 	add	r3, r2, r3
     92c:	e5d33000 	ldrb	r3, [r3]
     930:	e1a01003 	mov	r1, r3
     934:	e51b3008 	ldr	r3, [fp, #-8]
     938:	e2832001 	add	r2, r3, #1
     93c:	e50b2008 	str	r2, [fp, #-8]
     940:	e6ef3073 	uxtb	r3, r3
     944:	e1510003 	cmp	r1, r3
     948:	0a000003 	beq	95c <pipe1+0x184>
     94c:	e3a00001 	mov	r0, #1
     950:	e59f10e8 	ldr	r1, [pc, #232]	; a40 <pipe1+0x268>
     954:	eb001008 	bl	497c <printf>
     958:	ea000030 	b	a20 <pipe1+0x248>
     95c:	e51b300c 	ldr	r3, [fp, #-12]
     960:	e2833001 	add	r3, r3, #1
     964:	e50b300c 	str	r3, [fp, #-12]
     968:	e51b200c 	ldr	r2, [fp, #-12]
     96c:	e51b3010 	ldr	r3, [fp, #-16]
     970:	e1520003 	cmp	r2, r3
     974:	baffffe9 	blt	920 <pipe1+0x148>
     978:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     97c:	e51b3010 	ldr	r3, [fp, #-16]
     980:	e0823003 	add	r3, r2, r3
     984:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     988:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     98c:	e1a03083 	lsl	r3, r3, #1
     990:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     994:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     998:	e3530a02 	cmp	r3, #8192	; 0x2000
     99c:	9a000001 	bls	9a8 <pipe1+0x1d0>
     9a0:	e3a03a02 	mov	r3, #8192	; 0x2000
     9a4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     9a8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
     9ac:	e1a00003 	mov	r0, r3
     9b0:	e59f1078 	ldr	r1, [pc, #120]	; a30 <pipe1+0x258>
     9b4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     9b8:	eb000efd 	bl	45b4 <read>
     9bc:	e50b0010 	str	r0, [fp, #-16]
     9c0:	e51b3010 	ldr	r3, [fp, #-16]
     9c4:	e3530000 	cmp	r3, #0
     9c8:	caffffd1 	bgt	914 <pipe1+0x13c>
     9cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     9d0:	e59f206c 	ldr	r2, [pc, #108]	; a44 <pipe1+0x26c>
     9d4:	e1530002 	cmp	r3, r2
     9d8:	0a000004 	beq	9f0 <pipe1+0x218>
     9dc:	e3a00001 	mov	r0, #1
     9e0:	e59f1060 	ldr	r1, [pc, #96]	; a48 <pipe1+0x270>
     9e4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     9e8:	eb000fe3 	bl	497c <printf>
     9ec:	eb000ed5 	bl	4548 <exit>
     9f0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
     9f4:	e1a00003 	mov	r0, r3
     9f8:	eb000eff 	bl	45fc <close>
     9fc:	eb000eda 	bl	456c <wait>
     a00:	e3a00001 	mov	r0, #1
     a04:	e59f1040 	ldr	r1, [pc, #64]	; a4c <pipe1+0x274>
     a08:	eb000fdb 	bl	497c <printf>
     a0c:	ea000003 	b	a20 <pipe1+0x248>
     a10:	e3a00001 	mov	r0, #1
     a14:	e59f1034 	ldr	r1, [pc, #52]	; a50 <pipe1+0x278>
     a18:	eb000fd7 	bl	497c <printf>
     a1c:	eb000ec9 	bl	4548 <exit>
     a20:	e24bd004 	sub	sp, fp, #4
     a24:	e8bd8800 	pop	{fp, pc}
     a28:	000053a4 	.word	0x000053a4
     a2c:	000053b0 	.word	0x000053b0
     a30:	00009080 	.word	0x00009080
     a34:	00000408 	.word	0x00000408
     a38:	00000409 	.word	0x00000409
     a3c:	000053c0 	.word	0x000053c0
     a40:	000053d0 	.word	0x000053d0
     a44:	0000142d 	.word	0x0000142d
     a48:	000053e0 	.word	0x000053e0
     a4c:	00005408 	.word	0x00005408
     a50:	000053f8 	.word	0x000053f8

00000a54 <preempt>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd018 	sub	sp, sp, #24
     a60:	e3a00001 	mov	r0, #1
     a64:	e59f1130 	ldr	r1, [pc, #304]	; b9c <preempt+0x148>
     a68:	eb000fc3 	bl	497c <printf>
     a6c:	eb000eac 	bl	4524 <fork>
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e3530000 	cmp	r3, #0
     a7c:	1a000000 	bne	a84 <preempt+0x30>
     a80:	eafffffe 	b	a80 <preempt+0x2c>
     a84:	eb000ea6 	bl	4524 <fork>
     a88:	e50b000c 	str	r0, [fp, #-12]
     a8c:	e51b300c 	ldr	r3, [fp, #-12]
     a90:	e3530000 	cmp	r3, #0
     a94:	1a000000 	bne	a9c <preempt+0x48>
     a98:	eafffffe 	b	a98 <preempt+0x44>
     a9c:	e24b3018 	sub	r3, fp, #24
     aa0:	e1a00003 	mov	r0, r3
     aa4:	eb000eb9 	bl	4590 <pipe>
     aa8:	eb000e9d 	bl	4524 <fork>
     aac:	e50b0010 	str	r0, [fp, #-16]
     ab0:	e51b3010 	ldr	r3, [fp, #-16]
     ab4:	e3530000 	cmp	r3, #0
     ab8:	1a000011 	bne	b04 <preempt+0xb0>
     abc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ac0:	e1a00003 	mov	r0, r3
     ac4:	eb000ecc 	bl	45fc <close>
     ac8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     acc:	e1a00003 	mov	r0, r3
     ad0:	e59f10c8 	ldr	r1, [pc, #200]	; ba0 <preempt+0x14c>
     ad4:	e3a02001 	mov	r2, #1
     ad8:	eb000ebe 	bl	45d8 <write>
     adc:	e1a03000 	mov	r3, r0
     ae0:	e3530001 	cmp	r3, #1
     ae4:	0a000002 	beq	af4 <preempt+0xa0>
     ae8:	e3a00001 	mov	r0, #1
     aec:	e59f10b0 	ldr	r1, [pc, #176]	; ba4 <preempt+0x150>
     af0:	eb000fa1 	bl	497c <printf>
     af4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     af8:	e1a00003 	mov	r0, r3
     afc:	eb000ebe 	bl	45fc <close>
     b00:	eafffffe 	b	b00 <preempt+0xac>
     b04:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b08:	e1a00003 	mov	r0, r3
     b0c:	eb000eba 	bl	45fc <close>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b14:	e1a00003 	mov	r0, r3
     b18:	e59f1088 	ldr	r1, [pc, #136]	; ba8 <preempt+0x154>
     b1c:	e3a02a02 	mov	r2, #8192	; 0x2000
     b20:	eb000ea3 	bl	45b4 <read>
     b24:	e1a03000 	mov	r3, r0
     b28:	e3530001 	cmp	r3, #1
     b2c:	0a000003 	beq	b40 <preempt+0xec>
     b30:	e3a00001 	mov	r0, #1
     b34:	e59f1070 	ldr	r1, [pc, #112]	; bac <preempt+0x158>
     b38:	eb000f8f 	bl	497c <printf>
     b3c:	ea000014 	b	b94 <preempt+0x140>
     b40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b44:	e1a00003 	mov	r0, r3
     b48:	eb000eab 	bl	45fc <close>
     b4c:	e3a00001 	mov	r0, #1
     b50:	e59f1058 	ldr	r1, [pc, #88]	; bb0 <preempt+0x15c>
     b54:	eb000f88 	bl	497c <printf>
     b58:	e51b0008 	ldr	r0, [fp, #-8]
     b5c:	eb000eaf 	bl	4620 <kill>
     b60:	e51b000c 	ldr	r0, [fp, #-12]
     b64:	eb000ead 	bl	4620 <kill>
     b68:	e51b0010 	ldr	r0, [fp, #-16]
     b6c:	eb000eab 	bl	4620 <kill>
     b70:	e3a00001 	mov	r0, #1
     b74:	e59f1038 	ldr	r1, [pc, #56]	; bb4 <preempt+0x160>
     b78:	eb000f7f 	bl	497c <printf>
     b7c:	eb000e7a 	bl	456c <wait>
     b80:	eb000e79 	bl	456c <wait>
     b84:	eb000e78 	bl	456c <wait>
     b88:	e3a00001 	mov	r0, #1
     b8c:	e59f1024 	ldr	r1, [pc, #36]	; bb8 <preempt+0x164>
     b90:	eb000f79 	bl	497c <printf>
     b94:	e24bd004 	sub	sp, fp, #4
     b98:	e8bd8800 	pop	{fp, pc}
     b9c:	00005414 	.word	0x00005414
     ba0:	00005420 	.word	0x00005420
     ba4:	00005424 	.word	0x00005424
     ba8:	00009080 	.word	0x00009080
     bac:	00005438 	.word	0x00005438
     bb0:	0000544c 	.word	0x0000544c
     bb4:	00005458 	.word	0x00005458
     bb8:	00005464 	.word	0x00005464

00000bbc <exitwait>:
     bbc:	e92d4800 	push	{fp, lr}
     bc0:	e28db004 	add	fp, sp, #4
     bc4:	e24dd008 	sub	sp, sp, #8
     bc8:	e3a03000 	mov	r3, #0
     bcc:	e50b3008 	str	r3, [fp, #-8]
     bd0:	ea000018 	b	c38 <exitwait+0x7c>
     bd4:	eb000e52 	bl	4524 <fork>
     bd8:	e50b000c 	str	r0, [fp, #-12]
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e3530000 	cmp	r3, #0
     be4:	aa000003 	bge	bf8 <exitwait+0x3c>
     be8:	e3a00001 	mov	r0, #1
     bec:	e59f1064 	ldr	r1, [pc, #100]	; c58 <exitwait+0x9c>
     bf0:	eb000f61 	bl	497c <printf>
     bf4:	ea000015 	b	c50 <exitwait+0x94>
     bf8:	e51b300c 	ldr	r3, [fp, #-12]
     bfc:	e3530000 	cmp	r3, #0
     c00:	0a000008 	beq	c28 <exitwait+0x6c>
     c04:	eb000e58 	bl	456c <wait>
     c08:	e1a02000 	mov	r2, r0
     c0c:	e51b300c 	ldr	r3, [fp, #-12]
     c10:	e1520003 	cmp	r2, r3
     c14:	0a000004 	beq	c2c <exitwait+0x70>
     c18:	e3a00001 	mov	r0, #1
     c1c:	e59f1038 	ldr	r1, [pc, #56]	; c5c <exitwait+0xa0>
     c20:	eb000f55 	bl	497c <printf>
     c24:	ea000009 	b	c50 <exitwait+0x94>
     c28:	eb000e46 	bl	4548 <exit>
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e2833001 	add	r3, r3, #1
     c34:	e50b3008 	str	r3, [fp, #-8]
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e3530063 	cmp	r3, #99	; 0x63
     c40:	daffffe3 	ble	bd4 <exitwait+0x18>
     c44:	e3a00001 	mov	r0, #1
     c48:	e59f1010 	ldr	r1, [pc, #16]	; c60 <exitwait+0xa4>
     c4c:	eb000f4a 	bl	497c <printf>
     c50:	e24bd004 	sub	sp, fp, #4
     c54:	e8bd8800 	pop	{fp, pc}
     c58:	00005470 	.word	0x00005470
     c5c:	00005480 	.word	0x00005480
     c60:	00005490 	.word	0x00005490

00000c64 <mem>:
     c64:	e92d4800 	push	{fp, lr}
     c68:	e28db004 	add	fp, sp, #4
     c6c:	e24dd010 	sub	sp, sp, #16
     c70:	e3a00001 	mov	r0, #1
     c74:	e59f1108 	ldr	r1, [pc, #264]	; d84 <mem+0x120>
     c78:	eb000f3f 	bl	497c <printf>
     c7c:	eb000ec1 	bl	4788 <getpid>
     c80:	e50b000c 	str	r0, [fp, #-12]
     c84:	eb000e26 	bl	4524 <fork>
     c88:	e50b0010 	str	r0, [fp, #-16]
     c8c:	e51b3010 	ldr	r3, [fp, #-16]
     c90:	e3530000 	cmp	r3, #0
     c94:	1a000030 	bne	d5c <mem+0xf8>
     c98:	e3a03000 	mov	r3, #0
     c9c:	e50b3008 	str	r3, [fp, #-8]
     ca0:	e3a00001 	mov	r0, #1
     ca4:	e59f10dc 	ldr	r1, [pc, #220]	; d88 <mem+0x124>
     ca8:	eb000f33 	bl	497c <printf>
     cac:	ea000004 	b	cc4 <mem+0x60>
     cb0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     cb4:	e51b2008 	ldr	r2, [fp, #-8]
     cb8:	e5832000 	str	r2, [r3]
     cbc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	e59f00c0 	ldr	r0, [pc, #192]	; d8c <mem+0x128>
     cc8:	eb001037 	bl	4dac <malloc>
     ccc:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     cd0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1afffff4 	bne	cb0 <mem+0x4c>
     cdc:	ea000006 	b	cfc <mem+0x98>
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     cec:	e51b0008 	ldr	r0, [fp, #-8]
     cf0:	eb000fad 	bl	4bac <free>
     cf4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e3530000 	cmp	r3, #0
     d04:	1afffff5 	bne	ce0 <mem+0x7c>
     d08:	e3a00001 	mov	r0, #1
     d0c:	e59f107c 	ldr	r1, [pc, #124]	; d90 <mem+0x12c>
     d10:	eb000f19 	bl	497c <printf>
     d14:	e3a00a05 	mov	r0, #20480	; 0x5000
     d18:	eb001023 	bl	4dac <malloc>
     d1c:	e50b0008 	str	r0, [fp, #-8]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e3530000 	cmp	r3, #0
     d28:	1a000005 	bne	d44 <mem+0xe0>
     d2c:	e3a00001 	mov	r0, #1
     d30:	e59f105c 	ldr	r1, [pc, #92]	; d94 <mem+0x130>
     d34:	eb000f10 	bl	497c <printf>
     d38:	e51b000c 	ldr	r0, [fp, #-12]
     d3c:	eb000e37 	bl	4620 <kill>
     d40:	eb000e00 	bl	4548 <exit>
     d44:	e51b0008 	ldr	r0, [fp, #-8]
     d48:	eb000f97 	bl	4bac <free>
     d4c:	e3a00001 	mov	r0, #1
     d50:	e59f1040 	ldr	r1, [pc, #64]	; d98 <mem+0x134>
     d54:	eb000f08 	bl	497c <printf>
     d58:	eb000dfa 	bl	4548 <exit>
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e3530000 	cmp	r3, #0
     d64:	aa000003 	bge	d78 <mem+0x114>
     d68:	e3a00001 	mov	r0, #1
     d6c:	e59f1028 	ldr	r1, [pc, #40]	; d9c <mem+0x138>
     d70:	eb000f01 	bl	497c <printf>
     d74:	ea000000 	b	d7c <mem+0x118>
     d78:	eb000dfb 	bl	456c <wait>
     d7c:	e24bd004 	sub	sp, fp, #4
     d80:	e8bd8800 	pop	{fp, pc}
     d84:	000054a0 	.word	0x000054a0
     d88:	000054ac 	.word	0x000054ac
     d8c:	00002711 	.word	0x00002711
     d90:	000054c4 	.word	0x000054c4
     d94:	000054e0 	.word	0x000054e0
     d98:	000054fc 	.word	0x000054fc
     d9c:	00005504 	.word	0x00005504

00000da0 <sharedfd>:
     da0:	e92d4800 	push	{fp, lr}
     da4:	e28db004 	add	fp, sp, #4
     da8:	e24dd028 	sub	sp, sp, #40	; 0x28
     dac:	e3a00001 	mov	r0, #1
     db0:	e59f1208 	ldr	r1, [pc, #520]	; fc0 <sharedfd+0x220>
     db4:	eb000ef0 	bl	497c <printf>
     db8:	e59f0204 	ldr	r0, [pc, #516]	; fc4 <sharedfd+0x224>
     dbc:	eb000e3b 	bl	46b0 <unlink>
     dc0:	e59f01fc 	ldr	r0, [pc, #508]	; fc4 <sharedfd+0x224>
     dc4:	e59f11fc 	ldr	r1, [pc, #508]	; fc8 <sharedfd+0x228>
     dc8:	eb000e26 	bl	4668 <open>
     dcc:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     dd0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     dd4:	e3530000 	cmp	r3, #0
     dd8:	aa000003 	bge	dec <sharedfd+0x4c>
     ddc:	e3a00001 	mov	r0, #1
     de0:	e59f11e4 	ldr	r1, [pc, #484]	; fcc <sharedfd+0x22c>
     de4:	eb000ee4 	bl	497c <printf>
     de8:	ea000072 	b	fb8 <sharedfd+0x218>
     dec:	eb000dcc 	bl	4524 <fork>
     df0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     df4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     df8:	e3530000 	cmp	r3, #0
     dfc:	1a000001 	bne	e08 <sharedfd+0x68>
     e00:	e3a03063 	mov	r3, #99	; 0x63
     e04:	ea000000 	b	e0c <sharedfd+0x6c>
     e08:	e3a03070 	mov	r3, #112	; 0x70
     e0c:	e24b2028 	sub	r2, fp, #40	; 0x28
     e10:	e1a00002 	mov	r0, r2
     e14:	e1a01003 	mov	r1, r3
     e18:	e3a0200a 	mov	r2, #10
     e1c:	eb000cd9 	bl	4188 <memset>
     e20:	e3a03000 	mov	r3, #0
     e24:	e50b3008 	str	r3, [fp, #-8]
     e28:	ea00000e 	b	e68 <sharedfd+0xc8>
     e2c:	e24b3028 	sub	r3, fp, #40	; 0x28
     e30:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     e34:	e1a01003 	mov	r1, r3
     e38:	e3a0200a 	mov	r2, #10
     e3c:	eb000de5 	bl	45d8 <write>
     e40:	e1a03000 	mov	r3, r0
     e44:	e353000a 	cmp	r3, #10
     e48:	0a000003 	beq	e5c <sharedfd+0xbc>
     e4c:	e3a00001 	mov	r0, #1
     e50:	e59f1178 	ldr	r1, [pc, #376]	; fd0 <sharedfd+0x230>
     e54:	eb000ec8 	bl	497c <printf>
     e58:	ea000005 	b	e74 <sharedfd+0xd4>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e2833001 	add	r3, r3, #1
     e64:	e50b3008 	str	r3, [fp, #-8]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
     e70:	baffffed 	blt	e2c <sharedfd+0x8c>
     e74:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e78:	e3530000 	cmp	r3, #0
     e7c:	1a000000 	bne	e84 <sharedfd+0xe4>
     e80:	eb000db0 	bl	4548 <exit>
     e84:	eb000db8 	bl	456c <wait>
     e88:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     e8c:	eb000dda 	bl	45fc <close>
     e90:	e59f012c 	ldr	r0, [pc, #300]	; fc4 <sharedfd+0x224>
     e94:	e3a01000 	mov	r1, #0
     e98:	eb000df2 	bl	4668 <open>
     e9c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     ea0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ea4:	e3530000 	cmp	r3, #0
     ea8:	aa000003 	bge	ebc <sharedfd+0x11c>
     eac:	e3a00001 	mov	r0, #1
     eb0:	e59f111c 	ldr	r1, [pc, #284]	; fd4 <sharedfd+0x234>
     eb4:	eb000eb0 	bl	497c <printf>
     eb8:	ea00003e 	b	fb8 <sharedfd+0x218>
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e50b3010 	str	r3, [fp, #-16]
     ec4:	e51b3010 	ldr	r3, [fp, #-16]
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	ea00001a 	b	f3c <sharedfd+0x19c>
     ed0:	e3a03000 	mov	r3, #0
     ed4:	e50b3008 	str	r3, [fp, #-8]
     ed8:	ea000014 	b	f30 <sharedfd+0x190>
     edc:	e24b2028 	sub	r2, fp, #40	; 0x28
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e0823003 	add	r3, r2, r3
     ee8:	e5d33000 	ldrb	r3, [r3]
     eec:	e3530063 	cmp	r3, #99	; 0x63
     ef0:	1a000002 	bne	f00 <sharedfd+0x160>
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e2833001 	add	r3, r3, #1
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e24b2028 	sub	r2, fp, #40	; 0x28
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e0823003 	add	r3, r2, r3
     f0c:	e5d33000 	ldrb	r3, [r3]
     f10:	e3530070 	cmp	r3, #112	; 0x70
     f14:	1a000002 	bne	f24 <sharedfd+0x184>
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e2833001 	add	r3, r3, #1
     f20:	e50b3010 	str	r3, [fp, #-16]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e2833001 	add	r3, r3, #1
     f2c:	e50b3008 	str	r3, [fp, #-8]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e3530009 	cmp	r3, #9
     f38:	9affffe7 	bls	edc <sharedfd+0x13c>
     f3c:	e24b3028 	sub	r3, fp, #40	; 0x28
     f40:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     f44:	e1a01003 	mov	r1, r3
     f48:	e3a0200a 	mov	r2, #10
     f4c:	eb000d98 	bl	45b4 <read>
     f50:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
     f54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f58:	e3530000 	cmp	r3, #0
     f5c:	caffffdb 	bgt	ed0 <sharedfd+0x130>
     f60:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     f64:	eb000da4 	bl	45fc <close>
     f68:	e59f0054 	ldr	r0, [pc, #84]	; fc4 <sharedfd+0x224>
     f6c:	eb000dcf 	bl	46b0 <unlink>
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e59f205c 	ldr	r2, [pc, #92]	; fd8 <sharedfd+0x238>
     f78:	e1530002 	cmp	r3, r2
     f7c:	1a000007 	bne	fa0 <sharedfd+0x200>
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e59f204c 	ldr	r2, [pc, #76]	; fd8 <sharedfd+0x238>
     f88:	e1530002 	cmp	r3, r2
     f8c:	1a000003 	bne	fa0 <sharedfd+0x200>
     f90:	e3a00001 	mov	r0, #1
     f94:	e59f1040 	ldr	r1, [pc, #64]	; fdc <sharedfd+0x23c>
     f98:	eb000e77 	bl	497c <printf>
     f9c:	ea000005 	b	fb8 <sharedfd+0x218>
     fa0:	e3a00001 	mov	r0, #1
     fa4:	e59f1034 	ldr	r1, [pc, #52]	; fe0 <sharedfd+0x240>
     fa8:	e51b200c 	ldr	r2, [fp, #-12]
     fac:	e51b3010 	ldr	r3, [fp, #-16]
     fb0:	eb000e71 	bl	497c <printf>
     fb4:	eb000d63 	bl	4548 <exit>
     fb8:	e24bd004 	sub	sp, fp, #4
     fbc:	e8bd8800 	pop	{fp, pc}
     fc0:	00005514 	.word	0x00005514
     fc4:	00005524 	.word	0x00005524
     fc8:	00000202 	.word	0x00000202
     fcc:	00005530 	.word	0x00005530
     fd0:	0000555c 	.word	0x0000555c
     fd4:	0000557c 	.word	0x0000557c
     fd8:	00002710 	.word	0x00002710
     fdc:	000055a8 	.word	0x000055a8
     fe0:	000055b8 	.word	0x000055b8

00000fe4 <twofiles>:
     fe4:	e92d4800 	push	{fp, lr}
     fe8:	e28db004 	add	fp, sp, #4
     fec:	e24dd020 	sub	sp, sp, #32
     ff0:	e3a00001 	mov	r0, #1
     ff4:	e59f125c 	ldr	r1, [pc, #604]	; 1258 <twofiles+0x274>
     ff8:	eb000e5f 	bl	497c <printf>
     ffc:	e59f0258 	ldr	r0, [pc, #600]	; 125c <twofiles+0x278>
    1000:	eb000daa 	bl	46b0 <unlink>
    1004:	e59f0254 	ldr	r0, [pc, #596]	; 1260 <twofiles+0x27c>
    1008:	eb000da8 	bl	46b0 <unlink>
    100c:	eb000d44 	bl	4524 <fork>
    1010:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    1014:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1018:	e3530000 	cmp	r3, #0
    101c:	aa000003 	bge	1030 <twofiles+0x4c>
    1020:	e3a00001 	mov	r0, #1
    1024:	e59f1238 	ldr	r1, [pc, #568]	; 1264 <twofiles+0x280>
    1028:	eb000e53 	bl	497c <printf>
    102c:	eb000d45 	bl	4548 <exit>
    1030:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1034:	e3530000 	cmp	r3, #0
    1038:	0a000001 	beq	1044 <twofiles+0x60>
    103c:	e59f3218 	ldr	r3, [pc, #536]	; 125c <twofiles+0x278>
    1040:	ea000000 	b	1048 <twofiles+0x64>
    1044:	e59f3214 	ldr	r3, [pc, #532]	; 1260 <twofiles+0x27c>
    1048:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    104c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    1050:	e59f1210 	ldr	r1, [pc, #528]	; 1268 <twofiles+0x284>
    1054:	eb000d83 	bl	4668 <open>
    1058:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
    105c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    1060:	e3530000 	cmp	r3, #0
    1064:	aa000003 	bge	1078 <twofiles+0x94>
    1068:	e3a00001 	mov	r0, #1
    106c:	e59f11f8 	ldr	r1, [pc, #504]	; 126c <twofiles+0x288>
    1070:	eb000e41 	bl	497c <printf>
    1074:	eb000d33 	bl	4548 <exit>
    1078:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    107c:	e3530000 	cmp	r3, #0
    1080:	0a000001 	beq	108c <twofiles+0xa8>
    1084:	e3a03070 	mov	r3, #112	; 0x70
    1088:	ea000000 	b	1090 <twofiles+0xac>
    108c:	e3a03063 	mov	r3, #99	; 0x63
    1090:	e59f01d8 	ldr	r0, [pc, #472]	; 1270 <twofiles+0x28c>
    1094:	e1a01003 	mov	r1, r3
    1098:	e3a02c02 	mov	r2, #512	; 0x200
    109c:	eb000c39 	bl	4188 <memset>
    10a0:	e3a03000 	mov	r3, #0
    10a4:	e50b3008 	str	r3, [fp, #-8]
    10a8:	ea00000f 	b	10ec <twofiles+0x108>
    10ac:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    10b0:	e59f11b8 	ldr	r1, [pc, #440]	; 1270 <twofiles+0x28c>
    10b4:	e3a02f7d 	mov	r2, #500	; 0x1f4
    10b8:	eb000d46 	bl	45d8 <write>
    10bc:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    10c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    10c4:	e3530f7d 	cmp	r3, #500	; 0x1f4
    10c8:	0a000004 	beq	10e0 <twofiles+0xfc>
    10cc:	e3a00001 	mov	r0, #1
    10d0:	e59f119c 	ldr	r1, [pc, #412]	; 1274 <twofiles+0x290>
    10d4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    10d8:	eb000e27 	bl	497c <printf>
    10dc:	eb000d19 	bl	4548 <exit>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e2833001 	add	r3, r3, #1
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e353000b 	cmp	r3, #11
    10f4:	daffffec 	ble	10ac <twofiles+0xc8>
    10f8:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    10fc:	eb000d3e 	bl	45fc <close>
    1100:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1104:	e3530000 	cmp	r3, #0
    1108:	0a000003 	beq	111c <twofiles+0x138>
    110c:	eb000d16 	bl	456c <wait>
    1110:	e3a03000 	mov	r3, #0
    1114:	e50b3008 	str	r3, [fp, #-8]
    1118:	ea000042 	b	1228 <twofiles+0x244>
    111c:	eb000d09 	bl	4548 <exit>
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e3530000 	cmp	r3, #0
    1128:	0a000001 	beq	1134 <twofiles+0x150>
    112c:	e59f3128 	ldr	r3, [pc, #296]	; 125c <twofiles+0x278>
    1130:	ea000000 	b	1138 <twofiles+0x154>
    1134:	e59f3124 	ldr	r3, [pc, #292]	; 1260 <twofiles+0x27c>
    1138:	e1a00003 	mov	r0, r3
    113c:	e3a01000 	mov	r1, #0
    1140:	eb000d48 	bl	4668 <open>
    1144:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
    1148:	e3a03000 	mov	r3, #0
    114c:	e50b3010 	str	r3, [fp, #-16]
    1150:	ea00001e 	b	11d0 <twofiles+0x1ec>
    1154:	e3a03000 	mov	r3, #0
    1158:	e50b300c 	str	r3, [fp, #-12]
    115c:	ea000013 	b	11b0 <twofiles+0x1cc>
    1160:	e59f2108 	ldr	r2, [pc, #264]	; 1270 <twofiles+0x28c>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e0823003 	add	r3, r2, r3
    116c:	e5d33000 	ldrb	r3, [r3]
    1170:	e1a02003 	mov	r2, r3
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e3530000 	cmp	r3, #0
    117c:	0a000001 	beq	1188 <twofiles+0x1a4>
    1180:	e3a03070 	mov	r3, #112	; 0x70
    1184:	ea000000 	b	118c <twofiles+0x1a8>
    1188:	e3a03063 	mov	r3, #99	; 0x63
    118c:	e1520003 	cmp	r2, r3
    1190:	0a000003 	beq	11a4 <twofiles+0x1c0>
    1194:	e3a00001 	mov	r0, #1
    1198:	e59f10d8 	ldr	r1, [pc, #216]	; 1278 <twofiles+0x294>
    119c:	eb000df6 	bl	497c <printf>
    11a0:	eb000ce8 	bl	4548 <exit>
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e2833001 	add	r3, r3, #1
    11ac:	e50b300c 	str	r3, [fp, #-12]
    11b0:	e51b200c 	ldr	r2, [fp, #-12]
    11b4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    11b8:	e1520003 	cmp	r2, r3
    11bc:	baffffe7 	blt	1160 <twofiles+0x17c>
    11c0:	e51b2010 	ldr	r2, [fp, #-16]
    11c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    11c8:	e0823003 	add	r3, r2, r3
    11cc:	e50b3010 	str	r3, [fp, #-16]
    11d0:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    11d4:	e59f1094 	ldr	r1, [pc, #148]	; 1270 <twofiles+0x28c>
    11d8:	e3a02a02 	mov	r2, #8192	; 0x2000
    11dc:	eb000cf4 	bl	45b4 <read>
    11e0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    11e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    11e8:	e3530000 	cmp	r3, #0
    11ec:	caffffd8 	bgt	1154 <twofiles+0x170>
    11f0:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
    11f4:	eb000d00 	bl	45fc <close>
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e59f2078 	ldr	r2, [pc, #120]	; 127c <twofiles+0x298>
    1200:	e1530002 	cmp	r3, r2
    1204:	0a000004 	beq	121c <twofiles+0x238>
    1208:	e3a00001 	mov	r0, #1
    120c:	e59f106c 	ldr	r1, [pc, #108]	; 1280 <twofiles+0x29c>
    1210:	e51b2010 	ldr	r2, [fp, #-16]
    1214:	eb000dd8 	bl	497c <printf>
    1218:	eb000cca 	bl	4548 <exit>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e2833001 	add	r3, r3, #1
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e3530001 	cmp	r3, #1
    1230:	daffffba 	ble	1120 <twofiles+0x13c>
    1234:	e59f0020 	ldr	r0, [pc, #32]	; 125c <twofiles+0x278>
    1238:	eb000d1c 	bl	46b0 <unlink>
    123c:	e59f001c 	ldr	r0, [pc, #28]	; 1260 <twofiles+0x27c>
    1240:	eb000d1a 	bl	46b0 <unlink>
    1244:	e3a00001 	mov	r0, #1
    1248:	e59f1034 	ldr	r1, [pc, #52]	; 1284 <twofiles+0x2a0>
    124c:	eb000dca 	bl	497c <printf>
    1250:	e24bd004 	sub	sp, fp, #4
    1254:	e8bd8800 	pop	{fp, pc}
    1258:	000055d0 	.word	0x000055d0
    125c:	000055e0 	.word	0x000055e0
    1260:	000055e4 	.word	0x000055e4
    1264:	00005470 	.word	0x00005470
    1268:	00000202 	.word	0x00000202
    126c:	000055e8 	.word	0x000055e8
    1270:	00009080 	.word	0x00009080
    1274:	000055f8 	.word	0x000055f8
    1278:	0000560c 	.word	0x0000560c
    127c:	00001770 	.word	0x00001770
    1280:	00005618 	.word	0x00005618
    1284:	0000562c 	.word	0x0000562c

00001288 <createdelete>:
    1288:	e92d4800 	push	{fp, lr}
    128c:	e28db004 	add	fp, sp, #4
    1290:	e24dd030 	sub	sp, sp, #48	; 0x30
    1294:	e3a00001 	mov	r0, #1
    1298:	e59f1340 	ldr	r1, [pc, #832]	; 15e0 <createdelete+0x358>
    129c:	eb000db6 	bl	497c <printf>
    12a0:	eb000c9f 	bl	4524 <fork>
    12a4:	e50b000c 	str	r0, [fp, #-12]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e3530000 	cmp	r3, #0
    12b0:	aa000003 	bge	12c4 <createdelete+0x3c>
    12b4:	e3a00001 	mov	r0, #1
    12b8:	e59f1324 	ldr	r1, [pc, #804]	; 15e4 <createdelete+0x35c>
    12bc:	eb000dae 	bl	497c <printf>
    12c0:	eb000ca0 	bl	4548 <exit>
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e3530000 	cmp	r3, #0
    12cc:	0a000001 	beq	12d8 <createdelete+0x50>
    12d0:	e3a03070 	mov	r3, #112	; 0x70
    12d4:	ea000000 	b	12dc <createdelete+0x54>
    12d8:	e3a03063 	mov	r3, #99	; 0x63
    12dc:	e54b3030 	strb	r3, [fp, #-48]	; 0xffffffd0
    12e0:	e3a03000 	mov	r3, #0
    12e4:	e54b302e 	strb	r3, [fp, #-46]	; 0xffffffd2
    12e8:	e3a03000 	mov	r3, #0
    12ec:	e50b3008 	str	r3, [fp, #-8]
    12f0:	ea00002e 	b	13b0 <createdelete+0x128>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e6ef3073 	uxtb	r3, r3
    12fc:	e2833030 	add	r3, r3, #48	; 0x30
    1300:	e6ef3073 	uxtb	r3, r3
    1304:	e54b302f 	strb	r3, [fp, #-47]	; 0xffffffd1
    1308:	e24b3030 	sub	r3, fp, #48	; 0x30
    130c:	e1a00003 	mov	r0, r3
    1310:	e59f12d0 	ldr	r1, [pc, #720]	; 15e8 <createdelete+0x360>
    1314:	eb000cd3 	bl	4668 <open>
    1318:	e50b0010 	str	r0, [fp, #-16]
    131c:	e51b3010 	ldr	r3, [fp, #-16]
    1320:	e3530000 	cmp	r3, #0
    1324:	aa000003 	bge	1338 <createdelete+0xb0>
    1328:	e3a00001 	mov	r0, #1
    132c:	e59f12b8 	ldr	r1, [pc, #696]	; 15ec <createdelete+0x364>
    1330:	eb000d91 	bl	497c <printf>
    1334:	eb000c83 	bl	4548 <exit>
    1338:	e51b0010 	ldr	r0, [fp, #-16]
    133c:	eb000cae 	bl	45fc <close>
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e3530000 	cmp	r3, #0
    1348:	da000015 	ble	13a4 <createdelete+0x11c>
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e2033001 	and	r3, r3, #1
    1354:	e3530000 	cmp	r3, #0
    1358:	1a000011 	bne	13a4 <createdelete+0x11c>
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e1a02fa3 	lsr	r2, r3, #31
    1364:	e0823003 	add	r3, r2, r3
    1368:	e1a030c3 	asr	r3, r3, #1
    136c:	e6ef3073 	uxtb	r3, r3
    1370:	e2833030 	add	r3, r3, #48	; 0x30
    1374:	e6ef3073 	uxtb	r3, r3
    1378:	e54b302f 	strb	r3, [fp, #-47]	; 0xffffffd1
    137c:	e24b3030 	sub	r3, fp, #48	; 0x30
    1380:	e1a00003 	mov	r0, r3
    1384:	eb000cc9 	bl	46b0 <unlink>
    1388:	e1a03000 	mov	r3, r0
    138c:	e3530000 	cmp	r3, #0
    1390:	aa000003 	bge	13a4 <createdelete+0x11c>
    1394:	e3a00001 	mov	r0, #1
    1398:	e59f1250 	ldr	r1, [pc, #592]	; 15f0 <createdelete+0x368>
    139c:	eb000d76 	bl	497c <printf>
    13a0:	eb000c68 	bl	4548 <exit>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e2833001 	add	r3, r3, #1
    13ac:	e50b3008 	str	r3, [fp, #-8]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e3530013 	cmp	r3, #19
    13b8:	daffffcd 	ble	12f4 <createdelete+0x6c>
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e3530000 	cmp	r3, #0
    13c4:	1a000000 	bne	13cc <createdelete+0x144>
    13c8:	eb000c5e 	bl	4548 <exit>
    13cc:	eb000c66 	bl	456c <wait>
    13d0:	e3a03000 	mov	r3, #0
    13d4:	e50b3008 	str	r3, [fp, #-8]
    13d8:	ea000060 	b	1560 <createdelete+0x2d8>
    13dc:	e3a03070 	mov	r3, #112	; 0x70
    13e0:	e54b3030 	strb	r3, [fp, #-48]	; 0xffffffd0
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e6ef3073 	uxtb	r3, r3
    13ec:	e2833030 	add	r3, r3, #48	; 0x30
    13f0:	e6ef3073 	uxtb	r3, r3
    13f4:	e54b302f 	strb	r3, [fp, #-47]	; 0xffffffd1
    13f8:	e24b3030 	sub	r3, fp, #48	; 0x30
    13fc:	e1a00003 	mov	r0, r3
    1400:	e3a01000 	mov	r1, #0
    1404:	eb000c97 	bl	4668 <open>
    1408:	e50b0010 	str	r0, [fp, #-16]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e3530000 	cmp	r3, #0
    1414:	0a000002 	beq	1424 <createdelete+0x19c>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e3530009 	cmp	r3, #9
    1420:	da000008 	ble	1448 <createdelete+0x1c0>
    1424:	e51b3010 	ldr	r3, [fp, #-16]
    1428:	e3530000 	cmp	r3, #0
    142c:	aa000005 	bge	1448 <createdelete+0x1c0>
    1430:	e24b3030 	sub	r3, fp, #48	; 0x30
    1434:	e3a00001 	mov	r0, #1
    1438:	e59f11b4 	ldr	r1, [pc, #436]	; 15f4 <createdelete+0x36c>
    143c:	e1a02003 	mov	r2, r3
    1440:	eb000d4d 	bl	497c <printf>
    1444:	eb000c3f 	bl	4548 <exit>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e3530000 	cmp	r3, #0
    1450:	da00000b 	ble	1484 <createdelete+0x1fc>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e3530009 	cmp	r3, #9
    145c:	ca000008 	bgt	1484 <createdelete+0x1fc>
    1460:	e51b3010 	ldr	r3, [fp, #-16]
    1464:	e3530000 	cmp	r3, #0
    1468:	ba000005 	blt	1484 <createdelete+0x1fc>
    146c:	e24b3030 	sub	r3, fp, #48	; 0x30
    1470:	e3a00001 	mov	r0, #1
    1474:	e59f117c 	ldr	r1, [pc, #380]	; 15f8 <createdelete+0x370>
    1478:	e1a02003 	mov	r2, r3
    147c:	eb000d3e 	bl	497c <printf>
    1480:	eb000c30 	bl	4548 <exit>
    1484:	e51b3010 	ldr	r3, [fp, #-16]
    1488:	e3530000 	cmp	r3, #0
    148c:	ba000001 	blt	1498 <createdelete+0x210>
    1490:	e51b0010 	ldr	r0, [fp, #-16]
    1494:	eb000c58 	bl	45fc <close>
    1498:	e3a03063 	mov	r3, #99	; 0x63
    149c:	e54b3030 	strb	r3, [fp, #-48]	; 0xffffffd0
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e6ef3073 	uxtb	r3, r3
    14a8:	e2833030 	add	r3, r3, #48	; 0x30
    14ac:	e6ef3073 	uxtb	r3, r3
    14b0:	e54b302f 	strb	r3, [fp, #-47]	; 0xffffffd1
    14b4:	e24b3030 	sub	r3, fp, #48	; 0x30
    14b8:	e1a00003 	mov	r0, r3
    14bc:	e3a01000 	mov	r1, #0
    14c0:	eb000c68 	bl	4668 <open>
    14c4:	e50b0010 	str	r0, [fp, #-16]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e3530000 	cmp	r3, #0
    14d0:	0a000002 	beq	14e0 <createdelete+0x258>
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e3530009 	cmp	r3, #9
    14dc:	da000008 	ble	1504 <createdelete+0x27c>
    14e0:	e51b3010 	ldr	r3, [fp, #-16]
    14e4:	e3530000 	cmp	r3, #0
    14e8:	aa000005 	bge	1504 <createdelete+0x27c>
    14ec:	e24b3030 	sub	r3, fp, #48	; 0x30
    14f0:	e3a00001 	mov	r0, #1
    14f4:	e59f10f8 	ldr	r1, [pc, #248]	; 15f4 <createdelete+0x36c>
    14f8:	e1a02003 	mov	r2, r3
    14fc:	eb000d1e 	bl	497c <printf>
    1500:	eb000c10 	bl	4548 <exit>
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e3530000 	cmp	r3, #0
    150c:	da00000b 	ble	1540 <createdelete+0x2b8>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e3530009 	cmp	r3, #9
    1518:	ca000008 	bgt	1540 <createdelete+0x2b8>
    151c:	e51b3010 	ldr	r3, [fp, #-16]
    1520:	e3530000 	cmp	r3, #0
    1524:	ba000005 	blt	1540 <createdelete+0x2b8>
    1528:	e24b3030 	sub	r3, fp, #48	; 0x30
    152c:	e3a00001 	mov	r0, #1
    1530:	e59f10c0 	ldr	r1, [pc, #192]	; 15f8 <createdelete+0x370>
    1534:	e1a02003 	mov	r2, r3
    1538:	eb000d0f 	bl	497c <printf>
    153c:	eb000c01 	bl	4548 <exit>
    1540:	e51b3010 	ldr	r3, [fp, #-16]
    1544:	e3530000 	cmp	r3, #0
    1548:	ba000001 	blt	1554 <createdelete+0x2cc>
    154c:	e51b0010 	ldr	r0, [fp, #-16]
    1550:	eb000c29 	bl	45fc <close>
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e2833001 	add	r3, r3, #1
    155c:	e50b3008 	str	r3, [fp, #-8]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e3530013 	cmp	r3, #19
    1568:	daffff9b 	ble	13dc <createdelete+0x154>
    156c:	e3a03000 	mov	r3, #0
    1570:	e50b3008 	str	r3, [fp, #-8]
    1574:	ea000011 	b	15c0 <createdelete+0x338>
    1578:	e3a03070 	mov	r3, #112	; 0x70
    157c:	e54b3030 	strb	r3, [fp, #-48]	; 0xffffffd0
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e6ef3073 	uxtb	r3, r3
    1588:	e2833030 	add	r3, r3, #48	; 0x30
    158c:	e6ef3073 	uxtb	r3, r3
    1590:	e54b302f 	strb	r3, [fp, #-47]	; 0xffffffd1
    1594:	e24b3030 	sub	r3, fp, #48	; 0x30
    1598:	e1a00003 	mov	r0, r3
    159c:	eb000c43 	bl	46b0 <unlink>
    15a0:	e3a03063 	mov	r3, #99	; 0x63
    15a4:	e54b3030 	strb	r3, [fp, #-48]	; 0xffffffd0
    15a8:	e24b3030 	sub	r3, fp, #48	; 0x30
    15ac:	e1a00003 	mov	r0, r3
    15b0:	eb000c3e 	bl	46b0 <unlink>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e2833001 	add	r3, r3, #1
    15bc:	e50b3008 	str	r3, [fp, #-8]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e3530013 	cmp	r3, #19
    15c8:	daffffea 	ble	1578 <createdelete+0x2f0>
    15cc:	e3a00001 	mov	r0, #1
    15d0:	e59f1024 	ldr	r1, [pc, #36]	; 15fc <createdelete+0x374>
    15d4:	eb000ce8 	bl	497c <printf>
    15d8:	e24bd004 	sub	sp, fp, #4
    15dc:	e8bd8800 	pop	{fp, pc}
    15e0:	0000563c 	.word	0x0000563c
    15e4:	00005470 	.word	0x00005470
    15e8:	00000202 	.word	0x00000202
    15ec:	000055e8 	.word	0x000055e8
    15f0:	00005650 	.word	0x00005650
    15f4:	00005660 	.word	0x00005660
    15f8:	00005684 	.word	0x00005684
    15fc:	000056a4 	.word	0x000056a4

00001600 <unlinkread>:
    1600:	e92d4800 	push	{fp, lr}
    1604:	e28db004 	add	fp, sp, #4
    1608:	e24dd008 	sub	sp, sp, #8
    160c:	e3a00001 	mov	r0, #1
    1610:	e59f1158 	ldr	r1, [pc, #344]	; 1770 <unlinkread+0x170>
    1614:	eb000cd8 	bl	497c <printf>
    1618:	e59f0154 	ldr	r0, [pc, #340]	; 1774 <unlinkread+0x174>
    161c:	e59f1154 	ldr	r1, [pc, #340]	; 1778 <unlinkread+0x178>
    1620:	eb000c10 	bl	4668 <open>
    1624:	e50b0008 	str	r0, [fp, #-8]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e3530000 	cmp	r3, #0
    1630:	aa000003 	bge	1644 <unlinkread+0x44>
    1634:	e3a00001 	mov	r0, #1
    1638:	e59f113c 	ldr	r1, [pc, #316]	; 177c <unlinkread+0x17c>
    163c:	eb000cce 	bl	497c <printf>
    1640:	eb000bc0 	bl	4548 <exit>
    1644:	e51b0008 	ldr	r0, [fp, #-8]
    1648:	e59f1130 	ldr	r1, [pc, #304]	; 1780 <unlinkread+0x180>
    164c:	e3a02005 	mov	r2, #5
    1650:	eb000be0 	bl	45d8 <write>
    1654:	e51b0008 	ldr	r0, [fp, #-8]
    1658:	eb000be7 	bl	45fc <close>
    165c:	e59f0110 	ldr	r0, [pc, #272]	; 1774 <unlinkread+0x174>
    1660:	e3a01002 	mov	r1, #2
    1664:	eb000bff 	bl	4668 <open>
    1668:	e50b0008 	str	r0, [fp, #-8]
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e3530000 	cmp	r3, #0
    1674:	aa000003 	bge	1688 <unlinkread+0x88>
    1678:	e3a00001 	mov	r0, #1
    167c:	e59f1100 	ldr	r1, [pc, #256]	; 1784 <unlinkread+0x184>
    1680:	eb000cbd 	bl	497c <printf>
    1684:	eb000baf 	bl	4548 <exit>
    1688:	e59f00e4 	ldr	r0, [pc, #228]	; 1774 <unlinkread+0x174>
    168c:	eb000c07 	bl	46b0 <unlink>
    1690:	e1a03000 	mov	r3, r0
    1694:	e3530000 	cmp	r3, #0
    1698:	0a000003 	beq	16ac <unlinkread+0xac>
    169c:	e3a00001 	mov	r0, #1
    16a0:	e59f10e0 	ldr	r1, [pc, #224]	; 1788 <unlinkread+0x188>
    16a4:	eb000cb4 	bl	497c <printf>
    16a8:	eb000ba6 	bl	4548 <exit>
    16ac:	e59f00c0 	ldr	r0, [pc, #192]	; 1774 <unlinkread+0x174>
    16b0:	e59f10c0 	ldr	r1, [pc, #192]	; 1778 <unlinkread+0x178>
    16b4:	eb000beb 	bl	4668 <open>
    16b8:	e50b000c 	str	r0, [fp, #-12]
    16bc:	e51b000c 	ldr	r0, [fp, #-12]
    16c0:	e59f10c4 	ldr	r1, [pc, #196]	; 178c <unlinkread+0x18c>
    16c4:	e3a02003 	mov	r2, #3
    16c8:	eb000bc2 	bl	45d8 <write>
    16cc:	e51b000c 	ldr	r0, [fp, #-12]
    16d0:	eb000bc9 	bl	45fc <close>
    16d4:	e51b0008 	ldr	r0, [fp, #-8]
    16d8:	e59f10b0 	ldr	r1, [pc, #176]	; 1790 <unlinkread+0x190>
    16dc:	e3a02a02 	mov	r2, #8192	; 0x2000
    16e0:	eb000bb3 	bl	45b4 <read>
    16e4:	e1a03000 	mov	r3, r0
    16e8:	e3530005 	cmp	r3, #5
    16ec:	0a000003 	beq	1700 <unlinkread+0x100>
    16f0:	e3a00001 	mov	r0, #1
    16f4:	e59f1098 	ldr	r1, [pc, #152]	; 1794 <unlinkread+0x194>
    16f8:	eb000c9f 	bl	497c <printf>
    16fc:	eb000b91 	bl	4548 <exit>
    1700:	e59f3088 	ldr	r3, [pc, #136]	; 1790 <unlinkread+0x190>
    1704:	e5d33000 	ldrb	r3, [r3]
    1708:	e3530068 	cmp	r3, #104	; 0x68
    170c:	0a000003 	beq	1720 <unlinkread+0x120>
    1710:	e3a00001 	mov	r0, #1
    1714:	e59f107c 	ldr	r1, [pc, #124]	; 1798 <unlinkread+0x198>
    1718:	eb000c97 	bl	497c <printf>
    171c:	eb000b89 	bl	4548 <exit>
    1720:	e51b0008 	ldr	r0, [fp, #-8]
    1724:	e59f1064 	ldr	r1, [pc, #100]	; 1790 <unlinkread+0x190>
    1728:	e3a0200a 	mov	r2, #10
    172c:	eb000ba9 	bl	45d8 <write>
    1730:	e1a03000 	mov	r3, r0
    1734:	e353000a 	cmp	r3, #10
    1738:	0a000003 	beq	174c <unlinkread+0x14c>
    173c:	e3a00001 	mov	r0, #1
    1740:	e59f1054 	ldr	r1, [pc, #84]	; 179c <unlinkread+0x19c>
    1744:	eb000c8c 	bl	497c <printf>
    1748:	eb000b7e 	bl	4548 <exit>
    174c:	e51b0008 	ldr	r0, [fp, #-8]
    1750:	eb000ba9 	bl	45fc <close>
    1754:	e59f0018 	ldr	r0, [pc, #24]	; 1774 <unlinkread+0x174>
    1758:	eb000bd4 	bl	46b0 <unlink>
    175c:	e3a00001 	mov	r0, #1
    1760:	e59f1038 	ldr	r1, [pc, #56]	; 17a0 <unlinkread+0x1a0>
    1764:	eb000c84 	bl	497c <printf>
    1768:	e24bd004 	sub	sp, fp, #4
    176c:	e8bd8800 	pop	{fp, pc}
    1770:	000056b8 	.word	0x000056b8
    1774:	000056cc 	.word	0x000056cc
    1778:	00000202 	.word	0x00000202
    177c:	000056d8 	.word	0x000056d8
    1780:	000056f4 	.word	0x000056f4
    1784:	000056fc 	.word	0x000056fc
    1788:	00005714 	.word	0x00005714
    178c:	00005730 	.word	0x00005730
    1790:	00009080 	.word	0x00009080
    1794:	00005734 	.word	0x00005734
    1798:	0000574c 	.word	0x0000574c
    179c:	00005764 	.word	0x00005764
    17a0:	00005780 	.word	0x00005780

000017a4 <linktest>:
    17a4:	e92d4800 	push	{fp, lr}
    17a8:	e28db004 	add	fp, sp, #4
    17ac:	e24dd008 	sub	sp, sp, #8
    17b0:	e3a00001 	mov	r0, #1
    17b4:	e59f11bc 	ldr	r1, [pc, #444]	; 1978 <linktest+0x1d4>
    17b8:	eb000c6f 	bl	497c <printf>
    17bc:	e59f01b8 	ldr	r0, [pc, #440]	; 197c <linktest+0x1d8>
    17c0:	eb000bba 	bl	46b0 <unlink>
    17c4:	e59f01b4 	ldr	r0, [pc, #436]	; 1980 <linktest+0x1dc>
    17c8:	eb000bb8 	bl	46b0 <unlink>
    17cc:	e59f01a8 	ldr	r0, [pc, #424]	; 197c <linktest+0x1d8>
    17d0:	e59f11ac 	ldr	r1, [pc, #428]	; 1984 <linktest+0x1e0>
    17d4:	eb000ba3 	bl	4668 <open>
    17d8:	e50b0008 	str	r0, [fp, #-8]
    17dc:	e51b3008 	ldr	r3, [fp, #-8]
    17e0:	e3530000 	cmp	r3, #0
    17e4:	aa000003 	bge	17f8 <linktest+0x54>
    17e8:	e3a00001 	mov	r0, #1
    17ec:	e59f1194 	ldr	r1, [pc, #404]	; 1988 <linktest+0x1e4>
    17f0:	eb000c61 	bl	497c <printf>
    17f4:	eb000b53 	bl	4548 <exit>
    17f8:	e51b0008 	ldr	r0, [fp, #-8]
    17fc:	e59f1188 	ldr	r1, [pc, #392]	; 198c <linktest+0x1e8>
    1800:	e3a02005 	mov	r2, #5
    1804:	eb000b73 	bl	45d8 <write>
    1808:	e1a03000 	mov	r3, r0
    180c:	e3530005 	cmp	r3, #5
    1810:	0a000003 	beq	1824 <linktest+0x80>
    1814:	e3a00001 	mov	r0, #1
    1818:	e59f1170 	ldr	r1, [pc, #368]	; 1990 <linktest+0x1ec>
    181c:	eb000c56 	bl	497c <printf>
    1820:	eb000b48 	bl	4548 <exit>
    1824:	e51b0008 	ldr	r0, [fp, #-8]
    1828:	eb000b73 	bl	45fc <close>
    182c:	e59f0148 	ldr	r0, [pc, #328]	; 197c <linktest+0x1d8>
    1830:	e59f1148 	ldr	r1, [pc, #328]	; 1980 <linktest+0x1dc>
    1834:	eb000baf 	bl	46f8 <link>
    1838:	e1a03000 	mov	r3, r0
    183c:	e3530000 	cmp	r3, #0
    1840:	aa000003 	bge	1854 <linktest+0xb0>
    1844:	e3a00001 	mov	r0, #1
    1848:	e59f1144 	ldr	r1, [pc, #324]	; 1994 <linktest+0x1f0>
    184c:	eb000c4a 	bl	497c <printf>
    1850:	eb000b3c 	bl	4548 <exit>
    1854:	e59f0120 	ldr	r0, [pc, #288]	; 197c <linktest+0x1d8>
    1858:	eb000b94 	bl	46b0 <unlink>
    185c:	e59f0118 	ldr	r0, [pc, #280]	; 197c <linktest+0x1d8>
    1860:	e3a01000 	mov	r1, #0
    1864:	eb000b7f 	bl	4668 <open>
    1868:	e1a03000 	mov	r3, r0
    186c:	e3530000 	cmp	r3, #0
    1870:	ba000003 	blt	1884 <linktest+0xe0>
    1874:	e3a00001 	mov	r0, #1
    1878:	e59f1118 	ldr	r1, [pc, #280]	; 1998 <linktest+0x1f4>
    187c:	eb000c3e 	bl	497c <printf>
    1880:	eb000b30 	bl	4548 <exit>
    1884:	e59f00f4 	ldr	r0, [pc, #244]	; 1980 <linktest+0x1dc>
    1888:	e3a01000 	mov	r1, #0
    188c:	eb000b75 	bl	4668 <open>
    1890:	e50b0008 	str	r0, [fp, #-8]
    1894:	e51b3008 	ldr	r3, [fp, #-8]
    1898:	e3530000 	cmp	r3, #0
    189c:	aa000003 	bge	18b0 <linktest+0x10c>
    18a0:	e3a00001 	mov	r0, #1
    18a4:	e59f10f0 	ldr	r1, [pc, #240]	; 199c <linktest+0x1f8>
    18a8:	eb000c33 	bl	497c <printf>
    18ac:	eb000b25 	bl	4548 <exit>
    18b0:	e51b0008 	ldr	r0, [fp, #-8]
    18b4:	e59f10e4 	ldr	r1, [pc, #228]	; 19a0 <linktest+0x1fc>
    18b8:	e3a02a02 	mov	r2, #8192	; 0x2000
    18bc:	eb000b3c 	bl	45b4 <read>
    18c0:	e1a03000 	mov	r3, r0
    18c4:	e3530005 	cmp	r3, #5
    18c8:	0a000003 	beq	18dc <linktest+0x138>
    18cc:	e3a00001 	mov	r0, #1
    18d0:	e59f10cc 	ldr	r1, [pc, #204]	; 19a4 <linktest+0x200>
    18d4:	eb000c28 	bl	497c <printf>
    18d8:	eb000b1a 	bl	4548 <exit>
    18dc:	e51b0008 	ldr	r0, [fp, #-8]
    18e0:	eb000b45 	bl	45fc <close>
    18e4:	e59f0094 	ldr	r0, [pc, #148]	; 1980 <linktest+0x1dc>
    18e8:	e59f1090 	ldr	r1, [pc, #144]	; 1980 <linktest+0x1dc>
    18ec:	eb000b81 	bl	46f8 <link>
    18f0:	e1a03000 	mov	r3, r0
    18f4:	e3530000 	cmp	r3, #0
    18f8:	ba000003 	blt	190c <linktest+0x168>
    18fc:	e3a00001 	mov	r0, #1
    1900:	e59f10a0 	ldr	r1, [pc, #160]	; 19a8 <linktest+0x204>
    1904:	eb000c1c 	bl	497c <printf>
    1908:	eb000b0e 	bl	4548 <exit>
    190c:	e59f006c 	ldr	r0, [pc, #108]	; 1980 <linktest+0x1dc>
    1910:	eb000b66 	bl	46b0 <unlink>
    1914:	e59f0064 	ldr	r0, [pc, #100]	; 1980 <linktest+0x1dc>
    1918:	e59f105c 	ldr	r1, [pc, #92]	; 197c <linktest+0x1d8>
    191c:	eb000b75 	bl	46f8 <link>
    1920:	e1a03000 	mov	r3, r0
    1924:	e3530000 	cmp	r3, #0
    1928:	ba000003 	blt	193c <linktest+0x198>
    192c:	e3a00001 	mov	r0, #1
    1930:	e59f1074 	ldr	r1, [pc, #116]	; 19ac <linktest+0x208>
    1934:	eb000c10 	bl	497c <printf>
    1938:	eb000b02 	bl	4548 <exit>
    193c:	e59f006c 	ldr	r0, [pc, #108]	; 19b0 <linktest+0x20c>
    1940:	e59f1034 	ldr	r1, [pc, #52]	; 197c <linktest+0x1d8>
    1944:	eb000b6b 	bl	46f8 <link>
    1948:	e1a03000 	mov	r3, r0
    194c:	e3530000 	cmp	r3, #0
    1950:	ba000003 	blt	1964 <linktest+0x1c0>
    1954:	e3a00001 	mov	r0, #1
    1958:	e59f1054 	ldr	r1, [pc, #84]	; 19b4 <linktest+0x210>
    195c:	eb000c06 	bl	497c <printf>
    1960:	eb000af8 	bl	4548 <exit>
    1964:	e3a00001 	mov	r0, #1
    1968:	e59f1048 	ldr	r1, [pc, #72]	; 19b8 <linktest+0x214>
    196c:	eb000c02 	bl	497c <printf>
    1970:	e24bd004 	sub	sp, fp, #4
    1974:	e8bd8800 	pop	{fp, pc}
    1978:	00005790 	.word	0x00005790
    197c:	0000579c 	.word	0x0000579c
    1980:	000057a0 	.word	0x000057a0
    1984:	00000202 	.word	0x00000202
    1988:	000057a4 	.word	0x000057a4
    198c:	000056f4 	.word	0x000056f4
    1990:	000057b8 	.word	0x000057b8
    1994:	000057cc 	.word	0x000057cc
    1998:	000057e4 	.word	0x000057e4
    199c:	0000580c 	.word	0x0000580c
    19a0:	00009080 	.word	0x00009080
    19a4:	00005820 	.word	0x00005820
    19a8:	00005834 	.word	0x00005834
    19ac:	00005854 	.word	0x00005854
    19b0:	00005878 	.word	0x00005878
    19b4:	0000587c 	.word	0x0000587c
    19b8:	00005898 	.word	0x00005898

000019bc <concreate>:
    19bc:	e92d4800 	push	{fp, lr}
    19c0:	e28db004 	add	fp, sp, #4
    19c4:	e24dd050 	sub	sp, sp, #80	; 0x50
    19c8:	e3a00001 	mov	r0, #1
    19cc:	e59f1414 	ldr	r1, [pc, #1044]	; 1de8 <concreate+0x42c>
    19d0:	eb000be9 	bl	497c <printf>
    19d4:	e3a03043 	mov	r3, #67	; 0x43
    19d8:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
    19dc:	e3a03000 	mov	r3, #0
    19e0:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    19e4:	e3a03000 	mov	r3, #0
    19e8:	e50b3008 	str	r3, [fp, #-8]
    19ec:	ea000048 	b	1b14 <concreate+0x158>
    19f0:	e51b3008 	ldr	r3, [fp, #-8]
    19f4:	e6ef3073 	uxtb	r3, r3
    19f8:	e2833030 	add	r3, r3, #48	; 0x30
    19fc:	e6ef3073 	uxtb	r3, r3
    1a00:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
    1a04:	e24b3018 	sub	r3, fp, #24
    1a08:	e1a00003 	mov	r0, r3
    1a0c:	eb000b27 	bl	46b0 <unlink>
    1a10:	eb000ac3 	bl	4524 <fork>
    1a14:	e50b0010 	str	r0, [fp, #-16]
    1a18:	e51b3010 	ldr	r3, [fp, #-16]
    1a1c:	e3530000 	cmp	r3, #0
    1a20:	0a00000f 	beq	1a64 <concreate+0xa8>
    1a24:	e51b1008 	ldr	r1, [fp, #-8]
    1a28:	e59f33bc 	ldr	r3, [pc, #956]	; 1dec <concreate+0x430>
    1a2c:	e0c23193 	smull	r3, r2, r3, r1
    1a30:	e1a03fc1 	asr	r3, r1, #31
    1a34:	e0632002 	rsb	r2, r3, r2
    1a38:	e1a03002 	mov	r3, r2
    1a3c:	e1a03083 	lsl	r3, r3, #1
    1a40:	e0833002 	add	r3, r3, r2
    1a44:	e0632001 	rsb	r2, r3, r1
    1a48:	e3520001 	cmp	r2, #1
    1a4c:	1a000004 	bne	1a64 <concreate+0xa8>
    1a50:	e24b3018 	sub	r3, fp, #24
    1a54:	e59f0394 	ldr	r0, [pc, #916]	; 1df0 <concreate+0x434>
    1a58:	e1a01003 	mov	r1, r3
    1a5c:	eb000b25 	bl	46f8 <link>
    1a60:	ea000023 	b	1af4 <concreate+0x138>
    1a64:	e51b3010 	ldr	r3, [fp, #-16]
    1a68:	e3530000 	cmp	r3, #0
    1a6c:	1a000010 	bne	1ab4 <concreate+0xf8>
    1a70:	e51b1008 	ldr	r1, [fp, #-8]
    1a74:	e59f3378 	ldr	r3, [pc, #888]	; 1df4 <concreate+0x438>
    1a78:	e0c32193 	smull	r2, r3, r3, r1
    1a7c:	e1a020c3 	asr	r2, r3, #1
    1a80:	e1a03fc1 	asr	r3, r1, #31
    1a84:	e0632002 	rsb	r2, r3, r2
    1a88:	e1a03002 	mov	r3, r2
    1a8c:	e1a03103 	lsl	r3, r3, #2
    1a90:	e0833002 	add	r3, r3, r2
    1a94:	e0632001 	rsb	r2, r3, r1
    1a98:	e3520001 	cmp	r2, #1
    1a9c:	1a000004 	bne	1ab4 <concreate+0xf8>
    1aa0:	e24b3018 	sub	r3, fp, #24
    1aa4:	e59f0344 	ldr	r0, [pc, #836]	; 1df0 <concreate+0x434>
    1aa8:	e1a01003 	mov	r1, r3
    1aac:	eb000b11 	bl	46f8 <link>
    1ab0:	ea00000f 	b	1af4 <concreate+0x138>
    1ab4:	e24b3018 	sub	r3, fp, #24
    1ab8:	e1a00003 	mov	r0, r3
    1abc:	e59f1334 	ldr	r1, [pc, #820]	; 1df8 <concreate+0x43c>
    1ac0:	eb000ae8 	bl	4668 <open>
    1ac4:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    1ac8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    1acc:	e3530000 	cmp	r3, #0
    1ad0:	aa000005 	bge	1aec <concreate+0x130>
    1ad4:	e24b3018 	sub	r3, fp, #24
    1ad8:	e3a00001 	mov	r0, #1
    1adc:	e59f1318 	ldr	r1, [pc, #792]	; 1dfc <concreate+0x440>
    1ae0:	e1a02003 	mov	r2, r3
    1ae4:	eb000ba4 	bl	497c <printf>
    1ae8:	eb000a96 	bl	4548 <exit>
    1aec:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    1af0:	eb000ac1 	bl	45fc <close>
    1af4:	e51b3010 	ldr	r3, [fp, #-16]
    1af8:	e3530000 	cmp	r3, #0
    1afc:	1a000000 	bne	1b04 <concreate+0x148>
    1b00:	eb000a90 	bl	4548 <exit>
    1b04:	eb000a98 	bl	456c <wait>
    1b08:	e51b3008 	ldr	r3, [fp, #-8]
    1b0c:	e2833001 	add	r3, r3, #1
    1b10:	e50b3008 	str	r3, [fp, #-8]
    1b14:	e51b3008 	ldr	r3, [fp, #-8]
    1b18:	e3530027 	cmp	r3, #39	; 0x27
    1b1c:	daffffb3 	ble	19f0 <concreate+0x34>
    1b20:	e24b3040 	sub	r3, fp, #64	; 0x40
    1b24:	e1a00003 	mov	r0, r3
    1b28:	e3a01000 	mov	r1, #0
    1b2c:	e3a02028 	mov	r2, #40	; 0x28
    1b30:	eb000994 	bl	4188 <memset>
    1b34:	e59f02c4 	ldr	r0, [pc, #708]	; 1e00 <concreate+0x444>
    1b38:	e3a01000 	mov	r1, #0
    1b3c:	eb000ac9 	bl	4668 <open>
    1b40:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    1b44:	e3a03000 	mov	r3, #0
    1b48:	e50b300c 	str	r3, [fp, #-12]
    1b4c:	ea00002e 	b	1c0c <concreate+0x250>
    1b50:	e15b35b0 	ldrh	r3, [fp, #-80]	; 0xffffffb0
    1b54:	e3530000 	cmp	r3, #0
    1b58:	1a000000 	bne	1b60 <concreate+0x1a4>
    1b5c:	ea00002a 	b	1c0c <concreate+0x250>
    1b60:	e55b304e 	ldrb	r3, [fp, #-78]	; 0xffffffb2
    1b64:	e3530043 	cmp	r3, #67	; 0x43
    1b68:	1a000027 	bne	1c0c <concreate+0x250>
    1b6c:	e55b304c 	ldrb	r3, [fp, #-76]	; 0xffffffb4
    1b70:	e3530000 	cmp	r3, #0
    1b74:	1a000024 	bne	1c0c <concreate+0x250>
    1b78:	e55b304d 	ldrb	r3, [fp, #-77]	; 0xffffffb3
    1b7c:	e2433030 	sub	r3, r3, #48	; 0x30
    1b80:	e50b3008 	str	r3, [fp, #-8]
    1b84:	e51b3008 	ldr	r3, [fp, #-8]
    1b88:	e3530000 	cmp	r3, #0
    1b8c:	ba000002 	blt	1b9c <concreate+0x1e0>
    1b90:	e51b3008 	ldr	r3, [fp, #-8]
    1b94:	e3530027 	cmp	r3, #39	; 0x27
    1b98:	9a000006 	bls	1bb8 <concreate+0x1fc>
    1b9c:	e24b3050 	sub	r3, fp, #80	; 0x50
    1ba0:	e2833002 	add	r3, r3, #2
    1ba4:	e3a00001 	mov	r0, #1
    1ba8:	e59f1254 	ldr	r1, [pc, #596]	; 1e04 <concreate+0x448>
    1bac:	e1a02003 	mov	r2, r3
    1bb0:	eb000b71 	bl	497c <printf>
    1bb4:	eb000a63 	bl	4548 <exit>
    1bb8:	e24b2040 	sub	r2, fp, #64	; 0x40
    1bbc:	e51b3008 	ldr	r3, [fp, #-8]
    1bc0:	e0823003 	add	r3, r2, r3
    1bc4:	e5d33000 	ldrb	r3, [r3]
    1bc8:	e3530000 	cmp	r3, #0
    1bcc:	0a000006 	beq	1bec <concreate+0x230>
    1bd0:	e24b3050 	sub	r3, fp, #80	; 0x50
    1bd4:	e2833002 	add	r3, r3, #2
    1bd8:	e3a00001 	mov	r0, #1
    1bdc:	e59f1224 	ldr	r1, [pc, #548]	; 1e08 <concreate+0x44c>
    1be0:	e1a02003 	mov	r2, r3
    1be4:	eb000b64 	bl	497c <printf>
    1be8:	eb000a56 	bl	4548 <exit>
    1bec:	e24b2040 	sub	r2, fp, #64	; 0x40
    1bf0:	e51b3008 	ldr	r3, [fp, #-8]
    1bf4:	e0823003 	add	r3, r2, r3
    1bf8:	e3a02001 	mov	r2, #1
    1bfc:	e5c32000 	strb	r2, [r3]
    1c00:	e51b300c 	ldr	r3, [fp, #-12]
    1c04:	e2833001 	add	r3, r3, #1
    1c08:	e50b300c 	str	r3, [fp, #-12]
    1c0c:	e24b3050 	sub	r3, fp, #80	; 0x50
    1c10:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    1c14:	e1a01003 	mov	r1, r3
    1c18:	e3a02010 	mov	r2, #16
    1c1c:	eb000a64 	bl	45b4 <read>
    1c20:	e1a03000 	mov	r3, r0
    1c24:	e3530000 	cmp	r3, #0
    1c28:	caffffc8 	bgt	1b50 <concreate+0x194>
    1c2c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    1c30:	eb000a71 	bl	45fc <close>
    1c34:	e51b300c 	ldr	r3, [fp, #-12]
    1c38:	e3530028 	cmp	r3, #40	; 0x28
    1c3c:	0a000003 	beq	1c50 <concreate+0x294>
    1c40:	e3a00001 	mov	r0, #1
    1c44:	e59f11c0 	ldr	r1, [pc, #448]	; 1e0c <concreate+0x450>
    1c48:	eb000b4b 	bl	497c <printf>
    1c4c:	eb000a3d 	bl	4548 <exit>
    1c50:	e3a03000 	mov	r3, #0
    1c54:	e50b3008 	str	r3, [fp, #-8]
    1c58:	ea00005a 	b	1dc8 <concreate+0x40c>
    1c5c:	e51b3008 	ldr	r3, [fp, #-8]
    1c60:	e6ef3073 	uxtb	r3, r3
    1c64:	e2833030 	add	r3, r3, #48	; 0x30
    1c68:	e6ef3073 	uxtb	r3, r3
    1c6c:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
    1c70:	eb000a2b 	bl	4524 <fork>
    1c74:	e50b0010 	str	r0, [fp, #-16]
    1c78:	e51b3010 	ldr	r3, [fp, #-16]
    1c7c:	e3530000 	cmp	r3, #0
    1c80:	aa000003 	bge	1c94 <concreate+0x2d8>
    1c84:	e3a00001 	mov	r0, #1
    1c88:	e59f1180 	ldr	r1, [pc, #384]	; 1e10 <concreate+0x454>
    1c8c:	eb000b3a 	bl	497c <printf>
    1c90:	eb000a2c 	bl	4548 <exit>
    1c94:	e51b1008 	ldr	r1, [fp, #-8]
    1c98:	e59f314c 	ldr	r3, [pc, #332]	; 1dec <concreate+0x430>
    1c9c:	e0c23193 	smull	r3, r2, r3, r1
    1ca0:	e1a03fc1 	asr	r3, r1, #31
    1ca4:	e0632002 	rsb	r2, r3, r2
    1ca8:	e1a03002 	mov	r3, r2
    1cac:	e1a03083 	lsl	r3, r3, #1
    1cb0:	e0833002 	add	r3, r3, r2
    1cb4:	e0632001 	rsb	r2, r3, r1
    1cb8:	e3520000 	cmp	r2, #0
    1cbc:	1a000002 	bne	1ccc <concreate+0x310>
    1cc0:	e51b3010 	ldr	r3, [fp, #-16]
    1cc4:	e3530000 	cmp	r3, #0
    1cc8:	0a00000d 	beq	1d04 <concreate+0x348>
    1ccc:	e51b1008 	ldr	r1, [fp, #-8]
    1cd0:	e59f3114 	ldr	r3, [pc, #276]	; 1dec <concreate+0x430>
    1cd4:	e0c23193 	smull	r3, r2, r3, r1
    1cd8:	e1a03fc1 	asr	r3, r1, #31
    1cdc:	e0632002 	rsb	r2, r3, r2
    1ce0:	e1a03002 	mov	r3, r2
    1ce4:	e1a03083 	lsl	r3, r3, #1
    1ce8:	e0833002 	add	r3, r3, r2
    1cec:	e0632001 	rsb	r2, r3, r1
    1cf0:	e3520001 	cmp	r2, #1
    1cf4:	1a00001f 	bne	1d78 <concreate+0x3bc>
    1cf8:	e51b3010 	ldr	r3, [fp, #-16]
    1cfc:	e3530000 	cmp	r3, #0
    1d00:	0a00001c 	beq	1d78 <concreate+0x3bc>
    1d04:	e24b3018 	sub	r3, fp, #24
    1d08:	e1a00003 	mov	r0, r3
    1d0c:	e3a01000 	mov	r1, #0
    1d10:	eb000a54 	bl	4668 <open>
    1d14:	e1a03000 	mov	r3, r0
    1d18:	e1a00003 	mov	r0, r3
    1d1c:	eb000a36 	bl	45fc <close>
    1d20:	e24b3018 	sub	r3, fp, #24
    1d24:	e1a00003 	mov	r0, r3
    1d28:	e3a01000 	mov	r1, #0
    1d2c:	eb000a4d 	bl	4668 <open>
    1d30:	e1a03000 	mov	r3, r0
    1d34:	e1a00003 	mov	r0, r3
    1d38:	eb000a2f 	bl	45fc <close>
    1d3c:	e24b3018 	sub	r3, fp, #24
    1d40:	e1a00003 	mov	r0, r3
    1d44:	e3a01000 	mov	r1, #0
    1d48:	eb000a46 	bl	4668 <open>
    1d4c:	e1a03000 	mov	r3, r0
    1d50:	e1a00003 	mov	r0, r3
    1d54:	eb000a28 	bl	45fc <close>
    1d58:	e24b3018 	sub	r3, fp, #24
    1d5c:	e1a00003 	mov	r0, r3
    1d60:	e3a01000 	mov	r1, #0
    1d64:	eb000a3f 	bl	4668 <open>
    1d68:	e1a03000 	mov	r3, r0
    1d6c:	e1a00003 	mov	r0, r3
    1d70:	eb000a21 	bl	45fc <close>
    1d74:	ea00000b 	b	1da8 <concreate+0x3ec>
    1d78:	e24b3018 	sub	r3, fp, #24
    1d7c:	e1a00003 	mov	r0, r3
    1d80:	eb000a4a 	bl	46b0 <unlink>
    1d84:	e24b3018 	sub	r3, fp, #24
    1d88:	e1a00003 	mov	r0, r3
    1d8c:	eb000a47 	bl	46b0 <unlink>
    1d90:	e24b3018 	sub	r3, fp, #24
    1d94:	e1a00003 	mov	r0, r3
    1d98:	eb000a44 	bl	46b0 <unlink>
    1d9c:	e24b3018 	sub	r3, fp, #24
    1da0:	e1a00003 	mov	r0, r3
    1da4:	eb000a41 	bl	46b0 <unlink>
    1da8:	e51b3010 	ldr	r3, [fp, #-16]
    1dac:	e3530000 	cmp	r3, #0
    1db0:	1a000000 	bne	1db8 <concreate+0x3fc>
    1db4:	eb0009e3 	bl	4548 <exit>
    1db8:	eb0009eb 	bl	456c <wait>
    1dbc:	e51b3008 	ldr	r3, [fp, #-8]
    1dc0:	e2833001 	add	r3, r3, #1
    1dc4:	e50b3008 	str	r3, [fp, #-8]
    1dc8:	e51b3008 	ldr	r3, [fp, #-8]
    1dcc:	e3530027 	cmp	r3, #39	; 0x27
    1dd0:	daffffa1 	ble	1c5c <concreate+0x2a0>
    1dd4:	e3a00001 	mov	r0, #1
    1dd8:	e59f1034 	ldr	r1, [pc, #52]	; 1e14 <concreate+0x458>
    1ddc:	eb000ae6 	bl	497c <printf>
    1de0:	e24bd004 	sub	sp, fp, #4
    1de4:	e8bd8800 	pop	{fp, pc}
    1de8:	000058a8 	.word	0x000058a8
    1dec:	55555556 	.word	0x55555556
    1df0:	000058b8 	.word	0x000058b8
    1df4:	66666667 	.word	0x66666667
    1df8:	00000202 	.word	0x00000202
    1dfc:	000058bc 	.word	0x000058bc
    1e00:	00005878 	.word	0x00005878
    1e04:	000058d8 	.word	0x000058d8
    1e08:	000058f4 	.word	0x000058f4
    1e0c:	00005914 	.word	0x00005914
    1e10:	00005470 	.word	0x00005470
    1e14:	00005948 	.word	0x00005948

00001e18 <linkunlink>:
    1e18:	e92d4800 	push	{fp, lr}
    1e1c:	e28db004 	add	fp, sp, #4
    1e20:	e24dd010 	sub	sp, sp, #16
    1e24:	e3a00001 	mov	r0, #1
    1e28:	e59f1134 	ldr	r1, [pc, #308]	; 1f64 <linkunlink+0x14c>
    1e2c:	eb000ad2 	bl	497c <printf>
    1e30:	e59f0130 	ldr	r0, [pc, #304]	; 1f68 <linkunlink+0x150>
    1e34:	eb000a1d 	bl	46b0 <unlink>
    1e38:	eb0009b9 	bl	4524 <fork>
    1e3c:	e50b0010 	str	r0, [fp, #-16]
    1e40:	e51b3010 	ldr	r3, [fp, #-16]
    1e44:	e3530000 	cmp	r3, #0
    1e48:	aa000003 	bge	1e5c <linkunlink+0x44>
    1e4c:	e3a00001 	mov	r0, #1
    1e50:	e59f1114 	ldr	r1, [pc, #276]	; 1f6c <linkunlink+0x154>
    1e54:	eb000ac8 	bl	497c <printf>
    1e58:	eb0009ba 	bl	4548 <exit>
    1e5c:	e51b3010 	ldr	r3, [fp, #-16]
    1e60:	e3530000 	cmp	r3, #0
    1e64:	0a000001 	beq	1e70 <linkunlink+0x58>
    1e68:	e3a03001 	mov	r3, #1
    1e6c:	ea000000 	b	1e74 <linkunlink+0x5c>
    1e70:	e3a03061 	mov	r3, #97	; 0x61
    1e74:	e50b300c 	str	r3, [fp, #-12]
    1e78:	e3a03000 	mov	r3, #0
    1e7c:	e50b3008 	str	r3, [fp, #-8]
    1e80:	ea000029 	b	1f2c <linkunlink+0x114>
    1e84:	e51b300c 	ldr	r3, [fp, #-12]
    1e88:	e59f20e0 	ldr	r2, [pc, #224]	; 1f70 <linkunlink+0x158>
    1e8c:	e0030392 	mul	r3, r2, r3
    1e90:	e2833a03 	add	r3, r3, #12288	; 0x3000
    1e94:	e2833039 	add	r3, r3, #57	; 0x39
    1e98:	e50b300c 	str	r3, [fp, #-12]
    1e9c:	e51b100c 	ldr	r1, [fp, #-12]
    1ea0:	e59f30cc 	ldr	r3, [pc, #204]	; 1f74 <linkunlink+0x15c>
    1ea4:	e0832193 	umull	r2, r3, r3, r1
    1ea8:	e1a020a3 	lsr	r2, r3, #1
    1eac:	e1a03002 	mov	r3, r2
    1eb0:	e1a03083 	lsl	r3, r3, #1
    1eb4:	e0833002 	add	r3, r3, r2
    1eb8:	e0632001 	rsb	r2, r3, r1
    1ebc:	e3520000 	cmp	r2, #0
    1ec0:	1a000006 	bne	1ee0 <linkunlink+0xc8>
    1ec4:	e59f009c 	ldr	r0, [pc, #156]	; 1f68 <linkunlink+0x150>
    1ec8:	e59f10a8 	ldr	r1, [pc, #168]	; 1f78 <linkunlink+0x160>
    1ecc:	eb0009e5 	bl	4668 <open>
    1ed0:	e1a03000 	mov	r3, r0
    1ed4:	e1a00003 	mov	r0, r3
    1ed8:	eb0009c7 	bl	45fc <close>
    1edc:	ea00000f 	b	1f20 <linkunlink+0x108>
    1ee0:	e51b100c 	ldr	r1, [fp, #-12]
    1ee4:	e59f3088 	ldr	r3, [pc, #136]	; 1f74 <linkunlink+0x15c>
    1ee8:	e0832193 	umull	r2, r3, r3, r1
    1eec:	e1a020a3 	lsr	r2, r3, #1
    1ef0:	e1a03002 	mov	r3, r2
    1ef4:	e1a03083 	lsl	r3, r3, #1
    1ef8:	e0833002 	add	r3, r3, r2
    1efc:	e0632001 	rsb	r2, r3, r1
    1f00:	e3520001 	cmp	r2, #1
    1f04:	1a000003 	bne	1f18 <linkunlink+0x100>
    1f08:	e59f006c 	ldr	r0, [pc, #108]	; 1f7c <linkunlink+0x164>
    1f0c:	e59f1054 	ldr	r1, [pc, #84]	; 1f68 <linkunlink+0x150>
    1f10:	eb0009f8 	bl	46f8 <link>
    1f14:	ea000001 	b	1f20 <linkunlink+0x108>
    1f18:	e59f0048 	ldr	r0, [pc, #72]	; 1f68 <linkunlink+0x150>
    1f1c:	eb0009e3 	bl	46b0 <unlink>
    1f20:	e51b3008 	ldr	r3, [fp, #-8]
    1f24:	e2833001 	add	r3, r3, #1
    1f28:	e50b3008 	str	r3, [fp, #-8]
    1f2c:	e51b3008 	ldr	r3, [fp, #-8]
    1f30:	e3530063 	cmp	r3, #99	; 0x63
    1f34:	daffffd2 	ble	1e84 <linkunlink+0x6c>
    1f38:	e51b3010 	ldr	r3, [fp, #-16]
    1f3c:	e3530000 	cmp	r3, #0
    1f40:	0a000001 	beq	1f4c <linkunlink+0x134>
    1f44:	eb000988 	bl	456c <wait>
    1f48:	ea000000 	b	1f50 <linkunlink+0x138>
    1f4c:	eb00097d 	bl	4548 <exit>
    1f50:	e3a00001 	mov	r0, #1
    1f54:	e59f1024 	ldr	r1, [pc, #36]	; 1f80 <linkunlink+0x168>
    1f58:	eb000a87 	bl	497c <printf>
    1f5c:	e24bd004 	sub	sp, fp, #4
    1f60:	e8bd8800 	pop	{fp, pc}
    1f64:	00005958 	.word	0x00005958
    1f68:	00005420 	.word	0x00005420
    1f6c:	00005470 	.word	0x00005470
    1f70:	41c64e6d 	.word	0x41c64e6d
    1f74:	aaaaaaab 	.word	0xaaaaaaab
    1f78:	00000202 	.word	0x00000202
    1f7c:	0000596c 	.word	0x0000596c
    1f80:	00005970 	.word	0x00005970

00001f84 <bigdir>:
    1f84:	e92d4800 	push	{fp, lr}
    1f88:	e28db004 	add	fp, sp, #4
    1f8c:	e24dd018 	sub	sp, sp, #24
    1f90:	e3a00001 	mov	r0, #1
    1f94:	e59f11b4 	ldr	r1, [pc, #436]	; 2150 <bigdir+0x1cc>
    1f98:	eb000a77 	bl	497c <printf>
    1f9c:	e59f01b0 	ldr	r0, [pc, #432]	; 2154 <bigdir+0x1d0>
    1fa0:	eb0009c2 	bl	46b0 <unlink>
    1fa4:	e59f01a8 	ldr	r0, [pc, #424]	; 2154 <bigdir+0x1d0>
    1fa8:	e3a01c02 	mov	r1, #512	; 0x200
    1fac:	eb0009ad 	bl	4668 <open>
    1fb0:	e50b000c 	str	r0, [fp, #-12]
    1fb4:	e51b300c 	ldr	r3, [fp, #-12]
    1fb8:	e3530000 	cmp	r3, #0
    1fbc:	aa000003 	bge	1fd0 <bigdir+0x4c>
    1fc0:	e3a00001 	mov	r0, #1
    1fc4:	e59f118c 	ldr	r1, [pc, #396]	; 2158 <bigdir+0x1d4>
    1fc8:	eb000a6b 	bl	497c <printf>
    1fcc:	eb00095d 	bl	4548 <exit>
    1fd0:	e51b000c 	ldr	r0, [fp, #-12]
    1fd4:	eb000988 	bl	45fc <close>
    1fd8:	e3a03000 	mov	r3, #0
    1fdc:	e50b3008 	str	r3, [fp, #-8]
    1fe0:	ea000025 	b	207c <bigdir+0xf8>
    1fe4:	e3a03078 	mov	r3, #120	; 0x78
    1fe8:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
    1fec:	e51b3008 	ldr	r3, [fp, #-8]
    1ff0:	e283203f 	add	r2, r3, #63	; 0x3f
    1ff4:	e3530000 	cmp	r3, #0
    1ff8:	b1a03002 	movlt	r3, r2
    1ffc:	a1a03003 	movge	r3, r3
    2000:	e1a03343 	asr	r3, r3, #6
    2004:	e6ef3073 	uxtb	r3, r3
    2008:	e2833030 	add	r3, r3, #48	; 0x30
    200c:	e6ef3073 	uxtb	r3, r3
    2010:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
    2014:	e51b2008 	ldr	r2, [fp, #-8]
    2018:	e1a03fc2 	asr	r3, r2, #31
    201c:	e1a03d23 	lsr	r3, r3, #26
    2020:	e0822003 	add	r2, r2, r3
    2024:	e202203f 	and	r2, r2, #63	; 0x3f
    2028:	e0633002 	rsb	r3, r3, r2
    202c:	e6ef3073 	uxtb	r3, r3
    2030:	e2833030 	add	r3, r3, #48	; 0x30
    2034:	e6ef3073 	uxtb	r3, r3
    2038:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    203c:	e3a03000 	mov	r3, #0
    2040:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    2044:	e24b3018 	sub	r3, fp, #24
    2048:	e59f0104 	ldr	r0, [pc, #260]	; 2154 <bigdir+0x1d0>
    204c:	e1a01003 	mov	r1, r3
    2050:	eb0009a8 	bl	46f8 <link>
    2054:	e1a03000 	mov	r3, r0
    2058:	e3530000 	cmp	r3, #0
    205c:	0a000003 	beq	2070 <bigdir+0xec>
    2060:	e3a00001 	mov	r0, #1
    2064:	e59f10f0 	ldr	r1, [pc, #240]	; 215c <bigdir+0x1d8>
    2068:	eb000a43 	bl	497c <printf>
    206c:	eb000935 	bl	4548 <exit>
    2070:	e51b3008 	ldr	r3, [fp, #-8]
    2074:	e2833001 	add	r3, r3, #1
    2078:	e50b3008 	str	r3, [fp, #-8]
    207c:	e51b3008 	ldr	r3, [fp, #-8]
    2080:	e3530f7d 	cmp	r3, #500	; 0x1f4
    2084:	baffffd6 	blt	1fe4 <bigdir+0x60>
    2088:	e59f00c4 	ldr	r0, [pc, #196]	; 2154 <bigdir+0x1d0>
    208c:	eb000987 	bl	46b0 <unlink>
    2090:	e3a03000 	mov	r3, #0
    2094:	e50b3008 	str	r3, [fp, #-8]
    2098:	ea000024 	b	2130 <bigdir+0x1ac>
    209c:	e3a03078 	mov	r3, #120	; 0x78
    20a0:	e54b3018 	strb	r3, [fp, #-24]	; 0xffffffe8
    20a4:	e51b3008 	ldr	r3, [fp, #-8]
    20a8:	e283203f 	add	r2, r3, #63	; 0x3f
    20ac:	e3530000 	cmp	r3, #0
    20b0:	b1a03002 	movlt	r3, r2
    20b4:	a1a03003 	movge	r3, r3
    20b8:	e1a03343 	asr	r3, r3, #6
    20bc:	e6ef3073 	uxtb	r3, r3
    20c0:	e2833030 	add	r3, r3, #48	; 0x30
    20c4:	e6ef3073 	uxtb	r3, r3
    20c8:	e54b3017 	strb	r3, [fp, #-23]	; 0xffffffe9
    20cc:	e51b2008 	ldr	r2, [fp, #-8]
    20d0:	e1a03fc2 	asr	r3, r2, #31
    20d4:	e1a03d23 	lsr	r3, r3, #26
    20d8:	e0822003 	add	r2, r2, r3
    20dc:	e202203f 	and	r2, r2, #63	; 0x3f
    20e0:	e0633002 	rsb	r3, r3, r2
    20e4:	e6ef3073 	uxtb	r3, r3
    20e8:	e2833030 	add	r3, r3, #48	; 0x30
    20ec:	e6ef3073 	uxtb	r3, r3
    20f0:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    20f4:	e3a03000 	mov	r3, #0
    20f8:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    20fc:	e24b3018 	sub	r3, fp, #24
    2100:	e1a00003 	mov	r0, r3
    2104:	eb000969 	bl	46b0 <unlink>
    2108:	e1a03000 	mov	r3, r0
    210c:	e3530000 	cmp	r3, #0
    2110:	0a000003 	beq	2124 <bigdir+0x1a0>
    2114:	e3a00001 	mov	r0, #1
    2118:	e59f1040 	ldr	r1, [pc, #64]	; 2160 <bigdir+0x1dc>
    211c:	eb000a16 	bl	497c <printf>
    2120:	eb000908 	bl	4548 <exit>
    2124:	e51b3008 	ldr	r3, [fp, #-8]
    2128:	e2833001 	add	r3, r3, #1
    212c:	e50b3008 	str	r3, [fp, #-8]
    2130:	e51b3008 	ldr	r3, [fp, #-8]
    2134:	e3530f7d 	cmp	r3, #500	; 0x1f4
    2138:	baffffd7 	blt	209c <bigdir+0x118>
    213c:	e3a00001 	mov	r0, #1
    2140:	e59f101c 	ldr	r1, [pc, #28]	; 2164 <bigdir+0x1e0>
    2144:	eb000a0c 	bl	497c <printf>
    2148:	e24bd004 	sub	sp, fp, #4
    214c:	e8bd8800 	pop	{fp, pc}
    2150:	00005980 	.word	0x00005980
    2154:	00005990 	.word	0x00005990
    2158:	00005994 	.word	0x00005994
    215c:	000059ac 	.word	0x000059ac
    2160:	000059c0 	.word	0x000059c0
    2164:	000059d8 	.word	0x000059d8

00002168 <subdir>:
    2168:	e92d4800 	push	{fp, lr}
    216c:	e28db004 	add	fp, sp, #4
    2170:	e24dd008 	sub	sp, sp, #8
    2174:	e3a00001 	mov	r0, #1
    2178:	e59f1600 	ldr	r1, [pc, #1536]	; 2780 <subdir+0x618>
    217c:	eb0009fe 	bl	497c <printf>
    2180:	e59f05fc 	ldr	r0, [pc, #1532]	; 2784 <subdir+0x61c>
    2184:	eb000949 	bl	46b0 <unlink>
    2188:	e59f05f8 	ldr	r0, [pc, #1528]	; 2788 <subdir+0x620>
    218c:	eb000962 	bl	471c <mkdir>
    2190:	e1a03000 	mov	r3, r0
    2194:	e3530000 	cmp	r3, #0
    2198:	0a000003 	beq	21ac <subdir+0x44>
    219c:	e3a00001 	mov	r0, #1
    21a0:	e59f15e4 	ldr	r1, [pc, #1508]	; 278c <subdir+0x624>
    21a4:	eb0009f4 	bl	497c <printf>
    21a8:	eb0008e6 	bl	4548 <exit>
    21ac:	e59f05dc 	ldr	r0, [pc, #1500]	; 2790 <subdir+0x628>
    21b0:	e59f15dc 	ldr	r1, [pc, #1500]	; 2794 <subdir+0x62c>
    21b4:	eb00092b 	bl	4668 <open>
    21b8:	e50b0008 	str	r0, [fp, #-8]
    21bc:	e51b3008 	ldr	r3, [fp, #-8]
    21c0:	e3530000 	cmp	r3, #0
    21c4:	aa000003 	bge	21d8 <subdir+0x70>
    21c8:	e3a00001 	mov	r0, #1
    21cc:	e59f15c4 	ldr	r1, [pc, #1476]	; 2798 <subdir+0x630>
    21d0:	eb0009e9 	bl	497c <printf>
    21d4:	eb0008db 	bl	4548 <exit>
    21d8:	e51b0008 	ldr	r0, [fp, #-8]
    21dc:	e59f15a0 	ldr	r1, [pc, #1440]	; 2784 <subdir+0x61c>
    21e0:	e3a02002 	mov	r2, #2
    21e4:	eb0008fb 	bl	45d8 <write>
    21e8:	e51b0008 	ldr	r0, [fp, #-8]
    21ec:	eb000902 	bl	45fc <close>
    21f0:	e59f0590 	ldr	r0, [pc, #1424]	; 2788 <subdir+0x620>
    21f4:	eb00092d 	bl	46b0 <unlink>
    21f8:	e1a03000 	mov	r3, r0
    21fc:	e3530000 	cmp	r3, #0
    2200:	ba000003 	blt	2214 <subdir+0xac>
    2204:	e3a00001 	mov	r0, #1
    2208:	e59f158c 	ldr	r1, [pc, #1420]	; 279c <subdir+0x634>
    220c:	eb0009da 	bl	497c <printf>
    2210:	eb0008cc 	bl	4548 <exit>
    2214:	e59f0584 	ldr	r0, [pc, #1412]	; 27a0 <subdir+0x638>
    2218:	eb00093f 	bl	471c <mkdir>
    221c:	e1a03000 	mov	r3, r0
    2220:	e3530000 	cmp	r3, #0
    2224:	0a000003 	beq	2238 <subdir+0xd0>
    2228:	e3a00001 	mov	r0, #1
    222c:	e59f1570 	ldr	r1, [pc, #1392]	; 27a4 <subdir+0x63c>
    2230:	eb0009d1 	bl	497c <printf>
    2234:	eb0008c3 	bl	4548 <exit>
    2238:	e59f0568 	ldr	r0, [pc, #1384]	; 27a8 <subdir+0x640>
    223c:	e59f1550 	ldr	r1, [pc, #1360]	; 2794 <subdir+0x62c>
    2240:	eb000908 	bl	4668 <open>
    2244:	e50b0008 	str	r0, [fp, #-8]
    2248:	e51b3008 	ldr	r3, [fp, #-8]
    224c:	e3530000 	cmp	r3, #0
    2250:	aa000003 	bge	2264 <subdir+0xfc>
    2254:	e3a00001 	mov	r0, #1
    2258:	e59f154c 	ldr	r1, [pc, #1356]	; 27ac <subdir+0x644>
    225c:	eb0009c6 	bl	497c <printf>
    2260:	eb0008b8 	bl	4548 <exit>
    2264:	e51b0008 	ldr	r0, [fp, #-8]
    2268:	e59f1540 	ldr	r1, [pc, #1344]	; 27b0 <subdir+0x648>
    226c:	e3a02002 	mov	r2, #2
    2270:	eb0008d8 	bl	45d8 <write>
    2274:	e51b0008 	ldr	r0, [fp, #-8]
    2278:	eb0008df 	bl	45fc <close>
    227c:	e59f0530 	ldr	r0, [pc, #1328]	; 27b4 <subdir+0x64c>
    2280:	e3a01000 	mov	r1, #0
    2284:	eb0008f7 	bl	4668 <open>
    2288:	e50b0008 	str	r0, [fp, #-8]
    228c:	e51b3008 	ldr	r3, [fp, #-8]
    2290:	e3530000 	cmp	r3, #0
    2294:	aa000003 	bge	22a8 <subdir+0x140>
    2298:	e3a00001 	mov	r0, #1
    229c:	e59f1514 	ldr	r1, [pc, #1300]	; 27b8 <subdir+0x650>
    22a0:	eb0009b5 	bl	497c <printf>
    22a4:	eb0008a7 	bl	4548 <exit>
    22a8:	e51b0008 	ldr	r0, [fp, #-8]
    22ac:	e59f1508 	ldr	r1, [pc, #1288]	; 27bc <subdir+0x654>
    22b0:	e3a02a02 	mov	r2, #8192	; 0x2000
    22b4:	eb0008be 	bl	45b4 <read>
    22b8:	e50b000c 	str	r0, [fp, #-12]
    22bc:	e51b300c 	ldr	r3, [fp, #-12]
    22c0:	e3530002 	cmp	r3, #2
    22c4:	1a000003 	bne	22d8 <subdir+0x170>
    22c8:	e59f34ec 	ldr	r3, [pc, #1260]	; 27bc <subdir+0x654>
    22cc:	e5d33000 	ldrb	r3, [r3]
    22d0:	e3530066 	cmp	r3, #102	; 0x66
    22d4:	0a000003 	beq	22e8 <subdir+0x180>
    22d8:	e3a00001 	mov	r0, #1
    22dc:	e59f14dc 	ldr	r1, [pc, #1244]	; 27c0 <subdir+0x658>
    22e0:	eb0009a5 	bl	497c <printf>
    22e4:	eb000897 	bl	4548 <exit>
    22e8:	e51b0008 	ldr	r0, [fp, #-8]
    22ec:	eb0008c2 	bl	45fc <close>
    22f0:	e59f04b0 	ldr	r0, [pc, #1200]	; 27a8 <subdir+0x640>
    22f4:	e59f14c8 	ldr	r1, [pc, #1224]	; 27c4 <subdir+0x65c>
    22f8:	eb0008fe 	bl	46f8 <link>
    22fc:	e1a03000 	mov	r3, r0
    2300:	e3530000 	cmp	r3, #0
    2304:	0a000003 	beq	2318 <subdir+0x1b0>
    2308:	e3a00001 	mov	r0, #1
    230c:	e59f14b4 	ldr	r1, [pc, #1204]	; 27c8 <subdir+0x660>
    2310:	eb000999 	bl	497c <printf>
    2314:	eb00088b 	bl	4548 <exit>
    2318:	e59f0488 	ldr	r0, [pc, #1160]	; 27a8 <subdir+0x640>
    231c:	eb0008e3 	bl	46b0 <unlink>
    2320:	e1a03000 	mov	r3, r0
    2324:	e3530000 	cmp	r3, #0
    2328:	0a000003 	beq	233c <subdir+0x1d4>
    232c:	e3a00001 	mov	r0, #1
    2330:	e59f1494 	ldr	r1, [pc, #1172]	; 27cc <subdir+0x664>
    2334:	eb000990 	bl	497c <printf>
    2338:	eb000882 	bl	4548 <exit>
    233c:	e59f0464 	ldr	r0, [pc, #1124]	; 27a8 <subdir+0x640>
    2340:	e3a01000 	mov	r1, #0
    2344:	eb0008c7 	bl	4668 <open>
    2348:	e1a03000 	mov	r3, r0
    234c:	e3530000 	cmp	r3, #0
    2350:	ba000003 	blt	2364 <subdir+0x1fc>
    2354:	e3a00001 	mov	r0, #1
    2358:	e59f1470 	ldr	r1, [pc, #1136]	; 27d0 <subdir+0x668>
    235c:	eb000986 	bl	497c <printf>
    2360:	eb000878 	bl	4548 <exit>
    2364:	e59f041c 	ldr	r0, [pc, #1052]	; 2788 <subdir+0x620>
    2368:	eb0008f4 	bl	4740 <chdir>
    236c:	e1a03000 	mov	r3, r0
    2370:	e3530000 	cmp	r3, #0
    2374:	0a000003 	beq	2388 <subdir+0x220>
    2378:	e3a00001 	mov	r0, #1
    237c:	e59f1450 	ldr	r1, [pc, #1104]	; 27d4 <subdir+0x66c>
    2380:	eb00097d 	bl	497c <printf>
    2384:	eb00086f 	bl	4548 <exit>
    2388:	e59f0448 	ldr	r0, [pc, #1096]	; 27d8 <subdir+0x670>
    238c:	eb0008eb 	bl	4740 <chdir>
    2390:	e1a03000 	mov	r3, r0
    2394:	e3530000 	cmp	r3, #0
    2398:	0a000003 	beq	23ac <subdir+0x244>
    239c:	e3a00001 	mov	r0, #1
    23a0:	e59f1434 	ldr	r1, [pc, #1076]	; 27dc <subdir+0x674>
    23a4:	eb000974 	bl	497c <printf>
    23a8:	eb000866 	bl	4548 <exit>
    23ac:	e59f042c 	ldr	r0, [pc, #1068]	; 27e0 <subdir+0x678>
    23b0:	eb0008e2 	bl	4740 <chdir>
    23b4:	e1a03000 	mov	r3, r0
    23b8:	e3530000 	cmp	r3, #0
    23bc:	0a000003 	beq	23d0 <subdir+0x268>
    23c0:	e3a00001 	mov	r0, #1
    23c4:	e59f1410 	ldr	r1, [pc, #1040]	; 27dc <subdir+0x674>
    23c8:	eb00096b 	bl	497c <printf>
    23cc:	eb00085d 	bl	4548 <exit>
    23d0:	e59f040c 	ldr	r0, [pc, #1036]	; 27e4 <subdir+0x67c>
    23d4:	eb0008d9 	bl	4740 <chdir>
    23d8:	e1a03000 	mov	r3, r0
    23dc:	e3530000 	cmp	r3, #0
    23e0:	0a000003 	beq	23f4 <subdir+0x28c>
    23e4:	e3a00001 	mov	r0, #1
    23e8:	e59f13f8 	ldr	r1, [pc, #1016]	; 27e8 <subdir+0x680>
    23ec:	eb000962 	bl	497c <printf>
    23f0:	eb000854 	bl	4548 <exit>
    23f4:	e59f03c8 	ldr	r0, [pc, #968]	; 27c4 <subdir+0x65c>
    23f8:	e3a01000 	mov	r1, #0
    23fc:	eb000899 	bl	4668 <open>
    2400:	e50b0008 	str	r0, [fp, #-8]
    2404:	e51b3008 	ldr	r3, [fp, #-8]
    2408:	e3530000 	cmp	r3, #0
    240c:	aa000003 	bge	2420 <subdir+0x2b8>
    2410:	e3a00001 	mov	r0, #1
    2414:	e59f13d0 	ldr	r1, [pc, #976]	; 27ec <subdir+0x684>
    2418:	eb000957 	bl	497c <printf>
    241c:	eb000849 	bl	4548 <exit>
    2420:	e51b0008 	ldr	r0, [fp, #-8]
    2424:	e59f1390 	ldr	r1, [pc, #912]	; 27bc <subdir+0x654>
    2428:	e3a02a02 	mov	r2, #8192	; 0x2000
    242c:	eb000860 	bl	45b4 <read>
    2430:	e1a03000 	mov	r3, r0
    2434:	e3530002 	cmp	r3, #2
    2438:	0a000003 	beq	244c <subdir+0x2e4>
    243c:	e3a00001 	mov	r0, #1
    2440:	e59f13a8 	ldr	r1, [pc, #936]	; 27f0 <subdir+0x688>
    2444:	eb00094c 	bl	497c <printf>
    2448:	eb00083e 	bl	4548 <exit>
    244c:	e51b0008 	ldr	r0, [fp, #-8]
    2450:	eb000869 	bl	45fc <close>
    2454:	e59f034c 	ldr	r0, [pc, #844]	; 27a8 <subdir+0x640>
    2458:	e3a01000 	mov	r1, #0
    245c:	eb000881 	bl	4668 <open>
    2460:	e1a03000 	mov	r3, r0
    2464:	e3530000 	cmp	r3, #0
    2468:	ba000003 	blt	247c <subdir+0x314>
    246c:	e3a00001 	mov	r0, #1
    2470:	e59f137c 	ldr	r1, [pc, #892]	; 27f4 <subdir+0x68c>
    2474:	eb000940 	bl	497c <printf>
    2478:	eb000832 	bl	4548 <exit>
    247c:	e59f0374 	ldr	r0, [pc, #884]	; 27f8 <subdir+0x690>
    2480:	e59f130c 	ldr	r1, [pc, #780]	; 2794 <subdir+0x62c>
    2484:	eb000877 	bl	4668 <open>
    2488:	e1a03000 	mov	r3, r0
    248c:	e3530000 	cmp	r3, #0
    2490:	ba000003 	blt	24a4 <subdir+0x33c>
    2494:	e3a00001 	mov	r0, #1
    2498:	e59f135c 	ldr	r1, [pc, #860]	; 27fc <subdir+0x694>
    249c:	eb000936 	bl	497c <printf>
    24a0:	eb000828 	bl	4548 <exit>
    24a4:	e59f0354 	ldr	r0, [pc, #852]	; 2800 <subdir+0x698>
    24a8:	e59f12e4 	ldr	r1, [pc, #740]	; 2794 <subdir+0x62c>
    24ac:	eb00086d 	bl	4668 <open>
    24b0:	e1a03000 	mov	r3, r0
    24b4:	e3530000 	cmp	r3, #0
    24b8:	ba000003 	blt	24cc <subdir+0x364>
    24bc:	e3a00001 	mov	r0, #1
    24c0:	e59f133c 	ldr	r1, [pc, #828]	; 2804 <subdir+0x69c>
    24c4:	eb00092c 	bl	497c <printf>
    24c8:	eb00081e 	bl	4548 <exit>
    24cc:	e59f02b4 	ldr	r0, [pc, #692]	; 2788 <subdir+0x620>
    24d0:	e3a01c02 	mov	r1, #512	; 0x200
    24d4:	eb000863 	bl	4668 <open>
    24d8:	e1a03000 	mov	r3, r0
    24dc:	e3530000 	cmp	r3, #0
    24e0:	ba000003 	blt	24f4 <subdir+0x38c>
    24e4:	e3a00001 	mov	r0, #1
    24e8:	e59f1318 	ldr	r1, [pc, #792]	; 2808 <subdir+0x6a0>
    24ec:	eb000922 	bl	497c <printf>
    24f0:	eb000814 	bl	4548 <exit>
    24f4:	e59f028c 	ldr	r0, [pc, #652]	; 2788 <subdir+0x620>
    24f8:	e3a01002 	mov	r1, #2
    24fc:	eb000859 	bl	4668 <open>
    2500:	e1a03000 	mov	r3, r0
    2504:	e3530000 	cmp	r3, #0
    2508:	ba000003 	blt	251c <subdir+0x3b4>
    250c:	e3a00001 	mov	r0, #1
    2510:	e59f12f4 	ldr	r1, [pc, #756]	; 280c <subdir+0x6a4>
    2514:	eb000918 	bl	497c <printf>
    2518:	eb00080a 	bl	4548 <exit>
    251c:	e59f0264 	ldr	r0, [pc, #612]	; 2788 <subdir+0x620>
    2520:	e3a01001 	mov	r1, #1
    2524:	eb00084f 	bl	4668 <open>
    2528:	e1a03000 	mov	r3, r0
    252c:	e3530000 	cmp	r3, #0
    2530:	ba000003 	blt	2544 <subdir+0x3dc>
    2534:	e3a00001 	mov	r0, #1
    2538:	e59f12d0 	ldr	r1, [pc, #720]	; 2810 <subdir+0x6a8>
    253c:	eb00090e 	bl	497c <printf>
    2540:	eb000800 	bl	4548 <exit>
    2544:	e59f02ac 	ldr	r0, [pc, #684]	; 27f8 <subdir+0x690>
    2548:	e59f12c4 	ldr	r1, [pc, #708]	; 2814 <subdir+0x6ac>
    254c:	eb000869 	bl	46f8 <link>
    2550:	e1a03000 	mov	r3, r0
    2554:	e3530000 	cmp	r3, #0
    2558:	1a000003 	bne	256c <subdir+0x404>
    255c:	e3a00001 	mov	r0, #1
    2560:	e59f12b0 	ldr	r1, [pc, #688]	; 2818 <subdir+0x6b0>
    2564:	eb000904 	bl	497c <printf>
    2568:	eb0007f6 	bl	4548 <exit>
    256c:	e59f028c 	ldr	r0, [pc, #652]	; 2800 <subdir+0x698>
    2570:	e59f129c 	ldr	r1, [pc, #668]	; 2814 <subdir+0x6ac>
    2574:	eb00085f 	bl	46f8 <link>
    2578:	e1a03000 	mov	r3, r0
    257c:	e3530000 	cmp	r3, #0
    2580:	1a000003 	bne	2594 <subdir+0x42c>
    2584:	e3a00001 	mov	r0, #1
    2588:	e59f128c 	ldr	r1, [pc, #652]	; 281c <subdir+0x6b4>
    258c:	eb0008fa 	bl	497c <printf>
    2590:	eb0007ec 	bl	4548 <exit>
    2594:	e59f01f4 	ldr	r0, [pc, #500]	; 2790 <subdir+0x628>
    2598:	e59f1224 	ldr	r1, [pc, #548]	; 27c4 <subdir+0x65c>
    259c:	eb000855 	bl	46f8 <link>
    25a0:	e1a03000 	mov	r3, r0
    25a4:	e3530000 	cmp	r3, #0
    25a8:	1a000003 	bne	25bc <subdir+0x454>
    25ac:	e3a00001 	mov	r0, #1
    25b0:	e59f1268 	ldr	r1, [pc, #616]	; 2820 <subdir+0x6b8>
    25b4:	eb0008f0 	bl	497c <printf>
    25b8:	eb0007e2 	bl	4548 <exit>
    25bc:	e59f0234 	ldr	r0, [pc, #564]	; 27f8 <subdir+0x690>
    25c0:	eb000855 	bl	471c <mkdir>
    25c4:	e1a03000 	mov	r3, r0
    25c8:	e3530000 	cmp	r3, #0
    25cc:	1a000003 	bne	25e0 <subdir+0x478>
    25d0:	e3a00001 	mov	r0, #1
    25d4:	e59f1248 	ldr	r1, [pc, #584]	; 2824 <subdir+0x6bc>
    25d8:	eb0008e7 	bl	497c <printf>
    25dc:	eb0007d9 	bl	4548 <exit>
    25e0:	e59f0218 	ldr	r0, [pc, #536]	; 2800 <subdir+0x698>
    25e4:	eb00084c 	bl	471c <mkdir>
    25e8:	e1a03000 	mov	r3, r0
    25ec:	e3530000 	cmp	r3, #0
    25f0:	1a000003 	bne	2604 <subdir+0x49c>
    25f4:	e3a00001 	mov	r0, #1
    25f8:	e59f1228 	ldr	r1, [pc, #552]	; 2828 <subdir+0x6c0>
    25fc:	eb0008de 	bl	497c <printf>
    2600:	eb0007d0 	bl	4548 <exit>
    2604:	e59f01b8 	ldr	r0, [pc, #440]	; 27c4 <subdir+0x65c>
    2608:	eb000843 	bl	471c <mkdir>
    260c:	e1a03000 	mov	r3, r0
    2610:	e3530000 	cmp	r3, #0
    2614:	1a000003 	bne	2628 <subdir+0x4c0>
    2618:	e3a00001 	mov	r0, #1
    261c:	e59f1208 	ldr	r1, [pc, #520]	; 282c <subdir+0x6c4>
    2620:	eb0008d5 	bl	497c <printf>
    2624:	eb0007c7 	bl	4548 <exit>
    2628:	e59f01d0 	ldr	r0, [pc, #464]	; 2800 <subdir+0x698>
    262c:	eb00081f 	bl	46b0 <unlink>
    2630:	e1a03000 	mov	r3, r0
    2634:	e3530000 	cmp	r3, #0
    2638:	1a000003 	bne	264c <subdir+0x4e4>
    263c:	e3a00001 	mov	r0, #1
    2640:	e59f11e8 	ldr	r1, [pc, #488]	; 2830 <subdir+0x6c8>
    2644:	eb0008cc 	bl	497c <printf>
    2648:	eb0007be 	bl	4548 <exit>
    264c:	e59f01a4 	ldr	r0, [pc, #420]	; 27f8 <subdir+0x690>
    2650:	eb000816 	bl	46b0 <unlink>
    2654:	e1a03000 	mov	r3, r0
    2658:	e3530000 	cmp	r3, #0
    265c:	1a000003 	bne	2670 <subdir+0x508>
    2660:	e3a00001 	mov	r0, #1
    2664:	e59f11c8 	ldr	r1, [pc, #456]	; 2834 <subdir+0x6cc>
    2668:	eb0008c3 	bl	497c <printf>
    266c:	eb0007b5 	bl	4548 <exit>
    2670:	e59f0118 	ldr	r0, [pc, #280]	; 2790 <subdir+0x628>
    2674:	eb000831 	bl	4740 <chdir>
    2678:	e1a03000 	mov	r3, r0
    267c:	e3530000 	cmp	r3, #0
    2680:	1a000003 	bne	2694 <subdir+0x52c>
    2684:	e3a00001 	mov	r0, #1
    2688:	e59f11a8 	ldr	r1, [pc, #424]	; 2838 <subdir+0x6d0>
    268c:	eb0008ba 	bl	497c <printf>
    2690:	eb0007ac 	bl	4548 <exit>
    2694:	e59f01a0 	ldr	r0, [pc, #416]	; 283c <subdir+0x6d4>
    2698:	eb000828 	bl	4740 <chdir>
    269c:	e1a03000 	mov	r3, r0
    26a0:	e3530000 	cmp	r3, #0
    26a4:	1a000003 	bne	26b8 <subdir+0x550>
    26a8:	e3a00001 	mov	r0, #1
    26ac:	e59f118c 	ldr	r1, [pc, #396]	; 2840 <subdir+0x6d8>
    26b0:	eb0008b1 	bl	497c <printf>
    26b4:	eb0007a3 	bl	4548 <exit>
    26b8:	e59f0104 	ldr	r0, [pc, #260]	; 27c4 <subdir+0x65c>
    26bc:	eb0007fb 	bl	46b0 <unlink>
    26c0:	e1a03000 	mov	r3, r0
    26c4:	e3530000 	cmp	r3, #0
    26c8:	0a000003 	beq	26dc <subdir+0x574>
    26cc:	e3a00001 	mov	r0, #1
    26d0:	e59f10f4 	ldr	r1, [pc, #244]	; 27cc <subdir+0x664>
    26d4:	eb0008a8 	bl	497c <printf>
    26d8:	eb00079a 	bl	4548 <exit>
    26dc:	e59f00ac 	ldr	r0, [pc, #172]	; 2790 <subdir+0x628>
    26e0:	eb0007f2 	bl	46b0 <unlink>
    26e4:	e1a03000 	mov	r3, r0
    26e8:	e3530000 	cmp	r3, #0
    26ec:	0a000003 	beq	2700 <subdir+0x598>
    26f0:	e3a00001 	mov	r0, #1
    26f4:	e59f1148 	ldr	r1, [pc, #328]	; 2844 <subdir+0x6dc>
    26f8:	eb00089f 	bl	497c <printf>
    26fc:	eb000791 	bl	4548 <exit>
    2700:	e59f0080 	ldr	r0, [pc, #128]	; 2788 <subdir+0x620>
    2704:	eb0007e9 	bl	46b0 <unlink>
    2708:	e1a03000 	mov	r3, r0
    270c:	e3530000 	cmp	r3, #0
    2710:	1a000003 	bne	2724 <subdir+0x5bc>
    2714:	e3a00001 	mov	r0, #1
    2718:	e59f1128 	ldr	r1, [pc, #296]	; 2848 <subdir+0x6e0>
    271c:	eb000896 	bl	497c <printf>
    2720:	eb000788 	bl	4548 <exit>
    2724:	e59f0120 	ldr	r0, [pc, #288]	; 284c <subdir+0x6e4>
    2728:	eb0007e0 	bl	46b0 <unlink>
    272c:	e1a03000 	mov	r3, r0
    2730:	e3530000 	cmp	r3, #0
    2734:	aa000003 	bge	2748 <subdir+0x5e0>
    2738:	e3a00001 	mov	r0, #1
    273c:	e59f110c 	ldr	r1, [pc, #268]	; 2850 <subdir+0x6e8>
    2740:	eb00088d 	bl	497c <printf>
    2744:	eb00077f 	bl	4548 <exit>
    2748:	e59f0038 	ldr	r0, [pc, #56]	; 2788 <subdir+0x620>
    274c:	eb0007d7 	bl	46b0 <unlink>
    2750:	e1a03000 	mov	r3, r0
    2754:	e3530000 	cmp	r3, #0
    2758:	aa000003 	bge	276c <subdir+0x604>
    275c:	e3a00001 	mov	r0, #1
    2760:	e59f10ec 	ldr	r1, [pc, #236]	; 2854 <subdir+0x6ec>
    2764:	eb000884 	bl	497c <printf>
    2768:	eb000776 	bl	4548 <exit>
    276c:	e3a00001 	mov	r0, #1
    2770:	e59f10e0 	ldr	r1, [pc, #224]	; 2858 <subdir+0x6f0>
    2774:	eb000880 	bl	497c <printf>
    2778:	e24bd004 	sub	sp, fp, #4
    277c:	e8bd8800 	pop	{fp, pc}
    2780:	000059e4 	.word	0x000059e4
    2784:	000059f4 	.word	0x000059f4
    2788:	000059f8 	.word	0x000059f8
    278c:	000059fc 	.word	0x000059fc
    2790:	00005a14 	.word	0x00005a14
    2794:	00000202 	.word	0x00000202
    2798:	00005a1c 	.word	0x00005a1c
    279c:	00005a34 	.word	0x00005a34
    27a0:	00005a5c 	.word	0x00005a5c
    27a4:	00005a64 	.word	0x00005a64
    27a8:	00005a80 	.word	0x00005a80
    27ac:	00005a8c 	.word	0x00005a8c
    27b0:	00005aa4 	.word	0x00005aa4
    27b4:	00005aa8 	.word	0x00005aa8
    27b8:	00005ab4 	.word	0x00005ab4
    27bc:	00009080 	.word	0x00009080
    27c0:	00005ad0 	.word	0x00005ad0
    27c4:	00005aec 	.word	0x00005aec
    27c8:	00005af8 	.word	0x00005af8
    27cc:	00005b1c 	.word	0x00005b1c
    27d0:	00005b34 	.word	0x00005b34
    27d4:	00005b58 	.word	0x00005b58
    27d8:	00005b6c 	.word	0x00005b6c
    27dc:	00005b78 	.word	0x00005b78
    27e0:	00005b94 	.word	0x00005b94
    27e4:	00005ba4 	.word	0x00005ba4
    27e8:	00005bac 	.word	0x00005bac
    27ec:	00005bc0 	.word	0x00005bc0
    27f0:	00005bd8 	.word	0x00005bd8
    27f4:	00005bf4 	.word	0x00005bf4
    27f8:	00005c1c 	.word	0x00005c1c
    27fc:	00005c28 	.word	0x00005c28
    2800:	00005c44 	.word	0x00005c44
    2804:	00005c50 	.word	0x00005c50
    2808:	00005c6c 	.word	0x00005c6c
    280c:	00005c84 	.word	0x00005c84
    2810:	00005ca0 	.word	0x00005ca0
    2814:	00005cbc 	.word	0x00005cbc
    2818:	00005cc8 	.word	0x00005cc8
    281c:	00005cec 	.word	0x00005cec
    2820:	00005d10 	.word	0x00005d10
    2824:	00005d34 	.word	0x00005d34
    2828:	00005d50 	.word	0x00005d50
    282c:	00005d6c 	.word	0x00005d6c
    2830:	00005d8c 	.word	0x00005d8c
    2834:	00005da8 	.word	0x00005da8
    2838:	00005dc4 	.word	0x00005dc4
    283c:	00005ddc 	.word	0x00005ddc
    2840:	00005de4 	.word	0x00005de4
    2844:	00005dfc 	.word	0x00005dfc
    2848:	00005e14 	.word	0x00005e14
    284c:	00005e34 	.word	0x00005e34
    2850:	00005e3c 	.word	0x00005e3c
    2854:	00005e54 	.word	0x00005e54
    2858:	00005e68 	.word	0x00005e68

0000285c <bigwrite>:
    285c:	e92d4800 	push	{fp, lr}
    2860:	e28db004 	add	fp, sp, #4
    2864:	e24dd010 	sub	sp, sp, #16
    2868:	e3a00001 	mov	r0, #1
    286c:	e59f10e0 	ldr	r1, [pc, #224]	; 2954 <bigwrite+0xf8>
    2870:	eb000841 	bl	497c <printf>
    2874:	e59f00dc 	ldr	r0, [pc, #220]	; 2958 <bigwrite+0xfc>
    2878:	eb00078c 	bl	46b0 <unlink>
    287c:	e59f30d8 	ldr	r3, [pc, #216]	; 295c <bigwrite+0x100>
    2880:	e50b3008 	str	r3, [fp, #-8]
    2884:	ea00002a 	b	2934 <bigwrite+0xd8>
    2888:	e59f00c8 	ldr	r0, [pc, #200]	; 2958 <bigwrite+0xfc>
    288c:	e59f10cc 	ldr	r1, [pc, #204]	; 2960 <bigwrite+0x104>
    2890:	eb000774 	bl	4668 <open>
    2894:	e50b0010 	str	r0, [fp, #-16]
    2898:	e51b3010 	ldr	r3, [fp, #-16]
    289c:	e3530000 	cmp	r3, #0
    28a0:	aa000003 	bge	28b4 <bigwrite+0x58>
    28a4:	e3a00001 	mov	r0, #1
    28a8:	e59f10b4 	ldr	r1, [pc, #180]	; 2964 <bigwrite+0x108>
    28ac:	eb000832 	bl	497c <printf>
    28b0:	eb000724 	bl	4548 <exit>
    28b4:	e3a03000 	mov	r3, #0
    28b8:	e50b300c 	str	r3, [fp, #-12]
    28bc:	ea000011 	b	2908 <bigwrite+0xac>
    28c0:	e51b0010 	ldr	r0, [fp, #-16]
    28c4:	e59f109c 	ldr	r1, [pc, #156]	; 2968 <bigwrite+0x10c>
    28c8:	e51b2008 	ldr	r2, [fp, #-8]
    28cc:	eb000741 	bl	45d8 <write>
    28d0:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    28d4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    28d8:	e51b3008 	ldr	r3, [fp, #-8]
    28dc:	e1520003 	cmp	r2, r3
    28e0:	0a000005 	beq	28fc <bigwrite+0xa0>
    28e4:	e3a00001 	mov	r0, #1
    28e8:	e59f107c 	ldr	r1, [pc, #124]	; 296c <bigwrite+0x110>
    28ec:	e51b2008 	ldr	r2, [fp, #-8]
    28f0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    28f4:	eb000820 	bl	497c <printf>
    28f8:	eb000712 	bl	4548 <exit>
    28fc:	e51b300c 	ldr	r3, [fp, #-12]
    2900:	e2833001 	add	r3, r3, #1
    2904:	e50b300c 	str	r3, [fp, #-12]
    2908:	e51b300c 	ldr	r3, [fp, #-12]
    290c:	e3530001 	cmp	r3, #1
    2910:	daffffea 	ble	28c0 <bigwrite+0x64>
    2914:	e51b0010 	ldr	r0, [fp, #-16]
    2918:	eb000737 	bl	45fc <close>
    291c:	e59f0034 	ldr	r0, [pc, #52]	; 2958 <bigwrite+0xfc>
    2920:	eb000762 	bl	46b0 <unlink>
    2924:	e51b3008 	ldr	r3, [fp, #-8]
    2928:	e2833f75 	add	r3, r3, #468	; 0x1d4
    292c:	e2833003 	add	r3, r3, #3
    2930:	e50b3008 	str	r3, [fp, #-8]
    2934:	e51b3008 	ldr	r3, [fp, #-8]
    2938:	e3530b06 	cmp	r3, #6144	; 0x1800
    293c:	baffffd1 	blt	2888 <bigwrite+0x2c>
    2940:	e3a00001 	mov	r0, #1
    2944:	e59f1024 	ldr	r1, [pc, #36]	; 2970 <bigwrite+0x114>
    2948:	eb00080b 	bl	497c <printf>
    294c:	e24bd004 	sub	sp, fp, #4
    2950:	e8bd8800 	pop	{fp, pc}
    2954:	00005e74 	.word	0x00005e74
    2958:	00005e84 	.word	0x00005e84
    295c:	000001f3 	.word	0x000001f3
    2960:	00000202 	.word	0x00000202
    2964:	00005e90 	.word	0x00005e90
    2968:	00009080 	.word	0x00009080
    296c:	00005ea8 	.word	0x00005ea8
    2970:	00005ebc 	.word	0x00005ebc

00002974 <bigfile>:
    2974:	e92d4800 	push	{fp, lr}
    2978:	e28db004 	add	fp, sp, #4
    297c:	e24dd010 	sub	sp, sp, #16
    2980:	e3a00001 	mov	r0, #1
    2984:	e59f11f4 	ldr	r1, [pc, #500]	; 2b80 <bigfile+0x20c>
    2988:	eb0007fb 	bl	497c <printf>
    298c:	e59f01f0 	ldr	r0, [pc, #496]	; 2b84 <bigfile+0x210>
    2990:	eb000746 	bl	46b0 <unlink>
    2994:	e59f01e8 	ldr	r0, [pc, #488]	; 2b84 <bigfile+0x210>
    2998:	e59f11e8 	ldr	r1, [pc, #488]	; 2b88 <bigfile+0x214>
    299c:	eb000731 	bl	4668 <open>
    29a0:	e50b0010 	str	r0, [fp, #-16]
    29a4:	e51b3010 	ldr	r3, [fp, #-16]
    29a8:	e3530000 	cmp	r3, #0
    29ac:	aa000003 	bge	29c0 <bigfile+0x4c>
    29b0:	e3a00001 	mov	r0, #1
    29b4:	e59f11d0 	ldr	r1, [pc, #464]	; 2b8c <bigfile+0x218>
    29b8:	eb0007ef 	bl	497c <printf>
    29bc:	eb0006e1 	bl	4548 <exit>
    29c0:	e3a03000 	mov	r3, #0
    29c4:	e50b3008 	str	r3, [fp, #-8]
    29c8:	ea000011 	b	2a14 <bigfile+0xa0>
    29cc:	e59f01bc 	ldr	r0, [pc, #444]	; 2b90 <bigfile+0x21c>
    29d0:	e51b1008 	ldr	r1, [fp, #-8]
    29d4:	e3a02f96 	mov	r2, #600	; 0x258
    29d8:	eb0005ea 	bl	4188 <memset>
    29dc:	e51b0010 	ldr	r0, [fp, #-16]
    29e0:	e59f11a8 	ldr	r1, [pc, #424]	; 2b90 <bigfile+0x21c>
    29e4:	e3a02f96 	mov	r2, #600	; 0x258
    29e8:	eb0006fa 	bl	45d8 <write>
    29ec:	e1a03000 	mov	r3, r0
    29f0:	e3530f96 	cmp	r3, #600	; 0x258
    29f4:	0a000003 	beq	2a08 <bigfile+0x94>
    29f8:	e3a00001 	mov	r0, #1
    29fc:	e59f1190 	ldr	r1, [pc, #400]	; 2b94 <bigfile+0x220>
    2a00:	eb0007dd 	bl	497c <printf>
    2a04:	eb0006cf 	bl	4548 <exit>
    2a08:	e51b3008 	ldr	r3, [fp, #-8]
    2a0c:	e2833001 	add	r3, r3, #1
    2a10:	e50b3008 	str	r3, [fp, #-8]
    2a14:	e51b3008 	ldr	r3, [fp, #-8]
    2a18:	e3530013 	cmp	r3, #19
    2a1c:	daffffea 	ble	29cc <bigfile+0x58>
    2a20:	e51b0010 	ldr	r0, [fp, #-16]
    2a24:	eb0006f4 	bl	45fc <close>
    2a28:	e59f0154 	ldr	r0, [pc, #340]	; 2b84 <bigfile+0x210>
    2a2c:	e3a01000 	mov	r1, #0
    2a30:	eb00070c 	bl	4668 <open>
    2a34:	e50b0010 	str	r0, [fp, #-16]
    2a38:	e51b3010 	ldr	r3, [fp, #-16]
    2a3c:	e3530000 	cmp	r3, #0
    2a40:	aa000003 	bge	2a54 <bigfile+0xe0>
    2a44:	e3a00001 	mov	r0, #1
    2a48:	e59f1148 	ldr	r1, [pc, #328]	; 2b98 <bigfile+0x224>
    2a4c:	eb0007ca 	bl	497c <printf>
    2a50:	eb0006bc 	bl	4548 <exit>
    2a54:	e3a03000 	mov	r3, #0
    2a58:	e50b300c 	str	r3, [fp, #-12]
    2a5c:	e3a03000 	mov	r3, #0
    2a60:	e50b3008 	str	r3, [fp, #-8]
    2a64:	e51b0010 	ldr	r0, [fp, #-16]
    2a68:	e59f1120 	ldr	r1, [pc, #288]	; 2b90 <bigfile+0x21c>
    2a6c:	e3a02f4b 	mov	r2, #300	; 0x12c
    2a70:	eb0006cf 	bl	45b4 <read>
    2a74:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    2a78:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    2a7c:	e3530000 	cmp	r3, #0
    2a80:	aa000003 	bge	2a94 <bigfile+0x120>
    2a84:	e3a00001 	mov	r0, #1
    2a88:	e59f110c 	ldr	r1, [pc, #268]	; 2b9c <bigfile+0x228>
    2a8c:	eb0007ba 	bl	497c <printf>
    2a90:	eb0006ac 	bl	4548 <exit>
    2a94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    2a98:	e3530000 	cmp	r3, #0
    2a9c:	1a000007 	bne	2ac0 <bigfile+0x14c>
    2aa0:	e1a00000 	nop			; (mov r0, r0)
    2aa4:	e51b0010 	ldr	r0, [fp, #-16]
    2aa8:	eb0006d3 	bl	45fc <close>
    2aac:	e51b300c 	ldr	r3, [fp, #-12]
    2ab0:	e59f20e8 	ldr	r2, [pc, #232]	; 2ba0 <bigfile+0x22c>
    2ab4:	e1530002 	cmp	r3, r2
    2ab8:	0a000029 	beq	2b64 <bigfile+0x1f0>
    2abc:	ea000024 	b	2b54 <bigfile+0x1e0>
    2ac0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    2ac4:	e3530f4b 	cmp	r3, #300	; 0x12c
    2ac8:	0a000003 	beq	2adc <bigfile+0x168>
    2acc:	e3a00001 	mov	r0, #1
    2ad0:	e59f10cc 	ldr	r1, [pc, #204]	; 2ba4 <bigfile+0x230>
    2ad4:	eb0007a8 	bl	497c <printf>
    2ad8:	eb00069a 	bl	4548 <exit>
    2adc:	e59f30ac 	ldr	r3, [pc, #172]	; 2b90 <bigfile+0x21c>
    2ae0:	e5d33000 	ldrb	r3, [r3]
    2ae4:	e1a01003 	mov	r1, r3
    2ae8:	e51b3008 	ldr	r3, [fp, #-8]
    2aec:	e1a02fa3 	lsr	r2, r3, #31
    2af0:	e0823003 	add	r3, r2, r3
    2af4:	e1a030c3 	asr	r3, r3, #1
    2af8:	e1510003 	cmp	r1, r3
    2afc:	1a000008 	bne	2b24 <bigfile+0x1b0>
    2b00:	e59f3088 	ldr	r3, [pc, #136]	; 2b90 <bigfile+0x21c>
    2b04:	e5d3312b 	ldrb	r3, [r3, #299]	; 0x12b
    2b08:	e1a01003 	mov	r1, r3
    2b0c:	e51b3008 	ldr	r3, [fp, #-8]
    2b10:	e1a02fa3 	lsr	r2, r3, #31
    2b14:	e0823003 	add	r3, r2, r3
    2b18:	e1a030c3 	asr	r3, r3, #1
    2b1c:	e1510003 	cmp	r1, r3
    2b20:	0a000003 	beq	2b34 <bigfile+0x1c0>
    2b24:	e3a00001 	mov	r0, #1
    2b28:	e59f1078 	ldr	r1, [pc, #120]	; 2ba8 <bigfile+0x234>
    2b2c:	eb000792 	bl	497c <printf>
    2b30:	eb000684 	bl	4548 <exit>
    2b34:	e51b200c 	ldr	r2, [fp, #-12]
    2b38:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    2b3c:	e0823003 	add	r3, r2, r3
    2b40:	e50b300c 	str	r3, [fp, #-12]
    2b44:	e51b3008 	ldr	r3, [fp, #-8]
    2b48:	e2833001 	add	r3, r3, #1
    2b4c:	e50b3008 	str	r3, [fp, #-8]
    2b50:	eaffffc3 	b	2a64 <bigfile+0xf0>
    2b54:	e3a00001 	mov	r0, #1
    2b58:	e59f104c 	ldr	r1, [pc, #76]	; 2bac <bigfile+0x238>
    2b5c:	eb000786 	bl	497c <printf>
    2b60:	eb000678 	bl	4548 <exit>
    2b64:	e59f0018 	ldr	r0, [pc, #24]	; 2b84 <bigfile+0x210>
    2b68:	eb0006d0 	bl	46b0 <unlink>
    2b6c:	e3a00001 	mov	r0, #1
    2b70:	e59f1038 	ldr	r1, [pc, #56]	; 2bb0 <bigfile+0x23c>
    2b74:	eb000780 	bl	497c <printf>
    2b78:	e24bd004 	sub	sp, fp, #4
    2b7c:	e8bd8800 	pop	{fp, pc}
    2b80:	00005ecc 	.word	0x00005ecc
    2b84:	00005edc 	.word	0x00005edc
    2b88:	00000202 	.word	0x00000202
    2b8c:	00005ee4 	.word	0x00005ee4
    2b90:	00009080 	.word	0x00009080
    2b94:	00005efc 	.word	0x00005efc
    2b98:	00005f14 	.word	0x00005f14
    2b9c:	00005f2c 	.word	0x00005f2c
    2ba0:	00002ee0 	.word	0x00002ee0
    2ba4:	00005f44 	.word	0x00005f44
    2ba8:	00005f58 	.word	0x00005f58
    2bac:	00005f74 	.word	0x00005f74
    2bb0:	00005f90 	.word	0x00005f90

00002bb4 <fourteen>:
    2bb4:	e92d4800 	push	{fp, lr}
    2bb8:	e28db004 	add	fp, sp, #4
    2bbc:	e24dd008 	sub	sp, sp, #8
    2bc0:	e3a00001 	mov	r0, #1
    2bc4:	e59f110c 	ldr	r1, [pc, #268]	; 2cd8 <fourteen+0x124>
    2bc8:	eb00076b 	bl	497c <printf>
    2bcc:	e59f0108 	ldr	r0, [pc, #264]	; 2cdc <fourteen+0x128>
    2bd0:	eb0006d1 	bl	471c <mkdir>
    2bd4:	e1a03000 	mov	r3, r0
    2bd8:	e3530000 	cmp	r3, #0
    2bdc:	0a000003 	beq	2bf0 <fourteen+0x3c>
    2be0:	e3a00001 	mov	r0, #1
    2be4:	e59f10f4 	ldr	r1, [pc, #244]	; 2ce0 <fourteen+0x12c>
    2be8:	eb000763 	bl	497c <printf>
    2bec:	eb000655 	bl	4548 <exit>
    2bf0:	e59f00ec 	ldr	r0, [pc, #236]	; 2ce4 <fourteen+0x130>
    2bf4:	eb0006c8 	bl	471c <mkdir>
    2bf8:	e1a03000 	mov	r3, r0
    2bfc:	e3530000 	cmp	r3, #0
    2c00:	0a000003 	beq	2c14 <fourteen+0x60>
    2c04:	e3a00001 	mov	r0, #1
    2c08:	e59f10d8 	ldr	r1, [pc, #216]	; 2ce8 <fourteen+0x134>
    2c0c:	eb00075a 	bl	497c <printf>
    2c10:	eb00064c 	bl	4548 <exit>
    2c14:	e59f00d0 	ldr	r0, [pc, #208]	; 2cec <fourteen+0x138>
    2c18:	e3a01c02 	mov	r1, #512	; 0x200
    2c1c:	eb000691 	bl	4668 <open>
    2c20:	e50b0008 	str	r0, [fp, #-8]
    2c24:	e51b3008 	ldr	r3, [fp, #-8]
    2c28:	e3530000 	cmp	r3, #0
    2c2c:	aa000003 	bge	2c40 <fourteen+0x8c>
    2c30:	e3a00001 	mov	r0, #1
    2c34:	e59f10b4 	ldr	r1, [pc, #180]	; 2cf0 <fourteen+0x13c>
    2c38:	eb00074f 	bl	497c <printf>
    2c3c:	eb000641 	bl	4548 <exit>
    2c40:	e51b0008 	ldr	r0, [fp, #-8]
    2c44:	eb00066c 	bl	45fc <close>
    2c48:	e59f00a4 	ldr	r0, [pc, #164]	; 2cf4 <fourteen+0x140>
    2c4c:	e3a01000 	mov	r1, #0
    2c50:	eb000684 	bl	4668 <open>
    2c54:	e50b0008 	str	r0, [fp, #-8]
    2c58:	e51b3008 	ldr	r3, [fp, #-8]
    2c5c:	e3530000 	cmp	r3, #0
    2c60:	aa000003 	bge	2c74 <fourteen+0xc0>
    2c64:	e3a00001 	mov	r0, #1
    2c68:	e59f1088 	ldr	r1, [pc, #136]	; 2cf8 <fourteen+0x144>
    2c6c:	eb000742 	bl	497c <printf>
    2c70:	eb000634 	bl	4548 <exit>
    2c74:	e51b0008 	ldr	r0, [fp, #-8]
    2c78:	eb00065f 	bl	45fc <close>
    2c7c:	e59f0078 	ldr	r0, [pc, #120]	; 2cfc <fourteen+0x148>
    2c80:	eb0006a5 	bl	471c <mkdir>
    2c84:	e1a03000 	mov	r3, r0
    2c88:	e3530000 	cmp	r3, #0
    2c8c:	1a000003 	bne	2ca0 <fourteen+0xec>
    2c90:	e3a00001 	mov	r0, #1
    2c94:	e59f1064 	ldr	r1, [pc, #100]	; 2d00 <fourteen+0x14c>
    2c98:	eb000737 	bl	497c <printf>
    2c9c:	eb000629 	bl	4548 <exit>
    2ca0:	e59f005c 	ldr	r0, [pc, #92]	; 2d04 <fourteen+0x150>
    2ca4:	eb00069c 	bl	471c <mkdir>
    2ca8:	e1a03000 	mov	r3, r0
    2cac:	e3530000 	cmp	r3, #0
    2cb0:	1a000003 	bne	2cc4 <fourteen+0x110>
    2cb4:	e3a00001 	mov	r0, #1
    2cb8:	e59f1048 	ldr	r1, [pc, #72]	; 2d08 <fourteen+0x154>
    2cbc:	eb00072e 	bl	497c <printf>
    2cc0:	eb000620 	bl	4548 <exit>
    2cc4:	e3a00001 	mov	r0, #1
    2cc8:	e59f103c 	ldr	r1, [pc, #60]	; 2d0c <fourteen+0x158>
    2ccc:	eb00072a 	bl	497c <printf>
    2cd0:	e24bd004 	sub	sp, fp, #4
    2cd4:	e8bd8800 	pop	{fp, pc}
    2cd8:	00005fa4 	.word	0x00005fa4
    2cdc:	00005fb4 	.word	0x00005fb4
    2ce0:	00005fc4 	.word	0x00005fc4
    2ce4:	00005fe4 	.word	0x00005fe4
    2ce8:	00006004 	.word	0x00006004
    2cec:	00006034 	.word	0x00006034
    2cf0:	00006064 	.word	0x00006064
    2cf4:	000060a4 	.word	0x000060a4
    2cf8:	000060d4 	.word	0x000060d4
    2cfc:	00006110 	.word	0x00006110
    2d00:	00006130 	.word	0x00006130
    2d04:	00006160 	.word	0x00006160
    2d08:	00006180 	.word	0x00006180
    2d0c:	000061b4 	.word	0x000061b4

00002d10 <rmdot>:
    2d10:	e92d4800 	push	{fp, lr}
    2d14:	e28db004 	add	fp, sp, #4
    2d18:	e3a00001 	mov	r0, #1
    2d1c:	e59f1130 	ldr	r1, [pc, #304]	; 2e54 <rmdot+0x144>
    2d20:	eb000715 	bl	497c <printf>
    2d24:	e59f012c 	ldr	r0, [pc, #300]	; 2e58 <rmdot+0x148>
    2d28:	eb00067b 	bl	471c <mkdir>
    2d2c:	e1a03000 	mov	r3, r0
    2d30:	e3530000 	cmp	r3, #0
    2d34:	0a000003 	beq	2d48 <rmdot+0x38>
    2d38:	e3a00001 	mov	r0, #1
    2d3c:	e59f1118 	ldr	r1, [pc, #280]	; 2e5c <rmdot+0x14c>
    2d40:	eb00070d 	bl	497c <printf>
    2d44:	eb0005ff 	bl	4548 <exit>
    2d48:	e59f0108 	ldr	r0, [pc, #264]	; 2e58 <rmdot+0x148>
    2d4c:	eb00067b 	bl	4740 <chdir>
    2d50:	e1a03000 	mov	r3, r0
    2d54:	e3530000 	cmp	r3, #0
    2d58:	0a000003 	beq	2d6c <rmdot+0x5c>
    2d5c:	e3a00001 	mov	r0, #1
    2d60:	e59f10f8 	ldr	r1, [pc, #248]	; 2e60 <rmdot+0x150>
    2d64:	eb000704 	bl	497c <printf>
    2d68:	eb0005f6 	bl	4548 <exit>
    2d6c:	e59f00f0 	ldr	r0, [pc, #240]	; 2e64 <rmdot+0x154>
    2d70:	eb00064e 	bl	46b0 <unlink>
    2d74:	e1a03000 	mov	r3, r0
    2d78:	e3530000 	cmp	r3, #0
    2d7c:	1a000003 	bne	2d90 <rmdot+0x80>
    2d80:	e3a00001 	mov	r0, #1
    2d84:	e59f10dc 	ldr	r1, [pc, #220]	; 2e68 <rmdot+0x158>
    2d88:	eb0006fb 	bl	497c <printf>
    2d8c:	eb0005ed 	bl	4548 <exit>
    2d90:	e59f00d4 	ldr	r0, [pc, #212]	; 2e6c <rmdot+0x15c>
    2d94:	eb000645 	bl	46b0 <unlink>
    2d98:	e1a03000 	mov	r3, r0
    2d9c:	e3530000 	cmp	r3, #0
    2da0:	1a000003 	bne	2db4 <rmdot+0xa4>
    2da4:	e3a00001 	mov	r0, #1
    2da8:	e59f10c0 	ldr	r1, [pc, #192]	; 2e70 <rmdot+0x160>
    2dac:	eb0006f2 	bl	497c <printf>
    2db0:	eb0005e4 	bl	4548 <exit>
    2db4:	e59f00b8 	ldr	r0, [pc, #184]	; 2e74 <rmdot+0x164>
    2db8:	eb000660 	bl	4740 <chdir>
    2dbc:	e1a03000 	mov	r3, r0
    2dc0:	e3530000 	cmp	r3, #0
    2dc4:	0a000003 	beq	2dd8 <rmdot+0xc8>
    2dc8:	e3a00001 	mov	r0, #1
    2dcc:	e59f10a4 	ldr	r1, [pc, #164]	; 2e78 <rmdot+0x168>
    2dd0:	eb0006e9 	bl	497c <printf>
    2dd4:	eb0005db 	bl	4548 <exit>
    2dd8:	e59f009c 	ldr	r0, [pc, #156]	; 2e7c <rmdot+0x16c>
    2ddc:	eb000633 	bl	46b0 <unlink>
    2de0:	e1a03000 	mov	r3, r0
    2de4:	e3530000 	cmp	r3, #0
    2de8:	1a000003 	bne	2dfc <rmdot+0xec>
    2dec:	e3a00001 	mov	r0, #1
    2df0:	e59f1088 	ldr	r1, [pc, #136]	; 2e80 <rmdot+0x170>
    2df4:	eb0006e0 	bl	497c <printf>
    2df8:	eb0005d2 	bl	4548 <exit>
    2dfc:	e59f0080 	ldr	r0, [pc, #128]	; 2e84 <rmdot+0x174>
    2e00:	eb00062a 	bl	46b0 <unlink>
    2e04:	e1a03000 	mov	r3, r0
    2e08:	e3530000 	cmp	r3, #0
    2e0c:	1a000003 	bne	2e20 <rmdot+0x110>
    2e10:	e3a00001 	mov	r0, #1
    2e14:	e59f106c 	ldr	r1, [pc, #108]	; 2e88 <rmdot+0x178>
    2e18:	eb0006d7 	bl	497c <printf>
    2e1c:	eb0005c9 	bl	4548 <exit>
    2e20:	e59f0030 	ldr	r0, [pc, #48]	; 2e58 <rmdot+0x148>
    2e24:	eb000621 	bl	46b0 <unlink>
    2e28:	e1a03000 	mov	r3, r0
    2e2c:	e3530000 	cmp	r3, #0
    2e30:	0a000003 	beq	2e44 <rmdot+0x134>
    2e34:	e3a00001 	mov	r0, #1
    2e38:	e59f104c 	ldr	r1, [pc, #76]	; 2e8c <rmdot+0x17c>
    2e3c:	eb0006ce 	bl	497c <printf>
    2e40:	eb0005c0 	bl	4548 <exit>
    2e44:	e3a00001 	mov	r0, #1
    2e48:	e59f1040 	ldr	r1, [pc, #64]	; 2e90 <rmdot+0x180>
    2e4c:	eb0006ca 	bl	497c <printf>
    2e50:	e8bd8800 	pop	{fp, pc}
    2e54:	000061c4 	.word	0x000061c4
    2e58:	000061d0 	.word	0x000061d0
    2e5c:	000061d8 	.word	0x000061d8
    2e60:	000061ec 	.word	0x000061ec
    2e64:	00005878 	.word	0x00005878
    2e68:	00006200 	.word	0x00006200
    2e6c:	00005358 	.word	0x00005358
    2e70:	00006210 	.word	0x00006210
    2e74:	00006220 	.word	0x00006220
    2e78:	00006224 	.word	0x00006224
    2e7c:	00006234 	.word	0x00006234
    2e80:	0000623c 	.word	0x0000623c
    2e84:	00006254 	.word	0x00006254
    2e88:	0000625c 	.word	0x0000625c
    2e8c:	00006274 	.word	0x00006274
    2e90:	0000628c 	.word	0x0000628c

00002e94 <dirfile>:
    2e94:	e92d4800 	push	{fp, lr}
    2e98:	e28db004 	add	fp, sp, #4
    2e9c:	e24dd008 	sub	sp, sp, #8
    2ea0:	e3a00001 	mov	r0, #1
    2ea4:	e59f11c8 	ldr	r1, [pc, #456]	; 3074 <dirfile+0x1e0>
    2ea8:	eb0006b3 	bl	497c <printf>
    2eac:	e59f01c4 	ldr	r0, [pc, #452]	; 3078 <dirfile+0x1e4>
    2eb0:	e3a01c02 	mov	r1, #512	; 0x200
    2eb4:	eb0005eb 	bl	4668 <open>
    2eb8:	e50b0008 	str	r0, [fp, #-8]
    2ebc:	e51b3008 	ldr	r3, [fp, #-8]
    2ec0:	e3530000 	cmp	r3, #0
    2ec4:	aa000003 	bge	2ed8 <dirfile+0x44>
    2ec8:	e3a00001 	mov	r0, #1
    2ecc:	e59f11a8 	ldr	r1, [pc, #424]	; 307c <dirfile+0x1e8>
    2ed0:	eb0006a9 	bl	497c <printf>
    2ed4:	eb00059b 	bl	4548 <exit>
    2ed8:	e51b0008 	ldr	r0, [fp, #-8]
    2edc:	eb0005c6 	bl	45fc <close>
    2ee0:	e59f0190 	ldr	r0, [pc, #400]	; 3078 <dirfile+0x1e4>
    2ee4:	eb000615 	bl	4740 <chdir>
    2ee8:	e1a03000 	mov	r3, r0
    2eec:	e3530000 	cmp	r3, #0
    2ef0:	1a000003 	bne	2f04 <dirfile+0x70>
    2ef4:	e3a00001 	mov	r0, #1
    2ef8:	e59f1180 	ldr	r1, [pc, #384]	; 3080 <dirfile+0x1ec>
    2efc:	eb00069e 	bl	497c <printf>
    2f00:	eb000590 	bl	4548 <exit>
    2f04:	e59f0178 	ldr	r0, [pc, #376]	; 3084 <dirfile+0x1f0>
    2f08:	e3a01000 	mov	r1, #0
    2f0c:	eb0005d5 	bl	4668 <open>
    2f10:	e50b0008 	str	r0, [fp, #-8]
    2f14:	e51b3008 	ldr	r3, [fp, #-8]
    2f18:	e3530000 	cmp	r3, #0
    2f1c:	ba000003 	blt	2f30 <dirfile+0x9c>
    2f20:	e3a00001 	mov	r0, #1
    2f24:	e59f115c 	ldr	r1, [pc, #348]	; 3088 <dirfile+0x1f4>
    2f28:	eb000693 	bl	497c <printf>
    2f2c:	eb000585 	bl	4548 <exit>
    2f30:	e59f014c 	ldr	r0, [pc, #332]	; 3084 <dirfile+0x1f0>
    2f34:	e3a01c02 	mov	r1, #512	; 0x200
    2f38:	eb0005ca 	bl	4668 <open>
    2f3c:	e50b0008 	str	r0, [fp, #-8]
    2f40:	e51b3008 	ldr	r3, [fp, #-8]
    2f44:	e3530000 	cmp	r3, #0
    2f48:	ba000003 	blt	2f5c <dirfile+0xc8>
    2f4c:	e3a00001 	mov	r0, #1
    2f50:	e59f1130 	ldr	r1, [pc, #304]	; 3088 <dirfile+0x1f4>
    2f54:	eb000688 	bl	497c <printf>
    2f58:	eb00057a 	bl	4548 <exit>
    2f5c:	e59f0120 	ldr	r0, [pc, #288]	; 3084 <dirfile+0x1f0>
    2f60:	eb0005ed 	bl	471c <mkdir>
    2f64:	e1a03000 	mov	r3, r0
    2f68:	e3530000 	cmp	r3, #0
    2f6c:	1a000003 	bne	2f80 <dirfile+0xec>
    2f70:	e3a00001 	mov	r0, #1
    2f74:	e59f1110 	ldr	r1, [pc, #272]	; 308c <dirfile+0x1f8>
    2f78:	eb00067f 	bl	497c <printf>
    2f7c:	eb000571 	bl	4548 <exit>
    2f80:	e59f00fc 	ldr	r0, [pc, #252]	; 3084 <dirfile+0x1f0>
    2f84:	eb0005c9 	bl	46b0 <unlink>
    2f88:	e1a03000 	mov	r3, r0
    2f8c:	e3530000 	cmp	r3, #0
    2f90:	1a000003 	bne	2fa4 <dirfile+0x110>
    2f94:	e3a00001 	mov	r0, #1
    2f98:	e59f10f0 	ldr	r1, [pc, #240]	; 3090 <dirfile+0x1fc>
    2f9c:	eb000676 	bl	497c <printf>
    2fa0:	eb000568 	bl	4548 <exit>
    2fa4:	e59f00e8 	ldr	r0, [pc, #232]	; 3094 <dirfile+0x200>
    2fa8:	e59f10d4 	ldr	r1, [pc, #212]	; 3084 <dirfile+0x1f0>
    2fac:	eb0005d1 	bl	46f8 <link>
    2fb0:	e1a03000 	mov	r3, r0
    2fb4:	e3530000 	cmp	r3, #0
    2fb8:	1a000003 	bne	2fcc <dirfile+0x138>
    2fbc:	e3a00001 	mov	r0, #1
    2fc0:	e59f10d0 	ldr	r1, [pc, #208]	; 3098 <dirfile+0x204>
    2fc4:	eb00066c 	bl	497c <printf>
    2fc8:	eb00055e 	bl	4548 <exit>
    2fcc:	e59f00a4 	ldr	r0, [pc, #164]	; 3078 <dirfile+0x1e4>
    2fd0:	eb0005b6 	bl	46b0 <unlink>
    2fd4:	e1a03000 	mov	r3, r0
    2fd8:	e3530000 	cmp	r3, #0
    2fdc:	0a000003 	beq	2ff0 <dirfile+0x15c>
    2fe0:	e3a00001 	mov	r0, #1
    2fe4:	e59f10b0 	ldr	r1, [pc, #176]	; 309c <dirfile+0x208>
    2fe8:	eb000663 	bl	497c <printf>
    2fec:	eb000555 	bl	4548 <exit>
    2ff0:	e59f00a8 	ldr	r0, [pc, #168]	; 30a0 <dirfile+0x20c>
    2ff4:	e3a01002 	mov	r1, #2
    2ff8:	eb00059a 	bl	4668 <open>
    2ffc:	e50b0008 	str	r0, [fp, #-8]
    3000:	e51b3008 	ldr	r3, [fp, #-8]
    3004:	e3530000 	cmp	r3, #0
    3008:	ba000003 	blt	301c <dirfile+0x188>
    300c:	e3a00001 	mov	r0, #1
    3010:	e59f108c 	ldr	r1, [pc, #140]	; 30a4 <dirfile+0x210>
    3014:	eb000658 	bl	497c <printf>
    3018:	eb00054a 	bl	4548 <exit>
    301c:	e59f007c 	ldr	r0, [pc, #124]	; 30a0 <dirfile+0x20c>
    3020:	e3a01000 	mov	r1, #0
    3024:	eb00058f 	bl	4668 <open>
    3028:	e50b0008 	str	r0, [fp, #-8]
    302c:	e51b0008 	ldr	r0, [fp, #-8]
    3030:	e59f1070 	ldr	r1, [pc, #112]	; 30a8 <dirfile+0x214>
    3034:	e3a02001 	mov	r2, #1
    3038:	eb000566 	bl	45d8 <write>
    303c:	e1a03000 	mov	r3, r0
    3040:	e3530000 	cmp	r3, #0
    3044:	da000003 	ble	3058 <dirfile+0x1c4>
    3048:	e3a00001 	mov	r0, #1
    304c:	e59f1058 	ldr	r1, [pc, #88]	; 30ac <dirfile+0x218>
    3050:	eb000649 	bl	497c <printf>
    3054:	eb00053b 	bl	4548 <exit>
    3058:	e51b0008 	ldr	r0, [fp, #-8]
    305c:	eb000566 	bl	45fc <close>
    3060:	e3a00001 	mov	r0, #1
    3064:	e59f1044 	ldr	r1, [pc, #68]	; 30b0 <dirfile+0x21c>
    3068:	eb000643 	bl	497c <printf>
    306c:	e24bd004 	sub	sp, fp, #4
    3070:	e8bd8800 	pop	{fp, pc}
    3074:	00006298 	.word	0x00006298
    3078:	000062a8 	.word	0x000062a8
    307c:	000062b0 	.word	0x000062b0
    3080:	000062c8 	.word	0x000062c8
    3084:	000062e4 	.word	0x000062e4
    3088:	000062f0 	.word	0x000062f0
    308c:	00006310 	.word	0x00006310
    3090:	00006330 	.word	0x00006330
    3094:	00006350 	.word	0x00006350
    3098:	00006358 	.word	0x00006358
    309c:	00006378 	.word	0x00006378
    30a0:	00005878 	.word	0x00005878
    30a4:	00006390 	.word	0x00006390
    30a8:	00005420 	.word	0x00005420
    30ac:	000063b0 	.word	0x000063b0
    30b0:	000063c4 	.word	0x000063c4

000030b4 <iref>:
    30b4:	e92d4800 	push	{fp, lr}
    30b8:	e28db004 	add	fp, sp, #4
    30bc:	e24dd008 	sub	sp, sp, #8
    30c0:	e3a00001 	mov	r0, #1
    30c4:	e59f10ec 	ldr	r1, [pc, #236]	; 31b8 <iref+0x104>
    30c8:	eb00062b 	bl	497c <printf>
    30cc:	e3a03000 	mov	r3, #0
    30d0:	e50b3008 	str	r3, [fp, #-8]
    30d4:	ea00002d 	b	3190 <iref+0xdc>
    30d8:	e59f00dc 	ldr	r0, [pc, #220]	; 31bc <iref+0x108>
    30dc:	eb00058e 	bl	471c <mkdir>
    30e0:	e1a03000 	mov	r3, r0
    30e4:	e3530000 	cmp	r3, #0
    30e8:	0a000003 	beq	30fc <iref+0x48>
    30ec:	e3a00001 	mov	r0, #1
    30f0:	e59f10c8 	ldr	r1, [pc, #200]	; 31c0 <iref+0x10c>
    30f4:	eb000620 	bl	497c <printf>
    30f8:	eb000512 	bl	4548 <exit>
    30fc:	e59f00b8 	ldr	r0, [pc, #184]	; 31bc <iref+0x108>
    3100:	eb00058e 	bl	4740 <chdir>
    3104:	e1a03000 	mov	r3, r0
    3108:	e3530000 	cmp	r3, #0
    310c:	0a000003 	beq	3120 <iref+0x6c>
    3110:	e3a00001 	mov	r0, #1
    3114:	e59f10a8 	ldr	r1, [pc, #168]	; 31c4 <iref+0x110>
    3118:	eb000617 	bl	497c <printf>
    311c:	eb000509 	bl	4548 <exit>
    3120:	e59f00a0 	ldr	r0, [pc, #160]	; 31c8 <iref+0x114>
    3124:	eb00057c 	bl	471c <mkdir>
    3128:	e59f009c 	ldr	r0, [pc, #156]	; 31cc <iref+0x118>
    312c:	e59f1094 	ldr	r1, [pc, #148]	; 31c8 <iref+0x114>
    3130:	eb000570 	bl	46f8 <link>
    3134:	e59f008c 	ldr	r0, [pc, #140]	; 31c8 <iref+0x114>
    3138:	e3a01c02 	mov	r1, #512	; 0x200
    313c:	eb000549 	bl	4668 <open>
    3140:	e50b000c 	str	r0, [fp, #-12]
    3144:	e51b300c 	ldr	r3, [fp, #-12]
    3148:	e3530000 	cmp	r3, #0
    314c:	ba000001 	blt	3158 <iref+0xa4>
    3150:	e51b000c 	ldr	r0, [fp, #-12]
    3154:	eb000528 	bl	45fc <close>
    3158:	e59f0070 	ldr	r0, [pc, #112]	; 31d0 <iref+0x11c>
    315c:	e3a01c02 	mov	r1, #512	; 0x200
    3160:	eb000540 	bl	4668 <open>
    3164:	e50b000c 	str	r0, [fp, #-12]
    3168:	e51b300c 	ldr	r3, [fp, #-12]
    316c:	e3530000 	cmp	r3, #0
    3170:	ba000001 	blt	317c <iref+0xc8>
    3174:	e51b000c 	ldr	r0, [fp, #-12]
    3178:	eb00051f 	bl	45fc <close>
    317c:	e59f004c 	ldr	r0, [pc, #76]	; 31d0 <iref+0x11c>
    3180:	eb00054a 	bl	46b0 <unlink>
    3184:	e51b3008 	ldr	r3, [fp, #-8]
    3188:	e2833001 	add	r3, r3, #1
    318c:	e50b3008 	str	r3, [fp, #-8]
    3190:	e51b3008 	ldr	r3, [fp, #-8]
    3194:	e3530032 	cmp	r3, #50	; 0x32
    3198:	daffffce 	ble	30d8 <iref+0x24>
    319c:	e59f0030 	ldr	r0, [pc, #48]	; 31d4 <iref+0x120>
    31a0:	eb000566 	bl	4740 <chdir>
    31a4:	e3a00001 	mov	r0, #1
    31a8:	e59f1028 	ldr	r1, [pc, #40]	; 31d8 <iref+0x124>
    31ac:	eb0005f2 	bl	497c <printf>
    31b0:	e24bd004 	sub	sp, fp, #4
    31b4:	e8bd8800 	pop	{fp, pc}
    31b8:	000063d4 	.word	0x000063d4
    31bc:	000063e8 	.word	0x000063e8
    31c0:	000063f0 	.word	0x000063f0
    31c4:	00006404 	.word	0x00006404
    31c8:	00006418 	.word	0x00006418
    31cc:	00006350 	.word	0x00006350
    31d0:	0000641c 	.word	0x0000641c
    31d4:	00006220 	.word	0x00006220
    31d8:	00006420 	.word	0x00006420

000031dc <forktest>:
    31dc:	e92d4800 	push	{fp, lr}
    31e0:	e28db004 	add	fp, sp, #4
    31e4:	e24dd008 	sub	sp, sp, #8
    31e8:	e3a00001 	mov	r0, #1
    31ec:	e59f10d8 	ldr	r1, [pc, #216]	; 32cc <forktest+0xf0>
    31f0:	eb0005e1 	bl	497c <printf>
    31f4:	e3a03000 	mov	r3, #0
    31f8:	e50b3008 	str	r3, [fp, #-8]
    31fc:	ea00000c 	b	3234 <forktest+0x58>
    3200:	eb0004c7 	bl	4524 <fork>
    3204:	e50b000c 	str	r0, [fp, #-12]
    3208:	e51b300c 	ldr	r3, [fp, #-12]
    320c:	e3530000 	cmp	r3, #0
    3210:	aa000000 	bge	3218 <forktest+0x3c>
    3214:	ea000009 	b	3240 <forktest+0x64>
    3218:	e51b300c 	ldr	r3, [fp, #-12]
    321c:	e3530000 	cmp	r3, #0
    3220:	1a000000 	bne	3228 <forktest+0x4c>
    3224:	eb0004c7 	bl	4548 <exit>
    3228:	e51b3008 	ldr	r3, [fp, #-8]
    322c:	e2833001 	add	r3, r3, #1
    3230:	e50b3008 	str	r3, [fp, #-8]
    3234:	e51b3008 	ldr	r3, [fp, #-8]
    3238:	e3530ffa 	cmp	r3, #1000	; 0x3e8
    323c:	baffffef 	blt	3200 <forktest+0x24>
    3240:	e51b3008 	ldr	r3, [fp, #-8]
    3244:	e3530ffa 	cmp	r3, #1000	; 0x3e8
    3248:	1a000003 	bne	325c <forktest+0x80>
    324c:	e3a00001 	mov	r0, #1
    3250:	e59f1078 	ldr	r1, [pc, #120]	; 32d0 <forktest+0xf4>
    3254:	eb0005c8 	bl	497c <printf>
    3258:	eb0004ba 	bl	4548 <exit>
    325c:	ea00000a 	b	328c <forktest+0xb0>
    3260:	eb0004c1 	bl	456c <wait>
    3264:	e1a03000 	mov	r3, r0
    3268:	e3530000 	cmp	r3, #0
    326c:	aa000003 	bge	3280 <forktest+0xa4>
    3270:	e3a00001 	mov	r0, #1
    3274:	e59f1058 	ldr	r1, [pc, #88]	; 32d4 <forktest+0xf8>
    3278:	eb0005bf 	bl	497c <printf>
    327c:	eb0004b1 	bl	4548 <exit>
    3280:	e51b3008 	ldr	r3, [fp, #-8]
    3284:	e2433001 	sub	r3, r3, #1
    3288:	e50b3008 	str	r3, [fp, #-8]
    328c:	e51b3008 	ldr	r3, [fp, #-8]
    3290:	e3530000 	cmp	r3, #0
    3294:	cafffff1 	bgt	3260 <forktest+0x84>
    3298:	eb0004b3 	bl	456c <wait>
    329c:	e1a03000 	mov	r3, r0
    32a0:	e3730001 	cmn	r3, #1
    32a4:	0a000003 	beq	32b8 <forktest+0xdc>
    32a8:	e3a00001 	mov	r0, #1
    32ac:	e59f1024 	ldr	r1, [pc, #36]	; 32d8 <forktest+0xfc>
    32b0:	eb0005b1 	bl	497c <printf>
    32b4:	eb0004a3 	bl	4548 <exit>
    32b8:	e3a00001 	mov	r0, #1
    32bc:	e59f1018 	ldr	r1, [pc, #24]	; 32dc <forktest+0x100>
    32c0:	eb0005ad 	bl	497c <printf>
    32c4:	e24bd004 	sub	sp, fp, #4
    32c8:	e8bd8800 	pop	{fp, pc}
    32cc:	00006434 	.word	0x00006434
    32d0:	00006440 	.word	0x00006440
    32d4:	00006464 	.word	0x00006464
    32d8:	00006478 	.word	0x00006478
    32dc:	0000648c 	.word	0x0000648c

000032e0 <sbrktest>:
    32e0:	e92d4810 	push	{r4, fp, lr}
    32e4:	e28db008 	add	fp, sp, #8
    32e8:	e24dd044 	sub	sp, sp, #68	; 0x44
    32ec:	e59f3564 	ldr	r3, [pc, #1380]	; 3858 <sbrktest+0x578>
    32f0:	e5933000 	ldr	r3, [r3]
    32f4:	e1a00003 	mov	r0, r3
    32f8:	e59f155c 	ldr	r1, [pc, #1372]	; 385c <sbrktest+0x57c>
    32fc:	eb00059e 	bl	497c <printf>
    3300:	e3a00000 	mov	r0, #0
    3304:	eb000528 	bl	47ac <sbrk>
    3308:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    330c:	e3a00000 	mov	r0, #0
    3310:	eb000525 	bl	47ac <sbrk>
    3314:	e50b0010 	str	r0, [fp, #-16]
    3318:	e3a03000 	mov	r3, #0
    331c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    3320:	ea000019 	b	338c <sbrktest+0xac>
    3324:	e3a00001 	mov	r0, #1
    3328:	eb00051f 	bl	47ac <sbrk>
    332c:	e50b001c 	str	r0, [fp, #-28]	; 0xffffffe4
    3330:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
    3334:	e51b3010 	ldr	r3, [fp, #-16]
    3338:	e1520003 	cmp	r2, r3
    333c:	0a000009 	beq	3368 <sbrktest+0x88>
    3340:	e59f3510 	ldr	r3, [pc, #1296]	; 3858 <sbrktest+0x578>
    3344:	e5932000 	ldr	r2, [r3]
    3348:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    334c:	e58d3000 	str	r3, [sp]
    3350:	e1a00002 	mov	r0, r2
    3354:	e59f1504 	ldr	r1, [pc, #1284]	; 3860 <sbrktest+0x580>
    3358:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    335c:	e51b3010 	ldr	r3, [fp, #-16]
    3360:	eb000585 	bl	497c <printf>
    3364:	eb000477 	bl	4548 <exit>
    3368:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    336c:	e3a02001 	mov	r2, #1
    3370:	e5c32000 	strb	r2, [r3]
    3374:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    3378:	e2833001 	add	r3, r3, #1
    337c:	e50b3010 	str	r3, [fp, #-16]
    3380:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    3384:	e2833001 	add	r3, r3, #1
    3388:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    338c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    3390:	e59f24cc 	ldr	r2, [pc, #1228]	; 3864 <sbrktest+0x584>
    3394:	e1530002 	cmp	r3, r2
    3398:	daffffe1 	ble	3324 <sbrktest+0x44>
    339c:	eb000460 	bl	4524 <fork>
    33a0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    33a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    33a8:	e3530000 	cmp	r3, #0
    33ac:	aa000005 	bge	33c8 <sbrktest+0xe8>
    33b0:	e59f34a0 	ldr	r3, [pc, #1184]	; 3858 <sbrktest+0x578>
    33b4:	e5933000 	ldr	r3, [r3]
    33b8:	e1a00003 	mov	r0, r3
    33bc:	e59f14a4 	ldr	r1, [pc, #1188]	; 3868 <sbrktest+0x588>
    33c0:	eb00056d 	bl	497c <printf>
    33c4:	eb00045f 	bl	4548 <exit>
    33c8:	e3a00001 	mov	r0, #1
    33cc:	eb0004f6 	bl	47ac <sbrk>
    33d0:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    33d4:	e3a00001 	mov	r0, #1
    33d8:	eb0004f3 	bl	47ac <sbrk>
    33dc:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    33e0:	e51b3010 	ldr	r3, [fp, #-16]
    33e4:	e2832001 	add	r2, r3, #1
    33e8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    33ec:	e1520003 	cmp	r2, r3
    33f0:	0a000005 	beq	340c <sbrktest+0x12c>
    33f4:	e59f345c 	ldr	r3, [pc, #1116]	; 3858 <sbrktest+0x578>
    33f8:	e5933000 	ldr	r3, [r3]
    33fc:	e1a00003 	mov	r0, r3
    3400:	e59f1464 	ldr	r1, [pc, #1124]	; 386c <sbrktest+0x58c>
    3404:	eb00055c 	bl	497c <printf>
    3408:	eb00044e 	bl	4548 <exit>
    340c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    3410:	e3530000 	cmp	r3, #0
    3414:	1a000000 	bne	341c <sbrktest+0x13c>
    3418:	eb00044a 	bl	4548 <exit>
    341c:	eb000452 	bl	456c <wait>
    3420:	e3a00000 	mov	r0, #0
    3424:	eb0004e0 	bl	47ac <sbrk>
    3428:	e50b0010 	str	r0, [fp, #-16]
    342c:	e51b3010 	ldr	r3, [fp, #-16]
    3430:	e2633519 	rsb	r3, r3, #104857600	; 0x6400000
    3434:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    3438:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    343c:	e1a00003 	mov	r0, r3
    3440:	eb0004d9 	bl	47ac <sbrk>
    3444:	e50b002c 	str	r0, [fp, #-44]	; 0xffffffd4
    3448:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
    344c:	e51b3010 	ldr	r3, [fp, #-16]
    3450:	e1520003 	cmp	r2, r3
    3454:	0a000005 	beq	3470 <sbrktest+0x190>
    3458:	e59f33f8 	ldr	r3, [pc, #1016]	; 3858 <sbrktest+0x578>
    345c:	e5933000 	ldr	r3, [r3]
    3460:	e1a00003 	mov	r0, r3
    3464:	e59f1404 	ldr	r1, [pc, #1028]	; 3870 <sbrktest+0x590>
    3468:	eb000543 	bl	497c <printf>
    346c:	eb000435 	bl	4548 <exit>
    3470:	e59f33fc 	ldr	r3, [pc, #1020]	; 3874 <sbrktest+0x594>
    3474:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
    3478:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
    347c:	e3a02063 	mov	r2, #99	; 0x63
    3480:	e5c32000 	strb	r2, [r3]
    3484:	e3a00000 	mov	r0, #0
    3488:	eb0004c7 	bl	47ac <sbrk>
    348c:	e50b0010 	str	r0, [fp, #-16]
    3490:	e59f03e0 	ldr	r0, [pc, #992]	; 3878 <sbrktest+0x598>
    3494:	eb0004c4 	bl	47ac <sbrk>
    3498:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    349c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    34a0:	e3730001 	cmn	r3, #1
    34a4:	1a000005 	bne	34c0 <sbrktest+0x1e0>
    34a8:	e59f33a8 	ldr	r3, [pc, #936]	; 3858 <sbrktest+0x578>
    34ac:	e5933000 	ldr	r3, [r3]
    34b0:	e1a00003 	mov	r0, r3
    34b4:	e59f13c0 	ldr	r1, [pc, #960]	; 387c <sbrktest+0x59c>
    34b8:	eb00052f 	bl	497c <printf>
    34bc:	eb000421 	bl	4548 <exit>
    34c0:	e3a00000 	mov	r0, #0
    34c4:	eb0004b8 	bl	47ac <sbrk>
    34c8:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    34cc:	e51b3010 	ldr	r3, [fp, #-16]
    34d0:	e2432a01 	sub	r2, r3, #4096	; 0x1000
    34d4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    34d8:	e1520003 	cmp	r2, r3
    34dc:	0a000007 	beq	3500 <sbrktest+0x220>
    34e0:	e59f3370 	ldr	r3, [pc, #880]	; 3858 <sbrktest+0x578>
    34e4:	e5933000 	ldr	r3, [r3]
    34e8:	e1a00003 	mov	r0, r3
    34ec:	e59f138c 	ldr	r1, [pc, #908]	; 3880 <sbrktest+0x5a0>
    34f0:	e51b2010 	ldr	r2, [fp, #-16]
    34f4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    34f8:	eb00051f 	bl	497c <printf>
    34fc:	eb000411 	bl	4548 <exit>
    3500:	e3a00000 	mov	r0, #0
    3504:	eb0004a8 	bl	47ac <sbrk>
    3508:	e50b0010 	str	r0, [fp, #-16]
    350c:	e3a00a01 	mov	r0, #4096	; 0x1000
    3510:	eb0004a5 	bl	47ac <sbrk>
    3514:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    3518:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    351c:	e51b3010 	ldr	r3, [fp, #-16]
    3520:	e1520003 	cmp	r2, r3
    3524:	1a000006 	bne	3544 <sbrktest+0x264>
    3528:	e3a00000 	mov	r0, #0
    352c:	eb00049e 	bl	47ac <sbrk>
    3530:	e1a02000 	mov	r2, r0
    3534:	e51b3010 	ldr	r3, [fp, #-16]
    3538:	e2833a01 	add	r3, r3, #4096	; 0x1000
    353c:	e1520003 	cmp	r2, r3
    3540:	0a000007 	beq	3564 <sbrktest+0x284>
    3544:	e59f330c 	ldr	r3, [pc, #780]	; 3858 <sbrktest+0x578>
    3548:	e5933000 	ldr	r3, [r3]
    354c:	e1a00003 	mov	r0, r3
    3550:	e59f132c 	ldr	r1, [pc, #812]	; 3884 <sbrktest+0x5a4>
    3554:	e51b2010 	ldr	r2, [fp, #-16]
    3558:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    355c:	eb000506 	bl	497c <printf>
    3560:	eb0003f8 	bl	4548 <exit>
    3564:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
    3568:	e5d33000 	ldrb	r3, [r3]
    356c:	e3530063 	cmp	r3, #99	; 0x63
    3570:	1a000005 	bne	358c <sbrktest+0x2ac>
    3574:	e59f32dc 	ldr	r3, [pc, #732]	; 3858 <sbrktest+0x578>
    3578:	e5933000 	ldr	r3, [r3]
    357c:	e1a00003 	mov	r0, r3
    3580:	e59f1300 	ldr	r1, [pc, #768]	; 3888 <sbrktest+0x5a8>
    3584:	eb0004fc 	bl	497c <printf>
    3588:	eb0003ee 	bl	4548 <exit>
    358c:	e3a00000 	mov	r0, #0
    3590:	eb000485 	bl	47ac <sbrk>
    3594:	e50b0010 	str	r0, [fp, #-16]
    3598:	e51b4018 	ldr	r4, [fp, #-24]	; 0xffffffe8
    359c:	e3a00000 	mov	r0, #0
    35a0:	eb000481 	bl	47ac <sbrk>
    35a4:	e1a03000 	mov	r3, r0
    35a8:	e0633004 	rsb	r3, r3, r4
    35ac:	e1a00003 	mov	r0, r3
    35b0:	eb00047d 	bl	47ac <sbrk>
    35b4:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    35b8:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    35bc:	e51b3010 	ldr	r3, [fp, #-16]
    35c0:	e1520003 	cmp	r2, r3
    35c4:	0a000007 	beq	35e8 <sbrktest+0x308>
    35c8:	e59f3288 	ldr	r3, [pc, #648]	; 3858 <sbrktest+0x578>
    35cc:	e5933000 	ldr	r3, [r3]
    35d0:	e1a00003 	mov	r0, r3
    35d4:	e59f12b0 	ldr	r1, [pc, #688]	; 388c <sbrktest+0x5ac>
    35d8:	e51b2010 	ldr	r2, [fp, #-16]
    35dc:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    35e0:	eb0004e5 	bl	497c <printf>
    35e4:	eb0003d7 	bl	4548 <exit>
    35e8:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
    35ec:	e50b3010 	str	r3, [fp, #-16]
    35f0:	ea00001f 	b	3674 <sbrktest+0x394>
    35f4:	eb000463 	bl	4788 <getpid>
    35f8:	e50b0034 	str	r0, [fp, #-52]	; 0xffffffcc
    35fc:	eb0003c8 	bl	4524 <fork>
    3600:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
    3604:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    3608:	e3530000 	cmp	r3, #0
    360c:	aa000005 	bge	3628 <sbrktest+0x348>
    3610:	e59f3240 	ldr	r3, [pc, #576]	; 3858 <sbrktest+0x578>
    3614:	e5933000 	ldr	r3, [r3]
    3618:	e1a00003 	mov	r0, r3
    361c:	e59f126c 	ldr	r1, [pc, #620]	; 3890 <sbrktest+0x5b0>
    3620:	eb0004d5 	bl	497c <printf>
    3624:	eb0003c7 	bl	4548 <exit>
    3628:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    362c:	e3530000 	cmp	r3, #0
    3630:	1a00000a 	bne	3660 <sbrktest+0x380>
    3634:	e59f321c 	ldr	r3, [pc, #540]	; 3858 <sbrktest+0x578>
    3638:	e5932000 	ldr	r2, [r3]
    363c:	e51b3010 	ldr	r3, [fp, #-16]
    3640:	e5d33000 	ldrb	r3, [r3]
    3644:	e1a00002 	mov	r0, r2
    3648:	e59f1244 	ldr	r1, [pc, #580]	; 3894 <sbrktest+0x5b4>
    364c:	e51b2010 	ldr	r2, [fp, #-16]
    3650:	eb0004c9 	bl	497c <printf>
    3654:	e51b0034 	ldr	r0, [fp, #-52]	; 0xffffffcc
    3658:	eb0003f0 	bl	4620 <kill>
    365c:	eb0003b9 	bl	4548 <exit>
    3660:	eb0003c1 	bl	456c <wait>
    3664:	e51b3010 	ldr	r3, [fp, #-16]
    3668:	e2833cc3 	add	r3, r3, #49920	; 0xc300
    366c:	e2833050 	add	r3, r3, #80	; 0x50
    3670:	e50b3010 	str	r3, [fp, #-16]
    3674:	e51b3010 	ldr	r3, [fp, #-16]
    3678:	e59f2218 	ldr	r2, [pc, #536]	; 3898 <sbrktest+0x5b8>
    367c:	e1530002 	cmp	r3, r2
    3680:	9affffdb 	bls	35f4 <sbrktest+0x314>
    3684:	e24b303c 	sub	r3, fp, #60	; 0x3c
    3688:	e1a00003 	mov	r0, r3
    368c:	eb0003bf 	bl	4590 <pipe>
    3690:	e1a03000 	mov	r3, r0
    3694:	e3530000 	cmp	r3, #0
    3698:	0a000003 	beq	36ac <sbrktest+0x3cc>
    369c:	e3a00001 	mov	r0, #1
    36a0:	e59f11f4 	ldr	r1, [pc, #500]	; 389c <sbrktest+0x5bc>
    36a4:	eb0004b4 	bl	497c <printf>
    36a8:	eb0003a6 	bl	4548 <exit>
    36ac:	e3a03000 	mov	r3, #0
    36b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    36b4:	ea00002b 	b	3768 <sbrktest+0x488>
    36b8:	eb000399 	bl	4524 <fork>
    36bc:	e1a02000 	mov	r2, r0
    36c0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    36c4:	e1a03103 	lsl	r3, r3, #2
    36c8:	e24b100c 	sub	r1, fp, #12
    36cc:	e0813003 	add	r3, r1, r3
    36d0:	e5032034 	str	r2, [r3, #-52]	; 0xffffffcc
    36d4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    36d8:	e1a03103 	lsl	r3, r3, #2
    36dc:	e24b200c 	sub	r2, fp, #12
    36e0:	e0823003 	add	r3, r2, r3
    36e4:	e5133034 	ldr	r3, [r3, #-52]	; 0xffffffcc
    36e8:	e3530000 	cmp	r3, #0
    36ec:	1a00000d 	bne	3728 <sbrktest+0x448>
    36f0:	e3a00000 	mov	r0, #0
    36f4:	eb00042c 	bl	47ac <sbrk>
    36f8:	e1a03000 	mov	r3, r0
    36fc:	e2633519 	rsb	r3, r3, #104857600	; 0x6400000
    3700:	e1a00003 	mov	r0, r3
    3704:	eb000428 	bl	47ac <sbrk>
    3708:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    370c:	e1a00003 	mov	r0, r3
    3710:	e59f1188 	ldr	r1, [pc, #392]	; 38a0 <sbrktest+0x5c0>
    3714:	e3a02001 	mov	r2, #1
    3718:	eb0003ae 	bl	45d8 <write>
    371c:	e3a00ffa 	mov	r0, #1000	; 0x3e8
    3720:	eb00042a 	bl	47d0 <sleep>
    3724:	eafffffc 	b	371c <sbrktest+0x43c>
    3728:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    372c:	e1a03103 	lsl	r3, r3, #2
    3730:	e24b200c 	sub	r2, fp, #12
    3734:	e0823003 	add	r3, r2, r3
    3738:	e5133034 	ldr	r3, [r3, #-52]	; 0xffffffcc
    373c:	e3730001 	cmn	r3, #1
    3740:	0a000005 	beq	375c <sbrktest+0x47c>
    3744:	e51b203c 	ldr	r2, [fp, #-60]	; 0xffffffc4
    3748:	e24b3041 	sub	r3, fp, #65	; 0x41
    374c:	e1a00002 	mov	r0, r2
    3750:	e1a01003 	mov	r1, r3
    3754:	e3a02001 	mov	r2, #1
    3758:	eb000395 	bl	45b4 <read>
    375c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    3760:	e2833001 	add	r3, r3, #1
    3764:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    3768:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    376c:	e3530000 	cmp	r3, #0
    3770:	0affffd0 	beq	36b8 <sbrktest+0x3d8>
    3774:	e3a00a01 	mov	r0, #4096	; 0x1000
    3778:	eb00040b 	bl	47ac <sbrk>
    377c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    3780:	e3a03000 	mov	r3, #0
    3784:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    3788:	ea000012 	b	37d8 <sbrktest+0x4f8>
    378c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    3790:	e1a03103 	lsl	r3, r3, #2
    3794:	e24b200c 	sub	r2, fp, #12
    3798:	e0823003 	add	r3, r2, r3
    379c:	e5133034 	ldr	r3, [r3, #-52]	; 0xffffffcc
    37a0:	e3730001 	cmn	r3, #1
    37a4:	1a000000 	bne	37ac <sbrktest+0x4cc>
    37a8:	ea000007 	b	37cc <sbrktest+0x4ec>
    37ac:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    37b0:	e1a03103 	lsl	r3, r3, #2
    37b4:	e24b200c 	sub	r2, fp, #12
    37b8:	e0823003 	add	r3, r2, r3
    37bc:	e5133034 	ldr	r3, [r3, #-52]	; 0xffffffcc
    37c0:	e1a00003 	mov	r0, r3
    37c4:	eb000395 	bl	4620 <kill>
    37c8:	eb000367 	bl	456c <wait>
    37cc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    37d0:	e2833001 	add	r3, r3, #1
    37d4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    37d8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    37dc:	e3530000 	cmp	r3, #0
    37e0:	0affffe9 	beq	378c <sbrktest+0x4ac>
    37e4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    37e8:	e3730001 	cmn	r3, #1
    37ec:	1a000005 	bne	3808 <sbrktest+0x528>
    37f0:	e59f3060 	ldr	r3, [pc, #96]	; 3858 <sbrktest+0x578>
    37f4:	e5933000 	ldr	r3, [r3]
    37f8:	e1a00003 	mov	r0, r3
    37fc:	e59f10a0 	ldr	r1, [pc, #160]	; 38a4 <sbrktest+0x5c4>
    3800:	eb00045d 	bl	497c <printf>
    3804:	eb00034f 	bl	4548 <exit>
    3808:	e3a00000 	mov	r0, #0
    380c:	eb0003e6 	bl	47ac <sbrk>
    3810:	e1a02000 	mov	r2, r0
    3814:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    3818:	e1520003 	cmp	r2, r3
    381c:	9a000006 	bls	383c <sbrktest+0x55c>
    3820:	e51b4018 	ldr	r4, [fp, #-24]	; 0xffffffe8
    3824:	e3a00000 	mov	r0, #0
    3828:	eb0003df 	bl	47ac <sbrk>
    382c:	e1a03000 	mov	r3, r0
    3830:	e0633004 	rsb	r3, r3, r4
    3834:	e1a00003 	mov	r0, r3
    3838:	eb0003db 	bl	47ac <sbrk>
    383c:	e59f3014 	ldr	r3, [pc, #20]	; 3858 <sbrktest+0x578>
    3840:	e5933000 	ldr	r3, [r3]
    3844:	e1a00003 	mov	r0, r3
    3848:	e59f1058 	ldr	r1, [pc, #88]	; 38a8 <sbrktest+0x5c8>
    384c:	eb00044a 	bl	497c <printf>
    3850:	e24bd008 	sub	sp, fp, #8
    3854:	e8bd8810 	pop	{r4, fp, pc}
    3858:	000068c8 	.word	0x000068c8
    385c:	0000649c 	.word	0x0000649c
    3860:	000064a8 	.word	0x000064a8
    3864:	00001387 	.word	0x00001387
    3868:	000064c4 	.word	0x000064c4
    386c:	000064dc 	.word	0x000064dc
    3870:	000064f8 	.word	0x000064f8
    3874:	063fffff 	.word	0x063fffff
    3878:	fffff000 	.word	0xfffff000
    387c:	00006538 	.word	0x00006538
    3880:	00006554 	.word	0x00006554
    3884:	0000658c 	.word	0x0000658c
    3888:	000065b4 	.word	0x000065b4
    388c:	000065e4 	.word	0x000065e4
    3890:	00005470 	.word	0x00005470
    3894:	00006608 	.word	0x00006608
    3898:	801e847f 	.word	0x801e847f
    389c:	000053b0 	.word	0x000053b0
    38a0:	00005420 	.word	0x00005420
    38a4:	00006624 	.word	0x00006624
    38a8:	00006640 	.word	0x00006640

000038ac <validateint>:
    38ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    38b0:	e28db000 	add	fp, sp, #0
    38b4:	e24dd00c 	sub	sp, sp, #12
    38b8:	e50b0008 	str	r0, [fp, #-8]
    38bc:	e24bd000 	sub	sp, fp, #0
    38c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    38c4:	e12fff1e 	bx	lr

000038c8 <validatetest>:
    38c8:	e92d4800 	push	{fp, lr}
    38cc:	e28db004 	add	fp, sp, #4
    38d0:	e24dd010 	sub	sp, sp, #16
    38d4:	e59f30cc 	ldr	r3, [pc, #204]	; 39a8 <validatetest+0xe0>
    38d8:	e5933000 	ldr	r3, [r3]
    38dc:	e1a00003 	mov	r0, r3
    38e0:	e59f10c4 	ldr	r1, [pc, #196]	; 39ac <validatetest+0xe4>
    38e4:	eb000424 	bl	497c <printf>
    38e8:	e59f30c0 	ldr	r3, [pc, #192]	; 39b0 <validatetest+0xe8>
    38ec:	e50b300c 	str	r3, [fp, #-12]
    38f0:	e3a03000 	mov	r3, #0
    38f4:	e50b3008 	str	r3, [fp, #-8]
    38f8:	ea00001f 	b	397c <validatetest+0xb4>
    38fc:	eb000308 	bl	4524 <fork>
    3900:	e50b0010 	str	r0, [fp, #-16]
    3904:	e51b3010 	ldr	r3, [fp, #-16]
    3908:	e3530000 	cmp	r3, #0
    390c:	1a000003 	bne	3920 <validatetest+0x58>
    3910:	e51b3008 	ldr	r3, [fp, #-8]
    3914:	e1a00003 	mov	r0, r3
    3918:	ebffffe3 	bl	38ac <validateint>
    391c:	eb000309 	bl	4548 <exit>
    3920:	e3a00000 	mov	r0, #0
    3924:	eb0003a9 	bl	47d0 <sleep>
    3928:	e3a00000 	mov	r0, #0
    392c:	eb0003a7 	bl	47d0 <sleep>
    3930:	e51b0010 	ldr	r0, [fp, #-16]
    3934:	eb000339 	bl	4620 <kill>
    3938:	eb00030b 	bl	456c <wait>
    393c:	e51b3008 	ldr	r3, [fp, #-8]
    3940:	e59f006c 	ldr	r0, [pc, #108]	; 39b4 <validatetest+0xec>
    3944:	e1a01003 	mov	r1, r3
    3948:	eb00036a 	bl	46f8 <link>
    394c:	e1a03000 	mov	r3, r0
    3950:	e3730001 	cmn	r3, #1
    3954:	0a000005 	beq	3970 <validatetest+0xa8>
    3958:	e59f3048 	ldr	r3, [pc, #72]	; 39a8 <validatetest+0xe0>
    395c:	e5933000 	ldr	r3, [r3]
    3960:	e1a00003 	mov	r0, r3
    3964:	e59f104c 	ldr	r1, [pc, #76]	; 39b8 <validatetest+0xf0>
    3968:	eb000403 	bl	497c <printf>
    396c:	eb0002f5 	bl	4548 <exit>
    3970:	e51b3008 	ldr	r3, [fp, #-8]
    3974:	e2833a01 	add	r3, r3, #4096	; 0x1000
    3978:	e50b3008 	str	r3, [fp, #-8]
    397c:	e51b200c 	ldr	r2, [fp, #-12]
    3980:	e51b3008 	ldr	r3, [fp, #-8]
    3984:	e1520003 	cmp	r2, r3
    3988:	2affffdb 	bcs	38fc <validatetest+0x34>
    398c:	e59f3014 	ldr	r3, [pc, #20]	; 39a8 <validatetest+0xe0>
    3990:	e5933000 	ldr	r3, [r3]
    3994:	e1a00003 	mov	r0, r3
    3998:	e59f101c 	ldr	r1, [pc, #28]	; 39bc <validatetest+0xf4>
    399c:	eb0003f6 	bl	497c <printf>
    39a0:	e24bd004 	sub	sp, fp, #4
    39a4:	e8bd8800 	pop	{fp, pc}
    39a8:	000068c8 	.word	0x000068c8
    39ac:	00006650 	.word	0x00006650
    39b0:	00113000 	.word	0x00113000
    39b4:	00006660 	.word	0x00006660
    39b8:	0000666c 	.word	0x0000666c
    39bc:	00006688 	.word	0x00006688

000039c0 <bsstest>:
    39c0:	e92d4800 	push	{fp, lr}
    39c4:	e28db004 	add	fp, sp, #4
    39c8:	e24dd008 	sub	sp, sp, #8
    39cc:	e59f3080 	ldr	r3, [pc, #128]	; 3a54 <bsstest+0x94>
    39d0:	e5933000 	ldr	r3, [r3]
    39d4:	e1a00003 	mov	r0, r3
    39d8:	e59f1078 	ldr	r1, [pc, #120]	; 3a58 <bsstest+0x98>
    39dc:	eb0003e6 	bl	497c <printf>
    39e0:	e3a03000 	mov	r3, #0
    39e4:	e50b3008 	str	r3, [fp, #-8]
    39e8:	ea00000e 	b	3a28 <bsstest+0x68>
    39ec:	e59f2068 	ldr	r2, [pc, #104]	; 3a5c <bsstest+0x9c>
    39f0:	e51b3008 	ldr	r3, [fp, #-8]
    39f4:	e0823003 	add	r3, r2, r3
    39f8:	e5d33000 	ldrb	r3, [r3]
    39fc:	e3530000 	cmp	r3, #0
    3a00:	0a000005 	beq	3a1c <bsstest+0x5c>
    3a04:	e59f3048 	ldr	r3, [pc, #72]	; 3a54 <bsstest+0x94>
    3a08:	e5933000 	ldr	r3, [r3]
    3a0c:	e1a00003 	mov	r0, r3
    3a10:	e59f1048 	ldr	r1, [pc, #72]	; 3a60 <bsstest+0xa0>
    3a14:	eb0003d8 	bl	497c <printf>
    3a18:	eb0002ca 	bl	4548 <exit>
    3a1c:	e51b3008 	ldr	r3, [fp, #-8]
    3a20:	e2833001 	add	r3, r3, #1
    3a24:	e50b3008 	str	r3, [fp, #-8]
    3a28:	e51b3008 	ldr	r3, [fp, #-8]
    3a2c:	e59f2030 	ldr	r2, [pc, #48]	; 3a64 <bsstest+0xa4>
    3a30:	e1530002 	cmp	r3, r2
    3a34:	9affffec 	bls	39ec <bsstest+0x2c>
    3a38:	e59f3014 	ldr	r3, [pc, #20]	; 3a54 <bsstest+0x94>
    3a3c:	e5933000 	ldr	r3, [r3]
    3a40:	e1a00003 	mov	r0, r3
    3a44:	e59f101c 	ldr	r1, [pc, #28]	; 3a68 <bsstest+0xa8>
    3a48:	eb0003cb 	bl	497c <printf>
    3a4c:	e24bd004 	sub	sp, fp, #4
    3a50:	e8bd8800 	pop	{fp, pc}
    3a54:	000068c8 	.word	0x000068c8
    3a58:	00006698 	.word	0x00006698
    3a5c:	00006970 	.word	0x00006970
    3a60:	000066a4 	.word	0x000066a4
    3a64:	0000270f 	.word	0x0000270f
    3a68:	000066b8 	.word	0x000066b8

00003a6c <bigargtest>:
    3a6c:	e92d4800 	push	{fp, lr}
    3a70:	e28db004 	add	fp, sp, #4
    3a74:	e24dd010 	sub	sp, sp, #16
    3a78:	e59f0118 	ldr	r0, [pc, #280]	; 3b98 <bigargtest+0x12c>
    3a7c:	eb00030b 	bl	46b0 <unlink>
    3a80:	eb0002a7 	bl	4524 <fork>
    3a84:	e50b000c 	str	r0, [fp, #-12]
    3a88:	e51b300c 	ldr	r3, [fp, #-12]
    3a8c:	e3530000 	cmp	r3, #0
    3a90:	1a000023 	bne	3b24 <bigargtest+0xb8>
    3a94:	e3a03000 	mov	r3, #0
    3a98:	e50b3008 	str	r3, [fp, #-8]
    3a9c:	ea000006 	b	3abc <bigargtest+0x50>
    3aa0:	e59f20f4 	ldr	r2, [pc, #244]	; 3b9c <bigargtest+0x130>
    3aa4:	e51b3008 	ldr	r3, [fp, #-8]
    3aa8:	e59f10f0 	ldr	r1, [pc, #240]	; 3ba0 <bigargtest+0x134>
    3aac:	e7821103 	str	r1, [r2, r3, lsl #2]
    3ab0:	e51b3008 	ldr	r3, [fp, #-8]
    3ab4:	e2833001 	add	r3, r3, #1
    3ab8:	e50b3008 	str	r3, [fp, #-8]
    3abc:	e51b3008 	ldr	r3, [fp, #-8]
    3ac0:	e353001e 	cmp	r3, #30
    3ac4:	dafffff5 	ble	3aa0 <bigargtest+0x34>
    3ac8:	e59f30cc 	ldr	r3, [pc, #204]	; 3b9c <bigargtest+0x130>
    3acc:	e3a02000 	mov	r2, #0
    3ad0:	e583207c 	str	r2, [r3, #124]	; 0x7c
    3ad4:	e59f30c8 	ldr	r3, [pc, #200]	; 3ba4 <bigargtest+0x138>
    3ad8:	e5933000 	ldr	r3, [r3]
    3adc:	e1a00003 	mov	r0, r3
    3ae0:	e59f10c0 	ldr	r1, [pc, #192]	; 3ba8 <bigargtest+0x13c>
    3ae4:	eb0003a4 	bl	497c <printf>
    3ae8:	e59f00bc 	ldr	r0, [pc, #188]	; 3bac <bigargtest+0x140>
    3aec:	e59f10a8 	ldr	r1, [pc, #168]	; 3b9c <bigargtest+0x130>
    3af0:	eb0002d3 	bl	4644 <exec>
    3af4:	e59f30a8 	ldr	r3, [pc, #168]	; 3ba4 <bigargtest+0x138>
    3af8:	e5933000 	ldr	r3, [r3]
    3afc:	e1a00003 	mov	r0, r3
    3b00:	e59f10a8 	ldr	r1, [pc, #168]	; 3bb0 <bigargtest+0x144>
    3b04:	eb00039c 	bl	497c <printf>
    3b08:	e59f0088 	ldr	r0, [pc, #136]	; 3b98 <bigargtest+0x12c>
    3b0c:	e3a01c02 	mov	r1, #512	; 0x200
    3b10:	eb0002d4 	bl	4668 <open>
    3b14:	e50b0010 	str	r0, [fp, #-16]
    3b18:	e51b0010 	ldr	r0, [fp, #-16]
    3b1c:	eb0002b6 	bl	45fc <close>
    3b20:	eb000288 	bl	4548 <exit>
    3b24:	e51b300c 	ldr	r3, [fp, #-12]
    3b28:	e3530000 	cmp	r3, #0
    3b2c:	aa000005 	bge	3b48 <bigargtest+0xdc>
    3b30:	e59f306c 	ldr	r3, [pc, #108]	; 3ba4 <bigargtest+0x138>
    3b34:	e5933000 	ldr	r3, [r3]
    3b38:	e1a00003 	mov	r0, r3
    3b3c:	e59f1070 	ldr	r1, [pc, #112]	; 3bb4 <bigargtest+0x148>
    3b40:	eb00038d 	bl	497c <printf>
    3b44:	eb00027f 	bl	4548 <exit>
    3b48:	eb000287 	bl	456c <wait>
    3b4c:	e59f0044 	ldr	r0, [pc, #68]	; 3b98 <bigargtest+0x12c>
    3b50:	e3a01000 	mov	r1, #0
    3b54:	eb0002c3 	bl	4668 <open>
    3b58:	e50b0010 	str	r0, [fp, #-16]
    3b5c:	e51b3010 	ldr	r3, [fp, #-16]
    3b60:	e3530000 	cmp	r3, #0
    3b64:	aa000005 	bge	3b80 <bigargtest+0x114>
    3b68:	e59f3034 	ldr	r3, [pc, #52]	; 3ba4 <bigargtest+0x138>
    3b6c:	e5933000 	ldr	r3, [r3]
    3b70:	e1a00003 	mov	r0, r3
    3b74:	e59f103c 	ldr	r1, [pc, #60]	; 3bb8 <bigargtest+0x14c>
    3b78:	eb00037f 	bl	497c <printf>
    3b7c:	eb000271 	bl	4548 <exit>
    3b80:	e51b0010 	ldr	r0, [fp, #-16]
    3b84:	eb00029c 	bl	45fc <close>
    3b88:	e59f0008 	ldr	r0, [pc, #8]	; 3b98 <bigargtest+0x12c>
    3b8c:	eb0002c7 	bl	46b0 <unlink>
    3b90:	e24bd004 	sub	sp, fp, #4
    3b94:	e8bd8800 	pop	{fp, pc}
    3b98:	000066c8 	.word	0x000066c8
    3b9c:	000068e4 	.word	0x000068e4
    3ba0:	000066d4 	.word	0x000066d4
    3ba4:	000068c8 	.word	0x000068c8
    3ba8:	000067b4 	.word	0x000067b4
    3bac:	0000502c 	.word	0x0000502c
    3bb0:	000067c4 	.word	0x000067c4
    3bb4:	000067d4 	.word	0x000067d4
    3bb8:	000067f0 	.word	0x000067f0

00003bbc <fsfull>:
    3bbc:	e92d4800 	push	{fp, lr}
    3bc0:	e28db004 	add	fp, sp, #4
    3bc4:	e24dd058 	sub	sp, sp, #88	; 0x58
    3bc8:	e3a03000 	mov	r3, #0
    3bcc:	e50b300c 	str	r3, [fp, #-12]
    3bd0:	e3a00001 	mov	r0, #1
    3bd4:	e59f1320 	ldr	r1, [pc, #800]	; 3efc <fsfull+0x340>
    3bd8:	eb000367 	bl	497c <printf>
    3bdc:	e3a03000 	mov	r3, #0
    3be0:	e50b3008 	str	r3, [fp, #-8]
    3be4:	e3a03066 	mov	r3, #102	; 0x66
    3be8:	e54b3058 	strb	r3, [fp, #-88]	; 0xffffffa8
    3bec:	e51b3008 	ldr	r3, [fp, #-8]
    3bf0:	e59f2308 	ldr	r2, [pc, #776]	; 3f00 <fsfull+0x344>
    3bf4:	e0c21392 	smull	r1, r2, r2, r3
    3bf8:	e1a02342 	asr	r2, r2, #6
    3bfc:	e1a03fc3 	asr	r3, r3, #31
    3c00:	e0633002 	rsb	r3, r3, r2
    3c04:	e6ef3073 	uxtb	r3, r3
    3c08:	e2833030 	add	r3, r3, #48	; 0x30
    3c0c:	e6ef3073 	uxtb	r3, r3
    3c10:	e54b3057 	strb	r3, [fp, #-87]	; 0xffffffa9
    3c14:	e51b2008 	ldr	r2, [fp, #-8]
    3c18:	e59f32e0 	ldr	r3, [pc, #736]	; 3f00 <fsfull+0x344>
    3c1c:	e0c31293 	smull	r1, r3, r3, r2
    3c20:	e1a01343 	asr	r1, r3, #6
    3c24:	e1a03fc2 	asr	r3, r2, #31
    3c28:	e0633001 	rsb	r3, r3, r1
    3c2c:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    3c30:	e0030391 	mul	r3, r1, r3
    3c34:	e0633002 	rsb	r3, r3, r2
    3c38:	e59f22c4 	ldr	r2, [pc, #708]	; 3f04 <fsfull+0x348>
    3c3c:	e0c21392 	smull	r1, r2, r2, r3
    3c40:	e1a022c2 	asr	r2, r2, #5
    3c44:	e1a03fc3 	asr	r3, r3, #31
    3c48:	e0633002 	rsb	r3, r3, r2
    3c4c:	e6ef3073 	uxtb	r3, r3
    3c50:	e2833030 	add	r3, r3, #48	; 0x30
    3c54:	e6ef3073 	uxtb	r3, r3
    3c58:	e54b3056 	strb	r3, [fp, #-86]	; 0xffffffaa
    3c5c:	e51b2008 	ldr	r2, [fp, #-8]
    3c60:	e59f329c 	ldr	r3, [pc, #668]	; 3f04 <fsfull+0x348>
    3c64:	e0c31293 	smull	r1, r3, r3, r2
    3c68:	e1a012c3 	asr	r1, r3, #5
    3c6c:	e1a03fc2 	asr	r3, r2, #31
    3c70:	e0633001 	rsb	r3, r3, r1
    3c74:	e3a01064 	mov	r1, #100	; 0x64
    3c78:	e0030391 	mul	r3, r1, r3
    3c7c:	e0633002 	rsb	r3, r3, r2
    3c80:	e59f2280 	ldr	r2, [pc, #640]	; 3f08 <fsfull+0x34c>
    3c84:	e0c21392 	smull	r1, r2, r2, r3
    3c88:	e1a02142 	asr	r2, r2, #2
    3c8c:	e1a03fc3 	asr	r3, r3, #31
    3c90:	e0633002 	rsb	r3, r3, r2
    3c94:	e6ef3073 	uxtb	r3, r3
    3c98:	e2833030 	add	r3, r3, #48	; 0x30
    3c9c:	e6ef3073 	uxtb	r3, r3
    3ca0:	e54b3055 	strb	r3, [fp, #-85]	; 0xffffffab
    3ca4:	e51b2008 	ldr	r2, [fp, #-8]
    3ca8:	e59f3258 	ldr	r3, [pc, #600]	; 3f08 <fsfull+0x34c>
    3cac:	e0c31293 	smull	r1, r3, r3, r2
    3cb0:	e1a01143 	asr	r1, r3, #2
    3cb4:	e1a03fc2 	asr	r3, r2, #31
    3cb8:	e0631001 	rsb	r1, r3, r1
    3cbc:	e1a03001 	mov	r3, r1
    3cc0:	e1a03103 	lsl	r3, r3, #2
    3cc4:	e0833001 	add	r3, r3, r1
    3cc8:	e1a03083 	lsl	r3, r3, #1
    3ccc:	e0631002 	rsb	r1, r3, r2
    3cd0:	e6ef3071 	uxtb	r3, r1
    3cd4:	e2833030 	add	r3, r3, #48	; 0x30
    3cd8:	e6ef3073 	uxtb	r3, r3
    3cdc:	e54b3054 	strb	r3, [fp, #-84]	; 0xffffffac
    3ce0:	e3a03000 	mov	r3, #0
    3ce4:	e54b3053 	strb	r3, [fp, #-83]	; 0xffffffad
    3ce8:	e24b3058 	sub	r3, fp, #88	; 0x58
    3cec:	e3a00001 	mov	r0, #1
    3cf0:	e59f1214 	ldr	r1, [pc, #532]	; 3f0c <fsfull+0x350>
    3cf4:	e1a02003 	mov	r2, r3
    3cf8:	eb00031f 	bl	497c <printf>
    3cfc:	e24b3058 	sub	r3, fp, #88	; 0x58
    3d00:	e1a00003 	mov	r0, r3
    3d04:	e59f1204 	ldr	r1, [pc, #516]	; 3f10 <fsfull+0x354>
    3d08:	eb000256 	bl	4668 <open>
    3d0c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
    3d10:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    3d14:	e3530000 	cmp	r3, #0
    3d18:	aa000005 	bge	3d34 <fsfull+0x178>
    3d1c:	e24b3058 	sub	r3, fp, #88	; 0x58
    3d20:	e3a00001 	mov	r0, #1
    3d24:	e59f11e8 	ldr	r1, [pc, #488]	; 3f14 <fsfull+0x358>
    3d28:	e1a02003 	mov	r2, r3
    3d2c:	eb000312 	bl	497c <printf>
    3d30:	ea000021 	b	3dbc <fsfull+0x200>
    3d34:	e3a03000 	mov	r3, #0
    3d38:	e50b3010 	str	r3, [fp, #-16]
    3d3c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    3d40:	e59f11d0 	ldr	r1, [pc, #464]	; 3f18 <fsfull+0x35c>
    3d44:	e3a02c02 	mov	r2, #512	; 0x200
    3d48:	eb000222 	bl	45d8 <write>
    3d4c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    3d50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    3d54:	e3530c02 	cmp	r3, #512	; 0x200
    3d58:	aa00000a 	bge	3d88 <fsfull+0x1cc>
    3d5c:	e1a00000 	nop			; (mov r0, r0)
    3d60:	e3a00001 	mov	r0, #1
    3d64:	e59f11b0 	ldr	r1, [pc, #432]	; 3f1c <fsfull+0x360>
    3d68:	e51b2010 	ldr	r2, [fp, #-16]
    3d6c:	eb000302 	bl	497c <printf>
    3d70:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
    3d74:	eb000220 	bl	45fc <close>
    3d78:	e51b3010 	ldr	r3, [fp, #-16]
    3d7c:	e3530000 	cmp	r3, #0
    3d80:	1a000009 	bne	3dac <fsfull+0x1f0>
    3d84:	ea000007 	b	3da8 <fsfull+0x1ec>
    3d88:	e51b2010 	ldr	r2, [fp, #-16]
    3d8c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    3d90:	e0823003 	add	r3, r2, r3
    3d94:	e50b3010 	str	r3, [fp, #-16]
    3d98:	e51b300c 	ldr	r3, [fp, #-12]
    3d9c:	e2833001 	add	r3, r3, #1
    3da0:	e50b300c 	str	r3, [fp, #-12]
    3da4:	eaffffe4 	b	3d3c <fsfull+0x180>
    3da8:	ea000003 	b	3dbc <fsfull+0x200>
    3dac:	e51b3008 	ldr	r3, [fp, #-8]
    3db0:	e2833001 	add	r3, r3, #1
    3db4:	e50b3008 	str	r3, [fp, #-8]
    3db8:	eaffff89 	b	3be4 <fsfull+0x28>
    3dbc:	ea000046 	b	3edc <fsfull+0x320>
    3dc0:	e3a03066 	mov	r3, #102	; 0x66
    3dc4:	e54b3058 	strb	r3, [fp, #-88]	; 0xffffffa8
    3dc8:	e51b3008 	ldr	r3, [fp, #-8]
    3dcc:	e59f212c 	ldr	r2, [pc, #300]	; 3f00 <fsfull+0x344>
    3dd0:	e0c21392 	smull	r1, r2, r2, r3
    3dd4:	e1a02342 	asr	r2, r2, #6
    3dd8:	e1a03fc3 	asr	r3, r3, #31
    3ddc:	e0633002 	rsb	r3, r3, r2
    3de0:	e6ef3073 	uxtb	r3, r3
    3de4:	e2833030 	add	r3, r3, #48	; 0x30
    3de8:	e6ef3073 	uxtb	r3, r3
    3dec:	e54b3057 	strb	r3, [fp, #-87]	; 0xffffffa9
    3df0:	e51b2008 	ldr	r2, [fp, #-8]
    3df4:	e59f3104 	ldr	r3, [pc, #260]	; 3f00 <fsfull+0x344>
    3df8:	e0c31293 	smull	r1, r3, r3, r2
    3dfc:	e1a01343 	asr	r1, r3, #6
    3e00:	e1a03fc2 	asr	r3, r2, #31
    3e04:	e0633001 	rsb	r3, r3, r1
    3e08:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    3e0c:	e0030391 	mul	r3, r1, r3
    3e10:	e0633002 	rsb	r3, r3, r2
    3e14:	e59f20e8 	ldr	r2, [pc, #232]	; 3f04 <fsfull+0x348>
    3e18:	e0c21392 	smull	r1, r2, r2, r3
    3e1c:	e1a022c2 	asr	r2, r2, #5
    3e20:	e1a03fc3 	asr	r3, r3, #31
    3e24:	e0633002 	rsb	r3, r3, r2
    3e28:	e6ef3073 	uxtb	r3, r3
    3e2c:	e2833030 	add	r3, r3, #48	; 0x30
    3e30:	e6ef3073 	uxtb	r3, r3
    3e34:	e54b3056 	strb	r3, [fp, #-86]	; 0xffffffaa
    3e38:	e51b2008 	ldr	r2, [fp, #-8]
    3e3c:	e59f30c0 	ldr	r3, [pc, #192]	; 3f04 <fsfull+0x348>
    3e40:	e0c31293 	smull	r1, r3, r3, r2
    3e44:	e1a012c3 	asr	r1, r3, #5
    3e48:	e1a03fc2 	asr	r3, r2, #31
    3e4c:	e0633001 	rsb	r3, r3, r1
    3e50:	e3a01064 	mov	r1, #100	; 0x64
    3e54:	e0030391 	mul	r3, r1, r3
    3e58:	e0633002 	rsb	r3, r3, r2
    3e5c:	e59f20a4 	ldr	r2, [pc, #164]	; 3f08 <fsfull+0x34c>
    3e60:	e0c21392 	smull	r1, r2, r2, r3
    3e64:	e1a02142 	asr	r2, r2, #2
    3e68:	e1a03fc3 	asr	r3, r3, #31
    3e6c:	e0633002 	rsb	r3, r3, r2
    3e70:	e6ef3073 	uxtb	r3, r3
    3e74:	e2833030 	add	r3, r3, #48	; 0x30
    3e78:	e6ef3073 	uxtb	r3, r3
    3e7c:	e54b3055 	strb	r3, [fp, #-85]	; 0xffffffab
    3e80:	e51b2008 	ldr	r2, [fp, #-8]
    3e84:	e59f307c 	ldr	r3, [pc, #124]	; 3f08 <fsfull+0x34c>
    3e88:	e0c31293 	smull	r1, r3, r3, r2
    3e8c:	e1a01143 	asr	r1, r3, #2
    3e90:	e1a03fc2 	asr	r3, r2, #31
    3e94:	e0631001 	rsb	r1, r3, r1
    3e98:	e1a03001 	mov	r3, r1
    3e9c:	e1a03103 	lsl	r3, r3, #2
    3ea0:	e0833001 	add	r3, r3, r1
    3ea4:	e1a03083 	lsl	r3, r3, #1
    3ea8:	e0631002 	rsb	r1, r3, r2
    3eac:	e6ef3071 	uxtb	r3, r1
    3eb0:	e2833030 	add	r3, r3, #48	; 0x30
    3eb4:	e6ef3073 	uxtb	r3, r3
    3eb8:	e54b3054 	strb	r3, [fp, #-84]	; 0xffffffac
    3ebc:	e3a03000 	mov	r3, #0
    3ec0:	e54b3053 	strb	r3, [fp, #-83]	; 0xffffffad
    3ec4:	e24b3058 	sub	r3, fp, #88	; 0x58
    3ec8:	e1a00003 	mov	r0, r3
    3ecc:	eb0001f7 	bl	46b0 <unlink>
    3ed0:	e51b3008 	ldr	r3, [fp, #-8]
    3ed4:	e2433001 	sub	r3, r3, #1
    3ed8:	e50b3008 	str	r3, [fp, #-8]
    3edc:	e51b3008 	ldr	r3, [fp, #-8]
    3ee0:	e3530000 	cmp	r3, #0
    3ee4:	aaffffb5 	bge	3dc0 <fsfull+0x204>
    3ee8:	e3a00001 	mov	r0, #1
    3eec:	e59f102c 	ldr	r1, [pc, #44]	; 3f20 <fsfull+0x364>
    3ef0:	eb0002a1 	bl	497c <printf>
    3ef4:	e24bd004 	sub	sp, fp, #4
    3ef8:	e8bd8800 	pop	{fp, pc}
    3efc:	00006808 	.word	0x00006808
    3f00:	10624dd3 	.word	0x10624dd3
    3f04:	51eb851f 	.word	0x51eb851f
    3f08:	66666667 	.word	0x66666667
    3f0c:	00006818 	.word	0x00006818
    3f10:	00000202 	.word	0x00000202
    3f14:	00006824 	.word	0x00006824
    3f18:	00009080 	.word	0x00009080
    3f1c:	00006834 	.word	0x00006834
    3f20:	00006844 	.word	0x00006844

00003f24 <rand>:
    3f24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    3f28:	e28db000 	add	fp, sp, #0
    3f2c:	e59f3030 	ldr	r3, [pc, #48]	; 3f64 <rand+0x40>
    3f30:	e5933000 	ldr	r3, [r3]
    3f34:	e59f202c 	ldr	r2, [pc, #44]	; 3f68 <rand+0x44>
    3f38:	e0020392 	mul	r2, r2, r3
    3f3c:	e59f3028 	ldr	r3, [pc, #40]	; 3f6c <rand+0x48>
    3f40:	e0823003 	add	r3, r2, r3
    3f44:	e59f2018 	ldr	r2, [pc, #24]	; 3f64 <rand+0x40>
    3f48:	e5823000 	str	r3, [r2]
    3f4c:	e59f3010 	ldr	r3, [pc, #16]	; 3f64 <rand+0x40>
    3f50:	e5933000 	ldr	r3, [r3]
    3f54:	e1a00003 	mov	r0, r3
    3f58:	e24bd000 	sub	sp, fp, #0
    3f5c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    3f60:	e12fff1e 	bx	lr
    3f64:	000068cc 	.word	0x000068cc
    3f68:	0019660d 	.word	0x0019660d
    3f6c:	3c6ef35f 	.word	0x3c6ef35f

00003f70 <main>:
    3f70:	e92d4800 	push	{fp, lr}
    3f74:	e28db004 	add	fp, sp, #4
    3f78:	e24dd008 	sub	sp, sp, #8
    3f7c:	e50b0008 	str	r0, [fp, #-8]
    3f80:	e50b100c 	str	r1, [fp, #-12]
    3f84:	e3a00001 	mov	r0, #1
    3f88:	e59f10b8 	ldr	r1, [pc, #184]	; 4048 <main+0xd8>
    3f8c:	eb00027a 	bl	497c <printf>
    3f90:	e59f00b4 	ldr	r0, [pc, #180]	; 404c <main+0xdc>
    3f94:	e3a01000 	mov	r1, #0
    3f98:	eb0001b2 	bl	4668 <open>
    3f9c:	e1a03000 	mov	r3, r0
    3fa0:	e3530000 	cmp	r3, #0
    3fa4:	ba000003 	blt	3fb8 <main+0x48>
    3fa8:	e3a00001 	mov	r0, #1
    3fac:	e59f109c 	ldr	r1, [pc, #156]	; 4050 <main+0xe0>
    3fb0:	eb000271 	bl	497c <printf>
    3fb4:	eb000163 	bl	4548 <exit>
    3fb8:	e59f008c 	ldr	r0, [pc, #140]	; 404c <main+0xdc>
    3fbc:	e3a01c02 	mov	r1, #512	; 0x200
    3fc0:	eb0001a8 	bl	4668 <open>
    3fc4:	e1a03000 	mov	r3, r0
    3fc8:	e1a00003 	mov	r0, r3
    3fcc:	eb00018a 	bl	45fc <close>
    3fd0:	ebfffea5 	bl	3a6c <bigargtest>
    3fd4:	ebfffa20 	bl	285c <bigwrite>
    3fd8:	ebfffea3 	bl	3a6c <bigargtest>
    3fdc:	ebfffe77 	bl	39c0 <bsstest>
    3fe0:	ebfffcbe 	bl	32e0 <sbrktest>
    3fe4:	ebfffe37 	bl	38c8 <validatetest>
    3fe8:	ebfff004 	bl	0 <opentest>
    3fec:	ebfff035 	bl	c8 <writetest>
    3ff0:	ebfff0c7 	bl	314 <writetest1>
    3ff4:	ebfff157 	bl	558 <createtest>
    3ff8:	ebfff319 	bl	c64 <mem>
    3ffc:	ebfff1f5 	bl	7d8 <pipe1>
    4000:	ebfff2ed 	bl	bbc <exitwait>
    4004:	ebfffb41 	bl	2d10 <rmdot>
    4008:	ebfffae9 	bl	2bb4 <fourteen>
    400c:	ebfffa58 	bl	2974 <bigfile>
    4010:	ebfff854 	bl	2168 <subdir>
    4014:	ebfff668 	bl	19bc <concreate>
    4018:	ebfff77e 	bl	1e18 <linkunlink>
    401c:	ebfff5e0 	bl	17a4 <linktest>
    4020:	ebfff576 	bl	1600 <unlinkread>
    4024:	ebfff497 	bl	1288 <createdelete>
    4028:	ebfff3ed 	bl	fe4 <twofiles>
    402c:	ebfff35b 	bl	da0 <sharedfd>
    4030:	ebfffb97 	bl	2e94 <dirfile>
    4034:	ebfffc1e 	bl	30b4 <iref>
    4038:	ebfffc67 	bl	31dc <forktest>
    403c:	ebfff7d0 	bl	1f84 <bigdir>
    4040:	ebfff1cb 	bl	774 <exectest>
    4044:	eb00013f 	bl	4548 <exit>
    4048:	0000685c 	.word	0x0000685c
    404c:	00006870 	.word	0x00006870
    4050:	00006880 	.word	0x00006880

00004054 <strcpy>:
    4054:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    4058:	e28db000 	add	fp, sp, #0
    405c:	e24dd014 	sub	sp, sp, #20
    4060:	e50b0010 	str	r0, [fp, #-16]
    4064:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    4068:	e51b3010 	ldr	r3, [fp, #-16]
    406c:	e50b3008 	str	r3, [fp, #-8]
    4070:	e1a00000 	nop			; (mov r0, r0)
    4074:	e51b3010 	ldr	r3, [fp, #-16]
    4078:	e2832001 	add	r2, r3, #1
    407c:	e50b2010 	str	r2, [fp, #-16]
    4080:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    4084:	e2821001 	add	r1, r2, #1
    4088:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    408c:	e5d22000 	ldrb	r2, [r2]
    4090:	e5c32000 	strb	r2, [r3]
    4094:	e5d33000 	ldrb	r3, [r3]
    4098:	e3530000 	cmp	r3, #0
    409c:	1afffff4 	bne	4074 <strcpy+0x20>
    40a0:	e51b3008 	ldr	r3, [fp, #-8]
    40a4:	e1a00003 	mov	r0, r3
    40a8:	e24bd000 	sub	sp, fp, #0
    40ac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    40b0:	e12fff1e 	bx	lr

000040b4 <strcmp>:
    40b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    40b8:	e28db000 	add	fp, sp, #0
    40bc:	e24dd00c 	sub	sp, sp, #12
    40c0:	e50b0008 	str	r0, [fp, #-8]
    40c4:	e50b100c 	str	r1, [fp, #-12]
    40c8:	ea000005 	b	40e4 <strcmp+0x30>
    40cc:	e51b3008 	ldr	r3, [fp, #-8]
    40d0:	e2833001 	add	r3, r3, #1
    40d4:	e50b3008 	str	r3, [fp, #-8]
    40d8:	e51b300c 	ldr	r3, [fp, #-12]
    40dc:	e2833001 	add	r3, r3, #1
    40e0:	e50b300c 	str	r3, [fp, #-12]
    40e4:	e51b3008 	ldr	r3, [fp, #-8]
    40e8:	e5d33000 	ldrb	r3, [r3]
    40ec:	e3530000 	cmp	r3, #0
    40f0:	0a000005 	beq	410c <strcmp+0x58>
    40f4:	e51b3008 	ldr	r3, [fp, #-8]
    40f8:	e5d32000 	ldrb	r2, [r3]
    40fc:	e51b300c 	ldr	r3, [fp, #-12]
    4100:	e5d33000 	ldrb	r3, [r3]
    4104:	e1520003 	cmp	r2, r3
    4108:	0affffef 	beq	40cc <strcmp+0x18>
    410c:	e51b3008 	ldr	r3, [fp, #-8]
    4110:	e5d33000 	ldrb	r3, [r3]
    4114:	e1a02003 	mov	r2, r3
    4118:	e51b300c 	ldr	r3, [fp, #-12]
    411c:	e5d33000 	ldrb	r3, [r3]
    4120:	e0633002 	rsb	r3, r3, r2
    4124:	e1a00003 	mov	r0, r3
    4128:	e24bd000 	sub	sp, fp, #0
    412c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    4130:	e12fff1e 	bx	lr

00004134 <strlen>:
    4134:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    4138:	e28db000 	add	fp, sp, #0
    413c:	e24dd014 	sub	sp, sp, #20
    4140:	e50b0010 	str	r0, [fp, #-16]
    4144:	e3a03000 	mov	r3, #0
    4148:	e50b3008 	str	r3, [fp, #-8]
    414c:	ea000002 	b	415c <strlen+0x28>
    4150:	e51b3008 	ldr	r3, [fp, #-8]
    4154:	e2833001 	add	r3, r3, #1
    4158:	e50b3008 	str	r3, [fp, #-8]
    415c:	e51b3008 	ldr	r3, [fp, #-8]
    4160:	e51b2010 	ldr	r2, [fp, #-16]
    4164:	e0823003 	add	r3, r2, r3
    4168:	e5d33000 	ldrb	r3, [r3]
    416c:	e3530000 	cmp	r3, #0
    4170:	1afffff6 	bne	4150 <strlen+0x1c>
    4174:	e51b3008 	ldr	r3, [fp, #-8]
    4178:	e1a00003 	mov	r0, r3
    417c:	e24bd000 	sub	sp, fp, #0
    4180:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    4184:	e12fff1e 	bx	lr

00004188 <memset>:
    4188:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    418c:	e28db000 	add	fp, sp, #0
    4190:	e24dd024 	sub	sp, sp, #36	; 0x24
    4194:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    4198:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    419c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
    41a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    41a4:	e50b3008 	str	r3, [fp, #-8]
    41a8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    41ac:	e54b300d 	strb	r3, [fp, #-13]
    41b0:	e55b300d 	ldrb	r3, [fp, #-13]
    41b4:	e1a02c03 	lsl	r2, r3, #24
    41b8:	e55b300d 	ldrb	r3, [fp, #-13]
    41bc:	e1a03803 	lsl	r3, r3, #16
    41c0:	e1822003 	orr	r2, r2, r3
    41c4:	e55b300d 	ldrb	r3, [fp, #-13]
    41c8:	e1a03403 	lsl	r3, r3, #8
    41cc:	e1822003 	orr	r2, r2, r3
    41d0:	e55b300d 	ldrb	r3, [fp, #-13]
    41d4:	e1823003 	orr	r3, r2, r3
    41d8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    41dc:	ea000008 	b	4204 <memset+0x7c>
    41e0:	e51b3008 	ldr	r3, [fp, #-8]
    41e4:	e55b200d 	ldrb	r2, [fp, #-13]
    41e8:	e5c32000 	strb	r2, [r3]
    41ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    41f0:	e2433001 	sub	r3, r3, #1
    41f4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    41f8:	e51b3008 	ldr	r3, [fp, #-8]
    41fc:	e2833001 	add	r3, r3, #1
    4200:	e50b3008 	str	r3, [fp, #-8]
    4204:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    4208:	e3530000 	cmp	r3, #0
    420c:	0a000003 	beq	4220 <memset+0x98>
    4210:	e51b3008 	ldr	r3, [fp, #-8]
    4214:	e2033003 	and	r3, r3, #3
    4218:	e3530000 	cmp	r3, #0
    421c:	1affffef 	bne	41e0 <memset+0x58>
    4220:	e51b3008 	ldr	r3, [fp, #-8]
    4224:	e50b300c 	str	r3, [fp, #-12]
    4228:	ea000008 	b	4250 <memset+0xc8>
    422c:	e51b300c 	ldr	r3, [fp, #-12]
    4230:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    4234:	e5832000 	str	r2, [r3]
    4238:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    423c:	e2433004 	sub	r3, r3, #4
    4240:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    4244:	e51b300c 	ldr	r3, [fp, #-12]
    4248:	e2833004 	add	r3, r3, #4
    424c:	e50b300c 	str	r3, [fp, #-12]
    4250:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    4254:	e3530003 	cmp	r3, #3
    4258:	8afffff3 	bhi	422c <memset+0xa4>
    425c:	e51b300c 	ldr	r3, [fp, #-12]
    4260:	e50b3008 	str	r3, [fp, #-8]
    4264:	ea000008 	b	428c <memset+0x104>
    4268:	e51b3008 	ldr	r3, [fp, #-8]
    426c:	e55b200d 	ldrb	r2, [fp, #-13]
    4270:	e5c32000 	strb	r2, [r3]
    4274:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    4278:	e2433001 	sub	r3, r3, #1
    427c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    4280:	e51b3008 	ldr	r3, [fp, #-8]
    4284:	e2833001 	add	r3, r3, #1
    4288:	e50b3008 	str	r3, [fp, #-8]
    428c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    4290:	e3530000 	cmp	r3, #0
    4294:	1afffff3 	bne	4268 <memset+0xe0>
    4298:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    429c:	e1a00003 	mov	r0, r3
    42a0:	e24bd000 	sub	sp, fp, #0
    42a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    42a8:	e12fff1e 	bx	lr

000042ac <strchr>:
    42ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    42b0:	e28db000 	add	fp, sp, #0
    42b4:	e24dd00c 	sub	sp, sp, #12
    42b8:	e50b0008 	str	r0, [fp, #-8]
    42bc:	e1a03001 	mov	r3, r1
    42c0:	e54b3009 	strb	r3, [fp, #-9]
    42c4:	ea000009 	b	42f0 <strchr+0x44>
    42c8:	e51b3008 	ldr	r3, [fp, #-8]
    42cc:	e5d33000 	ldrb	r3, [r3]
    42d0:	e55b2009 	ldrb	r2, [fp, #-9]
    42d4:	e1520003 	cmp	r2, r3
    42d8:	1a000001 	bne	42e4 <strchr+0x38>
    42dc:	e51b3008 	ldr	r3, [fp, #-8]
    42e0:	ea000007 	b	4304 <strchr+0x58>
    42e4:	e51b3008 	ldr	r3, [fp, #-8]
    42e8:	e2833001 	add	r3, r3, #1
    42ec:	e50b3008 	str	r3, [fp, #-8]
    42f0:	e51b3008 	ldr	r3, [fp, #-8]
    42f4:	e5d33000 	ldrb	r3, [r3]
    42f8:	e3530000 	cmp	r3, #0
    42fc:	1afffff1 	bne	42c8 <strchr+0x1c>
    4300:	e3a03000 	mov	r3, #0
    4304:	e1a00003 	mov	r0, r3
    4308:	e24bd000 	sub	sp, fp, #0
    430c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    4310:	e12fff1e 	bx	lr

00004314 <gets>:
    4314:	e92d4800 	push	{fp, lr}
    4318:	e28db004 	add	fp, sp, #4
    431c:	e24dd018 	sub	sp, sp, #24
    4320:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    4324:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
    4328:	e3a03000 	mov	r3, #0
    432c:	e50b3008 	str	r3, [fp, #-8]
    4330:	ea000017 	b	4394 <gets+0x80>
    4334:	e24b300d 	sub	r3, fp, #13
    4338:	e3a00000 	mov	r0, #0
    433c:	e1a01003 	mov	r1, r3
    4340:	e3a02001 	mov	r2, #1
    4344:	eb00009a 	bl	45b4 <read>
    4348:	e50b000c 	str	r0, [fp, #-12]
    434c:	e51b300c 	ldr	r3, [fp, #-12]
    4350:	e3530000 	cmp	r3, #0
    4354:	ca000000 	bgt	435c <gets+0x48>
    4358:	ea000012 	b	43a8 <gets+0x94>
    435c:	e51b3008 	ldr	r3, [fp, #-8]
    4360:	e2832001 	add	r2, r3, #1
    4364:	e50b2008 	str	r2, [fp, #-8]
    4368:	e1a02003 	mov	r2, r3
    436c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4370:	e0833002 	add	r3, r3, r2
    4374:	e55b200d 	ldrb	r2, [fp, #-13]
    4378:	e5c32000 	strb	r2, [r3]
    437c:	e55b300d 	ldrb	r3, [fp, #-13]
    4380:	e353000a 	cmp	r3, #10
    4384:	0a000007 	beq	43a8 <gets+0x94>
    4388:	e55b300d 	ldrb	r3, [fp, #-13]
    438c:	e353000d 	cmp	r3, #13
    4390:	0a000004 	beq	43a8 <gets+0x94>
    4394:	e51b3008 	ldr	r3, [fp, #-8]
    4398:	e2832001 	add	r2, r3, #1
    439c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    43a0:	e1520003 	cmp	r2, r3
    43a4:	baffffe2 	blt	4334 <gets+0x20>
    43a8:	e51b3008 	ldr	r3, [fp, #-8]
    43ac:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    43b0:	e0823003 	add	r3, r2, r3
    43b4:	e3a02000 	mov	r2, #0
    43b8:	e5c32000 	strb	r2, [r3]
    43bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    43c0:	e1a00003 	mov	r0, r3
    43c4:	e24bd004 	sub	sp, fp, #4
    43c8:	e8bd8800 	pop	{fp, pc}

000043cc <stat>:
    43cc:	e92d4800 	push	{fp, lr}
    43d0:	e28db004 	add	fp, sp, #4
    43d4:	e24dd010 	sub	sp, sp, #16
    43d8:	e50b0010 	str	r0, [fp, #-16]
    43dc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    43e0:	e51b0010 	ldr	r0, [fp, #-16]
    43e4:	e3a01000 	mov	r1, #0
    43e8:	eb00009e 	bl	4668 <open>
    43ec:	e50b0008 	str	r0, [fp, #-8]
    43f0:	e51b3008 	ldr	r3, [fp, #-8]
    43f4:	e3530000 	cmp	r3, #0
    43f8:	aa000001 	bge	4404 <stat+0x38>
    43fc:	e3e03000 	mvn	r3, #0
    4400:	ea000006 	b	4420 <stat+0x54>
    4404:	e51b0008 	ldr	r0, [fp, #-8]
    4408:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    440c:	eb0000b0 	bl	46d4 <fstat>
    4410:	e50b000c 	str	r0, [fp, #-12]
    4414:	e51b0008 	ldr	r0, [fp, #-8]
    4418:	eb000077 	bl	45fc <close>
    441c:	e51b300c 	ldr	r3, [fp, #-12]
    4420:	e1a00003 	mov	r0, r3
    4424:	e24bd004 	sub	sp, fp, #4
    4428:	e8bd8800 	pop	{fp, pc}

0000442c <atoi>:
    442c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    4430:	e28db000 	add	fp, sp, #0
    4434:	e24dd014 	sub	sp, sp, #20
    4438:	e50b0010 	str	r0, [fp, #-16]
    443c:	e3a03000 	mov	r3, #0
    4440:	e50b3008 	str	r3, [fp, #-8]
    4444:	ea00000c 	b	447c <atoi+0x50>
    4448:	e51b2008 	ldr	r2, [fp, #-8]
    444c:	e1a03002 	mov	r3, r2
    4450:	e1a03103 	lsl	r3, r3, #2
    4454:	e0833002 	add	r3, r3, r2
    4458:	e1a03083 	lsl	r3, r3, #1
    445c:	e1a01003 	mov	r1, r3
    4460:	e51b3010 	ldr	r3, [fp, #-16]
    4464:	e2832001 	add	r2, r3, #1
    4468:	e50b2010 	str	r2, [fp, #-16]
    446c:	e5d33000 	ldrb	r3, [r3]
    4470:	e0813003 	add	r3, r1, r3
    4474:	e2433030 	sub	r3, r3, #48	; 0x30
    4478:	e50b3008 	str	r3, [fp, #-8]
    447c:	e51b3010 	ldr	r3, [fp, #-16]
    4480:	e5d33000 	ldrb	r3, [r3]
    4484:	e353002f 	cmp	r3, #47	; 0x2f
    4488:	9a000003 	bls	449c <atoi+0x70>
    448c:	e51b3010 	ldr	r3, [fp, #-16]
    4490:	e5d33000 	ldrb	r3, [r3]
    4494:	e3530039 	cmp	r3, #57	; 0x39
    4498:	9affffea 	bls	4448 <atoi+0x1c>
    449c:	e51b3008 	ldr	r3, [fp, #-8]
    44a0:	e1a00003 	mov	r0, r3
    44a4:	e24bd000 	sub	sp, fp, #0
    44a8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    44ac:	e12fff1e 	bx	lr

000044b0 <memmove>:
    44b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    44b4:	e28db000 	add	fp, sp, #0
    44b8:	e24dd01c 	sub	sp, sp, #28
    44bc:	e50b0010 	str	r0, [fp, #-16]
    44c0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
    44c4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    44c8:	e51b3010 	ldr	r3, [fp, #-16]
    44cc:	e50b3008 	str	r3, [fp, #-8]
    44d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    44d4:	e50b300c 	str	r3, [fp, #-12]
    44d8:	ea000007 	b	44fc <memmove+0x4c>
    44dc:	e51b3008 	ldr	r3, [fp, #-8]
    44e0:	e2832001 	add	r2, r3, #1
    44e4:	e50b2008 	str	r2, [fp, #-8]
    44e8:	e51b200c 	ldr	r2, [fp, #-12]
    44ec:	e2821001 	add	r1, r2, #1
    44f0:	e50b100c 	str	r1, [fp, #-12]
    44f4:	e5d22000 	ldrb	r2, [r2]
    44f8:	e5c32000 	strb	r2, [r3]
    44fc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4500:	e2432001 	sub	r2, r3, #1
    4504:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
    4508:	e3530000 	cmp	r3, #0
    450c:	cafffff2 	bgt	44dc <memmove+0x2c>
    4510:	e51b3010 	ldr	r3, [fp, #-16]
    4514:	e1a00003 	mov	r0, r3
    4518:	e24bd000 	sub	sp, fp, #0
    451c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    4520:	e12fff1e 	bx	lr

00004524 <fork>:
    4524:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4528:	e1a04003 	mov	r4, r3
    452c:	e1a03002 	mov	r3, r2
    4530:	e1a02001 	mov	r2, r1
    4534:	e1a01000 	mov	r1, r0
    4538:	e3a00001 	mov	r0, #1
    453c:	ef000000 	svc	0x00000000
    4540:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4544:	e12fff1e 	bx	lr

00004548 <exit>:
    4548:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    454c:	e1a04003 	mov	r4, r3
    4550:	e1a03002 	mov	r3, r2
    4554:	e1a02001 	mov	r2, r1
    4558:	e1a01000 	mov	r1, r0
    455c:	e3a00002 	mov	r0, #2
    4560:	ef000000 	svc	0x00000000
    4564:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4568:	e12fff1e 	bx	lr

0000456c <wait>:
    456c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4570:	e1a04003 	mov	r4, r3
    4574:	e1a03002 	mov	r3, r2
    4578:	e1a02001 	mov	r2, r1
    457c:	e1a01000 	mov	r1, r0
    4580:	e3a00003 	mov	r0, #3
    4584:	ef000000 	svc	0x00000000
    4588:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    458c:	e12fff1e 	bx	lr

00004590 <pipe>:
    4590:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4594:	e1a04003 	mov	r4, r3
    4598:	e1a03002 	mov	r3, r2
    459c:	e1a02001 	mov	r2, r1
    45a0:	e1a01000 	mov	r1, r0
    45a4:	e3a00004 	mov	r0, #4
    45a8:	ef000000 	svc	0x00000000
    45ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    45b0:	e12fff1e 	bx	lr

000045b4 <read>:
    45b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    45b8:	e1a04003 	mov	r4, r3
    45bc:	e1a03002 	mov	r3, r2
    45c0:	e1a02001 	mov	r2, r1
    45c4:	e1a01000 	mov	r1, r0
    45c8:	e3a00005 	mov	r0, #5
    45cc:	ef000000 	svc	0x00000000
    45d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    45d4:	e12fff1e 	bx	lr

000045d8 <write>:
    45d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    45dc:	e1a04003 	mov	r4, r3
    45e0:	e1a03002 	mov	r3, r2
    45e4:	e1a02001 	mov	r2, r1
    45e8:	e1a01000 	mov	r1, r0
    45ec:	e3a00010 	mov	r0, #16
    45f0:	ef000000 	svc	0x00000000
    45f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    45f8:	e12fff1e 	bx	lr

000045fc <close>:
    45fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4600:	e1a04003 	mov	r4, r3
    4604:	e1a03002 	mov	r3, r2
    4608:	e1a02001 	mov	r2, r1
    460c:	e1a01000 	mov	r1, r0
    4610:	e3a00015 	mov	r0, #21
    4614:	ef000000 	svc	0x00000000
    4618:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    461c:	e12fff1e 	bx	lr

00004620 <kill>:
    4620:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4624:	e1a04003 	mov	r4, r3
    4628:	e1a03002 	mov	r3, r2
    462c:	e1a02001 	mov	r2, r1
    4630:	e1a01000 	mov	r1, r0
    4634:	e3a00006 	mov	r0, #6
    4638:	ef000000 	svc	0x00000000
    463c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4640:	e12fff1e 	bx	lr

00004644 <exec>:
    4644:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4648:	e1a04003 	mov	r4, r3
    464c:	e1a03002 	mov	r3, r2
    4650:	e1a02001 	mov	r2, r1
    4654:	e1a01000 	mov	r1, r0
    4658:	e3a00007 	mov	r0, #7
    465c:	ef000000 	svc	0x00000000
    4660:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4664:	e12fff1e 	bx	lr

00004668 <open>:
    4668:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    466c:	e1a04003 	mov	r4, r3
    4670:	e1a03002 	mov	r3, r2
    4674:	e1a02001 	mov	r2, r1
    4678:	e1a01000 	mov	r1, r0
    467c:	e3a0000f 	mov	r0, #15
    4680:	ef000000 	svc	0x00000000
    4684:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4688:	e12fff1e 	bx	lr

0000468c <mknod>:
    468c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4690:	e1a04003 	mov	r4, r3
    4694:	e1a03002 	mov	r3, r2
    4698:	e1a02001 	mov	r2, r1
    469c:	e1a01000 	mov	r1, r0
    46a0:	e3a00011 	mov	r0, #17
    46a4:	ef000000 	svc	0x00000000
    46a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    46ac:	e12fff1e 	bx	lr

000046b0 <unlink>:
    46b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    46b4:	e1a04003 	mov	r4, r3
    46b8:	e1a03002 	mov	r3, r2
    46bc:	e1a02001 	mov	r2, r1
    46c0:	e1a01000 	mov	r1, r0
    46c4:	e3a00012 	mov	r0, #18
    46c8:	ef000000 	svc	0x00000000
    46cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    46d0:	e12fff1e 	bx	lr

000046d4 <fstat>:
    46d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    46d8:	e1a04003 	mov	r4, r3
    46dc:	e1a03002 	mov	r3, r2
    46e0:	e1a02001 	mov	r2, r1
    46e4:	e1a01000 	mov	r1, r0
    46e8:	e3a00008 	mov	r0, #8
    46ec:	ef000000 	svc	0x00000000
    46f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    46f4:	e12fff1e 	bx	lr

000046f8 <link>:
    46f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    46fc:	e1a04003 	mov	r4, r3
    4700:	e1a03002 	mov	r3, r2
    4704:	e1a02001 	mov	r2, r1
    4708:	e1a01000 	mov	r1, r0
    470c:	e3a00013 	mov	r0, #19
    4710:	ef000000 	svc	0x00000000
    4714:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4718:	e12fff1e 	bx	lr

0000471c <mkdir>:
    471c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4720:	e1a04003 	mov	r4, r3
    4724:	e1a03002 	mov	r3, r2
    4728:	e1a02001 	mov	r2, r1
    472c:	e1a01000 	mov	r1, r0
    4730:	e3a00014 	mov	r0, #20
    4734:	ef000000 	svc	0x00000000
    4738:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    473c:	e12fff1e 	bx	lr

00004740 <chdir>:
    4740:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4744:	e1a04003 	mov	r4, r3
    4748:	e1a03002 	mov	r3, r2
    474c:	e1a02001 	mov	r2, r1
    4750:	e1a01000 	mov	r1, r0
    4754:	e3a00009 	mov	r0, #9
    4758:	ef000000 	svc	0x00000000
    475c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4760:	e12fff1e 	bx	lr

00004764 <dup>:
    4764:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    4768:	e1a04003 	mov	r4, r3
    476c:	e1a03002 	mov	r3, r2
    4770:	e1a02001 	mov	r2, r1
    4774:	e1a01000 	mov	r1, r0
    4778:	e3a0000a 	mov	r0, #10
    477c:	ef000000 	svc	0x00000000
    4780:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4784:	e12fff1e 	bx	lr

00004788 <getpid>:
    4788:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    478c:	e1a04003 	mov	r4, r3
    4790:	e1a03002 	mov	r3, r2
    4794:	e1a02001 	mov	r2, r1
    4798:	e1a01000 	mov	r1, r0
    479c:	e3a0000b 	mov	r0, #11
    47a0:	ef000000 	svc	0x00000000
    47a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    47a8:	e12fff1e 	bx	lr

000047ac <sbrk>:
    47ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    47b0:	e1a04003 	mov	r4, r3
    47b4:	e1a03002 	mov	r3, r2
    47b8:	e1a02001 	mov	r2, r1
    47bc:	e1a01000 	mov	r1, r0
    47c0:	e3a0000c 	mov	r0, #12
    47c4:	ef000000 	svc	0x00000000
    47c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    47cc:	e12fff1e 	bx	lr

000047d0 <sleep>:
    47d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    47d4:	e1a04003 	mov	r4, r3
    47d8:	e1a03002 	mov	r3, r2
    47dc:	e1a02001 	mov	r2, r1
    47e0:	e1a01000 	mov	r1, r0
    47e4:	e3a0000d 	mov	r0, #13
    47e8:	ef000000 	svc	0x00000000
    47ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    47f0:	e12fff1e 	bx	lr

000047f4 <uptime>:
    47f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    47f8:	e1a04003 	mov	r4, r3
    47fc:	e1a03002 	mov	r3, r2
    4800:	e1a02001 	mov	r2, r1
    4804:	e1a01000 	mov	r1, r0
    4808:	e3a0000e 	mov	r0, #14
    480c:	ef000000 	svc	0x00000000
    4810:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    4814:	e12fff1e 	bx	lr

00004818 <putc>:
    4818:	e92d4800 	push	{fp, lr}
    481c:	e28db004 	add	fp, sp, #4
    4820:	e24dd008 	sub	sp, sp, #8
    4824:	e50b0008 	str	r0, [fp, #-8]
    4828:	e1a03001 	mov	r3, r1
    482c:	e54b3009 	strb	r3, [fp, #-9]
    4830:	e24b3009 	sub	r3, fp, #9
    4834:	e51b0008 	ldr	r0, [fp, #-8]
    4838:	e1a01003 	mov	r1, r3
    483c:	e3a02001 	mov	r2, #1
    4840:	ebffff64 	bl	45d8 <write>
    4844:	e24bd004 	sub	sp, fp, #4
    4848:	e8bd8800 	pop	{fp, pc}

0000484c <printint>:
    484c:	e92d4810 	push	{r4, fp, lr}
    4850:	e28db008 	add	fp, sp, #8
    4854:	e24dd034 	sub	sp, sp, #52	; 0x34
    4858:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
    485c:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
    4860:	e50b2038 	str	r2, [fp, #-56]	; 0xffffffc8
    4864:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
    4868:	e3a03000 	mov	r3, #0
    486c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    4870:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    4874:	e3530000 	cmp	r3, #0
    4878:	0a000008 	beq	48a0 <printint+0x54>
    487c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    4880:	e3530000 	cmp	r3, #0
    4884:	aa000005 	bge	48a0 <printint+0x54>
    4888:	e3a03001 	mov	r3, #1
    488c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    4890:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    4894:	e2633000 	rsb	r3, r3, #0
    4898:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    489c:	ea000001 	b	48a8 <printint+0x5c>
    48a0:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    48a4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    48a8:	e3a03000 	mov	r3, #0
    48ac:	e50b3010 	str	r3, [fp, #-16]
    48b0:	e51b4010 	ldr	r4, [fp, #-16]
    48b4:	e2843001 	add	r3, r4, #1
    48b8:	e50b3010 	str	r3, [fp, #-16]
    48bc:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    48c0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
    48c4:	e1a00002 	mov	r0, r2
    48c8:	e1a01003 	mov	r1, r3
    48cc:	eb0001cd 	bl	5008 <__aeabi_uidivmod>
    48d0:	e1a03001 	mov	r3, r1
    48d4:	e1a02003 	mov	r2, r3
    48d8:	e59f3098 	ldr	r3, [pc, #152]	; 4978 <printint+0x12c>
    48dc:	e7d32002 	ldrb	r2, [r3, r2]
    48e0:	e24b300c 	sub	r3, fp, #12
    48e4:	e0833004 	add	r3, r3, r4
    48e8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
    48ec:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    48f0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    48f4:	e1a01003 	mov	r1, r3
    48f8:	eb000185 	bl	4f14 <__aeabi_uidiv>
    48fc:	e1a03000 	mov	r3, r0
    4900:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    4904:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4908:	e3530000 	cmp	r3, #0
    490c:	1affffe7 	bne	48b0 <printint+0x64>
    4910:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    4914:	e3530000 	cmp	r3, #0
    4918:	0a000006 	beq	4938 <printint+0xec>
    491c:	e51b3010 	ldr	r3, [fp, #-16]
    4920:	e2832001 	add	r2, r3, #1
    4924:	e50b2010 	str	r2, [fp, #-16]
    4928:	e24b200c 	sub	r2, fp, #12
    492c:	e0823003 	add	r3, r2, r3
    4930:	e3a0202d 	mov	r2, #45	; 0x2d
    4934:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
    4938:	ea000006 	b	4958 <printint+0x10c>
    493c:	e24b2028 	sub	r2, fp, #40	; 0x28
    4940:	e51b3010 	ldr	r3, [fp, #-16]
    4944:	e0823003 	add	r3, r2, r3
    4948:	e5d33000 	ldrb	r3, [r3]
    494c:	e51b0030 	ldr	r0, [fp, #-48]	; 0xffffffd0
    4950:	e1a01003 	mov	r1, r3
    4954:	ebffffaf 	bl	4818 <putc>
    4958:	e51b3010 	ldr	r3, [fp, #-16]
    495c:	e2433001 	sub	r3, r3, #1
    4960:	e50b3010 	str	r3, [fp, #-16]
    4964:	e51b3010 	ldr	r3, [fp, #-16]
    4968:	e3530000 	cmp	r3, #0
    496c:	aafffff2 	bge	493c <printint+0xf0>
    4970:	e24bd008 	sub	sp, fp, #8
    4974:	e8bd8810 	pop	{r4, fp, pc}
    4978:	000068d0 	.word	0x000068d0

0000497c <printf>:
    497c:	e92d000e 	push	{r1, r2, r3}
    4980:	e92d4800 	push	{fp, lr}
    4984:	e28db004 	add	fp, sp, #4
    4988:	e24dd024 	sub	sp, sp, #36	; 0x24
    498c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
    4990:	e3a03000 	mov	r3, #0
    4994:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    4998:	e28b3008 	add	r3, fp, #8
    499c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    49a0:	e3a03000 	mov	r3, #0
    49a4:	e50b3010 	str	r3, [fp, #-16]
    49a8:	ea000074 	b	4b80 <printf+0x204>
    49ac:	e59b2004 	ldr	r2, [fp, #4]
    49b0:	e51b3010 	ldr	r3, [fp, #-16]
    49b4:	e0823003 	add	r3, r2, r3
    49b8:	e5d33000 	ldrb	r3, [r3]
    49bc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    49c0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    49c4:	e3530000 	cmp	r3, #0
    49c8:	1a00000b 	bne	49fc <printf+0x80>
    49cc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    49d0:	e3530025 	cmp	r3, #37	; 0x25
    49d4:	1a000002 	bne	49e4 <printf+0x68>
    49d8:	e3a03025 	mov	r3, #37	; 0x25
    49dc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    49e0:	ea000063 	b	4b74 <printf+0x1f8>
    49e4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    49e8:	e6ef3073 	uxtb	r3, r3
    49ec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    49f0:	e1a01003 	mov	r1, r3
    49f4:	ebffff87 	bl	4818 <putc>
    49f8:	ea00005d 	b	4b74 <printf+0x1f8>
    49fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    4a00:	e3530025 	cmp	r3, #37	; 0x25
    4a04:	1a00005a 	bne	4b74 <printf+0x1f8>
    4a08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4a0c:	e3530064 	cmp	r3, #100	; 0x64
    4a10:	1a00000a 	bne	4a40 <printf+0xc4>
    4a14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4a18:	e5933000 	ldr	r3, [r3]
    4a1c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4a20:	e1a01003 	mov	r1, r3
    4a24:	e3a0200a 	mov	r2, #10
    4a28:	e3a03001 	mov	r3, #1
    4a2c:	ebffff86 	bl	484c <printint>
    4a30:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4a34:	e2833004 	add	r3, r3, #4
    4a38:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    4a3c:	ea00004a 	b	4b6c <printf+0x1f0>
    4a40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4a44:	e3530078 	cmp	r3, #120	; 0x78
    4a48:	0a000002 	beq	4a58 <printf+0xdc>
    4a4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4a50:	e3530070 	cmp	r3, #112	; 0x70
    4a54:	1a00000a 	bne	4a84 <printf+0x108>
    4a58:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4a5c:	e5933000 	ldr	r3, [r3]
    4a60:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4a64:	e1a01003 	mov	r1, r3
    4a68:	e3a02010 	mov	r2, #16
    4a6c:	e3a03000 	mov	r3, #0
    4a70:	ebffff75 	bl	484c <printint>
    4a74:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4a78:	e2833004 	add	r3, r3, #4
    4a7c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    4a80:	ea000039 	b	4b6c <printf+0x1f0>
    4a84:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4a88:	e3530073 	cmp	r3, #115	; 0x73
    4a8c:	1a000018 	bne	4af4 <printf+0x178>
    4a90:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4a94:	e5933000 	ldr	r3, [r3]
    4a98:	e50b300c 	str	r3, [fp, #-12]
    4a9c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4aa0:	e2833004 	add	r3, r3, #4
    4aa4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    4aa8:	e51b300c 	ldr	r3, [fp, #-12]
    4aac:	e3530000 	cmp	r3, #0
    4ab0:	1a000001 	bne	4abc <printf+0x140>
    4ab4:	e59f30ec 	ldr	r3, [pc, #236]	; 4ba8 <printf+0x22c>
    4ab8:	e50b300c 	str	r3, [fp, #-12]
    4abc:	ea000007 	b	4ae0 <printf+0x164>
    4ac0:	e51b300c 	ldr	r3, [fp, #-12]
    4ac4:	e5d33000 	ldrb	r3, [r3]
    4ac8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4acc:	e1a01003 	mov	r1, r3
    4ad0:	ebffff50 	bl	4818 <putc>
    4ad4:	e51b300c 	ldr	r3, [fp, #-12]
    4ad8:	e2833001 	add	r3, r3, #1
    4adc:	e50b300c 	str	r3, [fp, #-12]
    4ae0:	e51b300c 	ldr	r3, [fp, #-12]
    4ae4:	e5d33000 	ldrb	r3, [r3]
    4ae8:	e3530000 	cmp	r3, #0
    4aec:	1afffff3 	bne	4ac0 <printf+0x144>
    4af0:	ea00001d 	b	4b6c <printf+0x1f0>
    4af4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4af8:	e3530063 	cmp	r3, #99	; 0x63
    4afc:	1a000009 	bne	4b28 <printf+0x1ac>
    4b00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4b04:	e5933000 	ldr	r3, [r3]
    4b08:	e6ef3073 	uxtb	r3, r3
    4b0c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4b10:	e1a01003 	mov	r1, r3
    4b14:	ebffff3f 	bl	4818 <putc>
    4b18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4b1c:	e2833004 	add	r3, r3, #4
    4b20:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    4b24:	ea000010 	b	4b6c <printf+0x1f0>
    4b28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4b2c:	e3530025 	cmp	r3, #37	; 0x25
    4b30:	1a000005 	bne	4b4c <printf+0x1d0>
    4b34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4b38:	e6ef3073 	uxtb	r3, r3
    4b3c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4b40:	e1a01003 	mov	r1, r3
    4b44:	ebffff33 	bl	4818 <putc>
    4b48:	ea000007 	b	4b6c <printf+0x1f0>
    4b4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4b50:	e3a01025 	mov	r1, #37	; 0x25
    4b54:	ebffff2f 	bl	4818 <putc>
    4b58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    4b5c:	e6ef3073 	uxtb	r3, r3
    4b60:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
    4b64:	e1a01003 	mov	r1, r3
    4b68:	ebffff2a 	bl	4818 <putc>
    4b6c:	e3a03000 	mov	r3, #0
    4b70:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    4b74:	e51b3010 	ldr	r3, [fp, #-16]
    4b78:	e2833001 	add	r3, r3, #1
    4b7c:	e50b3010 	str	r3, [fp, #-16]
    4b80:	e59b2004 	ldr	r2, [fp, #4]
    4b84:	e51b3010 	ldr	r3, [fp, #-16]
    4b88:	e0823003 	add	r3, r2, r3
    4b8c:	e5d33000 	ldrb	r3, [r3]
    4b90:	e3530000 	cmp	r3, #0
    4b94:	1affff84 	bne	49ac <printf+0x30>
    4b98:	e24bd004 	sub	sp, fp, #4
    4b9c:	e8bd4800 	pop	{fp, lr}
    4ba0:	e28dd00c 	add	sp, sp, #12
    4ba4:	e12fff1e 	bx	lr
    4ba8:	000068ac 	.word	0x000068ac

00004bac <free>:
    4bac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    4bb0:	e28db000 	add	fp, sp, #0
    4bb4:	e24dd014 	sub	sp, sp, #20
    4bb8:	e50b0010 	str	r0, [fp, #-16]
    4bbc:	e51b3010 	ldr	r3, [fp, #-16]
    4bc0:	e2433008 	sub	r3, r3, #8
    4bc4:	e50b300c 	str	r3, [fp, #-12]
    4bc8:	e59f3150 	ldr	r3, [pc, #336]	; 4d20 <free+0x174>
    4bcc:	e5933000 	ldr	r3, [r3]
    4bd0:	e50b3008 	str	r3, [fp, #-8]
    4bd4:	ea000010 	b	4c1c <free+0x70>
    4bd8:	e51b3008 	ldr	r3, [fp, #-8]
    4bdc:	e5932000 	ldr	r2, [r3]
    4be0:	e51b3008 	ldr	r3, [fp, #-8]
    4be4:	e1520003 	cmp	r2, r3
    4be8:	8a000008 	bhi	4c10 <free+0x64>
    4bec:	e51b200c 	ldr	r2, [fp, #-12]
    4bf0:	e51b3008 	ldr	r3, [fp, #-8]
    4bf4:	e1520003 	cmp	r2, r3
    4bf8:	8a000010 	bhi	4c40 <free+0x94>
    4bfc:	e51b3008 	ldr	r3, [fp, #-8]
    4c00:	e5932000 	ldr	r2, [r3]
    4c04:	e51b300c 	ldr	r3, [fp, #-12]
    4c08:	e1520003 	cmp	r2, r3
    4c0c:	8a00000b 	bhi	4c40 <free+0x94>
    4c10:	e51b3008 	ldr	r3, [fp, #-8]
    4c14:	e5933000 	ldr	r3, [r3]
    4c18:	e50b3008 	str	r3, [fp, #-8]
    4c1c:	e51b200c 	ldr	r2, [fp, #-12]
    4c20:	e51b3008 	ldr	r3, [fp, #-8]
    4c24:	e1520003 	cmp	r2, r3
    4c28:	9affffea 	bls	4bd8 <free+0x2c>
    4c2c:	e51b3008 	ldr	r3, [fp, #-8]
    4c30:	e5932000 	ldr	r2, [r3]
    4c34:	e51b300c 	ldr	r3, [fp, #-12]
    4c38:	e1520003 	cmp	r2, r3
    4c3c:	9affffe5 	bls	4bd8 <free+0x2c>
    4c40:	e51b300c 	ldr	r3, [fp, #-12]
    4c44:	e5933004 	ldr	r3, [r3, #4]
    4c48:	e1a03183 	lsl	r3, r3, #3
    4c4c:	e51b200c 	ldr	r2, [fp, #-12]
    4c50:	e0822003 	add	r2, r2, r3
    4c54:	e51b3008 	ldr	r3, [fp, #-8]
    4c58:	e5933000 	ldr	r3, [r3]
    4c5c:	e1520003 	cmp	r2, r3
    4c60:	1a00000d 	bne	4c9c <free+0xf0>
    4c64:	e51b300c 	ldr	r3, [fp, #-12]
    4c68:	e5932004 	ldr	r2, [r3, #4]
    4c6c:	e51b3008 	ldr	r3, [fp, #-8]
    4c70:	e5933000 	ldr	r3, [r3]
    4c74:	e5933004 	ldr	r3, [r3, #4]
    4c78:	e0822003 	add	r2, r2, r3
    4c7c:	e51b300c 	ldr	r3, [fp, #-12]
    4c80:	e5832004 	str	r2, [r3, #4]
    4c84:	e51b3008 	ldr	r3, [fp, #-8]
    4c88:	e5933000 	ldr	r3, [r3]
    4c8c:	e5932000 	ldr	r2, [r3]
    4c90:	e51b300c 	ldr	r3, [fp, #-12]
    4c94:	e5832000 	str	r2, [r3]
    4c98:	ea000003 	b	4cac <free+0x100>
    4c9c:	e51b3008 	ldr	r3, [fp, #-8]
    4ca0:	e5932000 	ldr	r2, [r3]
    4ca4:	e51b300c 	ldr	r3, [fp, #-12]
    4ca8:	e5832000 	str	r2, [r3]
    4cac:	e51b3008 	ldr	r3, [fp, #-8]
    4cb0:	e5933004 	ldr	r3, [r3, #4]
    4cb4:	e1a03183 	lsl	r3, r3, #3
    4cb8:	e51b2008 	ldr	r2, [fp, #-8]
    4cbc:	e0822003 	add	r2, r2, r3
    4cc0:	e51b300c 	ldr	r3, [fp, #-12]
    4cc4:	e1520003 	cmp	r2, r3
    4cc8:	1a00000b 	bne	4cfc <free+0x150>
    4ccc:	e51b3008 	ldr	r3, [fp, #-8]
    4cd0:	e5932004 	ldr	r2, [r3, #4]
    4cd4:	e51b300c 	ldr	r3, [fp, #-12]
    4cd8:	e5933004 	ldr	r3, [r3, #4]
    4cdc:	e0822003 	add	r2, r2, r3
    4ce0:	e51b3008 	ldr	r3, [fp, #-8]
    4ce4:	e5832004 	str	r2, [r3, #4]
    4ce8:	e51b300c 	ldr	r3, [fp, #-12]
    4cec:	e5932000 	ldr	r2, [r3]
    4cf0:	e51b3008 	ldr	r3, [fp, #-8]
    4cf4:	e5832000 	str	r2, [r3]
    4cf8:	ea000002 	b	4d08 <free+0x15c>
    4cfc:	e51b3008 	ldr	r3, [fp, #-8]
    4d00:	e51b200c 	ldr	r2, [fp, #-12]
    4d04:	e5832000 	str	r2, [r3]
    4d08:	e59f2010 	ldr	r2, [pc, #16]	; 4d20 <free+0x174>
    4d0c:	e51b3008 	ldr	r3, [fp, #-8]
    4d10:	e5823000 	str	r3, [r2]
    4d14:	e24bd000 	sub	sp, fp, #0
    4d18:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    4d1c:	e12fff1e 	bx	lr
    4d20:	0000696c 	.word	0x0000696c

00004d24 <morecore>:
    4d24:	e92d4800 	push	{fp, lr}
    4d28:	e28db004 	add	fp, sp, #4
    4d2c:	e24dd010 	sub	sp, sp, #16
    4d30:	e50b0010 	str	r0, [fp, #-16]
    4d34:	e51b3010 	ldr	r3, [fp, #-16]
    4d38:	e3530a01 	cmp	r3, #4096	; 0x1000
    4d3c:	2a000001 	bcs	4d48 <morecore+0x24>
    4d40:	e3a03a01 	mov	r3, #4096	; 0x1000
    4d44:	e50b3010 	str	r3, [fp, #-16]
    4d48:	e51b3010 	ldr	r3, [fp, #-16]
    4d4c:	e1a03183 	lsl	r3, r3, #3
    4d50:	e1a00003 	mov	r0, r3
    4d54:	ebfffe94 	bl	47ac <sbrk>
    4d58:	e50b0008 	str	r0, [fp, #-8]
    4d5c:	e51b3008 	ldr	r3, [fp, #-8]
    4d60:	e3730001 	cmn	r3, #1
    4d64:	1a000001 	bne	4d70 <morecore+0x4c>
    4d68:	e3a03000 	mov	r3, #0
    4d6c:	ea00000a 	b	4d9c <morecore+0x78>
    4d70:	e51b3008 	ldr	r3, [fp, #-8]
    4d74:	e50b300c 	str	r3, [fp, #-12]
    4d78:	e51b300c 	ldr	r3, [fp, #-12]
    4d7c:	e51b2010 	ldr	r2, [fp, #-16]
    4d80:	e5832004 	str	r2, [r3, #4]
    4d84:	e51b300c 	ldr	r3, [fp, #-12]
    4d88:	e2833008 	add	r3, r3, #8
    4d8c:	e1a00003 	mov	r0, r3
    4d90:	ebffff85 	bl	4bac <free>
    4d94:	e59f300c 	ldr	r3, [pc, #12]	; 4da8 <morecore+0x84>
    4d98:	e5933000 	ldr	r3, [r3]
    4d9c:	e1a00003 	mov	r0, r3
    4da0:	e24bd004 	sub	sp, fp, #4
    4da4:	e8bd8800 	pop	{fp, pc}
    4da8:	0000696c 	.word	0x0000696c

00004dac <malloc>:
    4dac:	e92d4800 	push	{fp, lr}
    4db0:	e28db004 	add	fp, sp, #4
    4db4:	e24dd018 	sub	sp, sp, #24
    4db8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    4dbc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    4dc0:	e2833007 	add	r3, r3, #7
    4dc4:	e1a031a3 	lsr	r3, r3, #3
    4dc8:	e2833001 	add	r3, r3, #1
    4dcc:	e50b3010 	str	r3, [fp, #-16]
    4dd0:	e59f3134 	ldr	r3, [pc, #308]	; 4f0c <malloc+0x160>
    4dd4:	e5933000 	ldr	r3, [r3]
    4dd8:	e50b300c 	str	r3, [fp, #-12]
    4ddc:	e51b300c 	ldr	r3, [fp, #-12]
    4de0:	e3530000 	cmp	r3, #0
    4de4:	1a00000b 	bne	4e18 <malloc+0x6c>
    4de8:	e59f3120 	ldr	r3, [pc, #288]	; 4f10 <malloc+0x164>
    4dec:	e50b300c 	str	r3, [fp, #-12]
    4df0:	e59f2114 	ldr	r2, [pc, #276]	; 4f0c <malloc+0x160>
    4df4:	e51b300c 	ldr	r3, [fp, #-12]
    4df8:	e5823000 	str	r3, [r2]
    4dfc:	e59f3108 	ldr	r3, [pc, #264]	; 4f0c <malloc+0x160>
    4e00:	e5933000 	ldr	r3, [r3]
    4e04:	e59f2104 	ldr	r2, [pc, #260]	; 4f10 <malloc+0x164>
    4e08:	e5823000 	str	r3, [r2]
    4e0c:	e59f30fc 	ldr	r3, [pc, #252]	; 4f10 <malloc+0x164>
    4e10:	e3a02000 	mov	r2, #0
    4e14:	e5832004 	str	r2, [r3, #4]
    4e18:	e51b300c 	ldr	r3, [fp, #-12]
    4e1c:	e5933000 	ldr	r3, [r3]
    4e20:	e50b3008 	str	r3, [fp, #-8]
    4e24:	e51b3008 	ldr	r3, [fp, #-8]
    4e28:	e5932004 	ldr	r2, [r3, #4]
    4e2c:	e51b3010 	ldr	r3, [fp, #-16]
    4e30:	e1520003 	cmp	r2, r3
    4e34:	3a00001e 	bcc	4eb4 <malloc+0x108>
    4e38:	e51b3008 	ldr	r3, [fp, #-8]
    4e3c:	e5932004 	ldr	r2, [r3, #4]
    4e40:	e51b3010 	ldr	r3, [fp, #-16]
    4e44:	e1520003 	cmp	r2, r3
    4e48:	1a000004 	bne	4e60 <malloc+0xb4>
    4e4c:	e51b3008 	ldr	r3, [fp, #-8]
    4e50:	e5932000 	ldr	r2, [r3]
    4e54:	e51b300c 	ldr	r3, [fp, #-12]
    4e58:	e5832000 	str	r2, [r3]
    4e5c:	ea00000e 	b	4e9c <malloc+0xf0>
    4e60:	e51b3008 	ldr	r3, [fp, #-8]
    4e64:	e5932004 	ldr	r2, [r3, #4]
    4e68:	e51b3010 	ldr	r3, [fp, #-16]
    4e6c:	e0632002 	rsb	r2, r3, r2
    4e70:	e51b3008 	ldr	r3, [fp, #-8]
    4e74:	e5832004 	str	r2, [r3, #4]
    4e78:	e51b3008 	ldr	r3, [fp, #-8]
    4e7c:	e5933004 	ldr	r3, [r3, #4]
    4e80:	e1a03183 	lsl	r3, r3, #3
    4e84:	e51b2008 	ldr	r2, [fp, #-8]
    4e88:	e0823003 	add	r3, r2, r3
    4e8c:	e50b3008 	str	r3, [fp, #-8]
    4e90:	e51b3008 	ldr	r3, [fp, #-8]
    4e94:	e51b2010 	ldr	r2, [fp, #-16]
    4e98:	e5832004 	str	r2, [r3, #4]
    4e9c:	e59f2068 	ldr	r2, [pc, #104]	; 4f0c <malloc+0x160>
    4ea0:	e51b300c 	ldr	r3, [fp, #-12]
    4ea4:	e5823000 	str	r3, [r2]
    4ea8:	e51b3008 	ldr	r3, [fp, #-8]
    4eac:	e2833008 	add	r3, r3, #8
    4eb0:	ea000012 	b	4f00 <malloc+0x154>
    4eb4:	e59f3050 	ldr	r3, [pc, #80]	; 4f0c <malloc+0x160>
    4eb8:	e5933000 	ldr	r3, [r3]
    4ebc:	e51b2008 	ldr	r2, [fp, #-8]
    4ec0:	e1520003 	cmp	r2, r3
    4ec4:	1a000007 	bne	4ee8 <malloc+0x13c>
    4ec8:	e51b0010 	ldr	r0, [fp, #-16]
    4ecc:	ebffff94 	bl	4d24 <morecore>
    4ed0:	e50b0008 	str	r0, [fp, #-8]
    4ed4:	e51b3008 	ldr	r3, [fp, #-8]
    4ed8:	e3530000 	cmp	r3, #0
    4edc:	1a000001 	bne	4ee8 <malloc+0x13c>
    4ee0:	e3a03000 	mov	r3, #0
    4ee4:	ea000005 	b	4f00 <malloc+0x154>
    4ee8:	e51b3008 	ldr	r3, [fp, #-8]
    4eec:	e50b300c 	str	r3, [fp, #-12]
    4ef0:	e51b3008 	ldr	r3, [fp, #-8]
    4ef4:	e5933000 	ldr	r3, [r3]
    4ef8:	e50b3008 	str	r3, [fp, #-8]
    4efc:	eaffffc8 	b	4e24 <malloc+0x78>
    4f00:	e1a00003 	mov	r0, r3
    4f04:	e24bd004 	sub	sp, fp, #4
    4f08:	e8bd8800 	pop	{fp, pc}
    4f0c:	0000696c 	.word	0x0000696c
    4f10:	00006964 	.word	0x00006964

00004f14 <__aeabi_uidiv>:
    4f14:	e2512001 	subs	r2, r1, #1
    4f18:	012fff1e 	bxeq	lr
    4f1c:	3a000036 	bcc	4ffc <__aeabi_uidiv+0xe8>
    4f20:	e1500001 	cmp	r0, r1
    4f24:	9a000022 	bls	4fb4 <__aeabi_uidiv+0xa0>
    4f28:	e1110002 	tst	r1, r2
    4f2c:	0a000023 	beq	4fc0 <__aeabi_uidiv+0xac>
    4f30:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    4f34:	01a01181 	lsleq	r1, r1, #3
    4f38:	03a03008 	moveq	r3, #8
    4f3c:	13a03001 	movne	r3, #1
    4f40:	e3510201 	cmp	r1, #268435456	; 0x10000000
    4f44:	31510000 	cmpcc	r1, r0
    4f48:	31a01201 	lslcc	r1, r1, #4
    4f4c:	31a03203 	lslcc	r3, r3, #4
    4f50:	3afffffa 	bcc	4f40 <__aeabi_uidiv+0x2c>
    4f54:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    4f58:	31510000 	cmpcc	r1, r0
    4f5c:	31a01081 	lslcc	r1, r1, #1
    4f60:	31a03083 	lslcc	r3, r3, #1
    4f64:	3afffffa 	bcc	4f54 <__aeabi_uidiv+0x40>
    4f68:	e3a02000 	mov	r2, #0
    4f6c:	e1500001 	cmp	r0, r1
    4f70:	20400001 	subcs	r0, r0, r1
    4f74:	21822003 	orrcs	r2, r2, r3
    4f78:	e15000a1 	cmp	r0, r1, lsr #1
    4f7c:	204000a1 	subcs	r0, r0, r1, lsr #1
    4f80:	218220a3 	orrcs	r2, r2, r3, lsr #1
    4f84:	e1500121 	cmp	r0, r1, lsr #2
    4f88:	20400121 	subcs	r0, r0, r1, lsr #2
    4f8c:	21822123 	orrcs	r2, r2, r3, lsr #2
    4f90:	e15001a1 	cmp	r0, r1, lsr #3
    4f94:	204001a1 	subcs	r0, r0, r1, lsr #3
    4f98:	218221a3 	orrcs	r2, r2, r3, lsr #3
    4f9c:	e3500000 	cmp	r0, #0
    4fa0:	11b03223 	lsrsne	r3, r3, #4
    4fa4:	11a01221 	lsrne	r1, r1, #4
    4fa8:	1affffef 	bne	4f6c <__aeabi_uidiv+0x58>
    4fac:	e1a00002 	mov	r0, r2
    4fb0:	e12fff1e 	bx	lr
    4fb4:	03a00001 	moveq	r0, #1
    4fb8:	13a00000 	movne	r0, #0
    4fbc:	e12fff1e 	bx	lr
    4fc0:	e3510801 	cmp	r1, #65536	; 0x10000
    4fc4:	21a01821 	lsrcs	r1, r1, #16
    4fc8:	23a02010 	movcs	r2, #16
    4fcc:	33a02000 	movcc	r2, #0
    4fd0:	e3510c01 	cmp	r1, #256	; 0x100
    4fd4:	21a01421 	lsrcs	r1, r1, #8
    4fd8:	22822008 	addcs	r2, r2, #8
    4fdc:	e3510010 	cmp	r1, #16
    4fe0:	21a01221 	lsrcs	r1, r1, #4
    4fe4:	22822004 	addcs	r2, r2, #4
    4fe8:	e3510004 	cmp	r1, #4
    4fec:	82822003 	addhi	r2, r2, #3
    4ff0:	908220a1 	addls	r2, r2, r1, lsr #1
    4ff4:	e1a00230 	lsr	r0, r0, r2
    4ff8:	e12fff1e 	bx	lr
    4ffc:	e3500000 	cmp	r0, #0
    5000:	13e00000 	mvnne	r0, #0
    5004:	ea000007 	b	5028 <__aeabi_idiv0>

00005008 <__aeabi_uidivmod>:
    5008:	e3510000 	cmp	r1, #0
    500c:	0afffffa 	beq	4ffc <__aeabi_uidiv+0xe8>
    5010:	e92d4003 	push	{r0, r1, lr}
    5014:	ebffffbe 	bl	4f14 <__aeabi_uidiv>
    5018:	e8bd4006 	pop	{r1, r2, lr}
    501c:	e0030092 	mul	r3, r2, r0
    5020:	e0411003 	sub	r1, r1, r3
    5024:	e12fff1e 	bx	lr

00005028 <__aeabi_idiv0>:
    5028:	e12fff1e 	bx	lr
