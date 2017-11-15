
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	; 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	; 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	; 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	; 10040 <jump_stack+0x18>
   10020:	eb0000f0 	bl	103e8 <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	; 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010548 	.word	0x00010548
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f301c 	ldr	r3, [pc, #28]	; 10078 <_uart_putc+0x34>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e24bd000 	sub	sp, fp, #0
   10070:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10074:	e12fff1e 	bx	lr
   10078:	101f1000 	.word	0x101f1000

0001007c <_puts>:
   1007c:	e92d4800 	push	{fp, lr}
   10080:	e28db004 	add	fp, sp, #4
   10084:	e24dd008 	sub	sp, sp, #8
   10088:	e50b0008 	str	r0, [fp, #-8]
   1008c:	ea000006 	b	100ac <_puts+0x30>
   10090:	e51b3008 	ldr	r3, [fp, #-8]
   10094:	e5d33000 	ldrb	r3, [r3]
   10098:	e1a00003 	mov	r0, r3
   1009c:	ebffffe8 	bl	10044 <_uart_putc>
   100a0:	e51b3008 	ldr	r3, [fp, #-8]
   100a4:	e2833001 	add	r3, r3, #1
   100a8:	e50b3008 	str	r3, [fp, #-8]
   100ac:	e51b3008 	ldr	r3, [fp, #-8]
   100b0:	e5d33000 	ldrb	r3, [r3]
   100b4:	e3530000 	cmp	r3, #0
   100b8:	1afffff4 	bne	10090 <_puts+0x14>
   100bc:	e24bd004 	sub	sp, fp, #4
   100c0:	e8bd8800 	pop	{fp, pc}

000100c4 <_putint>:
   100c4:	e92d4800 	push	{fp, lr}
   100c8:	e28db004 	add	fp, sp, #4
   100cc:	e24dd018 	sub	sp, sp, #24
   100d0:	e50b0010 	str	r0, [fp, #-16]
   100d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   100d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   100dc:	e59f3078 	ldr	r3, [pc, #120]	; 1015c <_putint+0x98>
   100e0:	e50b300c 	str	r3, [fp, #-12]
   100e4:	e51b3010 	ldr	r3, [fp, #-16]
   100e8:	e3530000 	cmp	r3, #0
   100ec:	0a000001 	beq	100f8 <_putint+0x34>
   100f0:	e51b0010 	ldr	r0, [fp, #-16]
   100f4:	ebffffe0 	bl	1007c <_puts>
   100f8:	e3a0301c 	mov	r3, #28
   100fc:	e50b3008 	str	r3, [fp, #-8]
   10100:	ea00000b 	b	10134 <_putint+0x70>
   10104:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10108:	e51b3008 	ldr	r3, [fp, #-8]
   1010c:	e1a03332 	lsr	r3, r2, r3
   10110:	e203300f 	and	r3, r3, #15
   10114:	e51b200c 	ldr	r2, [fp, #-12]
   10118:	e0823003 	add	r3, r2, r3
   1011c:	e5d33000 	ldrb	r3, [r3]
   10120:	e1a00003 	mov	r0, r3
   10124:	ebffffc6 	bl	10044 <_uart_putc>
   10128:	e51b3008 	ldr	r3, [fp, #-8]
   1012c:	e2433004 	sub	r3, r3, #4
   10130:	e50b3008 	str	r3, [fp, #-8]
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e3530000 	cmp	r3, #0
   1013c:	aafffff0 	bge	10104 <_putint+0x40>
   10140:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10144:	e3530000 	cmp	r3, #0
   10148:	0a000001 	beq	10154 <_putint+0x90>
   1014c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   10150:	ebffffc9 	bl	1007c <_puts>
   10154:	e24bd004 	sub	sp, fp, #4
   10158:	e8bd8800 	pop	{fp, pc}
   1015c:	000104d0 	.word	0x000104d0

00010160 <get_pde>:
   10160:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10164:	e28db000 	add	fp, sp, #0
   10168:	e24dd00c 	sub	sp, sp, #12
   1016c:	e50b0008 	str	r0, [fp, #-8]
   10170:	e51b3008 	ldr	r3, [fp, #-8]
   10174:	e1a03a23 	lsr	r3, r3, #20
   10178:	e50b3008 	str	r3, [fp, #-8]
   1017c:	e59f3020 	ldr	r3, [pc, #32]	; 101a4 <get_pde+0x44>
   10180:	e5932000 	ldr	r2, [r3]
   10184:	e51b3008 	ldr	r3, [fp, #-8]
   10188:	e1a03103 	lsl	r3, r3, #2
   1018c:	e0823003 	add	r3, r2, r3
   10190:	e5933000 	ldr	r3, [r3]
   10194:	e1a00003 	mov	r0, r3
   10198:	e24bd000 	sub	sp, fp, #0
   1019c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   101a0:	e12fff1e 	bx	lr
   101a4:	00010540 	.word	0x00010540

000101a8 <set_bootpgtbl>:
   101a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   101ac:	e28db000 	add	fp, sp, #0
   101b0:	e24dd01c 	sub	sp, sp, #28
   101b4:	e50b0010 	str	r0, [fp, #-16]
   101b8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   101bc:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   101c0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   101c4:	e51b3010 	ldr	r3, [fp, #-16]
   101c8:	e1a03a23 	lsr	r3, r3, #20
   101cc:	e50b3010 	str	r3, [fp, #-16]
   101d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   101d4:	e1a03a23 	lsr	r3, r3, #20
   101d8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   101dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   101e0:	e1a03a23 	lsr	r3, r3, #20
   101e4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   101e8:	e3a03000 	mov	r3, #0
   101ec:	e50b300c 	str	r3, [fp, #-12]
   101f0:	ea000029 	b	1029c <set_bootpgtbl+0xf4>
   101f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   101f8:	e1a03a03 	lsl	r3, r3, #20
   101fc:	e50b3008 	str	r3, [fp, #-8]
   10200:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10204:	e3530000 	cmp	r3, #0
   10208:	1a000004 	bne	10220 <set_bootpgtbl+0x78>
   1020c:	e51b3008 	ldr	r3, [fp, #-8]
   10210:	e3833b01 	orr	r3, r3, #1024	; 0x400
   10214:	e383300e 	orr	r3, r3, #14
   10218:	e50b3008 	str	r3, [fp, #-8]
   1021c:	ea000003 	b	10230 <set_bootpgtbl+0x88>
   10220:	e51b3008 	ldr	r3, [fp, #-8]
   10224:	e3833b01 	orr	r3, r3, #1024	; 0x400
   10228:	e3833002 	orr	r3, r3, #2
   1022c:	e50b3008 	str	r3, [fp, #-8]
   10230:	e51b3010 	ldr	r3, [fp, #-16]
   10234:	e35300ff 	cmp	r3, #255	; 0xff
   10238:	8a000007 	bhi	1025c <set_bootpgtbl+0xb4>
   1023c:	e59f3074 	ldr	r3, [pc, #116]	; 102b8 <set_bootpgtbl+0x110>
   10240:	e5932000 	ldr	r2, [r3]
   10244:	e51b3010 	ldr	r3, [fp, #-16]
   10248:	e1a03103 	lsl	r3, r3, #2
   1024c:	e0823003 	add	r3, r2, r3
   10250:	e51b2008 	ldr	r2, [fp, #-8]
   10254:	e5832000 	str	r2, [r3]
   10258:	ea000006 	b	10278 <set_bootpgtbl+0xd0>
   1025c:	e59f3058 	ldr	r3, [pc, #88]	; 102bc <set_bootpgtbl+0x114>
   10260:	e5932000 	ldr	r2, [r3]
   10264:	e51b3010 	ldr	r3, [fp, #-16]
   10268:	e1a03103 	lsl	r3, r3, #2
   1026c:	e0823003 	add	r3, r2, r3
   10270:	e51b2008 	ldr	r2, [fp, #-8]
   10274:	e5832000 	str	r2, [r3]
   10278:	e51b3010 	ldr	r3, [fp, #-16]
   1027c:	e2833001 	add	r3, r3, #1
   10280:	e50b3010 	str	r3, [fp, #-16]
   10284:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10288:	e2833001 	add	r3, r3, #1
   1028c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10290:	e51b300c 	ldr	r3, [fp, #-12]
   10294:	e2833001 	add	r3, r3, #1
   10298:	e50b300c 	str	r3, [fp, #-12]
   1029c:	e51b200c 	ldr	r2, [fp, #-12]
   102a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   102a4:	e1520003 	cmp	r2, r3
   102a8:	3affffd1 	bcc	101f4 <set_bootpgtbl+0x4c>
   102ac:	e24bd000 	sub	sp, fp, #0
   102b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   102b4:	e12fff1e 	bx	lr
   102b8:	00010544 	.word	0x00010544
   102bc:	00010540 	.word	0x00010540

000102c0 <_flush_all>:
   102c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   102c4:	e28db000 	add	fp, sp, #0
   102c8:	e24dd00c 	sub	sp, sp, #12
   102cc:	e3a03000 	mov	r3, #0
   102d0:	e50b3008 	str	r3, [fp, #-8]
   102d4:	e51b3008 	ldr	r3, [fp, #-8]
   102d8:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102dc:	e24bd000 	sub	sp, fp, #0
   102e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   102e4:	e12fff1e 	bx	lr

000102e8 <load_pgtlb>:
   102e8:	e92d4800 	push	{fp, lr}
   102ec:	e28db004 	add	fp, sp, #4
   102f0:	e24dd018 	sub	sp, sp, #24
   102f4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   102f8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   102fc:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   10300:	e50b3008 	str	r3, [fp, #-8]
   10304:	e51b3008 	ldr	r3, [fp, #-8]
   10308:	e1a03823 	lsr	r3, r3, #16
   1030c:	e6ef3073 	uxtb	r3, r3
   10310:	e203300f 	and	r3, r3, #15
   10314:	e54b3009 	strb	r3, [fp, #-9]
   10318:	e55b3009 	ldrb	r3, [fp, #-9]
   1031c:	e3530007 	cmp	r3, #7
   10320:	0a000004 	beq	10338 <load_pgtlb+0x50>
   10324:	e55b3009 	ldrb	r3, [fp, #-9]
   10328:	e353000f 	cmp	r3, #15
   1032c:	0a000001 	beq	10338 <load_pgtlb+0x50>
   10330:	e59f0070 	ldr	r0, [pc, #112]	; 103a8 <load_pgtlb+0xc0>
   10334:	ebffff50 	bl	1007c <_puts>
   10338:	e59f306c 	ldr	r3, [pc, #108]	; 103ac <load_pgtlb+0xc4>
   1033c:	e50b3010 	str	r3, [fp, #-16]
   10340:	e51b3010 	ldr	r3, [fp, #-16]
   10344:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10348:	e3a03004 	mov	r3, #4
   1034c:	e50b3010 	str	r3, [fp, #-16]
   10350:	e51b3010 	ldr	r3, [fp, #-16]
   10354:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10358:	e59f3050 	ldr	r3, [pc, #80]	; 103b0 <load_pgtlb+0xc8>
   1035c:	e5933000 	ldr	r3, [r3]
   10360:	e50b3010 	str	r3, [fp, #-16]
   10364:	e51b3010 	ldr	r3, [fp, #-16]
   10368:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   1036c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10370:	e50b3010 	str	r3, [fp, #-16]
   10374:	e51b3010 	ldr	r3, [fp, #-16]
   10378:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   1037c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   10380:	e50b3010 	str	r3, [fp, #-16]
   10384:	e51b2010 	ldr	r2, [fp, #-16]
   10388:	e59f3024 	ldr	r3, [pc, #36]	; 103b4 <load_pgtlb+0xcc>
   1038c:	e1823003 	orr	r3, r2, r3
   10390:	e50b3010 	str	r3, [fp, #-16]
   10394:	e51b3010 	ldr	r3, [fp, #-16]
   10398:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   1039c:	ebffffc7 	bl	102c0 <_flush_all>
   103a0:	e24bd004 	sub	sp, fp, #4
   103a4:	e8bd8800 	pop	{fp, pc}
   103a8:	000104e4 	.word	0x000104e4
   103ac:	55555555 	.word	0x55555555
   103b0:	00010540 	.word	0x00010540
   103b4:	0080300d 	.word	0x0080300d

000103b8 <clear_bss>:
   103b8:	e92d4800 	push	{fp, lr}
   103bc:	e28db004 	add	fp, sp, #4
   103c0:	e59f2018 	ldr	r2, [pc, #24]	; 103e0 <clear_bss+0x28>
   103c4:	e59f3018 	ldr	r3, [pc, #24]	; 103e4 <clear_bss+0x2c>
   103c8:	e0633002 	rsb	r3, r3, r2
   103cc:	e59f0010 	ldr	r0, [pc, #16]	; 103e4 <clear_bss+0x2c>
   103d0:	e3a01000 	mov	r1, #0
   103d4:	e1a02003 	mov	r2, r3
   103d8:	eb00003a 	bl	104c8 <__memset_veneer>
   103dc:	e8bd8800 	pop	{fp, pc}
   103e0:	800b0000 	.word	0x800b0000
   103e4:	800aa0c0 	.word	0x800aa0c0

000103e8 <start>:
   103e8:	e92d4800 	push	{fp, lr}
   103ec:	e28db004 	add	fp, sp, #4
   103f0:	e24dd008 	sub	sp, sp, #8
   103f4:	e59f00a0 	ldr	r0, [pc, #160]	; 1049c <start+0xb4>
   103f8:	ebffff1f 	bl	1007c <_puts>
   103fc:	e3a00000 	mov	r0, #0
   10400:	e3a01000 	mov	r1, #0
   10404:	e3a02601 	mov	r2, #1048576	; 0x100000
   10408:	e3a03000 	mov	r3, #0
   1040c:	ebffff65 	bl	101a8 <set_bootpgtbl>
   10410:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   10414:	e3a01000 	mov	r1, #0
   10418:	e3a02601 	mov	r2, #1048576	; 0x100000
   1041c:	e3a03000 	mov	r3, #0
   10420:	ebffff60 	bl	101a8 <set_bootpgtbl>
   10424:	e59f3074 	ldr	r3, [pc, #116]	; 104a0 <start+0xb8>
   10428:	e50b3008 	str	r3, [fp, #-8]
   1042c:	e59f2070 	ldr	r2, [pc, #112]	; 104a4 <start+0xbc>
   10430:	e51b3008 	ldr	r3, [fp, #-8]
   10434:	e1530002 	cmp	r3, r2
   10438:	8a000001 	bhi	10444 <start+0x5c>
   1043c:	e59f0064 	ldr	r0, [pc, #100]	; 104a8 <start+0xc0>
   10440:	eb00001c 	bl	104b8 <__cprintf_veneer>
   10444:	e59f0060 	ldr	r0, [pc, #96]	; 104ac <start+0xc4>
   10448:	e3a01000 	mov	r1, #0
   1044c:	e3a02601 	mov	r2, #1048576	; 0x100000
   10450:	e3a03000 	mov	r3, #0
   10454:	ebffff53 	bl	101a8 <set_bootpgtbl>
   10458:	e3a00209 	mov	r0, #-1879048192	; 0x90000000
   1045c:	e3a01201 	mov	r1, #268435456	; 0x10000000
   10460:	e3a02302 	mov	r2, #134217728	; 0x8000000
   10464:	e3a03001 	mov	r3, #1
   10468:	ebffff4e 	bl	101a8 <set_bootpgtbl>
   1046c:	e59f303c 	ldr	r3, [pc, #60]	; 104b0 <start+0xc8>
   10470:	e5932000 	ldr	r2, [r3]
   10474:	e59f3038 	ldr	r3, [pc, #56]	; 104b4 <start+0xcc>
   10478:	e5933000 	ldr	r3, [r3]
   1047c:	e1a00002 	mov	r0, r2
   10480:	e1a01003 	mov	r1, r3
   10484:	ebffff97 	bl	102e8 <load_pgtlb>
   10488:	ebfffee6 	bl	10028 <jump_stack>
   1048c:	ebffffc9 	bl	103b8 <clear_bss>
   10490:	eb00000a 	bl	104c0 <__kmain_veneer>
   10494:	e24bd004 	sub	sp, fp, #4
   10498:	e8bd8800 	pop	{fp, pc}
   1049c:	000104fc 	.word	0x000104fc
   104a0:	800f0000 	.word	0x800f0000
   104a4:	800b0000 	.word	0x800b0000
   104a8:	00010518 	.word	0x00010518
   104ac:	ffff0000 	.word	0xffff0000
   104b0:	00010540 	.word	0x00010540
   104b4:	00010544 	.word	0x00010544

000104b8 <__cprintf_veneer>:
   104b8:	e51ff004 	ldr	pc, [pc, #-4]	; 104bc <__cprintf_veneer+0x4>
   104bc:	800204e4 	.word	0x800204e4

000104c0 <__kmain_veneer>:
   104c0:	e51ff004 	ldr	pc, [pc, #-4]	; 104c4 <__kmain_veneer+0x4>
   104c4:	800231f0 	.word	0x800231f0

000104c8 <__memset_veneer>:
   104c8:	e51ff004 	ldr	pc, [pc, #-4]	; 104cc <__memset_veneer+0x4>
   104cc:	800248a0 	.word	0x800248a0
   104d0:	33323130 	.word	0x33323130
   104d4:	37363534 	.word	0x37363534
   104d8:	42413938 	.word	0x42413938
   104dc:	46454443 	.word	0x46454443
   104e0:	00000000 	.word	0x00000000
   104e4:	6465656e 	.word	0x6465656e
   104e8:	52414120 	.word	0x52414120
   104ec:	3676204d 	.word	0x3676204d
   104f0:	20726f20 	.word	0x20726f20
   104f4:	68676968 	.word	0x68676968
   104f8:	000a7265 	.word	0x000a7265
   104fc:	72617473 	.word	0x72617473
   10500:	676e6974 	.word	0x676e6974
   10504:	36767820 	.word	0x36767820
   10508:	726f6620 	.word	0x726f6620
   1050c:	4d524120 	.word	0x4d524120
   10510:	0a2e2e2e 	.word	0x0a2e2e2e
   10514:	00000000 	.word	0x00000000
   10518:	6f727265 	.word	0x6f727265
   1051c:	76203a72 	.word	0x76203a72
   10520:	6f746365 	.word	0x6f746365
   10524:	61742072 	.word	0x61742072
   10528:	20656c62 	.word	0x20656c62
   1052c:	7265766f 	.word	0x7265766f
   10530:	7370616c 	.word	0x7370616c
   10534:	72656b20 	.word	0x72656b20
   10538:	0a6c656e 	.word	0x0a6c656e
   1053c:	00000000 	.word	0x00000000

00010540 <kernel_pgtbl>:
   10540:	00014000                                .@..

00010544 <user_pgtbl>:
   10544:	00018000                                ....

00010548 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <binit>:
80020000:	e92d4800 	push	{fp, lr}
80020004:	e28db004 	add	fp, sp, #4
80020008:	e24dd008 	sub	sp, sp, #8
8002000c:	e59f00b0 	ldr	r0, [pc, #176]	; 800200c4 <binit+0xc4>
80020010:	e59f10b0 	ldr	r1, [pc, #176]	; 800200c8 <binit+0xc8>
80020014:	eb0011f2 	bl	800247e4 <initlock>
80020018:	e59f30a4 	ldr	r3, [pc, #164]	; 800200c4 <binit+0xc4>
8002001c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020020:	e1a02003 	mov	r2, r3
80020024:	e59f30a0 	ldr	r3, [pc, #160]	; 800200cc <binit+0xcc>
80020028:	e5823530 	str	r3, [r2, #1328]	; 0x530
8002002c:	e59f3090 	ldr	r3, [pc, #144]	; 800200c4 <binit+0xc4>
80020030:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020034:	e1a02003 	mov	r2, r3
80020038:	e59f308c 	ldr	r3, [pc, #140]	; 800200cc <binit+0xcc>
8002003c:	e5823534 	str	r3, [r2, #1332]	; 0x534
80020040:	e59f3088 	ldr	r3, [pc, #136]	; 800200d0 <binit+0xd0>
80020044:	e50b3008 	str	r3, [fp, #-8]
80020048:	ea000017 	b	800200ac <binit+0xac>
8002004c:	e59f3070 	ldr	r3, [pc, #112]	; 800200c4 <binit+0xc4>
80020050:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020054:	e5932534 	ldr	r2, [r3, #1332]	; 0x534
80020058:	e51b3008 	ldr	r3, [fp, #-8]
8002005c:	e5832010 	str	r2, [r3, #16]
80020060:	e51b3008 	ldr	r3, [fp, #-8]
80020064:	e59f2060 	ldr	r2, [pc, #96]	; 800200cc <binit+0xcc>
80020068:	e583200c 	str	r2, [r3, #12]
8002006c:	e51b3008 	ldr	r3, [fp, #-8]
80020070:	e3e02000 	mvn	r2, #0
80020074:	e5832004 	str	r2, [r3, #4]
80020078:	e59f3044 	ldr	r3, [pc, #68]	; 800200c4 <binit+0xc4>
8002007c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020080:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
80020084:	e51b2008 	ldr	r2, [fp, #-8]
80020088:	e583200c 	str	r2, [r3, #12]
8002008c:	e59f3030 	ldr	r3, [pc, #48]	; 800200c4 <binit+0xc4>
80020090:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020094:	e1a02003 	mov	r2, r3
80020098:	e51b3008 	ldr	r3, [fp, #-8]
8002009c:	e5823534 	str	r3, [r2, #1332]	; 0x534
800200a0:	e51b3008 	ldr	r3, [fp, #-8]
800200a4:	e2833f86 	add	r3, r3, #536	; 0x218
800200a8:	e50b3008 	str	r3, [fp, #-8]
800200ac:	e51b3008 	ldr	r3, [fp, #-8]
800200b0:	e59f2014 	ldr	r2, [pc, #20]	; 800200cc <binit+0xcc>
800200b4:	e1530002 	cmp	r3, r2
800200b8:	3affffe3 	bcc	8002004c <binit+0x4c>
800200bc:	e24bd004 	sub	sp, fp, #4
800200c0:	e8bd8800 	pop	{fp, pc}
800200c4:	800aa0c0 	.word	0x800aa0c0
800200c8:	80028cf4 	.word	0x80028cf4
800200cc:	800ab5e4 	.word	0x800ab5e4
800200d0:	800aa0f4 	.word	0x800aa0f4

800200d4 <bget>:
800200d4:	e92d4800 	push	{fp, lr}
800200d8:	e28db004 	add	fp, sp, #4
800200dc:	e24dd010 	sub	sp, sp, #16
800200e0:	e50b0010 	str	r0, [fp, #-16]
800200e4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800200e8:	e59f0140 	ldr	r0, [pc, #320]	; 80020230 <bget+0x15c>
800200ec:	eb0011cd 	bl	80024828 <acquire>
800200f0:	e59f3138 	ldr	r3, [pc, #312]	; 80020230 <bget+0x15c>
800200f4:	e2833a01 	add	r3, r3, #4096	; 0x1000
800200f8:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
800200fc:	e50b3008 	str	r3, [fp, #-8]
80020100:	ea00001e 	b	80020180 <bget+0xac>
80020104:	e51b3008 	ldr	r3, [fp, #-8]
80020108:	e5932004 	ldr	r2, [r3, #4]
8002010c:	e51b3010 	ldr	r3, [fp, #-16]
80020110:	e1520003 	cmp	r2, r3
80020114:	1a000016 	bne	80020174 <bget+0xa0>
80020118:	e51b3008 	ldr	r3, [fp, #-8]
8002011c:	e5932008 	ldr	r2, [r3, #8]
80020120:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020124:	e1520003 	cmp	r2, r3
80020128:	1a000011 	bne	80020174 <bget+0xa0>
8002012c:	e51b3008 	ldr	r3, [fp, #-8]
80020130:	e5933000 	ldr	r3, [r3]
80020134:	e2033001 	and	r3, r3, #1
80020138:	e3530000 	cmp	r3, #0
8002013c:	1a000008 	bne	80020164 <bget+0x90>
80020140:	e51b3008 	ldr	r3, [fp, #-8]
80020144:	e5933000 	ldr	r3, [r3]
80020148:	e3832001 	orr	r2, r3, #1
8002014c:	e51b3008 	ldr	r3, [fp, #-8]
80020150:	e5832000 	str	r2, [r3]
80020154:	e59f00d4 	ldr	r0, [pc, #212]	; 80020230 <bget+0x15c>
80020158:	eb0011bc 	bl	80024850 <release>
8002015c:	e51b3008 	ldr	r3, [fp, #-8]
80020160:	ea00002f 	b	80020224 <bget+0x150>
80020164:	e51b0008 	ldr	r0, [fp, #-8]
80020168:	e59f10c0 	ldr	r1, [pc, #192]	; 80020230 <bget+0x15c>
8002016c:	eb0010d2 	bl	800244bc <sleep>
80020170:	eaffffde 	b	800200f0 <bget+0x1c>
80020174:	e51b3008 	ldr	r3, [fp, #-8]
80020178:	e5933010 	ldr	r3, [r3, #16]
8002017c:	e50b3008 	str	r3, [fp, #-8]
80020180:	e51b3008 	ldr	r3, [fp, #-8]
80020184:	e59f20a8 	ldr	r2, [pc, #168]	; 80020234 <bget+0x160>
80020188:	e1530002 	cmp	r3, r2
8002018c:	1affffdc 	bne	80020104 <bget+0x30>
80020190:	e59f3098 	ldr	r3, [pc, #152]	; 80020230 <bget+0x15c>
80020194:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020198:	e5933530 	ldr	r3, [r3, #1328]	; 0x530
8002019c:	e50b3008 	str	r3, [fp, #-8]
800201a0:	ea000019 	b	8002020c <bget+0x138>
800201a4:	e51b3008 	ldr	r3, [fp, #-8]
800201a8:	e5933000 	ldr	r3, [r3]
800201ac:	e2033001 	and	r3, r3, #1
800201b0:	e3530000 	cmp	r3, #0
800201b4:	1a000011 	bne	80020200 <bget+0x12c>
800201b8:	e51b3008 	ldr	r3, [fp, #-8]
800201bc:	e5933000 	ldr	r3, [r3]
800201c0:	e2033004 	and	r3, r3, #4
800201c4:	e3530000 	cmp	r3, #0
800201c8:	1a00000c 	bne	80020200 <bget+0x12c>
800201cc:	e51b3008 	ldr	r3, [fp, #-8]
800201d0:	e51b2010 	ldr	r2, [fp, #-16]
800201d4:	e5832004 	str	r2, [r3, #4]
800201d8:	e51b3008 	ldr	r3, [fp, #-8]
800201dc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800201e0:	e5832008 	str	r2, [r3, #8]
800201e4:	e51b3008 	ldr	r3, [fp, #-8]
800201e8:	e3a02001 	mov	r2, #1
800201ec:	e5832000 	str	r2, [r3]
800201f0:	e59f0038 	ldr	r0, [pc, #56]	; 80020230 <bget+0x15c>
800201f4:	eb001195 	bl	80024850 <release>
800201f8:	e51b3008 	ldr	r3, [fp, #-8]
800201fc:	ea000008 	b	80020224 <bget+0x150>
80020200:	e51b3008 	ldr	r3, [fp, #-8]
80020204:	e593300c 	ldr	r3, [r3, #12]
80020208:	e50b3008 	str	r3, [fp, #-8]
8002020c:	e51b3008 	ldr	r3, [fp, #-8]
80020210:	e59f201c 	ldr	r2, [pc, #28]	; 80020234 <bget+0x160>
80020214:	e1530002 	cmp	r3, r2
80020218:	1affffe1 	bne	800201a4 <bget+0xd0>
8002021c:	e59f0014 	ldr	r0, [pc, #20]	; 80020238 <bget+0x164>
80020220:	eb00012e 	bl	800206e0 <panic>
80020224:	e1a00003 	mov	r0, r3
80020228:	e24bd004 	sub	sp, fp, #4
8002022c:	e8bd8800 	pop	{fp, pc}
80020230:	800aa0c0 	.word	0x800aa0c0
80020234:	800ab5e4 	.word	0x800ab5e4
80020238:	80028cfc 	.word	0x80028cfc

8002023c <bread>:
8002023c:	e92d4800 	push	{fp, lr}
80020240:	e28db004 	add	fp, sp, #4
80020244:	e24dd010 	sub	sp, sp, #16
80020248:	e50b0010 	str	r0, [fp, #-16]
8002024c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020250:	e51b0010 	ldr	r0, [fp, #-16]
80020254:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80020258:	ebffff9d 	bl	800200d4 <bget>
8002025c:	e50b0008 	str	r0, [fp, #-8]
80020260:	e51b3008 	ldr	r3, [fp, #-8]
80020264:	e5933000 	ldr	r3, [r3]
80020268:	e2033002 	and	r3, r3, #2
8002026c:	e3530000 	cmp	r3, #0
80020270:	1a000001 	bne	8002027c <bread+0x40>
80020274:	e51b0008 	ldr	r0, [fp, #-8]
80020278:	eb001eb1 	bl	80027d44 <iderw>
8002027c:	e51b3008 	ldr	r3, [fp, #-8]
80020280:	e1a00003 	mov	r0, r3
80020284:	e24bd004 	sub	sp, fp, #4
80020288:	e8bd8800 	pop	{fp, pc}

8002028c <bwrite>:
8002028c:	e92d4800 	push	{fp, lr}
80020290:	e28db004 	add	fp, sp, #4
80020294:	e24dd008 	sub	sp, sp, #8
80020298:	e50b0008 	str	r0, [fp, #-8]
8002029c:	e51b3008 	ldr	r3, [fp, #-8]
800202a0:	e5933000 	ldr	r3, [r3]
800202a4:	e2033001 	and	r3, r3, #1
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1a000001 	bne	800202b8 <bwrite+0x2c>
800202b0:	e59f0024 	ldr	r0, [pc, #36]	; 800202dc <bwrite+0x50>
800202b4:	eb000109 	bl	800206e0 <panic>
800202b8:	e51b3008 	ldr	r3, [fp, #-8]
800202bc:	e5933000 	ldr	r3, [r3]
800202c0:	e3832004 	orr	r2, r3, #4
800202c4:	e51b3008 	ldr	r3, [fp, #-8]
800202c8:	e5832000 	str	r2, [r3]
800202cc:	e51b0008 	ldr	r0, [fp, #-8]
800202d0:	eb001e9b 	bl	80027d44 <iderw>
800202d4:	e24bd004 	sub	sp, fp, #4
800202d8:	e8bd8800 	pop	{fp, pc}
800202dc:	80028d10 	.word	0x80028d10

800202e0 <brelse>:
800202e0:	e92d4800 	push	{fp, lr}
800202e4:	e28db004 	add	fp, sp, #4
800202e8:	e24dd008 	sub	sp, sp, #8
800202ec:	e50b0008 	str	r0, [fp, #-8]
800202f0:	e51b3008 	ldr	r3, [fp, #-8]
800202f4:	e5933000 	ldr	r3, [r3]
800202f8:	e2033001 	and	r3, r3, #1
800202fc:	e3530000 	cmp	r3, #0
80020300:	1a000001 	bne	8002030c <brelse+0x2c>
80020304:	e59f00a4 	ldr	r0, [pc, #164]	; 800203b0 <brelse+0xd0>
80020308:	eb0000f4 	bl	800206e0 <panic>
8002030c:	e59f00a0 	ldr	r0, [pc, #160]	; 800203b4 <brelse+0xd4>
80020310:	eb001144 	bl	80024828 <acquire>
80020314:	e51b3008 	ldr	r3, [fp, #-8]
80020318:	e5933010 	ldr	r3, [r3, #16]
8002031c:	e51b2008 	ldr	r2, [fp, #-8]
80020320:	e592200c 	ldr	r2, [r2, #12]
80020324:	e583200c 	str	r2, [r3, #12]
80020328:	e51b3008 	ldr	r3, [fp, #-8]
8002032c:	e593300c 	ldr	r3, [r3, #12]
80020330:	e51b2008 	ldr	r2, [fp, #-8]
80020334:	e5922010 	ldr	r2, [r2, #16]
80020338:	e5832010 	str	r2, [r3, #16]
8002033c:	e59f3070 	ldr	r3, [pc, #112]	; 800203b4 <brelse+0xd4>
80020340:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020344:	e5932534 	ldr	r2, [r3, #1332]	; 0x534
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5832010 	str	r2, [r3, #16]
80020350:	e51b3008 	ldr	r3, [fp, #-8]
80020354:	e59f205c 	ldr	r2, [pc, #92]	; 800203b8 <brelse+0xd8>
80020358:	e583200c 	str	r2, [r3, #12]
8002035c:	e59f3050 	ldr	r3, [pc, #80]	; 800203b4 <brelse+0xd4>
80020360:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020364:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
80020368:	e51b2008 	ldr	r2, [fp, #-8]
8002036c:	e583200c 	str	r2, [r3, #12]
80020370:	e59f303c 	ldr	r3, [pc, #60]	; 800203b4 <brelse+0xd4>
80020374:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020378:	e1a02003 	mov	r2, r3
8002037c:	e51b3008 	ldr	r3, [fp, #-8]
80020380:	e5823534 	str	r3, [r2, #1332]	; 0x534
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5933000 	ldr	r3, [r3]
8002038c:	e3c32001 	bic	r2, r3, #1
80020390:	e51b3008 	ldr	r3, [fp, #-8]
80020394:	e5832000 	str	r2, [r3]
80020398:	e51b0008 	ldr	r0, [fp, #-8]
8002039c:	eb001098 	bl	80024604 <wakeup>
800203a0:	e59f000c 	ldr	r0, [pc, #12]	; 800203b4 <brelse+0xd4>
800203a4:	eb001129 	bl	80024850 <release>
800203a8:	e24bd004 	sub	sp, fp, #4
800203ac:	e8bd8800 	pop	{fp, pc}
800203b0:	80028d18 	.word	0x80028d18
800203b4:	800aa0c0 	.word	0x800aa0c0
800203b8:	800ab5e4 	.word	0x800ab5e4

800203bc <printint>:
800203bc:	e92d4810 	push	{r4, fp, lr}
800203c0:	e28db008 	add	fp, sp, #8
800203c4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
800203c8:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
800203cc:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
800203d0:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
800203d4:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
800203d8:	e3530000 	cmp	r3, #0
800203dc:	0a00000a 	beq	8002040c <printint+0x50>
800203e0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800203e4:	e1a03fa3 	lsr	r3, r3, #31
800203e8:	e6ef3073 	uxtb	r3, r3
800203ec:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
800203f0:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
800203f4:	e3530000 	cmp	r3, #0
800203f8:	0a000003 	beq	8002040c <printint+0x50>
800203fc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020400:	e2633000 	rsb	r3, r3, #0
80020404:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020408:	ea000001 	b	80020414 <printint+0x58>
8002040c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020410:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020414:	e3a03000 	mov	r3, #0
80020418:	e50b3010 	str	r3, [fp, #-16]
8002041c:	e51b4010 	ldr	r4, [fp, #-16]
80020420:	e2843001 	add	r3, r4, #1
80020424:	e50b3010 	str	r3, [fp, #-16]
80020428:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002042c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020430:	e1a00002 	mov	r0, r2
80020434:	e1a01003 	mov	r1, r3
80020438:	eb0021d2 	bl	80028b88 <__aeabi_uidivmod>
8002043c:	e1a03001 	mov	r3, r1
80020440:	e1a02003 	mov	r2, r3
80020444:	e59f3094 	ldr	r3, [pc, #148]	; 800204e0 <printint+0x124>
80020448:	e7d32002 	ldrb	r2, [r3, r2]
8002044c:	e24b300c 	sub	r3, fp, #12
80020450:	e0833004 	add	r3, r3, r4
80020454:	e5432018 	strb	r2, [r3, #-24]	; 0xffffffe8
80020458:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002045c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020460:	e1a01003 	mov	r1, r3
80020464:	eb00218a 	bl	80028a94 <__aeabi_uidiv>
80020468:	e1a03000 	mov	r3, r0
8002046c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020470:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020474:	e3530000 	cmp	r3, #0
80020478:	1affffe7 	bne	8002041c <printint+0x60>
8002047c:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
80020480:	e3530000 	cmp	r3, #0
80020484:	0a000006 	beq	800204a4 <printint+0xe8>
80020488:	e51b3010 	ldr	r3, [fp, #-16]
8002048c:	e2832001 	add	r2, r3, #1
80020490:	e50b2010 	str	r2, [fp, #-16]
80020494:	e24b200c 	sub	r2, fp, #12
80020498:	e0823003 	add	r3, r2, r3
8002049c:	e3a0202d 	mov	r2, #45	; 0x2d
800204a0:	e5432018 	strb	r2, [r3, #-24]	; 0xffffffe8
800204a4:	ea000005 	b	800204c0 <printint+0x104>
800204a8:	e24b2024 	sub	r2, fp, #36	; 0x24
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e0823003 	add	r3, r2, r3
800204b4:	e5d33000 	ldrb	r3, [r3]
800204b8:	e1a00003 	mov	r0, r3
800204bc:	eb00009f 	bl	80020740 <consputc>
800204c0:	e51b3010 	ldr	r3, [fp, #-16]
800204c4:	e2433001 	sub	r3, r3, #1
800204c8:	e50b3010 	str	r3, [fp, #-16]
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3530000 	cmp	r3, #0
800204d4:	aafffff3 	bge	800204a8 <printint+0xec>
800204d8:	e24bd008 	sub	sp, fp, #8
800204dc:	e8bd8810 	pop	{r4, fp, pc}
800204e0:	8002a000 	.word	0x8002a000

800204e4 <cprintf>:
800204e4:	e92d000f 	push	{r0, r1, r2, r3}
800204e8:	e92d4800 	push	{fp, lr}
800204ec:	e28db004 	add	fp, sp, #4
800204f0:	e24dd018 	sub	sp, sp, #24
800204f4:	e59f31d8 	ldr	r3, [pc, #472]	; 800206d4 <cprintf+0x1f0>
800204f8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
800204fc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020500:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020504:	e3530000 	cmp	r3, #0
80020508:	0a000001 	beq	80020514 <cprintf+0x30>
8002050c:	e59f01c0 	ldr	r0, [pc, #448]	; 800206d4 <cprintf+0x1f0>
80020510:	eb0010c4 	bl	80024828 <acquire>
80020514:	e59b3004 	ldr	r3, [fp, #4]
80020518:	e3530000 	cmp	r3, #0
8002051c:	1a000001 	bne	80020528 <cprintf+0x44>
80020520:	e59f01b0 	ldr	r0, [pc, #432]	; 800206d8 <cprintf+0x1f4>
80020524:	eb00006d 	bl	800206e0 <panic>
80020528:	e28b3008 	add	r3, fp, #8
8002052c:	e50b300c 	str	r3, [fp, #-12]
80020530:	e3a03000 	mov	r3, #0
80020534:	e50b3008 	str	r3, [fp, #-8]
80020538:	ea000054 	b	80020690 <cprintf+0x1ac>
8002053c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020540:	e3530025 	cmp	r3, #37	; 0x25
80020544:	0a000002 	beq	80020554 <cprintf+0x70>
80020548:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
8002054c:	eb00007b 	bl	80020740 <consputc>
80020550:	ea00004b 	b	80020684 <cprintf+0x1a0>
80020554:	e59b2004 	ldr	r2, [fp, #4]
80020558:	e51b3008 	ldr	r3, [fp, #-8]
8002055c:	e2833001 	add	r3, r3, #1
80020560:	e50b3008 	str	r3, [fp, #-8]
80020564:	e51b3008 	ldr	r3, [fp, #-8]
80020568:	e0823003 	add	r3, r2, r3
8002056c:	e5d33000 	ldrb	r3, [r3]
80020570:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80020574:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020578:	e3530000 	cmp	r3, #0
8002057c:	1a000000 	bne	80020584 <cprintf+0xa0>
80020580:	ea00004a 	b	800206b0 <cprintf+0x1cc>
80020584:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020588:	e3530070 	cmp	r3, #112	; 0x70
8002058c:	0a000014 	beq	800205e4 <cprintf+0x100>
80020590:	e3530070 	cmp	r3, #112	; 0x70
80020594:	ca000004 	bgt	800205ac <cprintf+0xc8>
80020598:	e3530025 	cmp	r3, #37	; 0x25
8002059c:	0a000030 	beq	80020664 <cprintf+0x180>
800205a0:	e3530064 	cmp	r3, #100	; 0x64
800205a4:	0a000005 	beq	800205c0 <cprintf+0xdc>
800205a8:	ea000030 	b	80020670 <cprintf+0x18c>
800205ac:	e3530073 	cmp	r3, #115	; 0x73
800205b0:	0a000014 	beq	80020608 <cprintf+0x124>
800205b4:	e3530078 	cmp	r3, #120	; 0x78
800205b8:	0a000009 	beq	800205e4 <cprintf+0x100>
800205bc:	ea00002b 	b	80020670 <cprintf+0x18c>
800205c0:	e51b300c 	ldr	r3, [fp, #-12]
800205c4:	e2832004 	add	r2, r3, #4
800205c8:	e50b200c 	str	r2, [fp, #-12]
800205cc:	e5933000 	ldr	r3, [r3]
800205d0:	e1a00003 	mov	r0, r3
800205d4:	e3a0100a 	mov	r1, #10
800205d8:	e3a02001 	mov	r2, #1
800205dc:	ebffff76 	bl	800203bc <printint>
800205e0:	ea000027 	b	80020684 <cprintf+0x1a0>
800205e4:	e51b300c 	ldr	r3, [fp, #-12]
800205e8:	e2832004 	add	r2, r3, #4
800205ec:	e50b200c 	str	r2, [fp, #-12]
800205f0:	e5933000 	ldr	r3, [r3]
800205f4:	e1a00003 	mov	r0, r3
800205f8:	e3a01010 	mov	r1, #16
800205fc:	e3a02000 	mov	r2, #0
80020600:	ebffff6d 	bl	800203bc <printint>
80020604:	ea00001e 	b	80020684 <cprintf+0x1a0>
80020608:	e51b300c 	ldr	r3, [fp, #-12]
8002060c:	e2832004 	add	r2, r3, #4
80020610:	e50b200c 	str	r2, [fp, #-12]
80020614:	e5933000 	ldr	r3, [r3]
80020618:	e50b3010 	str	r3, [fp, #-16]
8002061c:	e51b3010 	ldr	r3, [fp, #-16]
80020620:	e3530000 	cmp	r3, #0
80020624:	1a000001 	bne	80020630 <cprintf+0x14c>
80020628:	e59f30ac 	ldr	r3, [pc, #172]	; 800206dc <cprintf+0x1f8>
8002062c:	e50b3010 	str	r3, [fp, #-16]
80020630:	ea000006 	b	80020650 <cprintf+0x16c>
80020634:	e51b3010 	ldr	r3, [fp, #-16]
80020638:	e5d33000 	ldrb	r3, [r3]
8002063c:	e1a00003 	mov	r0, r3
80020640:	eb00003e 	bl	80020740 <consputc>
80020644:	e51b3010 	ldr	r3, [fp, #-16]
80020648:	e2833001 	add	r3, r3, #1
8002064c:	e50b3010 	str	r3, [fp, #-16]
80020650:	e51b3010 	ldr	r3, [fp, #-16]
80020654:	e5d33000 	ldrb	r3, [r3]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1afffff4 	bne	80020634 <cprintf+0x150>
80020660:	ea000007 	b	80020684 <cprintf+0x1a0>
80020664:	e3a00025 	mov	r0, #37	; 0x25
80020668:	eb000034 	bl	80020740 <consputc>
8002066c:	ea000004 	b	80020684 <cprintf+0x1a0>
80020670:	e3a00025 	mov	r0, #37	; 0x25
80020674:	eb000031 	bl	80020740 <consputc>
80020678:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
8002067c:	eb00002f 	bl	80020740 <consputc>
80020680:	e1a00000 	nop			; (mov r0, r0)
80020684:	e51b3008 	ldr	r3, [fp, #-8]
80020688:	e2833001 	add	r3, r3, #1
8002068c:	e50b3008 	str	r3, [fp, #-8]
80020690:	e59b2004 	ldr	r2, [fp, #4]
80020694:	e51b3008 	ldr	r3, [fp, #-8]
80020698:	e0823003 	add	r3, r2, r3
8002069c:	e5d33000 	ldrb	r3, [r3]
800206a0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
800206a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800206a8:	e3530000 	cmp	r3, #0
800206ac:	1affffa2 	bne	8002053c <cprintf+0x58>
800206b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800206b4:	e3530000 	cmp	r3, #0
800206b8:	0a000001 	beq	800206c4 <cprintf+0x1e0>
800206bc:	e59f0010 	ldr	r0, [pc, #16]	; 800206d4 <cprintf+0x1f0>
800206c0:	eb001062 	bl	80024850 <release>
800206c4:	e24bd004 	sub	sp, fp, #4
800206c8:	e8bd4800 	pop	{fp, lr}
800206cc:	e28dd010 	add	sp, sp, #16
800206d0:	e12fff1e 	bx	lr
800206d4:	800ab800 	.word	0x800ab800
800206d8:	80028d20 	.word	0x80028d20
800206dc:	80028d2c 	.word	0x80028d2c

800206e0 <panic>:
800206e0:	e92d4800 	push	{fp, lr}
800206e4:	e28db004 	add	fp, sp, #4
800206e8:	e24dd008 	sub	sp, sp, #8
800206ec:	e50b0008 	str	r0, [fp, #-8]
800206f0:	eb001c44 	bl	80027808 <cli>
800206f4:	e59f3034 	ldr	r3, [pc, #52]	; 80020730 <panic+0x50>
800206f8:	e3a02000 	mov	r2, #0
800206fc:	e5832034 	str	r2, [r3, #52]	; 0x34
80020700:	e59f302c 	ldr	r3, [pc, #44]	; 80020734 <panic+0x54>
80020704:	e5933000 	ldr	r3, [r3]
80020708:	e5d33000 	ldrb	r3, [r3]
8002070c:	e59f0024 	ldr	r0, [pc, #36]	; 80020738 <panic+0x58>
80020710:	e1a01003 	mov	r1, r3
80020714:	ebffff72 	bl	800204e4 <cprintf>
80020718:	e51b0008 	ldr	r0, [fp, #-8]
8002071c:	eb001ce7 	bl	80027ac0 <show_callstk>
80020720:	e59f3014 	ldr	r3, [pc, #20]	; 8002073c <panic+0x5c>
80020724:	e3a02001 	mov	r2, #1
80020728:	e5832000 	str	r2, [r3]
8002072c:	eafffffe 	b	8002072c <panic+0x4c>
80020730:	800ab800 	.word	0x800ab800
80020734:	800ad4a0 	.word	0x800ad4a0
80020738:	80028d34 	.word	0x80028d34
8002073c:	800ab7fc 	.word	0x800ab7fc

80020740 <consputc>:
80020740:	e92d4800 	push	{fp, lr}
80020744:	e28db004 	add	fp, sp, #4
80020748:	e24dd008 	sub	sp, sp, #8
8002074c:	e50b0008 	str	r0, [fp, #-8]
80020750:	e59f3048 	ldr	r3, [pc, #72]	; 800207a0 <consputc+0x60>
80020754:	e5933000 	ldr	r3, [r3]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000001 	beq	80020768 <consputc+0x28>
80020760:	eb001c28 	bl	80027808 <cli>
80020764:	eafffffe 	b	80020764 <consputc+0x24>
80020768:	e51b3008 	ldr	r3, [fp, #-8]
8002076c:	e3530c01 	cmp	r3, #256	; 0x100
80020770:	1a000006 	bne	80020790 <consputc+0x50>
80020774:	e3a00008 	mov	r0, #8
80020778:	eb0018c4 	bl	80026a90 <uartputc>
8002077c:	e3a00020 	mov	r0, #32
80020780:	eb0018c2 	bl	80026a90 <uartputc>
80020784:	e3a00008 	mov	r0, #8
80020788:	eb0018c0 	bl	80026a90 <uartputc>
8002078c:	ea000001 	b	80020798 <consputc+0x58>
80020790:	e51b0008 	ldr	r0, [fp, #-8]
80020794:	eb0018bd 	bl	80026a90 <uartputc>
80020798:	e24bd004 	sub	sp, fp, #4
8002079c:	e8bd8800 	pop	{fp, pc}
800207a0:	800ab7fc 	.word	0x800ab7fc

800207a4 <consoleintr>:
800207a4:	e92d4800 	push	{fp, lr}
800207a8:	e28db004 	add	fp, sp, #4
800207ac:	e24dd010 	sub	sp, sp, #16
800207b0:	e50b0010 	str	r0, [fp, #-16]
800207b4:	e59f01d0 	ldr	r0, [pc, #464]	; 8002098c <consoleintr+0x1e8>
800207b8:	eb00101a 	bl	80024828 <acquire>
800207bc:	ea000068 	b	80020964 <consoleintr+0x1c0>
800207c0:	e51b3008 	ldr	r3, [fp, #-8]
800207c4:	e3530010 	cmp	r3, #16
800207c8:	0a000009 	beq	800207f4 <consoleintr+0x50>
800207cc:	e3530010 	cmp	r3, #16
800207d0:	ca000002 	bgt	800207e0 <consoleintr+0x3c>
800207d4:	e3530008 	cmp	r3, #8
800207d8:	0a00001f 	beq	8002085c <consoleintr+0xb8>
800207dc:	ea00002c 	b	80020894 <consoleintr+0xf0>
800207e0:	e3530015 	cmp	r3, #21
800207e4:	0a00000b 	beq	80020818 <consoleintr+0x74>
800207e8:	e353007f 	cmp	r3, #127	; 0x7f
800207ec:	0a00001a 	beq	8002085c <consoleintr+0xb8>
800207f0:	ea000027 	b	80020894 <consoleintr+0xf0>
800207f4:	eb000fbb 	bl	800246e8 <procdump>
800207f8:	ea000059 	b	80020964 <consoleintr+0x1c0>
800207fc:	e59f3188 	ldr	r3, [pc, #392]	; 8002098c <consoleintr+0x1e8>
80020800:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80020804:	e2433001 	sub	r3, r3, #1
80020808:	e59f217c 	ldr	r2, [pc, #380]	; 8002098c <consoleintr+0x1e8>
8002080c:	e582323c 	str	r3, [r2, #572]	; 0x23c
80020810:	e3a00c01 	mov	r0, #256	; 0x100
80020814:	ebffffc9 	bl	80020740 <consputc>
80020818:	e59f316c 	ldr	r3, [pc, #364]	; 8002098c <consoleintr+0x1e8>
8002081c:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80020820:	e59f3164 	ldr	r3, [pc, #356]	; 8002098c <consoleintr+0x1e8>
80020824:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80020828:	e1520003 	cmp	r2, r3
8002082c:	0a000009 	beq	80020858 <consoleintr+0xb4>
80020830:	e59f3154 	ldr	r3, [pc, #340]	; 8002098c <consoleintr+0x1e8>
80020834:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80020838:	e2433001 	sub	r3, r3, #1
8002083c:	e1a03b83 	lsl	r3, r3, #23
80020840:	e1a03ba3 	lsr	r3, r3, #23
80020844:	e59f2140 	ldr	r2, [pc, #320]	; 8002098c <consoleintr+0x1e8>
80020848:	e0823003 	add	r3, r2, r3
8002084c:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
80020850:	e353000a 	cmp	r3, #10
80020854:	1affffe8 	bne	800207fc <consoleintr+0x58>
80020858:	ea000041 	b	80020964 <consoleintr+0x1c0>
8002085c:	e59f3128 	ldr	r3, [pc, #296]	; 8002098c <consoleintr+0x1e8>
80020860:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80020864:	e59f3120 	ldr	r3, [pc, #288]	; 8002098c <consoleintr+0x1e8>
80020868:	e5933238 	ldr	r3, [r3, #568]	; 0x238
8002086c:	e1520003 	cmp	r2, r3
80020870:	0a000006 	beq	80020890 <consoleintr+0xec>
80020874:	e59f3110 	ldr	r3, [pc, #272]	; 8002098c <consoleintr+0x1e8>
80020878:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
8002087c:	e2433001 	sub	r3, r3, #1
80020880:	e59f2104 	ldr	r2, [pc, #260]	; 8002098c <consoleintr+0x1e8>
80020884:	e582323c 	str	r3, [r2, #572]	; 0x23c
80020888:	e3a00c01 	mov	r0, #256	; 0x100
8002088c:	ebffffab 	bl	80020740 <consputc>
80020890:	ea000033 	b	80020964 <consoleintr+0x1c0>
80020894:	e51b3008 	ldr	r3, [fp, #-8]
80020898:	e3530000 	cmp	r3, #0
8002089c:	0a00002f 	beq	80020960 <consoleintr+0x1bc>
800208a0:	e59f30e4 	ldr	r3, [pc, #228]	; 8002098c <consoleintr+0x1e8>
800208a4:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
800208a8:	e59f30dc 	ldr	r3, [pc, #220]	; 8002098c <consoleintr+0x1e8>
800208ac:	e5933234 	ldr	r3, [r3, #564]	; 0x234
800208b0:	e0633002 	rsb	r3, r3, r2
800208b4:	e3530c02 	cmp	r3, #512	; 0x200
800208b8:	2a000028 	bcs	80020960 <consoleintr+0x1bc>
800208bc:	e51b3008 	ldr	r3, [fp, #-8]
800208c0:	e353000d 	cmp	r3, #13
800208c4:	0a000001 	beq	800208d0 <consoleintr+0x12c>
800208c8:	e51b3008 	ldr	r3, [fp, #-8]
800208cc:	ea000000 	b	800208d4 <consoleintr+0x130>
800208d0:	e3a0300a 	mov	r3, #10
800208d4:	e50b3008 	str	r3, [fp, #-8]
800208d8:	e59f30ac 	ldr	r3, [pc, #172]	; 8002098c <consoleintr+0x1e8>
800208dc:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
800208e0:	e2832001 	add	r2, r3, #1
800208e4:	e59f10a0 	ldr	r1, [pc, #160]	; 8002098c <consoleintr+0x1e8>
800208e8:	e581223c 	str	r2, [r1, #572]	; 0x23c
800208ec:	e1a03b83 	lsl	r3, r3, #23
800208f0:	e1a03ba3 	lsr	r3, r3, #23
800208f4:	e51b2008 	ldr	r2, [fp, #-8]
800208f8:	e6ef1072 	uxtb	r1, r2
800208fc:	e59f2088 	ldr	r2, [pc, #136]	; 8002098c <consoleintr+0x1e8>
80020900:	e0823003 	add	r3, r2, r3
80020904:	e1a02001 	mov	r2, r1
80020908:	e5c32034 	strb	r2, [r3, #52]	; 0x34
8002090c:	e51b0008 	ldr	r0, [fp, #-8]
80020910:	ebffff8a 	bl	80020740 <consputc>
80020914:	e51b3008 	ldr	r3, [fp, #-8]
80020918:	e353000a 	cmp	r3, #10
8002091c:	0a000009 	beq	80020948 <consoleintr+0x1a4>
80020920:	e51b3008 	ldr	r3, [fp, #-8]
80020924:	e3530004 	cmp	r3, #4
80020928:	0a000006 	beq	80020948 <consoleintr+0x1a4>
8002092c:	e59f3058 	ldr	r3, [pc, #88]	; 8002098c <consoleintr+0x1e8>
80020930:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80020934:	e59f3050 	ldr	r3, [pc, #80]	; 8002098c <consoleintr+0x1e8>
80020938:	e5933234 	ldr	r3, [r3, #564]	; 0x234
8002093c:	e2833c02 	add	r3, r3, #512	; 0x200
80020940:	e1520003 	cmp	r2, r3
80020944:	1a000005 	bne	80020960 <consoleintr+0x1bc>
80020948:	e59f303c 	ldr	r3, [pc, #60]	; 8002098c <consoleintr+0x1e8>
8002094c:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80020950:	e59f2034 	ldr	r2, [pc, #52]	; 8002098c <consoleintr+0x1e8>
80020954:	e5823238 	str	r3, [r2, #568]	; 0x238
80020958:	e59f0030 	ldr	r0, [pc, #48]	; 80020990 <consoleintr+0x1ec>
8002095c:	eb000f28 	bl	80024604 <wakeup>
80020960:	e1a00000 	nop			; (mov r0, r0)
80020964:	e51b3010 	ldr	r3, [fp, #-16]
80020968:	e12fff33 	blx	r3
8002096c:	e50b0008 	str	r0, [fp, #-8]
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e3530000 	cmp	r3, #0
80020978:	aaffff90 	bge	800207c0 <consoleintr+0x1c>
8002097c:	e59f0008 	ldr	r0, [pc, #8]	; 8002098c <consoleintr+0x1e8>
80020980:	eb000fb2 	bl	80024850 <release>
80020984:	e24bd004 	sub	sp, fp, #4
80020988:	e8bd8800 	pop	{fp, pc}
8002098c:	800ab838 	.word	0x800ab838
80020990:	800aba6c 	.word	0x800aba6c

80020994 <consoleread>:
80020994:	e92d4800 	push	{fp, lr}
80020998:	e28db004 	add	fp, sp, #4
8002099c:	e24dd018 	sub	sp, sp, #24
800209a0:	e50b0010 	str	r0, [fp, #-16]
800209a4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800209a8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800209ac:	e51b0010 	ldr	r0, [fp, #-16]
800209b0:	eb000532 	bl	80021e80 <iunlock>
800209b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800209b8:	e50b3008 	str	r3, [fp, #-8]
800209bc:	e59f0124 	ldr	r0, [pc, #292]	; 80020ae8 <consoleread+0x154>
800209c0:	eb000f98 	bl	80024828 <acquire>
800209c4:	ea00003a 	b	80020ab4 <consoleread+0x120>
800209c8:	ea00000d 	b	80020a04 <consoleread+0x70>
800209cc:	e59f3118 	ldr	r3, [pc, #280]	; 80020aec <consoleread+0x158>
800209d0:	e5933000 	ldr	r3, [r3]
800209d4:	e5933024 	ldr	r3, [r3, #36]	; 0x24
800209d8:	e3530000 	cmp	r3, #0
800209dc:	0a000005 	beq	800209f8 <consoleread+0x64>
800209e0:	e59f0100 	ldr	r0, [pc, #256]	; 80020ae8 <consoleread+0x154>
800209e4:	eb000f99 	bl	80024850 <release>
800209e8:	e51b0010 	ldr	r0, [fp, #-16]
800209ec:	eb0004bf 	bl	80021cf0 <ilock>
800209f0:	e3e03000 	mvn	r3, #0
800209f4:	ea000038 	b	80020adc <consoleread+0x148>
800209f8:	e59f00f0 	ldr	r0, [pc, #240]	; 80020af0 <consoleread+0x15c>
800209fc:	e59f10e4 	ldr	r1, [pc, #228]	; 80020ae8 <consoleread+0x154>
80020a00:	eb000ead 	bl	800244bc <sleep>
80020a04:	e59f30dc 	ldr	r3, [pc, #220]	; 80020ae8 <consoleread+0x154>
80020a08:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80020a0c:	e59f30d4 	ldr	r3, [pc, #212]	; 80020ae8 <consoleread+0x154>
80020a10:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80020a14:	e1520003 	cmp	r2, r3
80020a18:	0affffeb 	beq	800209cc <consoleread+0x38>
80020a1c:	e59f30c4 	ldr	r3, [pc, #196]	; 80020ae8 <consoleread+0x154>
80020a20:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80020a24:	e2832001 	add	r2, r3, #1
80020a28:	e59f10b8 	ldr	r1, [pc, #184]	; 80020ae8 <consoleread+0x154>
80020a2c:	e5812234 	str	r2, [r1, #564]	; 0x234
80020a30:	e1a03b83 	lsl	r3, r3, #23
80020a34:	e1a03ba3 	lsr	r3, r3, #23
80020a38:	e59f20a8 	ldr	r2, [pc, #168]	; 80020ae8 <consoleread+0x154>
80020a3c:	e0823003 	add	r3, r2, r3
80020a40:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
80020a44:	e50b300c 	str	r3, [fp, #-12]
80020a48:	e51b300c 	ldr	r3, [fp, #-12]
80020a4c:	e3530004 	cmp	r3, #4
80020a50:	1a00000a 	bne	80020a80 <consoleread+0xec>
80020a54:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e1520003 	cmp	r2, r3
80020a60:	2a000005 	bcs	80020a7c <consoleread+0xe8>
80020a64:	e59f307c 	ldr	r3, [pc, #124]	; 80020ae8 <consoleread+0x154>
80020a68:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80020a6c:	e2433001 	sub	r3, r3, #1
80020a70:	e59f2070 	ldr	r2, [pc, #112]	; 80020ae8 <consoleread+0x154>
80020a74:	e5823234 	str	r3, [r2, #564]	; 0x234
80020a78:	ea000010 	b	80020ac0 <consoleread+0x12c>
80020a7c:	ea00000f 	b	80020ac0 <consoleread+0x12c>
80020a80:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020a84:	e2832001 	add	r2, r3, #1
80020a88:	e50b2014 	str	r2, [fp, #-20]	; 0xffffffec
80020a8c:	e51b200c 	ldr	r2, [fp, #-12]
80020a90:	e6ef2072 	uxtb	r2, r2
80020a94:	e5c32000 	strb	r2, [r3]
80020a98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020a9c:	e2433001 	sub	r3, r3, #1
80020aa0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80020aa4:	e51b300c 	ldr	r3, [fp, #-12]
80020aa8:	e353000a 	cmp	r3, #10
80020aac:	1a000000 	bne	80020ab4 <consoleread+0x120>
80020ab0:	ea000002 	b	80020ac0 <consoleread+0x12c>
80020ab4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020ab8:	e3530000 	cmp	r3, #0
80020abc:	caffffc1 	bgt	800209c8 <consoleread+0x34>
80020ac0:	e59f0020 	ldr	r0, [pc, #32]	; 80020ae8 <consoleread+0x154>
80020ac4:	eb000f61 	bl	80024850 <release>
80020ac8:	e51b0010 	ldr	r0, [fp, #-16]
80020acc:	eb000487 	bl	80021cf0 <ilock>
80020ad0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020ad4:	e51b2008 	ldr	r2, [fp, #-8]
80020ad8:	e0633002 	rsb	r3, r3, r2
80020adc:	e1a00003 	mov	r0, r3
80020ae0:	e24bd004 	sub	sp, fp, #4
80020ae4:	e8bd8800 	pop	{fp, pc}
80020ae8:	800ab838 	.word	0x800ab838
80020aec:	800ad60c 	.word	0x800ad60c
80020af0:	800aba6c 	.word	0x800aba6c

80020af4 <consolewrite>:
80020af4:	e92d4800 	push	{fp, lr}
80020af8:	e28db004 	add	fp, sp, #4
80020afc:	e24dd018 	sub	sp, sp, #24
80020b00:	e50b0010 	str	r0, [fp, #-16]
80020b04:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020b08:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80020b0c:	e51b0010 	ldr	r0, [fp, #-16]
80020b10:	eb0004da 	bl	80021e80 <iunlock>
80020b14:	e59f0060 	ldr	r0, [pc, #96]	; 80020b7c <consolewrite+0x88>
80020b18:	eb000f42 	bl	80024828 <acquire>
80020b1c:	e3a03000 	mov	r3, #0
80020b20:	e50b3008 	str	r3, [fp, #-8]
80020b24:	ea000008 	b	80020b4c <consolewrite+0x58>
80020b28:	e51b3008 	ldr	r3, [fp, #-8]
80020b2c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020b30:	e0823003 	add	r3, r2, r3
80020b34:	e5d33000 	ldrb	r3, [r3]
80020b38:	e1a00003 	mov	r0, r3
80020b3c:	ebfffeff 	bl	80020740 <consputc>
80020b40:	e51b3008 	ldr	r3, [fp, #-8]
80020b44:	e2833001 	add	r3, r3, #1
80020b48:	e50b3008 	str	r3, [fp, #-8]
80020b4c:	e51b2008 	ldr	r2, [fp, #-8]
80020b50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020b54:	e1520003 	cmp	r2, r3
80020b58:	bafffff2 	blt	80020b28 <consolewrite+0x34>
80020b5c:	e59f0018 	ldr	r0, [pc, #24]	; 80020b7c <consolewrite+0x88>
80020b60:	eb000f3a 	bl	80024850 <release>
80020b64:	e51b0010 	ldr	r0, [fp, #-16]
80020b68:	eb000460 	bl	80021cf0 <ilock>
80020b6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020b70:	e1a00003 	mov	r0, r3
80020b74:	e24bd004 	sub	sp, fp, #4
80020b78:	e8bd8800 	pop	{fp, pc}
80020b7c:	800ab800 	.word	0x800ab800

80020b80 <consoleinit>:
80020b80:	e92d4800 	push	{fp, lr}
80020b84:	e28db004 	add	fp, sp, #4
80020b88:	e59f0038 	ldr	r0, [pc, #56]	; 80020bc8 <consoleinit+0x48>
80020b8c:	e59f1038 	ldr	r1, [pc, #56]	; 80020bcc <consoleinit+0x4c>
80020b90:	eb000f13 	bl	800247e4 <initlock>
80020b94:	e59f0034 	ldr	r0, [pc, #52]	; 80020bd0 <consoleinit+0x50>
80020b98:	e59f1034 	ldr	r1, [pc, #52]	; 80020bd4 <consoleinit+0x54>
80020b9c:	eb000f10 	bl	800247e4 <initlock>
80020ba0:	e59f3030 	ldr	r3, [pc, #48]	; 80020bd8 <consoleinit+0x58>
80020ba4:	e59f2030 	ldr	r2, [pc, #48]	; 80020bdc <consoleinit+0x5c>
80020ba8:	e583200c 	str	r2, [r3, #12]
80020bac:	e59f3024 	ldr	r3, [pc, #36]	; 80020bd8 <consoleinit+0x58>
80020bb0:	e59f2028 	ldr	r2, [pc, #40]	; 80020be0 <consoleinit+0x60>
80020bb4:	e5832008 	str	r2, [r3, #8]
80020bb8:	e59f3008 	ldr	r3, [pc, #8]	; 80020bc8 <consoleinit+0x48>
80020bbc:	e3a02001 	mov	r2, #1
80020bc0:	e5832034 	str	r2, [r3, #52]	; 0x34
80020bc4:	e8bd8800 	pop	{fp, pc}
80020bc8:	800ab800 	.word	0x800ab800
80020bcc:	80028d44 	.word	0x80028d44
80020bd0:	800ab838 	.word	0x800ab838
80020bd4:	80028d4c 	.word	0x80028d4c
80020bd8:	800ac40c 	.word	0x800ac40c
80020bdc:	80020af4 	.word	0x80020af4
80020be0:	80020994 	.word	0x80020994

80020be4 <exec>:
80020be4:	e92d4810 	push	{r4, fp, lr}
80020be8:	e28db008 	add	fp, sp, #8
80020bec:	e24ddf49 	sub	sp, sp, #292	; 0x124
80020bf0:	e50b0120 	str	r0, [fp, #-288]	; 0xfffffee0
80020bf4:	e50b1124 	str	r1, [fp, #-292]	; 0xfffffedc
80020bf8:	e51b0120 	ldr	r0, [fp, #-288]	; 0xfffffee0
80020bfc:	eb000819 	bl	80022c68 <namei>
80020c00:	e50b0010 	str	r0, [fp, #-16]
80020c04:	e51b3010 	ldr	r3, [fp, #-16]
80020c08:	e3530000 	cmp	r3, #0
80020c0c:	1a000001 	bne	80020c18 <exec+0x34>
80020c10:	e3e03000 	mvn	r3, #0
80020c14:	ea000119 	b	80021080 <exec+0x49c>
80020c18:	e51b0010 	ldr	r0, [fp, #-16]
80020c1c:	eb000433 	bl	80021cf0 <ilock>
80020c20:	e24b3068 	sub	r3, fp, #104	; 0x68
80020c24:	e51b0010 	ldr	r0, [fp, #-16]
80020c28:	e1a01003 	mov	r1, r3
80020c2c:	e3a02000 	mov	r2, #0
80020c30:	e3a03034 	mov	r3, #52	; 0x34
80020c34:	eb0005d6 	bl	80022394 <readi>
80020c38:	e1a03000 	mov	r3, r0
80020c3c:	e3530033 	cmp	r3, #51	; 0x33
80020c40:	8a000000 	bhi	80020c48 <exec+0x64>
80020c44:	ea000102 	b	80021054 <exec+0x470>
80020c48:	e51b3068 	ldr	r3, [fp, #-104]	; 0xffffff98
80020c4c:	e59f2438 	ldr	r2, [pc, #1080]	; 8002108c <exec+0x4a8>
80020c50:	e1530002 	cmp	r3, r2
80020c54:	0a000000 	beq	80020c5c <exec+0x78>
80020c58:	ea0000fd 	b	80021054 <exec+0x470>
80020c5c:	e3a03000 	mov	r3, #0
80020c60:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020c64:	eb001820 	bl	80026cec <kpt_alloc>
80020c68:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80020c6c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020c70:	e3530000 	cmp	r3, #0
80020c74:	1a000000 	bne	80020c7c <exec+0x98>
80020c78:	ea0000f5 	b	80021054 <exec+0x470>
80020c7c:	e3a03000 	mov	r3, #0
80020c80:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80020c84:	e3a03000 	mov	r3, #0
80020c88:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80020c8c:	e51b304c 	ldr	r3, [fp, #-76]	; 0xffffffb4
80020c90:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80020c94:	ea000034 	b	80020d6c <exec+0x188>
80020c98:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80020c9c:	e24b2088 	sub	r2, fp, #136	; 0x88
80020ca0:	e51b0010 	ldr	r0, [fp, #-16]
80020ca4:	e1a01002 	mov	r1, r2
80020ca8:	e1a02003 	mov	r2, r3
80020cac:	e3a03020 	mov	r3, #32
80020cb0:	eb0005b7 	bl	80022394 <readi>
80020cb4:	e1a03000 	mov	r3, r0
80020cb8:	e3530020 	cmp	r3, #32
80020cbc:	0a000000 	beq	80020cc4 <exec+0xe0>
80020cc0:	ea0000e3 	b	80021054 <exec+0x470>
80020cc4:	e51b3088 	ldr	r3, [fp, #-136]	; 0xffffff78
80020cc8:	e3530001 	cmp	r3, #1
80020ccc:	0a000000 	beq	80020cd4 <exec+0xf0>
80020cd0:	ea00001f 	b	80020d54 <exec+0x170>
80020cd4:	e51b2074 	ldr	r2, [fp, #-116]	; 0xffffff8c
80020cd8:	e51b3078 	ldr	r3, [fp, #-120]	; 0xffffff88
80020cdc:	e1520003 	cmp	r2, r3
80020ce0:	2a000000 	bcs	80020ce8 <exec+0x104>
80020ce4:	ea0000da 	b	80021054 <exec+0x470>
80020ce8:	e51b2080 	ldr	r2, [fp, #-128]	; 0xffffff80
80020cec:	e51b3074 	ldr	r3, [fp, #-116]	; 0xffffff8c
80020cf0:	e0823003 	add	r3, r2, r3
80020cf4:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020cf8:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80020cfc:	e1a02003 	mov	r2, r3
80020d00:	eb001926 	bl	800271a0 <allocuvm>
80020d04:	e1a03000 	mov	r3, r0
80020d08:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80020d0c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020d10:	e3530000 	cmp	r3, #0
80020d14:	1a000000 	bne	80020d1c <exec+0x138>
80020d18:	ea0000cd 	b	80021054 <exec+0x470>
80020d1c:	e51b3080 	ldr	r3, [fp, #-128]	; 0xffffff80
80020d20:	e1a02003 	mov	r2, r3
80020d24:	e51bc084 	ldr	ip, [fp, #-132]	; 0xffffff7c
80020d28:	e51b3078 	ldr	r3, [fp, #-120]	; 0xffffff88
80020d2c:	e58d3000 	str	r3, [sp]
80020d30:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020d34:	e1a01002 	mov	r1, r2
80020d38:	e51b2010 	ldr	r2, [fp, #-16]
80020d3c:	e1a0300c 	mov	r3, ip
80020d40:	eb0018c9 	bl	8002706c <loaduvm>
80020d44:	e1a03000 	mov	r3, r0
80020d48:	e3530000 	cmp	r3, #0
80020d4c:	aa000000 	bge	80020d54 <exec+0x170>
80020d50:	ea0000bf 	b	80021054 <exec+0x470>
80020d54:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020d58:	e2833001 	add	r3, r3, #1
80020d5c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80020d60:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80020d64:	e2833020 	add	r3, r3, #32
80020d68:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80020d6c:	e15b33bc 	ldrh	r3, [fp, #-60]	; 0xffffffc4
80020d70:	e1a02003 	mov	r2, r3
80020d74:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020d78:	e1520003 	cmp	r2, r3
80020d7c:	caffffc5 	bgt	80020c98 <exec+0xb4>
80020d80:	e51b0010 	ldr	r0, [fp, #-16]
80020d84:	eb000498 	bl	80021fec <iunlockput>
80020d88:	e3a03000 	mov	r3, #0
80020d8c:	e50b3010 	str	r3, [fp, #-16]
80020d90:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020d94:	e2833eff 	add	r3, r3, #4080	; 0xff0
80020d98:	e283300f 	add	r3, r3, #15
80020d9c:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80020da0:	e3c3300f 	bic	r3, r3, #15
80020da4:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80020da8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020dac:	e2833a02 	add	r3, r3, #8192	; 0x2000
80020db0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020db4:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80020db8:	e1a02003 	mov	r2, r3
80020dbc:	eb0018f7 	bl	800271a0 <allocuvm>
80020dc0:	e1a03000 	mov	r3, r0
80020dc4:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80020dc8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020dcc:	e3530000 	cmp	r3, #0
80020dd0:	1a000000 	bne	80020dd8 <exec+0x1f4>
80020dd4:	ea00009e 	b	80021054 <exec+0x470>
80020dd8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020ddc:	e2433a02 	sub	r3, r3, #8192	; 0x2000
80020de0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020de4:	e1a01003 	mov	r1, r3
80020de8:	eb0019a1 	bl	80027474 <clearpteu>
80020dec:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020df0:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80020df4:	e3a03000 	mov	r3, #0
80020df8:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80020dfc:	ea000030 	b	80020ec4 <exec+0x2e0>
80020e00:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020e04:	e353001f 	cmp	r3, #31
80020e08:	9a000000 	bls	80020e10 <exec+0x22c>
80020e0c:	ea000090 	b	80021054 <exec+0x470>
80020e10:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020e14:	e1a03103 	lsl	r3, r3, #2
80020e18:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
80020e1c:	e0823003 	add	r3, r2, r3
80020e20:	e5933000 	ldr	r3, [r3]
80020e24:	e1a00003 	mov	r0, r3
80020e28:	eb000fd6 	bl	80024d88 <strlen>
80020e2c:	e1a03000 	mov	r3, r0
80020e30:	e1a02003 	mov	r2, r3
80020e34:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
80020e38:	e0623003 	rsb	r3, r2, r3
80020e3c:	e2433001 	sub	r3, r3, #1
80020e40:	e3c33003 	bic	r3, r3, #3
80020e44:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80020e48:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020e4c:	e1a03103 	lsl	r3, r3, #2
80020e50:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
80020e54:	e0823003 	add	r3, r2, r3
80020e58:	e5934000 	ldr	r4, [r3]
80020e5c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020e60:	e1a03103 	lsl	r3, r3, #2
80020e64:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
80020e68:	e0823003 	add	r3, r2, r3
80020e6c:	e5933000 	ldr	r3, [r3]
80020e70:	e1a00003 	mov	r0, r3
80020e74:	eb000fc3 	bl	80024d88 <strlen>
80020e78:	e1a03000 	mov	r3, r0
80020e7c:	e2833001 	add	r3, r3, #1
80020e80:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020e84:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80020e88:	e1a02004 	mov	r2, r4
80020e8c:	eb001a0b 	bl	800276c0 <copyout>
80020e90:	e1a03000 	mov	r3, r0
80020e94:	e3530000 	cmp	r3, #0
80020e98:	aa000000 	bge	80020ea0 <exec+0x2bc>
80020e9c:	ea00006c 	b	80021054 <exec+0x470>
80020ea0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020ea4:	e1a03103 	lsl	r3, r3, #2
80020ea8:	e24b200c 	sub	r2, fp, #12
80020eac:	e0823003 	add	r3, r2, r3
80020eb0:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
80020eb4:	e503210c 	str	r2, [r3, #-268]	; 0xfffffef4
80020eb8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020ebc:	e2833001 	add	r3, r3, #1
80020ec0:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80020ec4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020ec8:	e1a03103 	lsl	r3, r3, #2
80020ecc:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e5933000 	ldr	r3, [r3]
80020ed8:	e3530000 	cmp	r3, #0
80020edc:	1affffc7 	bne	80020e00 <exec+0x21c>
80020ee0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020ee4:	e1a03103 	lsl	r3, r3, #2
80020ee8:	e24b200c 	sub	r2, fp, #12
80020eec:	e0823003 	add	r3, r2, r3
80020ef0:	e3a02000 	mov	r2, #0
80020ef4:	e503210c 	str	r2, [r3, #-268]	; 0xfffffef4
80020ef8:	e59f3190 	ldr	r3, [pc, #400]	; 80021090 <exec+0x4ac>
80020efc:	e5933000 	ldr	r3, [r3]
80020f00:	e5933018 	ldr	r3, [r3, #24]
80020f04:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80020f08:	e5832010 	str	r2, [r3, #16]
80020f0c:	e59f317c 	ldr	r3, [pc, #380]	; 80021090 <exec+0x4ac>
80020f10:	e5933000 	ldr	r3, [r3]
80020f14:	e5933018 	ldr	r3, [r3, #24]
80020f18:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80020f1c:	e2822001 	add	r2, r2, #1
80020f20:	e1a02102 	lsl	r2, r2, #2
80020f24:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80020f28:	e0622001 	rsb	r2, r2, r1
80020f2c:	e5832014 	str	r2, [r3, #20]
80020f30:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020f34:	e2833001 	add	r3, r3, #1
80020f38:	e1a03103 	lsl	r3, r3, #2
80020f3c:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
80020f40:	e0633002 	rsb	r3, r3, r2
80020f44:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80020f48:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020f4c:	e2833001 	add	r3, r3, #1
80020f50:	e1a03103 	lsl	r3, r3, #2
80020f54:	e24b2f46 	sub	r2, fp, #280	; 0x118
80020f58:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80020f5c:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80020f60:	eb0019d6 	bl	800276c0 <copyout>
80020f64:	e1a03000 	mov	r3, r0
80020f68:	e3530000 	cmp	r3, #0
80020f6c:	aa000000 	bge	80020f74 <exec+0x390>
80020f70:	ea000037 	b	80021054 <exec+0x470>
80020f74:	e51b3120 	ldr	r3, [fp, #-288]	; 0xfffffee0
80020f78:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80020f7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020f80:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80020f84:	ea000009 	b	80020fb0 <exec+0x3cc>
80020f88:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020f8c:	e5d33000 	ldrb	r3, [r3]
80020f90:	e353002f 	cmp	r3, #47	; 0x2f
80020f94:	1a000002 	bne	80020fa4 <exec+0x3c0>
80020f98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020f9c:	e2833001 	add	r3, r3, #1
80020fa0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80020fa4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020fa8:	e2833001 	add	r3, r3, #1
80020fac:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80020fb0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020fb4:	e5d33000 	ldrb	r3, [r3]
80020fb8:	e3530000 	cmp	r3, #0
80020fbc:	1afffff1 	bne	80020f88 <exec+0x3a4>
80020fc0:	e59f30c8 	ldr	r3, [pc, #200]	; 80021090 <exec+0x4ac>
80020fc4:	e5933000 	ldr	r3, [r3]
80020fc8:	e283306c 	add	r3, r3, #108	; 0x6c
80020fcc:	e1a00003 	mov	r0, r3
80020fd0:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
80020fd4:	e3a02010 	mov	r2, #16
80020fd8:	eb000f44 	bl	80024cf0 <safestrcpy>
80020fdc:	e59f30ac 	ldr	r3, [pc, #172]	; 80021090 <exec+0x4ac>
80020fe0:	e5933000 	ldr	r3, [r3]
80020fe4:	e5933004 	ldr	r3, [r3, #4]
80020fe8:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
80020fec:	e59f309c 	ldr	r3, [pc, #156]	; 80021090 <exec+0x4ac>
80020ff0:	e5933000 	ldr	r3, [r3]
80020ff4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020ff8:	e5832004 	str	r2, [r3, #4]
80020ffc:	e59f308c 	ldr	r3, [pc, #140]	; 80021090 <exec+0x4ac>
80021000:	e5933000 	ldr	r3, [r3]
80021004:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80021008:	e5832000 	str	r2, [r3]
8002100c:	e59f307c 	ldr	r3, [pc, #124]	; 80021090 <exec+0x4ac>
80021010:	e5933000 	ldr	r3, [r3]
80021014:	e5933018 	ldr	r3, [r3, #24]
80021018:	e51b2050 	ldr	r2, [fp, #-80]	; 0xffffffb0
8002101c:	e5832044 	str	r2, [r3, #68]	; 0x44
80021020:	e59f3068 	ldr	r3, [pc, #104]	; 80021090 <exec+0x4ac>
80021024:	e5933000 	ldr	r3, [r3]
80021028:	e5933018 	ldr	r3, [r3, #24]
8002102c:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
80021030:	e5832000 	str	r2, [r3]
80021034:	e59f3054 	ldr	r3, [pc, #84]	; 80021090 <exec+0x4ac>
80021038:	e5933000 	ldr	r3, [r3]
8002103c:	e1a00003 	mov	r0, r3
80021040:	eb0017d1 	bl	80026f8c <switchuvm>
80021044:	e51b0034 	ldr	r0, [fp, #-52]	; 0xffffffcc
80021048:	eb0018da 	bl	800273b8 <freevm>
8002104c:	e3a03000 	mov	r3, #0
80021050:	ea00000a 	b	80021080 <exec+0x49c>
80021054:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021058:	e3530000 	cmp	r3, #0
8002105c:	0a000001 	beq	80021068 <exec+0x484>
80021060:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80021064:	eb0018d3 	bl	800273b8 <freevm>
80021068:	e51b3010 	ldr	r3, [fp, #-16]
8002106c:	e3530000 	cmp	r3, #0
80021070:	0a000001 	beq	8002107c <exec+0x498>
80021074:	e51b0010 	ldr	r0, [fp, #-16]
80021078:	eb0003db 	bl	80021fec <iunlockput>
8002107c:	e3e03000 	mvn	r3, #0
80021080:	e1a00003 	mov	r0, r3
80021084:	e24bd008 	sub	sp, fp, #8
80021088:	e8bd8810 	pop	{r4, fp, pc}
8002108c:	464c457f 	.word	0x464c457f
80021090:	800ad60c 	.word	0x800ad60c

80021094 <fileinit>:
80021094:	e92d4800 	push	{fp, lr}
80021098:	e28db004 	add	fp, sp, #4
8002109c:	e59f0008 	ldr	r0, [pc, #8]	; 800210ac <fileinit+0x18>
800210a0:	e59f1008 	ldr	r1, [pc, #8]	; 800210b0 <fileinit+0x1c>
800210a4:	eb000dce 	bl	800247e4 <initlock>
800210a8:	e8bd8800 	pop	{fp, pc}
800210ac:	800aba78 	.word	0x800aba78
800210b0:	80028d54 	.word	0x80028d54

800210b4 <filealloc>:
800210b4:	e92d4800 	push	{fp, lr}
800210b8:	e28db004 	add	fp, sp, #4
800210bc:	e24dd008 	sub	sp, sp, #8
800210c0:	e59f006c 	ldr	r0, [pc, #108]	; 80021134 <filealloc+0x80>
800210c4:	eb000dd7 	bl	80024828 <acquire>
800210c8:	e59f3068 	ldr	r3, [pc, #104]	; 80021138 <filealloc+0x84>
800210cc:	e50b3008 	str	r3, [fp, #-8]
800210d0:	ea00000d 	b	8002110c <filealloc+0x58>
800210d4:	e51b3008 	ldr	r3, [fp, #-8]
800210d8:	e5933004 	ldr	r3, [r3, #4]
800210dc:	e3530000 	cmp	r3, #0
800210e0:	1a000006 	bne	80021100 <filealloc+0x4c>
800210e4:	e51b3008 	ldr	r3, [fp, #-8]
800210e8:	e3a02001 	mov	r2, #1
800210ec:	e5832004 	str	r2, [r3, #4]
800210f0:	e59f003c 	ldr	r0, [pc, #60]	; 80021134 <filealloc+0x80>
800210f4:	eb000dd5 	bl	80024850 <release>
800210f8:	e51b3008 	ldr	r3, [fp, #-8]
800210fc:	ea000009 	b	80021128 <filealloc+0x74>
80021100:	e51b3008 	ldr	r3, [fp, #-8]
80021104:	e2833018 	add	r3, r3, #24
80021108:	e50b3008 	str	r3, [fp, #-8]
8002110c:	e51b3008 	ldr	r3, [fp, #-8]
80021110:	e59f2024 	ldr	r2, [pc, #36]	; 8002113c <filealloc+0x88>
80021114:	e1530002 	cmp	r3, r2
80021118:	3affffed 	bcc	800210d4 <filealloc+0x20>
8002111c:	e59f0010 	ldr	r0, [pc, #16]	; 80021134 <filealloc+0x80>
80021120:	eb000dca 	bl	80024850 <release>
80021124:	e3a03000 	mov	r3, #0
80021128:	e1a00003 	mov	r0, r3
8002112c:	e24bd004 	sub	sp, fp, #4
80021130:	e8bd8800 	pop	{fp, pc}
80021134:	800aba78 	.word	0x800aba78
80021138:	800abaac 	.word	0x800abaac
8002113c:	800ac40c 	.word	0x800ac40c

80021140 <filedup>:
80021140:	e92d4800 	push	{fp, lr}
80021144:	e28db004 	add	fp, sp, #4
80021148:	e24dd008 	sub	sp, sp, #8
8002114c:	e50b0008 	str	r0, [fp, #-8]
80021150:	e59f0044 	ldr	r0, [pc, #68]	; 8002119c <filedup+0x5c>
80021154:	eb000db3 	bl	80024828 <acquire>
80021158:	e51b3008 	ldr	r3, [fp, #-8]
8002115c:	e5933004 	ldr	r3, [r3, #4]
80021160:	e3530000 	cmp	r3, #0
80021164:	ca000001 	bgt	80021170 <filedup+0x30>
80021168:	e59f0030 	ldr	r0, [pc, #48]	; 800211a0 <filedup+0x60>
8002116c:	ebfffd5b 	bl	800206e0 <panic>
80021170:	e51b3008 	ldr	r3, [fp, #-8]
80021174:	e5933004 	ldr	r3, [r3, #4]
80021178:	e2832001 	add	r2, r3, #1
8002117c:	e51b3008 	ldr	r3, [fp, #-8]
80021180:	e5832004 	str	r2, [r3, #4]
80021184:	e59f0010 	ldr	r0, [pc, #16]	; 8002119c <filedup+0x5c>
80021188:	eb000db0 	bl	80024850 <release>
8002118c:	e51b3008 	ldr	r3, [fp, #-8]
80021190:	e1a00003 	mov	r0, r3
80021194:	e24bd004 	sub	sp, fp, #4
80021198:	e8bd8800 	pop	{fp, pc}
8002119c:	800aba78 	.word	0x800aba78
800211a0:	80028d5c 	.word	0x80028d5c

800211a4 <fileclose>:
800211a4:	e92d4800 	push	{fp, lr}
800211a8:	e28db004 	add	fp, sp, #4
800211ac:	e24dd020 	sub	sp, sp, #32
800211b0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
800211b4:	e59f00d0 	ldr	r0, [pc, #208]	; 8002128c <fileclose+0xe8>
800211b8:	eb000d9a 	bl	80024828 <acquire>
800211bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800211c0:	e5933004 	ldr	r3, [r3, #4]
800211c4:	e3530000 	cmp	r3, #0
800211c8:	ca000001 	bgt	800211d4 <fileclose+0x30>
800211cc:	e59f00bc 	ldr	r0, [pc, #188]	; 80021290 <fileclose+0xec>
800211d0:	ebfffd42 	bl	800206e0 <panic>
800211d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800211d8:	e5933004 	ldr	r3, [r3, #4]
800211dc:	e2432001 	sub	r2, r3, #1
800211e0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800211e4:	e5832004 	str	r2, [r3, #4]
800211e8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800211ec:	e5933004 	ldr	r3, [r3, #4]
800211f0:	e3530000 	cmp	r3, #0
800211f4:	da000002 	ble	80021204 <fileclose+0x60>
800211f8:	e59f008c 	ldr	r0, [pc, #140]	; 8002128c <fileclose+0xe8>
800211fc:	eb000d93 	bl	80024850 <release>
80021200:	ea00001f 	b	80021284 <fileclose+0xe0>
80021204:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021208:	e24bc01c 	sub	ip, fp, #28
8002120c:	e1a0e003 	mov	lr, r3
80021210:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80021214:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80021218:	e89e0003 	ldm	lr, {r0, r1}
8002121c:	e88c0003 	stm	ip, {r0, r1}
80021220:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021224:	e3a02000 	mov	r2, #0
80021228:	e5832004 	str	r2, [r3, #4]
8002122c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021230:	e3a02000 	mov	r2, #0
80021234:	e5c32000 	strb	r2, [r3]
80021238:	e59f004c 	ldr	r0, [pc, #76]	; 8002128c <fileclose+0xe8>
8002123c:	eb000d83 	bl	80024850 <release>
80021240:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
80021244:	e3530001 	cmp	r3, #1
80021248:	1a000005 	bne	80021264 <fileclose+0xc0>
8002124c:	e51b3010 	ldr	r3, [fp, #-16]
80021250:	e55b2013 	ldrb	r2, [fp, #-19]	; 0xffffffed
80021254:	e1a00003 	mov	r0, r3
80021258:	e1a01002 	mov	r1, r2
8002125c:	eb00091b 	bl	800236d0 <pipeclose>
80021260:	ea000007 	b	80021284 <fileclose+0xe0>
80021264:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
80021268:	e3530002 	cmp	r3, #2
8002126c:	1a000004 	bne	80021284 <fileclose+0xe0>
80021270:	eb000752 	bl	80022fc0 <begin_trans>
80021274:	e51b300c 	ldr	r3, [fp, #-12]
80021278:	e1a00003 	mov	r0, r3
8002127c:	eb000320 	bl	80021f04 <iput>
80021280:	eb000761 	bl	8002300c <commit_trans>
80021284:	e24bd004 	sub	sp, fp, #4
80021288:	e8bd8800 	pop	{fp, pc}
8002128c:	800aba78 	.word	0x800aba78
80021290:	80028d64 	.word	0x80028d64

80021294 <filestat>:
80021294:	e92d4800 	push	{fp, lr}
80021298:	e28db004 	add	fp, sp, #4
8002129c:	e24dd008 	sub	sp, sp, #8
800212a0:	e50b0008 	str	r0, [fp, #-8]
800212a4:	e50b100c 	str	r1, [fp, #-12]
800212a8:	e51b3008 	ldr	r3, [fp, #-8]
800212ac:	e5d33000 	ldrb	r3, [r3]
800212b0:	e3530002 	cmp	r3, #2
800212b4:	1a00000e 	bne	800212f4 <filestat+0x60>
800212b8:	e51b3008 	ldr	r3, [fp, #-8]
800212bc:	e5933010 	ldr	r3, [r3, #16]
800212c0:	e1a00003 	mov	r0, r3
800212c4:	eb000289 	bl	80021cf0 <ilock>
800212c8:	e51b3008 	ldr	r3, [fp, #-8]
800212cc:	e5933010 	ldr	r3, [r3, #16]
800212d0:	e1a00003 	mov	r0, r3
800212d4:	e51b100c 	ldr	r1, [fp, #-12]
800212d8:	eb000410 	bl	80022320 <stati>
800212dc:	e51b3008 	ldr	r3, [fp, #-8]
800212e0:	e5933010 	ldr	r3, [r3, #16]
800212e4:	e1a00003 	mov	r0, r3
800212e8:	eb0002e4 	bl	80021e80 <iunlock>
800212ec:	e3a03000 	mov	r3, #0
800212f0:	ea000000 	b	800212f8 <filestat+0x64>
800212f4:	e3e03000 	mvn	r3, #0
800212f8:	e1a00003 	mov	r0, r3
800212fc:	e24bd004 	sub	sp, fp, #4
80021300:	e8bd8800 	pop	{fp, pc}

80021304 <fileread>:
80021304:	e92d4800 	push	{fp, lr}
80021308:	e28db004 	add	fp, sp, #4
8002130c:	e24dd018 	sub	sp, sp, #24
80021310:	e50b0010 	str	r0, [fp, #-16]
80021314:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80021318:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
8002131c:	e51b3010 	ldr	r3, [fp, #-16]
80021320:	e5d33008 	ldrb	r3, [r3, #8]
80021324:	e3530000 	cmp	r3, #0
80021328:	1a000001 	bne	80021334 <fileread+0x30>
8002132c:	e3e03000 	mvn	r3, #0
80021330:	ea00002d 	b	800213ec <fileread+0xe8>
80021334:	e51b3010 	ldr	r3, [fp, #-16]
80021338:	e5d33000 	ldrb	r3, [r3]
8002133c:	e3530001 	cmp	r3, #1
80021340:	1a000007 	bne	80021364 <fileread+0x60>
80021344:	e51b3010 	ldr	r3, [fp, #-16]
80021348:	e593300c 	ldr	r3, [r3, #12]
8002134c:	e1a00003 	mov	r0, r3
80021350:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80021354:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80021358:	eb000955 	bl	800238b4 <piperead>
8002135c:	e1a03000 	mov	r3, r0
80021360:	ea000021 	b	800213ec <fileread+0xe8>
80021364:	e51b3010 	ldr	r3, [fp, #-16]
80021368:	e5d33000 	ldrb	r3, [r3]
8002136c:	e3530002 	cmp	r3, #2
80021370:	1a00001b 	bne	800213e4 <fileread+0xe0>
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e5933010 	ldr	r3, [r3, #16]
8002137c:	e1a00003 	mov	r0, r3
80021380:	eb00025a 	bl	80021cf0 <ilock>
80021384:	e51b3010 	ldr	r3, [fp, #-16]
80021388:	e5931010 	ldr	r1, [r3, #16]
8002138c:	e51b3010 	ldr	r3, [fp, #-16]
80021390:	e5932014 	ldr	r2, [r3, #20]
80021394:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021398:	e1a00001 	mov	r0, r1
8002139c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
800213a0:	eb0003fb 	bl	80022394 <readi>
800213a4:	e50b0008 	str	r0, [fp, #-8]
800213a8:	e51b3008 	ldr	r3, [fp, #-8]
800213ac:	e3530000 	cmp	r3, #0
800213b0:	da000005 	ble	800213cc <fileread+0xc8>
800213b4:	e51b3010 	ldr	r3, [fp, #-16]
800213b8:	e5932014 	ldr	r2, [r3, #20]
800213bc:	e51b3008 	ldr	r3, [fp, #-8]
800213c0:	e0822003 	add	r2, r2, r3
800213c4:	e51b3010 	ldr	r3, [fp, #-16]
800213c8:	e5832014 	str	r2, [r3, #20]
800213cc:	e51b3010 	ldr	r3, [fp, #-16]
800213d0:	e5933010 	ldr	r3, [r3, #16]
800213d4:	e1a00003 	mov	r0, r3
800213d8:	eb0002a8 	bl	80021e80 <iunlock>
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	ea000001 	b	800213ec <fileread+0xe8>
800213e4:	e59f000c 	ldr	r0, [pc, #12]	; 800213f8 <fileread+0xf4>
800213e8:	ebfffcbc 	bl	800206e0 <panic>
800213ec:	e1a00003 	mov	r0, r3
800213f0:	e24bd004 	sub	sp, fp, #4
800213f4:	e8bd8800 	pop	{fp, pc}
800213f8:	80028d70 	.word	0x80028d70

800213fc <filewrite>:
800213fc:	e92d4800 	push	{fp, lr}
80021400:	e28db004 	add	fp, sp, #4
80021404:	e24dd020 	sub	sp, sp, #32
80021408:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8002140c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80021410:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80021414:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021418:	e5d33009 	ldrb	r3, [r3, #9]
8002141c:	e3530000 	cmp	r3, #0
80021420:	1a000001 	bne	8002142c <filewrite+0x30>
80021424:	e3e03000 	mvn	r3, #0
80021428:	ea000057 	b	8002158c <filewrite+0x190>
8002142c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021430:	e5d33000 	ldrb	r3, [r3]
80021434:	e3530001 	cmp	r3, #1
80021438:	1a000007 	bne	8002145c <filewrite+0x60>
8002143c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021440:	e593300c 	ldr	r3, [r3, #12]
80021444:	e1a00003 	mov	r0, r3
80021448:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
8002144c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80021450:	eb0008cf 	bl	80023794 <pipewrite>
80021454:	e1a03000 	mov	r3, r0
80021458:	ea00004b 	b	8002158c <filewrite+0x190>
8002145c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021460:	e5d33000 	ldrb	r3, [r3]
80021464:	e3530002 	cmp	r3, #2
80021468:	1a000045 	bne	80021584 <filewrite+0x188>
8002146c:	e3a03c06 	mov	r3, #1536	; 0x600
80021470:	e50b3010 	str	r3, [fp, #-16]
80021474:	e3a03000 	mov	r3, #0
80021478:	e50b3008 	str	r3, [fp, #-8]
8002147c:	ea000034 	b	80021554 <filewrite+0x158>
80021480:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80021484:	e51b3008 	ldr	r3, [fp, #-8]
80021488:	e0633002 	rsb	r3, r3, r2
8002148c:	e50b300c 	str	r3, [fp, #-12]
80021490:	e51b200c 	ldr	r2, [fp, #-12]
80021494:	e51b3010 	ldr	r3, [fp, #-16]
80021498:	e1520003 	cmp	r2, r3
8002149c:	da000001 	ble	800214a8 <filewrite+0xac>
800214a0:	e51b3010 	ldr	r3, [fp, #-16]
800214a4:	e50b300c 	str	r3, [fp, #-12]
800214a8:	eb0006c4 	bl	80022fc0 <begin_trans>
800214ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800214b0:	e5933010 	ldr	r3, [r3, #16]
800214b4:	e1a00003 	mov	r0, r3
800214b8:	eb00020c 	bl	80021cf0 <ilock>
800214bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800214c0:	e5930010 	ldr	r0, [r3, #16]
800214c4:	e51b3008 	ldr	r3, [fp, #-8]
800214c8:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
800214cc:	e0821003 	add	r1, r2, r3
800214d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800214d4:	e5932014 	ldr	r2, [r3, #20]
800214d8:	e51b300c 	ldr	r3, [fp, #-12]
800214dc:	eb00042a 	bl	8002258c <writei>
800214e0:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800214e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800214e8:	e3530000 	cmp	r3, #0
800214ec:	da000005 	ble	80021508 <filewrite+0x10c>
800214f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800214f4:	e5932014 	ldr	r2, [r3, #20]
800214f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800214fc:	e0822003 	add	r2, r2, r3
80021500:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021504:	e5832014 	str	r2, [r3, #20]
80021508:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002150c:	e5933010 	ldr	r3, [r3, #16]
80021510:	e1a00003 	mov	r0, r3
80021514:	eb000259 	bl	80021e80 <iunlock>
80021518:	eb0006bb 	bl	8002300c <commit_trans>
8002151c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021520:	e3530000 	cmp	r3, #0
80021524:	aa000000 	bge	8002152c <filewrite+0x130>
80021528:	ea00000d 	b	80021564 <filewrite+0x168>
8002152c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80021530:	e51b300c 	ldr	r3, [fp, #-12]
80021534:	e1520003 	cmp	r2, r3
80021538:	0a000001 	beq	80021544 <filewrite+0x148>
8002153c:	e59f0054 	ldr	r0, [pc, #84]	; 80021598 <filewrite+0x19c>
80021540:	ebfffc66 	bl	800206e0 <panic>
80021544:	e51b2008 	ldr	r2, [fp, #-8]
80021548:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002154c:	e0823003 	add	r3, r2, r3
80021550:	e50b3008 	str	r3, [fp, #-8]
80021554:	e51b2008 	ldr	r2, [fp, #-8]
80021558:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002155c:	e1520003 	cmp	r2, r3
80021560:	baffffc6 	blt	80021480 <filewrite+0x84>
80021564:	e51b2008 	ldr	r2, [fp, #-8]
80021568:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002156c:	e1520003 	cmp	r2, r3
80021570:	1a000001 	bne	8002157c <filewrite+0x180>
80021574:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021578:	ea000003 	b	8002158c <filewrite+0x190>
8002157c:	e3e03000 	mvn	r3, #0
80021580:	ea000001 	b	8002158c <filewrite+0x190>
80021584:	e59f0010 	ldr	r0, [pc, #16]	; 8002159c <filewrite+0x1a0>
80021588:	ebfffc54 	bl	800206e0 <panic>
8002158c:	e1a00003 	mov	r0, r3
80021590:	e24bd004 	sub	sp, fp, #4
80021594:	e8bd8800 	pop	{fp, pc}
80021598:	80028d7c 	.word	0x80028d7c
8002159c:	80028d8c 	.word	0x80028d8c

800215a0 <readsb>:
800215a0:	e92d4800 	push	{fp, lr}
800215a4:	e28db004 	add	fp, sp, #4
800215a8:	e24dd010 	sub	sp, sp, #16
800215ac:	e50b0010 	str	r0, [fp, #-16]
800215b0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800215b4:	e51b3010 	ldr	r3, [fp, #-16]
800215b8:	e1a00003 	mov	r0, r3
800215bc:	e3a01001 	mov	r1, #1
800215c0:	ebfffb1d 	bl	8002023c <bread>
800215c4:	e50b0008 	str	r0, [fp, #-8]
800215c8:	e51b3008 	ldr	r3, [fp, #-8]
800215cc:	e2833018 	add	r3, r3, #24
800215d0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800215d4:	e1a01003 	mov	r1, r3
800215d8:	e3a02010 	mov	r2, #16
800215dc:	eb000d20 	bl	80024a64 <memmove>
800215e0:	e51b0008 	ldr	r0, [fp, #-8]
800215e4:	ebfffb3d 	bl	800202e0 <brelse>
800215e8:	e24bd004 	sub	sp, fp, #4
800215ec:	e8bd8800 	pop	{fp, pc}

800215f0 <bzero>:
800215f0:	e92d4800 	push	{fp, lr}
800215f4:	e28db004 	add	fp, sp, #4
800215f8:	e24dd010 	sub	sp, sp, #16
800215fc:	e50b0010 	str	r0, [fp, #-16]
80021600:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80021604:	e51b2010 	ldr	r2, [fp, #-16]
80021608:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002160c:	e1a00002 	mov	r0, r2
80021610:	e1a01003 	mov	r1, r3
80021614:	ebfffb08 	bl	8002023c <bread>
80021618:	e50b0008 	str	r0, [fp, #-8]
8002161c:	e51b3008 	ldr	r3, [fp, #-8]
80021620:	e2833018 	add	r3, r3, #24
80021624:	e1a00003 	mov	r0, r3
80021628:	e3a01000 	mov	r1, #0
8002162c:	e3a02c02 	mov	r2, #512	; 0x200
80021630:	eb000c9a 	bl	800248a0 <memset>
80021634:	e51b0008 	ldr	r0, [fp, #-8]
80021638:	eb00068a 	bl	80023068 <log_write>
8002163c:	e51b0008 	ldr	r0, [fp, #-8]
80021640:	ebfffb26 	bl	800202e0 <brelse>
80021644:	e24bd004 	sub	sp, fp, #4
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <balloc>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd028 	sub	sp, sp, #40	; 0x28
80021658:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
8002165c:	e3a03000 	mov	r3, #0
80021660:	e50b3010 	str	r3, [fp, #-16]
80021664:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80021668:	e24b3024 	sub	r3, fp, #36	; 0x24
8002166c:	e1a00002 	mov	r0, r2
80021670:	e1a01003 	mov	r1, r3
80021674:	ebffffc9 	bl	800215a0 <readsb>
80021678:	e3a03000 	mov	r3, #0
8002167c:	e50b3008 	str	r3, [fp, #-8]
80021680:	ea00005f 	b	80021804 <balloc+0x1b8>
80021684:	e51b3008 	ldr	r3, [fp, #-8]
80021688:	e2832eff 	add	r2, r3, #4080	; 0xff0
8002168c:	e282200f 	add	r2, r2, #15
80021690:	e3530000 	cmp	r3, #0
80021694:	b1a03002 	movlt	r3, r2
80021698:	a1a03003 	movge	r3, r3
8002169c:	e1a03643 	asr	r3, r3, #12
800216a0:	e1a02003 	mov	r2, r3
800216a4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800216a8:	e1a031a3 	lsr	r3, r3, #3
800216ac:	e0823003 	add	r3, r2, r3
800216b0:	e2833003 	add	r3, r3, #3
800216b4:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
800216b8:	e1a01003 	mov	r1, r3
800216bc:	ebfffade 	bl	8002023c <bread>
800216c0:	e50b0010 	str	r0, [fp, #-16]
800216c4:	e3a03000 	mov	r3, #0
800216c8:	e50b300c 	str	r3, [fp, #-12]
800216cc:	ea00003d 	b	800217c8 <balloc+0x17c>
800216d0:	e51b200c 	ldr	r2, [fp, #-12]
800216d4:	e1a03fc2 	asr	r3, r2, #31
800216d8:	e1a03ea3 	lsr	r3, r3, #29
800216dc:	e0822003 	add	r2, r2, r3
800216e0:	e2022007 	and	r2, r2, #7
800216e4:	e0633002 	rsb	r3, r3, r2
800216e8:	e1a02003 	mov	r2, r3
800216ec:	e3a03001 	mov	r3, #1
800216f0:	e1a03213 	lsl	r3, r3, r2
800216f4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800216f8:	e51b300c 	ldr	r3, [fp, #-12]
800216fc:	e2832007 	add	r2, r3, #7
80021700:	e3530000 	cmp	r3, #0
80021704:	b1a03002 	movlt	r3, r2
80021708:	a1a03003 	movge	r3, r3
8002170c:	e1a031c3 	asr	r3, r3, #3
80021710:	e1a02003 	mov	r2, r3
80021714:	e51b3010 	ldr	r3, [fp, #-16]
80021718:	e0833002 	add	r3, r3, r2
8002171c:	e5d33018 	ldrb	r3, [r3, #24]
80021720:	e1a02003 	mov	r2, r3
80021724:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021728:	e0033002 	and	r3, r3, r2
8002172c:	e3530000 	cmp	r3, #0
80021730:	1a000021 	bne	800217bc <balloc+0x170>
80021734:	e51b300c 	ldr	r3, [fp, #-12]
80021738:	e2832007 	add	r2, r3, #7
8002173c:	e3530000 	cmp	r3, #0
80021740:	b1a03002 	movlt	r3, r2
80021744:	a1a03003 	movge	r3, r3
80021748:	e1a031c3 	asr	r3, r3, #3
8002174c:	e51b2010 	ldr	r2, [fp, #-16]
80021750:	e0822003 	add	r2, r2, r3
80021754:	e5d22018 	ldrb	r2, [r2, #24]
80021758:	e6ef1072 	uxtb	r1, r2
8002175c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80021760:	e6ef2072 	uxtb	r2, r2
80021764:	e1812002 	orr	r2, r1, r2
80021768:	e6ef2072 	uxtb	r2, r2
8002176c:	e6ef1072 	uxtb	r1, r2
80021770:	e51b2010 	ldr	r2, [fp, #-16]
80021774:	e0823003 	add	r3, r2, r3
80021778:	e1a02001 	mov	r2, r1
8002177c:	e5c32018 	strb	r2, [r3, #24]
80021780:	e51b0010 	ldr	r0, [fp, #-16]
80021784:	eb000637 	bl	80023068 <log_write>
80021788:	e51b0010 	ldr	r0, [fp, #-16]
8002178c:	ebfffad3 	bl	800202e0 <brelse>
80021790:	e51b1028 	ldr	r1, [fp, #-40]	; 0xffffffd8
80021794:	e51b2008 	ldr	r2, [fp, #-8]
80021798:	e51b300c 	ldr	r3, [fp, #-12]
8002179c:	e0823003 	add	r3, r2, r3
800217a0:	e1a00001 	mov	r0, r1
800217a4:	e1a01003 	mov	r1, r3
800217a8:	ebffff90 	bl	800215f0 <bzero>
800217ac:	e51b2008 	ldr	r2, [fp, #-8]
800217b0:	e51b300c 	ldr	r3, [fp, #-12]
800217b4:	e0823003 	add	r3, r2, r3
800217b8:	ea000017 	b	8002181c <balloc+0x1d0>
800217bc:	e51b300c 	ldr	r3, [fp, #-12]
800217c0:	e2833001 	add	r3, r3, #1
800217c4:	e50b300c 	str	r3, [fp, #-12]
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e3530a01 	cmp	r3, #4096	; 0x1000
800217d0:	aa000006 	bge	800217f0 <balloc+0x1a4>
800217d4:	e51b2008 	ldr	r2, [fp, #-8]
800217d8:	e51b300c 	ldr	r3, [fp, #-12]
800217dc:	e0823003 	add	r3, r2, r3
800217e0:	e1a02003 	mov	r2, r3
800217e4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800217e8:	e1520003 	cmp	r2, r3
800217ec:	3affffb7 	bcc	800216d0 <balloc+0x84>
800217f0:	e51b0010 	ldr	r0, [fp, #-16]
800217f4:	ebfffab9 	bl	800202e0 <brelse>
800217f8:	e51b3008 	ldr	r3, [fp, #-8]
800217fc:	e2833a01 	add	r3, r3, #4096	; 0x1000
80021800:	e50b3008 	str	r3, [fp, #-8]
80021804:	e51b2008 	ldr	r2, [fp, #-8]
80021808:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002180c:	e1520003 	cmp	r2, r3
80021810:	3affff9b 	bcc	80021684 <balloc+0x38>
80021814:	e59f000c 	ldr	r0, [pc, #12]	; 80021828 <balloc+0x1dc>
80021818:	ebfffbb0 	bl	800206e0 <panic>
8002181c:	e1a00003 	mov	r0, r3
80021820:	e24bd004 	sub	sp, fp, #4
80021824:	e8bd8800 	pop	{fp, pc}
80021828:	80028d98 	.word	0x80028d98

8002182c <bfree>:
8002182c:	e92d4800 	push	{fp, lr}
80021830:	e28db004 	add	fp, sp, #4
80021834:	e24dd028 	sub	sp, sp, #40	; 0x28
80021838:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
8002183c:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
80021840:	e24b3020 	sub	r3, fp, #32
80021844:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80021848:	e1a01003 	mov	r1, r3
8002184c:	ebffff53 	bl	800215a0 <readsb>
80021850:	e51b1028 	ldr	r1, [fp, #-40]	; 0xffffffd8
80021854:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80021858:	e1a02623 	lsr	r2, r3, #12
8002185c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021860:	e1a031a3 	lsr	r3, r3, #3
80021864:	e0823003 	add	r3, r2, r3
80021868:	e2833003 	add	r3, r3, #3
8002186c:	e1a00001 	mov	r0, r1
80021870:	e1a01003 	mov	r1, r3
80021874:	ebfffa70 	bl	8002023c <bread>
80021878:	e50b0008 	str	r0, [fp, #-8]
8002187c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80021880:	e1a03a03 	lsl	r3, r3, #20
80021884:	e1a03a23 	lsr	r3, r3, #20
80021888:	e50b300c 	str	r3, [fp, #-12]
8002188c:	e51b200c 	ldr	r2, [fp, #-12]
80021890:	e1a03fc2 	asr	r3, r2, #31
80021894:	e1a03ea3 	lsr	r3, r3, #29
80021898:	e0822003 	add	r2, r2, r3
8002189c:	e2022007 	and	r2, r2, #7
800218a0:	e0633002 	rsb	r3, r3, r2
800218a4:	e1a02003 	mov	r2, r3
800218a8:	e3a03001 	mov	r3, #1
800218ac:	e1a03213 	lsl	r3, r3, r2
800218b0:	e50b3010 	str	r3, [fp, #-16]
800218b4:	e51b300c 	ldr	r3, [fp, #-12]
800218b8:	e2832007 	add	r2, r3, #7
800218bc:	e3530000 	cmp	r3, #0
800218c0:	b1a03002 	movlt	r3, r2
800218c4:	a1a03003 	movge	r3, r3
800218c8:	e1a031c3 	asr	r3, r3, #3
800218cc:	e1a02003 	mov	r2, r3
800218d0:	e51b3008 	ldr	r3, [fp, #-8]
800218d4:	e0833002 	add	r3, r3, r2
800218d8:	e5d33018 	ldrb	r3, [r3, #24]
800218dc:	e1a02003 	mov	r2, r3
800218e0:	e51b3010 	ldr	r3, [fp, #-16]
800218e4:	e0033002 	and	r3, r3, r2
800218e8:	e3530000 	cmp	r3, #0
800218ec:	1a000001 	bne	800218f8 <bfree+0xcc>
800218f0:	e59f006c 	ldr	r0, [pc, #108]	; 80021964 <bfree+0x138>
800218f4:	ebfffb79 	bl	800206e0 <panic>
800218f8:	e51b300c 	ldr	r3, [fp, #-12]
800218fc:	e2832007 	add	r2, r3, #7
80021900:	e3530000 	cmp	r3, #0
80021904:	b1a03002 	movlt	r3, r2
80021908:	a1a03003 	movge	r3, r3
8002190c:	e1a031c3 	asr	r3, r3, #3
80021910:	e51b2008 	ldr	r2, [fp, #-8]
80021914:	e0822003 	add	r2, r2, r3
80021918:	e5d22018 	ldrb	r2, [r2, #24]
8002191c:	e6ef1072 	uxtb	r1, r2
80021920:	e51b2010 	ldr	r2, [fp, #-16]
80021924:	e6ef2072 	uxtb	r2, r2
80021928:	e1e02002 	mvn	r2, r2
8002192c:	e6ef2072 	uxtb	r2, r2
80021930:	e0022001 	and	r2, r2, r1
80021934:	e6ef2072 	uxtb	r2, r2
80021938:	e6ef1072 	uxtb	r1, r2
8002193c:	e51b2008 	ldr	r2, [fp, #-8]
80021940:	e0823003 	add	r3, r2, r3
80021944:	e1a02001 	mov	r2, r1
80021948:	e5c32018 	strb	r2, [r3, #24]
8002194c:	e51b0008 	ldr	r0, [fp, #-8]
80021950:	eb0005c4 	bl	80023068 <log_write>
80021954:	e51b0008 	ldr	r0, [fp, #-8]
80021958:	ebfffa60 	bl	800202e0 <brelse>
8002195c:	e24bd004 	sub	sp, fp, #4
80021960:	e8bd8800 	pop	{fp, pc}
80021964:	80028db0 	.word	0x80028db0

80021968 <iinit>:
80021968:	e92d4800 	push	{fp, lr}
8002196c:	e28db004 	add	fp, sp, #4
80021970:	e59f0008 	ldr	r0, [pc, #8]	; 80021980 <iinit+0x18>
80021974:	e59f1008 	ldr	r1, [pc, #8]	; 80021984 <iinit+0x1c>
80021978:	eb000b99 	bl	800247e4 <initlock>
8002197c:	e8bd8800 	pop	{fp, pc}
80021980:	800ac45c 	.word	0x800ac45c
80021984:	80028dc4 	.word	0x80028dc4

80021988 <ialloc>:
80021988:	e92d4800 	push	{fp, lr}
8002198c:	e28db004 	add	fp, sp, #4
80021990:	e24dd028 	sub	sp, sp, #40	; 0x28
80021994:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80021998:	e1a03001 	mov	r3, r1
8002199c:	e14b32ba 	strh	r3, [fp, #-42]	; 0xffffffd6
800219a0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800219a4:	e24b3020 	sub	r3, fp, #32
800219a8:	e1a00002 	mov	r0, r2
800219ac:	e1a01003 	mov	r1, r3
800219b0:	ebfffefa 	bl	800215a0 <readsb>
800219b4:	e3a03001 	mov	r3, #1
800219b8:	e50b3008 	str	r3, [fp, #-8]
800219bc:	ea000027 	b	80021a60 <ialloc+0xd8>
800219c0:	e51b3008 	ldr	r3, [fp, #-8]
800219c4:	e1a031a3 	lsr	r3, r3, #3
800219c8:	e2833002 	add	r3, r3, #2
800219cc:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
800219d0:	e1a01003 	mov	r1, r3
800219d4:	ebfffa18 	bl	8002023c <bread>
800219d8:	e50b000c 	str	r0, [fp, #-12]
800219dc:	e51b300c 	ldr	r3, [fp, #-12]
800219e0:	e2832018 	add	r2, r3, #24
800219e4:	e51b3008 	ldr	r3, [fp, #-8]
800219e8:	e2033007 	and	r3, r3, #7
800219ec:	e1a03303 	lsl	r3, r3, #6
800219f0:	e0823003 	add	r3, r2, r3
800219f4:	e50b3010 	str	r3, [fp, #-16]
800219f8:	e51b3010 	ldr	r3, [fp, #-16]
800219fc:	e1d330b0 	ldrh	r3, [r3]
80021a00:	e3530000 	cmp	r3, #0
80021a04:	1a000010 	bne	80021a4c <ialloc+0xc4>
80021a08:	e51b0010 	ldr	r0, [fp, #-16]
80021a0c:	e3a01000 	mov	r1, #0
80021a10:	e3a02040 	mov	r2, #64	; 0x40
80021a14:	eb000ba1 	bl	800248a0 <memset>
80021a18:	e51b3010 	ldr	r3, [fp, #-16]
80021a1c:	e15b22ba 	ldrh	r2, [fp, #-42]	; 0xffffffd6
80021a20:	e1c320b0 	strh	r2, [r3]
80021a24:	e51b000c 	ldr	r0, [fp, #-12]
80021a28:	eb00058e 	bl	80023068 <log_write>
80021a2c:	e51b000c 	ldr	r0, [fp, #-12]
80021a30:	ebfffa2a 	bl	800202e0 <brelse>
80021a34:	e51b3008 	ldr	r3, [fp, #-8]
80021a38:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80021a3c:	e1a01003 	mov	r1, r3
80021a40:	eb000048 	bl	80021b68 <iget>
80021a44:	e1a03000 	mov	r3, r0
80021a48:	ea00000a 	b	80021a78 <ialloc+0xf0>
80021a4c:	e51b000c 	ldr	r0, [fp, #-12]
80021a50:	ebfffa22 	bl	800202e0 <brelse>
80021a54:	e51b3008 	ldr	r3, [fp, #-8]
80021a58:	e2833001 	add	r3, r3, #1
80021a5c:	e50b3008 	str	r3, [fp, #-8]
80021a60:	e51b2008 	ldr	r2, [fp, #-8]
80021a64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021a68:	e1520003 	cmp	r2, r3
80021a6c:	3affffd3 	bcc	800219c0 <ialloc+0x38>
80021a70:	e59f000c 	ldr	r0, [pc, #12]	; 80021a84 <ialloc+0xfc>
80021a74:	ebfffb19 	bl	800206e0 <panic>
80021a78:	e1a00003 	mov	r0, r3
80021a7c:	e24bd004 	sub	sp, fp, #4
80021a80:	e8bd8800 	pop	{fp, pc}
80021a84:	80028dcc 	.word	0x80028dcc

80021a88 <iupdate>:
80021a88:	e92d4800 	push	{fp, lr}
80021a8c:	e28db004 	add	fp, sp, #4
80021a90:	e24dd010 	sub	sp, sp, #16
80021a94:	e50b0010 	str	r0, [fp, #-16]
80021a98:	e51b3010 	ldr	r3, [fp, #-16]
80021a9c:	e5932000 	ldr	r2, [r3]
80021aa0:	e51b3010 	ldr	r3, [fp, #-16]
80021aa4:	e5933004 	ldr	r3, [r3, #4]
80021aa8:	e1a031a3 	lsr	r3, r3, #3
80021aac:	e2833002 	add	r3, r3, #2
80021ab0:	e1a00002 	mov	r0, r2
80021ab4:	e1a01003 	mov	r1, r3
80021ab8:	ebfff9df 	bl	8002023c <bread>
80021abc:	e50b0008 	str	r0, [fp, #-8]
80021ac0:	e51b3008 	ldr	r3, [fp, #-8]
80021ac4:	e2832018 	add	r2, r3, #24
80021ac8:	e51b3010 	ldr	r3, [fp, #-16]
80021acc:	e5933004 	ldr	r3, [r3, #4]
80021ad0:	e2033007 	and	r3, r3, #7
80021ad4:	e1a03303 	lsl	r3, r3, #6
80021ad8:	e0823003 	add	r3, r2, r3
80021adc:	e50b300c 	str	r3, [fp, #-12]
80021ae0:	e51b3010 	ldr	r3, [fp, #-16]
80021ae4:	e1d321b0 	ldrh	r2, [r3, #16]
80021ae8:	e51b300c 	ldr	r3, [fp, #-12]
80021aec:	e1c320b0 	strh	r2, [r3]
80021af0:	e51b3010 	ldr	r3, [fp, #-16]
80021af4:	e1d321b2 	ldrh	r2, [r3, #18]
80021af8:	e51b300c 	ldr	r3, [fp, #-12]
80021afc:	e1c320b2 	strh	r2, [r3, #2]
80021b00:	e51b3010 	ldr	r3, [fp, #-16]
80021b04:	e1d321b4 	ldrh	r2, [r3, #20]
80021b08:	e51b300c 	ldr	r3, [fp, #-12]
80021b0c:	e1c320b4 	strh	r2, [r3, #4]
80021b10:	e51b3010 	ldr	r3, [fp, #-16]
80021b14:	e1d321b6 	ldrh	r2, [r3, #22]
80021b18:	e51b300c 	ldr	r3, [fp, #-12]
80021b1c:	e1c320b6 	strh	r2, [r3, #6]
80021b20:	e51b3010 	ldr	r3, [fp, #-16]
80021b24:	e5932018 	ldr	r2, [r3, #24]
80021b28:	e51b300c 	ldr	r3, [fp, #-12]
80021b2c:	e5832008 	str	r2, [r3, #8]
80021b30:	e51b300c 	ldr	r3, [fp, #-12]
80021b34:	e283200c 	add	r2, r3, #12
80021b38:	e51b3010 	ldr	r3, [fp, #-16]
80021b3c:	e283301c 	add	r3, r3, #28
80021b40:	e1a00002 	mov	r0, r2
80021b44:	e1a01003 	mov	r1, r3
80021b48:	e3a02034 	mov	r2, #52	; 0x34
80021b4c:	eb000bc4 	bl	80024a64 <memmove>
80021b50:	e51b0008 	ldr	r0, [fp, #-8]
80021b54:	eb000543 	bl	80023068 <log_write>
80021b58:	e51b0008 	ldr	r0, [fp, #-8]
80021b5c:	ebfff9df 	bl	800202e0 <brelse>
80021b60:	e24bd004 	sub	sp, fp, #4
80021b64:	e8bd8800 	pop	{fp, pc}

80021b68 <iget>:
80021b68:	e92d4800 	push	{fp, lr}
80021b6c:	e28db004 	add	fp, sp, #4
80021b70:	e24dd010 	sub	sp, sp, #16
80021b74:	e50b0010 	str	r0, [fp, #-16]
80021b78:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80021b7c:	e59f0114 	ldr	r0, [pc, #276]	; 80021c98 <iget+0x130>
80021b80:	eb000b28 	bl	80024828 <acquire>
80021b84:	e3a03000 	mov	r3, #0
80021b88:	e50b300c 	str	r3, [fp, #-12]
80021b8c:	e59f3108 	ldr	r3, [pc, #264]	; 80021c9c <iget+0x134>
80021b90:	e50b3008 	str	r3, [fp, #-8]
80021b94:	ea000022 	b	80021c24 <iget+0xbc>
80021b98:	e51b3008 	ldr	r3, [fp, #-8]
80021b9c:	e5933008 	ldr	r3, [r3, #8]
80021ba0:	e3530000 	cmp	r3, #0
80021ba4:	da000012 	ble	80021bf4 <iget+0x8c>
80021ba8:	e51b3008 	ldr	r3, [fp, #-8]
80021bac:	e5932000 	ldr	r2, [r3]
80021bb0:	e51b3010 	ldr	r3, [fp, #-16]
80021bb4:	e1520003 	cmp	r2, r3
80021bb8:	1a00000d 	bne	80021bf4 <iget+0x8c>
80021bbc:	e51b3008 	ldr	r3, [fp, #-8]
80021bc0:	e5932004 	ldr	r2, [r3, #4]
80021bc4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021bc8:	e1520003 	cmp	r2, r3
80021bcc:	1a000008 	bne	80021bf4 <iget+0x8c>
80021bd0:	e51b3008 	ldr	r3, [fp, #-8]
80021bd4:	e5933008 	ldr	r3, [r3, #8]
80021bd8:	e2832001 	add	r2, r3, #1
80021bdc:	e51b3008 	ldr	r3, [fp, #-8]
80021be0:	e5832008 	str	r2, [r3, #8]
80021be4:	e59f00ac 	ldr	r0, [pc, #172]	; 80021c98 <iget+0x130>
80021be8:	eb000b18 	bl	80024850 <release>
80021bec:	e51b3008 	ldr	r3, [fp, #-8]
80021bf0:	ea000025 	b	80021c8c <iget+0x124>
80021bf4:	e51b300c 	ldr	r3, [fp, #-12]
80021bf8:	e3530000 	cmp	r3, #0
80021bfc:	1a000005 	bne	80021c18 <iget+0xb0>
80021c00:	e51b3008 	ldr	r3, [fp, #-8]
80021c04:	e5933008 	ldr	r3, [r3, #8]
80021c08:	e3530000 	cmp	r3, #0
80021c0c:	1a000001 	bne	80021c18 <iget+0xb0>
80021c10:	e51b3008 	ldr	r3, [fp, #-8]
80021c14:	e50b300c 	str	r3, [fp, #-12]
80021c18:	e51b3008 	ldr	r3, [fp, #-8]
80021c1c:	e2833050 	add	r3, r3, #80	; 0x50
80021c20:	e50b3008 	str	r3, [fp, #-8]
80021c24:	e51b3008 	ldr	r3, [fp, #-8]
80021c28:	e59f2070 	ldr	r2, [pc, #112]	; 80021ca0 <iget+0x138>
80021c2c:	e1530002 	cmp	r3, r2
80021c30:	3affffd8 	bcc	80021b98 <iget+0x30>
80021c34:	e51b300c 	ldr	r3, [fp, #-12]
80021c38:	e3530000 	cmp	r3, #0
80021c3c:	1a000001 	bne	80021c48 <iget+0xe0>
80021c40:	e59f005c 	ldr	r0, [pc, #92]	; 80021ca4 <iget+0x13c>
80021c44:	ebfffaa5 	bl	800206e0 <panic>
80021c48:	e51b300c 	ldr	r3, [fp, #-12]
80021c4c:	e50b3008 	str	r3, [fp, #-8]
80021c50:	e51b3008 	ldr	r3, [fp, #-8]
80021c54:	e51b2010 	ldr	r2, [fp, #-16]
80021c58:	e5832000 	str	r2, [r3]
80021c5c:	e51b3008 	ldr	r3, [fp, #-8]
80021c60:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80021c64:	e5832004 	str	r2, [r3, #4]
80021c68:	e51b3008 	ldr	r3, [fp, #-8]
80021c6c:	e3a02001 	mov	r2, #1
80021c70:	e5832008 	str	r2, [r3, #8]
80021c74:	e51b3008 	ldr	r3, [fp, #-8]
80021c78:	e3a02000 	mov	r2, #0
80021c7c:	e583200c 	str	r2, [r3, #12]
80021c80:	e59f0010 	ldr	r0, [pc, #16]	; 80021c98 <iget+0x130>
80021c84:	eb000af1 	bl	80024850 <release>
80021c88:	e51b3008 	ldr	r3, [fp, #-8]
80021c8c:	e1a00003 	mov	r0, r3
80021c90:	e24bd004 	sub	sp, fp, #4
80021c94:	e8bd8800 	pop	{fp, pc}
80021c98:	800ac45c 	.word	0x800ac45c
80021c9c:	800ac490 	.word	0x800ac490
80021ca0:	800ad430 	.word	0x800ad430
80021ca4:	80028de0 	.word	0x80028de0

80021ca8 <idup>:
80021ca8:	e92d4800 	push	{fp, lr}
80021cac:	e28db004 	add	fp, sp, #4
80021cb0:	e24dd008 	sub	sp, sp, #8
80021cb4:	e50b0008 	str	r0, [fp, #-8]
80021cb8:	e59f002c 	ldr	r0, [pc, #44]	; 80021cec <idup+0x44>
80021cbc:	eb000ad9 	bl	80024828 <acquire>
80021cc0:	e51b3008 	ldr	r3, [fp, #-8]
80021cc4:	e5933008 	ldr	r3, [r3, #8]
80021cc8:	e2832001 	add	r2, r3, #1
80021ccc:	e51b3008 	ldr	r3, [fp, #-8]
80021cd0:	e5832008 	str	r2, [r3, #8]
80021cd4:	e59f0010 	ldr	r0, [pc, #16]	; 80021cec <idup+0x44>
80021cd8:	eb000adc 	bl	80024850 <release>
80021cdc:	e51b3008 	ldr	r3, [fp, #-8]
80021ce0:	e1a00003 	mov	r0, r3
80021ce4:	e24bd004 	sub	sp, fp, #4
80021ce8:	e8bd8800 	pop	{fp, pc}
80021cec:	800ac45c 	.word	0x800ac45c

80021cf0 <ilock>:
80021cf0:	e92d4800 	push	{fp, lr}
80021cf4:	e28db004 	add	fp, sp, #4
80021cf8:	e24dd010 	sub	sp, sp, #16
80021cfc:	e50b0010 	str	r0, [fp, #-16]
80021d00:	e51b3010 	ldr	r3, [fp, #-16]
80021d04:	e3530000 	cmp	r3, #0
80021d08:	0a000003 	beq	80021d1c <ilock+0x2c>
80021d0c:	e51b3010 	ldr	r3, [fp, #-16]
80021d10:	e5933008 	ldr	r3, [r3, #8]
80021d14:	e3530000 	cmp	r3, #0
80021d18:	ca000001 	bgt	80021d24 <ilock+0x34>
80021d1c:	e59f0150 	ldr	r0, [pc, #336]	; 80021e74 <ilock+0x184>
80021d20:	ebfffa6e 	bl	800206e0 <panic>
80021d24:	e59f014c 	ldr	r0, [pc, #332]	; 80021e78 <ilock+0x188>
80021d28:	eb000abe 	bl	80024828 <acquire>
80021d2c:	ea000002 	b	80021d3c <ilock+0x4c>
80021d30:	e51b0010 	ldr	r0, [fp, #-16]
80021d34:	e59f113c 	ldr	r1, [pc, #316]	; 80021e78 <ilock+0x188>
80021d38:	eb0009df 	bl	800244bc <sleep>
80021d3c:	e51b3010 	ldr	r3, [fp, #-16]
80021d40:	e593300c 	ldr	r3, [r3, #12]
80021d44:	e2033001 	and	r3, r3, #1
80021d48:	e3530000 	cmp	r3, #0
80021d4c:	1afffff7 	bne	80021d30 <ilock+0x40>
80021d50:	e51b3010 	ldr	r3, [fp, #-16]
80021d54:	e593300c 	ldr	r3, [r3, #12]
80021d58:	e3832001 	orr	r2, r3, #1
80021d5c:	e51b3010 	ldr	r3, [fp, #-16]
80021d60:	e583200c 	str	r2, [r3, #12]
80021d64:	e59f010c 	ldr	r0, [pc, #268]	; 80021e78 <ilock+0x188>
80021d68:	eb000ab8 	bl	80024850 <release>
80021d6c:	e51b3010 	ldr	r3, [fp, #-16]
80021d70:	e593300c 	ldr	r3, [r3, #12]
80021d74:	e2033002 	and	r3, r3, #2
80021d78:	e3530000 	cmp	r3, #0
80021d7c:	1a00003a 	bne	80021e6c <ilock+0x17c>
80021d80:	e51b3010 	ldr	r3, [fp, #-16]
80021d84:	e5932000 	ldr	r2, [r3]
80021d88:	e51b3010 	ldr	r3, [fp, #-16]
80021d8c:	e5933004 	ldr	r3, [r3, #4]
80021d90:	e1a031a3 	lsr	r3, r3, #3
80021d94:	e2833002 	add	r3, r3, #2
80021d98:	e1a00002 	mov	r0, r2
80021d9c:	e1a01003 	mov	r1, r3
80021da0:	ebfff925 	bl	8002023c <bread>
80021da4:	e50b0008 	str	r0, [fp, #-8]
80021da8:	e51b3008 	ldr	r3, [fp, #-8]
80021dac:	e2832018 	add	r2, r3, #24
80021db0:	e51b3010 	ldr	r3, [fp, #-16]
80021db4:	e5933004 	ldr	r3, [r3, #4]
80021db8:	e2033007 	and	r3, r3, #7
80021dbc:	e1a03303 	lsl	r3, r3, #6
80021dc0:	e0823003 	add	r3, r2, r3
80021dc4:	e50b300c 	str	r3, [fp, #-12]
80021dc8:	e51b300c 	ldr	r3, [fp, #-12]
80021dcc:	e1d320b0 	ldrh	r2, [r3]
80021dd0:	e51b3010 	ldr	r3, [fp, #-16]
80021dd4:	e1c321b0 	strh	r2, [r3, #16]
80021dd8:	e51b300c 	ldr	r3, [fp, #-12]
80021ddc:	e1d320b2 	ldrh	r2, [r3, #2]
80021de0:	e51b3010 	ldr	r3, [fp, #-16]
80021de4:	e1c321b2 	strh	r2, [r3, #18]
80021de8:	e51b300c 	ldr	r3, [fp, #-12]
80021dec:	e1d320b4 	ldrh	r2, [r3, #4]
80021df0:	e51b3010 	ldr	r3, [fp, #-16]
80021df4:	e1c321b4 	strh	r2, [r3, #20]
80021df8:	e51b300c 	ldr	r3, [fp, #-12]
80021dfc:	e1d320b6 	ldrh	r2, [r3, #6]
80021e00:	e51b3010 	ldr	r3, [fp, #-16]
80021e04:	e1c321b6 	strh	r2, [r3, #22]
80021e08:	e51b300c 	ldr	r3, [fp, #-12]
80021e0c:	e5932008 	ldr	r2, [r3, #8]
80021e10:	e51b3010 	ldr	r3, [fp, #-16]
80021e14:	e5832018 	str	r2, [r3, #24]
80021e18:	e51b3010 	ldr	r3, [fp, #-16]
80021e1c:	e283201c 	add	r2, r3, #28
80021e20:	e51b300c 	ldr	r3, [fp, #-12]
80021e24:	e283300c 	add	r3, r3, #12
80021e28:	e1a00002 	mov	r0, r2
80021e2c:	e1a01003 	mov	r1, r3
80021e30:	e3a02034 	mov	r2, #52	; 0x34
80021e34:	eb000b0a 	bl	80024a64 <memmove>
80021e38:	e51b0008 	ldr	r0, [fp, #-8]
80021e3c:	ebfff927 	bl	800202e0 <brelse>
80021e40:	e51b3010 	ldr	r3, [fp, #-16]
80021e44:	e593300c 	ldr	r3, [r3, #12]
80021e48:	e3832002 	orr	r2, r3, #2
80021e4c:	e51b3010 	ldr	r3, [fp, #-16]
80021e50:	e583200c 	str	r2, [r3, #12]
80021e54:	e51b3010 	ldr	r3, [fp, #-16]
80021e58:	e1d331b0 	ldrh	r3, [r3, #16]
80021e5c:	e3530000 	cmp	r3, #0
80021e60:	1a000001 	bne	80021e6c <ilock+0x17c>
80021e64:	e59f0010 	ldr	r0, [pc, #16]	; 80021e7c <ilock+0x18c>
80021e68:	ebfffa1c 	bl	800206e0 <panic>
80021e6c:	e24bd004 	sub	sp, fp, #4
80021e70:	e8bd8800 	pop	{fp, pc}
80021e74:	80028df0 	.word	0x80028df0
80021e78:	800ac45c 	.word	0x800ac45c
80021e7c:	80028df8 	.word	0x80028df8

80021e80 <iunlock>:
80021e80:	e92d4800 	push	{fp, lr}
80021e84:	e28db004 	add	fp, sp, #4
80021e88:	e24dd008 	sub	sp, sp, #8
80021e8c:	e50b0008 	str	r0, [fp, #-8]
80021e90:	e51b3008 	ldr	r3, [fp, #-8]
80021e94:	e3530000 	cmp	r3, #0
80021e98:	0a000008 	beq	80021ec0 <iunlock+0x40>
80021e9c:	e51b3008 	ldr	r3, [fp, #-8]
80021ea0:	e593300c 	ldr	r3, [r3, #12]
80021ea4:	e2033001 	and	r3, r3, #1
80021ea8:	e3530000 	cmp	r3, #0
80021eac:	0a000003 	beq	80021ec0 <iunlock+0x40>
80021eb0:	e51b3008 	ldr	r3, [fp, #-8]
80021eb4:	e5933008 	ldr	r3, [r3, #8]
80021eb8:	e3530000 	cmp	r3, #0
80021ebc:	ca000001 	bgt	80021ec8 <iunlock+0x48>
80021ec0:	e59f0034 	ldr	r0, [pc, #52]	; 80021efc <iunlock+0x7c>
80021ec4:	ebfffa05 	bl	800206e0 <panic>
80021ec8:	e59f0030 	ldr	r0, [pc, #48]	; 80021f00 <iunlock+0x80>
80021ecc:	eb000a55 	bl	80024828 <acquire>
80021ed0:	e51b3008 	ldr	r3, [fp, #-8]
80021ed4:	e593300c 	ldr	r3, [r3, #12]
80021ed8:	e3c32001 	bic	r2, r3, #1
80021edc:	e51b3008 	ldr	r3, [fp, #-8]
80021ee0:	e583200c 	str	r2, [r3, #12]
80021ee4:	e51b0008 	ldr	r0, [fp, #-8]
80021ee8:	eb0009c5 	bl	80024604 <wakeup>
80021eec:	e59f000c 	ldr	r0, [pc, #12]	; 80021f00 <iunlock+0x80>
80021ef0:	eb000a56 	bl	80024850 <release>
80021ef4:	e24bd004 	sub	sp, fp, #4
80021ef8:	e8bd8800 	pop	{fp, pc}
80021efc:	80028e08 	.word	0x80028e08
80021f00:	800ac45c 	.word	0x800ac45c

80021f04 <iput>:
80021f04:	e92d4800 	push	{fp, lr}
80021f08:	e28db004 	add	fp, sp, #4
80021f0c:	e24dd008 	sub	sp, sp, #8
80021f10:	e50b0008 	str	r0, [fp, #-8]
80021f14:	e59f00c8 	ldr	r0, [pc, #200]	; 80021fe4 <iput+0xe0>
80021f18:	eb000a42 	bl	80024828 <acquire>
80021f1c:	e51b3008 	ldr	r3, [fp, #-8]
80021f20:	e5933008 	ldr	r3, [r3, #8]
80021f24:	e3530001 	cmp	r3, #1
80021f28:	1a000024 	bne	80021fc0 <iput+0xbc>
80021f2c:	e51b3008 	ldr	r3, [fp, #-8]
80021f30:	e593300c 	ldr	r3, [r3, #12]
80021f34:	e2033002 	and	r3, r3, #2
80021f38:	e3530000 	cmp	r3, #0
80021f3c:	0a00001f 	beq	80021fc0 <iput+0xbc>
80021f40:	e51b3008 	ldr	r3, [fp, #-8]
80021f44:	e1d331b6 	ldrh	r3, [r3, #22]
80021f48:	e3530000 	cmp	r3, #0
80021f4c:	1a00001b 	bne	80021fc0 <iput+0xbc>
80021f50:	e51b3008 	ldr	r3, [fp, #-8]
80021f54:	e593300c 	ldr	r3, [r3, #12]
80021f58:	e2033001 	and	r3, r3, #1
80021f5c:	e3530000 	cmp	r3, #0
80021f60:	0a000001 	beq	80021f6c <iput+0x68>
80021f64:	e59f007c 	ldr	r0, [pc, #124]	; 80021fe8 <iput+0xe4>
80021f68:	ebfff9dc 	bl	800206e0 <panic>
80021f6c:	e51b3008 	ldr	r3, [fp, #-8]
80021f70:	e593300c 	ldr	r3, [r3, #12]
80021f74:	e3832001 	orr	r2, r3, #1
80021f78:	e51b3008 	ldr	r3, [fp, #-8]
80021f7c:	e583200c 	str	r2, [r3, #12]
80021f80:	e59f005c 	ldr	r0, [pc, #92]	; 80021fe4 <iput+0xe0>
80021f84:	eb000a31 	bl	80024850 <release>
80021f88:	e51b0008 	ldr	r0, [fp, #-8]
80021f8c:	eb00007d 	bl	80022188 <itrunc>
80021f90:	e51b3008 	ldr	r3, [fp, #-8]
80021f94:	e3a02000 	mov	r2, #0
80021f98:	e1c321b0 	strh	r2, [r3, #16]
80021f9c:	e51b0008 	ldr	r0, [fp, #-8]
80021fa0:	ebfffeb8 	bl	80021a88 <iupdate>
80021fa4:	e59f0038 	ldr	r0, [pc, #56]	; 80021fe4 <iput+0xe0>
80021fa8:	eb000a1e 	bl	80024828 <acquire>
80021fac:	e51b3008 	ldr	r3, [fp, #-8]
80021fb0:	e3a02000 	mov	r2, #0
80021fb4:	e583200c 	str	r2, [r3, #12]
80021fb8:	e51b0008 	ldr	r0, [fp, #-8]
80021fbc:	eb000990 	bl	80024604 <wakeup>
80021fc0:	e51b3008 	ldr	r3, [fp, #-8]
80021fc4:	e5933008 	ldr	r3, [r3, #8]
80021fc8:	e2432001 	sub	r2, r3, #1
80021fcc:	e51b3008 	ldr	r3, [fp, #-8]
80021fd0:	e5832008 	str	r2, [r3, #8]
80021fd4:	e59f0008 	ldr	r0, [pc, #8]	; 80021fe4 <iput+0xe0>
80021fd8:	eb000a1c 	bl	80024850 <release>
80021fdc:	e24bd004 	sub	sp, fp, #4
80021fe0:	e8bd8800 	pop	{fp, pc}
80021fe4:	800ac45c 	.word	0x800ac45c
80021fe8:	80028e10 	.word	0x80028e10

80021fec <iunlockput>:
80021fec:	e92d4800 	push	{fp, lr}
80021ff0:	e28db004 	add	fp, sp, #4
80021ff4:	e24dd008 	sub	sp, sp, #8
80021ff8:	e50b0008 	str	r0, [fp, #-8]
80021ffc:	e51b0008 	ldr	r0, [fp, #-8]
80022000:	ebffff9e 	bl	80021e80 <iunlock>
80022004:	e51b0008 	ldr	r0, [fp, #-8]
80022008:	ebffffbd 	bl	80021f04 <iput>
8002200c:	e24bd004 	sub	sp, fp, #4
80022010:	e8bd8800 	pop	{fp, pc}

80022014 <bmap>:
80022014:	e92d4810 	push	{r4, fp, lr}
80022018:	e28db008 	add	fp, sp, #8
8002201c:	e24dd01c 	sub	sp, sp, #28
80022020:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80022024:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80022028:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002202c:	e353000b 	cmp	r3, #11
80022030:	8a000017 	bhi	80022094 <bmap+0x80>
80022034:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80022038:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002203c:	e2833006 	add	r3, r3, #6
80022040:	e1a03103 	lsl	r3, r3, #2
80022044:	e0823003 	add	r3, r2, r3
80022048:	e5933004 	ldr	r3, [r3, #4]
8002204c:	e50b3010 	str	r3, [fp, #-16]
80022050:	e51b3010 	ldr	r3, [fp, #-16]
80022054:	e3530000 	cmp	r3, #0
80022058:	1a00000b 	bne	8002208c <bmap+0x78>
8002205c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022060:	e5933000 	ldr	r3, [r3]
80022064:	e1a00003 	mov	r0, r3
80022068:	ebfffd77 	bl	8002164c <balloc>
8002206c:	e50b0010 	str	r0, [fp, #-16]
80022070:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80022074:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80022078:	e2833006 	add	r3, r3, #6
8002207c:	e1a03103 	lsl	r3, r3, #2
80022080:	e0823003 	add	r3, r2, r3
80022084:	e51b2010 	ldr	r2, [fp, #-16]
80022088:	e5832004 	str	r2, [r3, #4]
8002208c:	e51b3010 	ldr	r3, [fp, #-16]
80022090:	ea000038 	b	80022178 <bmap+0x164>
80022094:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80022098:	e243300c 	sub	r3, r3, #12
8002209c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
800220a0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800220a4:	e353007f 	cmp	r3, #127	; 0x7f
800220a8:	8a000030 	bhi	80022170 <bmap+0x15c>
800220ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800220b0:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
800220b4:	e50b3010 	str	r3, [fp, #-16]
800220b8:	e51b3010 	ldr	r3, [fp, #-16]
800220bc:	e3530000 	cmp	r3, #0
800220c0:	1a000007 	bne	800220e4 <bmap+0xd0>
800220c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800220c8:	e5933000 	ldr	r3, [r3]
800220cc:	e1a00003 	mov	r0, r3
800220d0:	ebfffd5d 	bl	8002164c <balloc>
800220d4:	e50b0010 	str	r0, [fp, #-16]
800220d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800220dc:	e51b2010 	ldr	r2, [fp, #-16]
800220e0:	e583204c 	str	r2, [r3, #76]	; 0x4c
800220e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800220e8:	e5933000 	ldr	r3, [r3]
800220ec:	e1a00003 	mov	r0, r3
800220f0:	e51b1010 	ldr	r1, [fp, #-16]
800220f4:	ebfff850 	bl	8002023c <bread>
800220f8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800220fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022100:	e2833018 	add	r3, r3, #24
80022104:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80022108:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002210c:	e1a03103 	lsl	r3, r3, #2
80022110:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80022114:	e0823003 	add	r3, r2, r3
80022118:	e5933000 	ldr	r3, [r3]
8002211c:	e50b3010 	str	r3, [fp, #-16]
80022120:	e51b3010 	ldr	r3, [fp, #-16]
80022124:	e3530000 	cmp	r3, #0
80022128:	1a00000c 	bne	80022160 <bmap+0x14c>
8002212c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80022130:	e1a03103 	lsl	r3, r3, #2
80022134:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80022138:	e0824003 	add	r4, r2, r3
8002213c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022140:	e5933000 	ldr	r3, [r3]
80022144:	e1a00003 	mov	r0, r3
80022148:	ebfffd3f 	bl	8002164c <balloc>
8002214c:	e50b0010 	str	r0, [fp, #-16]
80022150:	e51b3010 	ldr	r3, [fp, #-16]
80022154:	e5843000 	str	r3, [r4]
80022158:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002215c:	eb0003c1 	bl	80023068 <log_write>
80022160:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022164:	ebfff85d 	bl	800202e0 <brelse>
80022168:	e51b3010 	ldr	r3, [fp, #-16]
8002216c:	ea000001 	b	80022178 <bmap+0x164>
80022170:	e59f000c 	ldr	r0, [pc, #12]	; 80022184 <bmap+0x170>
80022174:	ebfff959 	bl	800206e0 <panic>
80022178:	e1a00003 	mov	r0, r3
8002217c:	e24bd008 	sub	sp, fp, #8
80022180:	e8bd8810 	pop	{r4, fp, pc}
80022184:	80028e1c 	.word	0x80028e1c

80022188 <itrunc>:
80022188:	e92d4800 	push	{fp, lr}
8002218c:	e28db004 	add	fp, sp, #4
80022190:	e24dd018 	sub	sp, sp, #24
80022194:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80022198:	e3a03000 	mov	r3, #0
8002219c:	e50b3008 	str	r3, [fp, #-8]
800221a0:	ea00001d 	b	8002221c <itrunc+0x94>
800221a4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800221a8:	e51b3008 	ldr	r3, [fp, #-8]
800221ac:	e2833006 	add	r3, r3, #6
800221b0:	e1a03103 	lsl	r3, r3, #2
800221b4:	e0823003 	add	r3, r2, r3
800221b8:	e5933004 	ldr	r3, [r3, #4]
800221bc:	e3530000 	cmp	r3, #0
800221c0:	0a000012 	beq	80022210 <itrunc+0x88>
800221c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800221c8:	e5933000 	ldr	r3, [r3]
800221cc:	e1a01003 	mov	r1, r3
800221d0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800221d4:	e51b3008 	ldr	r3, [fp, #-8]
800221d8:	e2833006 	add	r3, r3, #6
800221dc:	e1a03103 	lsl	r3, r3, #2
800221e0:	e0823003 	add	r3, r2, r3
800221e4:	e5933004 	ldr	r3, [r3, #4]
800221e8:	e1a00001 	mov	r0, r1
800221ec:	e1a01003 	mov	r1, r3
800221f0:	ebfffd8d 	bl	8002182c <bfree>
800221f4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800221f8:	e51b3008 	ldr	r3, [fp, #-8]
800221fc:	e2833006 	add	r3, r3, #6
80022200:	e1a03103 	lsl	r3, r3, #2
80022204:	e0823003 	add	r3, r2, r3
80022208:	e3a02000 	mov	r2, #0
8002220c:	e5832004 	str	r2, [r3, #4]
80022210:	e51b3008 	ldr	r3, [fp, #-8]
80022214:	e2833001 	add	r3, r3, #1
80022218:	e50b3008 	str	r3, [fp, #-8]
8002221c:	e51b3008 	ldr	r3, [fp, #-8]
80022220:	e353000b 	cmp	r3, #11
80022224:	daffffde 	ble	800221a4 <itrunc+0x1c>
80022228:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002222c:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
80022230:	e3530000 	cmp	r3, #0
80022234:	0a000032 	beq	80022304 <itrunc+0x17c>
80022238:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002223c:	e5932000 	ldr	r2, [r3]
80022240:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022244:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
80022248:	e1a00002 	mov	r0, r2
8002224c:	e1a01003 	mov	r1, r3
80022250:	ebfff7f9 	bl	8002023c <bread>
80022254:	e50b0010 	str	r0, [fp, #-16]
80022258:	e51b3010 	ldr	r3, [fp, #-16]
8002225c:	e2833018 	add	r3, r3, #24
80022260:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80022264:	e3a03000 	mov	r3, #0
80022268:	e50b300c 	str	r3, [fp, #-12]
8002226c:	ea000014 	b	800222c4 <itrunc+0x13c>
80022270:	e51b300c 	ldr	r3, [fp, #-12]
80022274:	e1a03103 	lsl	r3, r3, #2
80022278:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002227c:	e0823003 	add	r3, r2, r3
80022280:	e5933000 	ldr	r3, [r3]
80022284:	e3530000 	cmp	r3, #0
80022288:	0a00000a 	beq	800222b8 <itrunc+0x130>
8002228c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022290:	e5933000 	ldr	r3, [r3]
80022294:	e1a01003 	mov	r1, r3
80022298:	e51b300c 	ldr	r3, [fp, #-12]
8002229c:	e1a03103 	lsl	r3, r3, #2
800222a0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800222a4:	e0823003 	add	r3, r2, r3
800222a8:	e5933000 	ldr	r3, [r3]
800222ac:	e1a00001 	mov	r0, r1
800222b0:	e1a01003 	mov	r1, r3
800222b4:	ebfffd5c 	bl	8002182c <bfree>
800222b8:	e51b300c 	ldr	r3, [fp, #-12]
800222bc:	e2833001 	add	r3, r3, #1
800222c0:	e50b300c 	str	r3, [fp, #-12]
800222c4:	e51b300c 	ldr	r3, [fp, #-12]
800222c8:	e353007f 	cmp	r3, #127	; 0x7f
800222cc:	9affffe7 	bls	80022270 <itrunc+0xe8>
800222d0:	e51b0010 	ldr	r0, [fp, #-16]
800222d4:	ebfff801 	bl	800202e0 <brelse>
800222d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800222dc:	e5933000 	ldr	r3, [r3]
800222e0:	e1a02003 	mov	r2, r3
800222e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800222e8:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
800222ec:	e1a00002 	mov	r0, r2
800222f0:	e1a01003 	mov	r1, r3
800222f4:	ebfffd4c 	bl	8002182c <bfree>
800222f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800222fc:	e3a02000 	mov	r2, #0
80022300:	e583204c 	str	r2, [r3, #76]	; 0x4c
80022304:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022308:	e3a02000 	mov	r2, #0
8002230c:	e5832018 	str	r2, [r3, #24]
80022310:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80022314:	ebfffddb 	bl	80021a88 <iupdate>
80022318:	e24bd004 	sub	sp, fp, #4
8002231c:	e8bd8800 	pop	{fp, pc}

80022320 <stati>:
80022320:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80022324:	e28db000 	add	fp, sp, #0
80022328:	e24dd00c 	sub	sp, sp, #12
8002232c:	e50b0008 	str	r0, [fp, #-8]
80022330:	e50b100c 	str	r1, [fp, #-12]
80022334:	e51b3008 	ldr	r3, [fp, #-8]
80022338:	e5933000 	ldr	r3, [r3]
8002233c:	e1a02003 	mov	r2, r3
80022340:	e51b300c 	ldr	r3, [fp, #-12]
80022344:	e5832004 	str	r2, [r3, #4]
80022348:	e51b3008 	ldr	r3, [fp, #-8]
8002234c:	e5932004 	ldr	r2, [r3, #4]
80022350:	e51b300c 	ldr	r3, [fp, #-12]
80022354:	e5832008 	str	r2, [r3, #8]
80022358:	e51b3008 	ldr	r3, [fp, #-8]
8002235c:	e1d321b0 	ldrh	r2, [r3, #16]
80022360:	e51b300c 	ldr	r3, [fp, #-12]
80022364:	e1c320b0 	strh	r2, [r3]
80022368:	e51b3008 	ldr	r3, [fp, #-8]
8002236c:	e1d321b6 	ldrh	r2, [r3, #22]
80022370:	e51b300c 	ldr	r3, [fp, #-12]
80022374:	e1c320bc 	strh	r2, [r3, #12]
80022378:	e51b3008 	ldr	r3, [fp, #-8]
8002237c:	e5932018 	ldr	r2, [r3, #24]
80022380:	e51b300c 	ldr	r3, [fp, #-12]
80022384:	e5832010 	str	r2, [r3, #16]
80022388:	e24bd000 	sub	sp, fp, #0
8002238c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80022390:	e12fff1e 	bx	lr

80022394 <readi>:
80022394:	e92d4810 	push	{r4, fp, lr}
80022398:	e28db008 	add	fp, sp, #8
8002239c:	e24dd024 	sub	sp, sp, #36	; 0x24
800223a0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
800223a4:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
800223a8:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
800223ac:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
800223b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800223b4:	e1d331b0 	ldrh	r3, [r3, #16]
800223b8:	e6bf3073 	sxth	r3, r3
800223bc:	e3530003 	cmp	r3, #3
800223c0:	1a00001d 	bne	8002243c <readi+0xa8>
800223c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800223c8:	e1d331b2 	ldrh	r3, [r3, #18]
800223cc:	e6bf3073 	sxth	r3, r3
800223d0:	e3530000 	cmp	r3, #0
800223d4:	ba00000b 	blt	80022408 <readi+0x74>
800223d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800223dc:	e1d331b2 	ldrh	r3, [r3, #18]
800223e0:	e6bf3073 	sxth	r3, r3
800223e4:	e3530009 	cmp	r3, #9
800223e8:	ca000006 	bgt	80022408 <readi+0x74>
800223ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800223f0:	e1d331b2 	ldrh	r3, [r3, #18]
800223f4:	e6bf3073 	sxth	r3, r3
800223f8:	e59f2188 	ldr	r2, [pc, #392]	; 80022588 <readi+0x1f4>
800223fc:	e7923183 	ldr	r3, [r2, r3, lsl #3]
80022400:	e3530000 	cmp	r3, #0
80022404:	1a000001 	bne	80022410 <readi+0x7c>
80022408:	e3e03000 	mvn	r3, #0
8002240c:	ea00005a 	b	8002257c <readi+0x1e8>
80022410:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022414:	e1d331b2 	ldrh	r3, [r3, #18]
80022418:	e6bf3073 	sxth	r3, r3
8002241c:	e59f2164 	ldr	r2, [pc, #356]	; 80022588 <readi+0x1f4>
80022420:	e7923183 	ldr	r3, [r2, r3, lsl #3]
80022424:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80022428:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
8002242c:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80022430:	e12fff33 	blx	r3
80022434:	e1a03000 	mov	r3, r0
80022438:	ea00004f 	b	8002257c <readi+0x1e8>
8002243c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022440:	e5932018 	ldr	r2, [r3, #24]
80022444:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022448:	e1520003 	cmp	r2, r3
8002244c:	3a000005 	bcc	80022468 <readi+0xd4>
80022450:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80022454:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022458:	e0822003 	add	r2, r2, r3
8002245c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022460:	e1520003 	cmp	r2, r3
80022464:	2a000001 	bcs	80022470 <readi+0xdc>
80022468:	e3e03000 	mvn	r3, #0
8002246c:	ea000042 	b	8002257c <readi+0x1e8>
80022470:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80022474:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022478:	e0822003 	add	r2, r2, r3
8002247c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022480:	e5933018 	ldr	r3, [r3, #24]
80022484:	e1520003 	cmp	r2, r3
80022488:	9a000004 	bls	800224a0 <readi+0x10c>
8002248c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022490:	e5932018 	ldr	r2, [r3, #24]
80022494:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022498:	e0633002 	rsb	r3, r3, r2
8002249c:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
800224a0:	e3a03000 	mov	r3, #0
800224a4:	e50b3010 	str	r3, [fp, #-16]
800224a8:	ea00002e 	b	80022568 <readi+0x1d4>
800224ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800224b0:	e5934000 	ldr	r4, [r3]
800224b4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800224b8:	e1a034a3 	lsr	r3, r3, #9
800224bc:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800224c0:	e1a01003 	mov	r1, r3
800224c4:	ebfffed2 	bl	80022014 <bmap>
800224c8:	e1a03000 	mov	r3, r0
800224cc:	e1a00004 	mov	r0, r4
800224d0:	e1a01003 	mov	r1, r3
800224d4:	ebfff758 	bl	8002023c <bread>
800224d8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800224dc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800224e0:	e1a03b83 	lsl	r3, r3, #23
800224e4:	e1a03ba3 	lsr	r3, r3, #23
800224e8:	e2632c02 	rsb	r2, r3, #512	; 0x200
800224ec:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
800224f0:	e51b3010 	ldr	r3, [fp, #-16]
800224f4:	e0633001 	rsb	r3, r3, r1
800224f8:	e1520003 	cmp	r2, r3
800224fc:	31a03002 	movcc	r3, r2
80022500:	21a03003 	movcs	r3, r3
80022504:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80022508:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002250c:	e1a03b83 	lsl	r3, r3, #23
80022510:	e1a03ba3 	lsr	r3, r3, #23
80022514:	e2833018 	add	r3, r3, #24
80022518:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002251c:	e0823003 	add	r3, r2, r3
80022520:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
80022524:	e1a01003 	mov	r1, r3
80022528:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
8002252c:	eb00094c 	bl	80024a64 <memmove>
80022530:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022534:	ebfff769 	bl	800202e0 <brelse>
80022538:	e51b2010 	ldr	r2, [fp, #-16]
8002253c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022540:	e0823003 	add	r3, r2, r3
80022544:	e50b3010 	str	r3, [fp, #-16]
80022548:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
8002254c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022550:	e0823003 	add	r3, r2, r3
80022554:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80022558:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
8002255c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022560:	e0823003 	add	r3, r2, r3
80022564:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80022568:	e51b2010 	ldr	r2, [fp, #-16]
8002256c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022570:	e1520003 	cmp	r2, r3
80022574:	3affffcc 	bcc	800224ac <readi+0x118>
80022578:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002257c:	e1a00003 	mov	r0, r3
80022580:	e24bd008 	sub	sp, fp, #8
80022584:	e8bd8810 	pop	{r4, fp, pc}
80022588:	800ac40c 	.word	0x800ac40c

8002258c <writei>:
8002258c:	e92d4810 	push	{r4, fp, lr}
80022590:	e28db008 	add	fp, sp, #8
80022594:	e24dd024 	sub	sp, sp, #36	; 0x24
80022598:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
8002259c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
800225a0:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
800225a4:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
800225a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800225ac:	e1d331b0 	ldrh	r3, [r3, #16]
800225b0:	e6bf3073 	sxth	r3, r3
800225b4:	e3530003 	cmp	r3, #3
800225b8:	1a000021 	bne	80022644 <writei+0xb8>
800225bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800225c0:	e1d331b2 	ldrh	r3, [r3, #18]
800225c4:	e6bf3073 	sxth	r3, r3
800225c8:	e3530000 	cmp	r3, #0
800225cc:	ba00000d 	blt	80022608 <writei+0x7c>
800225d0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800225d4:	e1d331b2 	ldrh	r3, [r3, #18]
800225d8:	e6bf3073 	sxth	r3, r3
800225dc:	e3530009 	cmp	r3, #9
800225e0:	ca000008 	bgt	80022608 <writei+0x7c>
800225e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800225e8:	e1d331b2 	ldrh	r3, [r3, #18]
800225ec:	e6bf3073 	sxth	r3, r3
800225f0:	e59f21c0 	ldr	r2, [pc, #448]	; 800227b8 <writei+0x22c>
800225f4:	e1a03183 	lsl	r3, r3, #3
800225f8:	e0823003 	add	r3, r2, r3
800225fc:	e5933004 	ldr	r3, [r3, #4]
80022600:	e3530000 	cmp	r3, #0
80022604:	1a000001 	bne	80022610 <writei+0x84>
80022608:	e3e03000 	mvn	r3, #0
8002260c:	ea000066 	b	800227ac <writei+0x220>
80022610:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022614:	e1d331b2 	ldrh	r3, [r3, #18]
80022618:	e6bf3073 	sxth	r3, r3
8002261c:	e59f2194 	ldr	r2, [pc, #404]	; 800227b8 <writei+0x22c>
80022620:	e1a03183 	lsl	r3, r3, #3
80022624:	e0823003 	add	r3, r2, r3
80022628:	e5933004 	ldr	r3, [r3, #4]
8002262c:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80022630:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80022634:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80022638:	e12fff33 	blx	r3
8002263c:	e1a03000 	mov	r3, r0
80022640:	ea000059 	b	800227ac <writei+0x220>
80022644:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022648:	e5932018 	ldr	r2, [r3, #24]
8002264c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022650:	e1520003 	cmp	r2, r3
80022654:	3a000005 	bcc	80022670 <writei+0xe4>
80022658:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
8002265c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022660:	e0822003 	add	r2, r2, r3
80022664:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022668:	e1520003 	cmp	r2, r3
8002266c:	2a000001 	bcs	80022678 <writei+0xec>
80022670:	e3e03000 	mvn	r3, #0
80022674:	ea00004c 	b	800227ac <writei+0x220>
80022678:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
8002267c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022680:	e0823003 	add	r3, r2, r3
80022684:	e3530b46 	cmp	r3, #71680	; 0x11800
80022688:	9a000001 	bls	80022694 <writei+0x108>
8002268c:	e3e03000 	mvn	r3, #0
80022690:	ea000045 	b	800227ac <writei+0x220>
80022694:	e3a03000 	mov	r3, #0
80022698:	e50b3010 	str	r3, [fp, #-16]
8002269c:	ea000030 	b	80022764 <writei+0x1d8>
800226a0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800226a4:	e5934000 	ldr	r4, [r3]
800226a8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800226ac:	e1a034a3 	lsr	r3, r3, #9
800226b0:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800226b4:	e1a01003 	mov	r1, r3
800226b8:	ebfffe55 	bl	80022014 <bmap>
800226bc:	e1a03000 	mov	r3, r0
800226c0:	e1a00004 	mov	r0, r4
800226c4:	e1a01003 	mov	r1, r3
800226c8:	ebfff6db 	bl	8002023c <bread>
800226cc:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800226d0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800226d4:	e1a03b83 	lsl	r3, r3, #23
800226d8:	e1a03ba3 	lsr	r3, r3, #23
800226dc:	e2632c02 	rsb	r2, r3, #512	; 0x200
800226e0:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
800226e4:	e51b3010 	ldr	r3, [fp, #-16]
800226e8:	e0633001 	rsb	r3, r3, r1
800226ec:	e1520003 	cmp	r2, r3
800226f0:	31a03002 	movcc	r3, r2
800226f4:	21a03003 	movcs	r3, r3
800226f8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
800226fc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022700:	e1a03b83 	lsl	r3, r3, #23
80022704:	e1a03ba3 	lsr	r3, r3, #23
80022708:	e2833018 	add	r3, r3, #24
8002270c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022710:	e0823003 	add	r3, r2, r3
80022714:	e1a00003 	mov	r0, r3
80022718:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
8002271c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80022720:	eb0008cf 	bl	80024a64 <memmove>
80022724:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022728:	eb00024e 	bl	80023068 <log_write>
8002272c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022730:	ebfff6ea 	bl	800202e0 <brelse>
80022734:	e51b2010 	ldr	r2, [fp, #-16]
80022738:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002273c:	e0823003 	add	r3, r2, r3
80022740:	e50b3010 	str	r3, [fp, #-16]
80022744:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80022748:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002274c:	e0823003 	add	r3, r2, r3
80022750:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80022754:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80022758:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002275c:	e0823003 	add	r3, r2, r3
80022760:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80022764:	e51b2010 	ldr	r2, [fp, #-16]
80022768:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002276c:	e1520003 	cmp	r2, r3
80022770:	3affffca 	bcc	800226a0 <writei+0x114>
80022774:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022778:	e3530000 	cmp	r3, #0
8002277c:	0a000009 	beq	800227a8 <writei+0x21c>
80022780:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022784:	e5932018 	ldr	r2, [r3, #24]
80022788:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002278c:	e1520003 	cmp	r2, r3
80022790:	2a000004 	bcs	800227a8 <writei+0x21c>
80022794:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022798:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
8002279c:	e5832018 	str	r2, [r3, #24]
800227a0:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800227a4:	ebfffcb7 	bl	80021a88 <iupdate>
800227a8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800227ac:	e1a00003 	mov	r0, r3
800227b0:	e24bd008 	sub	sp, fp, #8
800227b4:	e8bd8810 	pop	{r4, fp, pc}
800227b8:	800ac40c 	.word	0x800ac40c

800227bc <namecmp>:
800227bc:	e92d4800 	push	{fp, lr}
800227c0:	e28db004 	add	fp, sp, #4
800227c4:	e24dd008 	sub	sp, sp, #8
800227c8:	e50b0008 	str	r0, [fp, #-8]
800227cc:	e50b100c 	str	r1, [fp, #-12]
800227d0:	e51b0008 	ldr	r0, [fp, #-8]
800227d4:	e51b100c 	ldr	r1, [fp, #-12]
800227d8:	e3a0200e 	mov	r2, #14
800227dc:	eb0008ee 	bl	80024b9c <strncmp>
800227e0:	e1a03000 	mov	r3, r0
800227e4:	e1a00003 	mov	r0, r3
800227e8:	e24bd004 	sub	sp, fp, #4
800227ec:	e8bd8800 	pop	{fp, pc}

800227f0 <dirlookup>:
800227f0:	e92d4800 	push	{fp, lr}
800227f4:	e28db004 	add	fp, sp, #4
800227f8:	e24dd028 	sub	sp, sp, #40	; 0x28
800227fc:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80022800:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80022804:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80022808:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002280c:	e1d331b0 	ldrh	r3, [r3, #16]
80022810:	e6bf3073 	sxth	r3, r3
80022814:	e3530001 	cmp	r3, #1
80022818:	0a000001 	beq	80022824 <dirlookup+0x34>
8002281c:	e59f00d4 	ldr	r0, [pc, #212]	; 800228f8 <dirlookup+0x108>
80022820:	ebfff7ae 	bl	800206e0 <panic>
80022824:	e3a03000 	mov	r3, #0
80022828:	e50b3008 	str	r3, [fp, #-8]
8002282c:	ea000028 	b	800228d4 <dirlookup+0xe4>
80022830:	e24b301c 	sub	r3, fp, #28
80022834:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80022838:	e1a01003 	mov	r1, r3
8002283c:	e51b2008 	ldr	r2, [fp, #-8]
80022840:	e3a03010 	mov	r3, #16
80022844:	ebfffed2 	bl	80022394 <readi>
80022848:	e1a03000 	mov	r3, r0
8002284c:	e3530010 	cmp	r3, #16
80022850:	0a000001 	beq	8002285c <dirlookup+0x6c>
80022854:	e59f00a0 	ldr	r0, [pc, #160]	; 800228fc <dirlookup+0x10c>
80022858:	ebfff7a0 	bl	800206e0 <panic>
8002285c:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
80022860:	e3530000 	cmp	r3, #0
80022864:	1a000000 	bne	8002286c <dirlookup+0x7c>
80022868:	ea000016 	b	800228c8 <dirlookup+0xd8>
8002286c:	e24b301c 	sub	r3, fp, #28
80022870:	e2833002 	add	r3, r3, #2
80022874:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
80022878:	e1a01003 	mov	r1, r3
8002287c:	ebffffce 	bl	800227bc <namecmp>
80022880:	e1a03000 	mov	r3, r0
80022884:	e3530000 	cmp	r3, #0
80022888:	1a00000e 	bne	800228c8 <dirlookup+0xd8>
8002288c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022890:	e3530000 	cmp	r3, #0
80022894:	0a000002 	beq	800228a4 <dirlookup+0xb4>
80022898:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002289c:	e51b2008 	ldr	r2, [fp, #-8]
800228a0:	e5832000 	str	r2, [r3]
800228a4:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
800228a8:	e50b300c 	str	r3, [fp, #-12]
800228ac:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800228b0:	e5933000 	ldr	r3, [r3]
800228b4:	e1a00003 	mov	r0, r3
800228b8:	e51b100c 	ldr	r1, [fp, #-12]
800228bc:	ebfffca9 	bl	80021b68 <iget>
800228c0:	e1a03000 	mov	r3, r0
800228c4:	ea000008 	b	800228ec <dirlookup+0xfc>
800228c8:	e51b3008 	ldr	r3, [fp, #-8]
800228cc:	e2833010 	add	r3, r3, #16
800228d0:	e50b3008 	str	r3, [fp, #-8]
800228d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800228d8:	e5932018 	ldr	r2, [r3, #24]
800228dc:	e51b3008 	ldr	r3, [fp, #-8]
800228e0:	e1520003 	cmp	r2, r3
800228e4:	8affffd1 	bhi	80022830 <dirlookup+0x40>
800228e8:	e3a03000 	mov	r3, #0
800228ec:	e1a00003 	mov	r0, r3
800228f0:	e24bd004 	sub	sp, fp, #4
800228f4:	e8bd8800 	pop	{fp, pc}
800228f8:	80028e30 	.word	0x80028e30
800228fc:	80028e44 	.word	0x80028e44

80022900 <dirlink>:
80022900:	e92d4800 	push	{fp, lr}
80022904:	e28db004 	add	fp, sp, #4
80022908:	e24dd028 	sub	sp, sp, #40	; 0x28
8002290c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80022910:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80022914:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80022918:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
8002291c:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80022920:	e3a02000 	mov	r2, #0
80022924:	ebffffb1 	bl	800227f0 <dirlookup>
80022928:	e50b000c 	str	r0, [fp, #-12]
8002292c:	e51b300c 	ldr	r3, [fp, #-12]
80022930:	e3530000 	cmp	r3, #0
80022934:	0a000003 	beq	80022948 <dirlink+0x48>
80022938:	e51b000c 	ldr	r0, [fp, #-12]
8002293c:	ebfffd70 	bl	80021f04 <iput>
80022940:	e3e03000 	mvn	r3, #0
80022944:	ea000030 	b	80022a0c <dirlink+0x10c>
80022948:	e3a03000 	mov	r3, #0
8002294c:	e50b3008 	str	r3, [fp, #-8]
80022950:	ea000012 	b	800229a0 <dirlink+0xa0>
80022954:	e51b3008 	ldr	r3, [fp, #-8]
80022958:	e24b201c 	sub	r2, fp, #28
8002295c:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80022960:	e1a01002 	mov	r1, r2
80022964:	e1a02003 	mov	r2, r3
80022968:	e3a03010 	mov	r3, #16
8002296c:	ebfffe88 	bl	80022394 <readi>
80022970:	e1a03000 	mov	r3, r0
80022974:	e3530010 	cmp	r3, #16
80022978:	0a000001 	beq	80022984 <dirlink+0x84>
8002297c:	e59f0094 	ldr	r0, [pc, #148]	; 80022a18 <dirlink+0x118>
80022980:	ebfff756 	bl	800206e0 <panic>
80022984:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
80022988:	e3530000 	cmp	r3, #0
8002298c:	1a000000 	bne	80022994 <dirlink+0x94>
80022990:	ea000007 	b	800229b4 <dirlink+0xb4>
80022994:	e51b3008 	ldr	r3, [fp, #-8]
80022998:	e2833010 	add	r3, r3, #16
8002299c:	e50b3008 	str	r3, [fp, #-8]
800229a0:	e51b2008 	ldr	r2, [fp, #-8]
800229a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800229a8:	e5933018 	ldr	r3, [r3, #24]
800229ac:	e1520003 	cmp	r2, r3
800229b0:	3affffe7 	bcc	80022954 <dirlink+0x54>
800229b4:	e24b301c 	sub	r3, fp, #28
800229b8:	e2833002 	add	r3, r3, #2
800229bc:	e1a00003 	mov	r0, r3
800229c0:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
800229c4:	e3a0200e 	mov	r2, #14
800229c8:	eb00089f 	bl	80024c4c <strncpy>
800229cc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800229d0:	e6ff3073 	uxth	r3, r3
800229d4:	e14b31bc 	strh	r3, [fp, #-28]	; 0xffffffe4
800229d8:	e51b3008 	ldr	r3, [fp, #-8]
800229dc:	e24b201c 	sub	r2, fp, #28
800229e0:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800229e4:	e1a01002 	mov	r1, r2
800229e8:	e1a02003 	mov	r2, r3
800229ec:	e3a03010 	mov	r3, #16
800229f0:	ebfffee5 	bl	8002258c <writei>
800229f4:	e1a03000 	mov	r3, r0
800229f8:	e3530010 	cmp	r3, #16
800229fc:	0a000001 	beq	80022a08 <dirlink+0x108>
80022a00:	e59f0014 	ldr	r0, [pc, #20]	; 80022a1c <dirlink+0x11c>
80022a04:	ebfff735 	bl	800206e0 <panic>
80022a08:	e3a03000 	mov	r3, #0
80022a0c:	e1a00003 	mov	r0, r3
80022a10:	e24bd004 	sub	sp, fp, #4
80022a14:	e8bd8800 	pop	{fp, pc}
80022a18:	80028e44 	.word	0x80028e44
80022a1c:	80028e54 	.word	0x80028e54

80022a20 <skipelem>:
80022a20:	e92d4800 	push	{fp, lr}
80022a24:	e28db004 	add	fp, sp, #4
80022a28:	e24dd010 	sub	sp, sp, #16
80022a2c:	e50b0010 	str	r0, [fp, #-16]
80022a30:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80022a34:	ea000002 	b	80022a44 <skipelem+0x24>
80022a38:	e51b3010 	ldr	r3, [fp, #-16]
80022a3c:	e2833001 	add	r3, r3, #1
80022a40:	e50b3010 	str	r3, [fp, #-16]
80022a44:	e51b3010 	ldr	r3, [fp, #-16]
80022a48:	e5d33000 	ldrb	r3, [r3]
80022a4c:	e353002f 	cmp	r3, #47	; 0x2f
80022a50:	0afffff8 	beq	80022a38 <skipelem+0x18>
80022a54:	e51b3010 	ldr	r3, [fp, #-16]
80022a58:	e5d33000 	ldrb	r3, [r3]
80022a5c:	e3530000 	cmp	r3, #0
80022a60:	1a000001 	bne	80022a6c <skipelem+0x4c>
80022a64:	e3a03000 	mov	r3, #0
80022a68:	ea00002c 	b	80022b20 <skipelem+0x100>
80022a6c:	e51b3010 	ldr	r3, [fp, #-16]
80022a70:	e50b3008 	str	r3, [fp, #-8]
80022a74:	ea000002 	b	80022a84 <skipelem+0x64>
80022a78:	e51b3010 	ldr	r3, [fp, #-16]
80022a7c:	e2833001 	add	r3, r3, #1
80022a80:	e50b3010 	str	r3, [fp, #-16]
80022a84:	e51b3010 	ldr	r3, [fp, #-16]
80022a88:	e5d33000 	ldrb	r3, [r3]
80022a8c:	e353002f 	cmp	r3, #47	; 0x2f
80022a90:	0a000003 	beq	80022aa4 <skipelem+0x84>
80022a94:	e51b3010 	ldr	r3, [fp, #-16]
80022a98:	e5d33000 	ldrb	r3, [r3]
80022a9c:	e3530000 	cmp	r3, #0
80022aa0:	1afffff4 	bne	80022a78 <skipelem+0x58>
80022aa4:	e51b2010 	ldr	r2, [fp, #-16]
80022aa8:	e51b3008 	ldr	r3, [fp, #-8]
80022aac:	e0633002 	rsb	r3, r3, r2
80022ab0:	e50b300c 	str	r3, [fp, #-12]
80022ab4:	e51b300c 	ldr	r3, [fp, #-12]
80022ab8:	e353000d 	cmp	r3, #13
80022abc:	da000004 	ble	80022ad4 <skipelem+0xb4>
80022ac0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022ac4:	e51b1008 	ldr	r1, [fp, #-8]
80022ac8:	e3a0200e 	mov	r2, #14
80022acc:	eb0007e4 	bl	80024a64 <memmove>
80022ad0:	ea000009 	b	80022afc <skipelem+0xdc>
80022ad4:	e51b300c 	ldr	r3, [fp, #-12]
80022ad8:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022adc:	e51b1008 	ldr	r1, [fp, #-8]
80022ae0:	e1a02003 	mov	r2, r3
80022ae4:	eb0007de 	bl	80024a64 <memmove>
80022ae8:	e51b300c 	ldr	r3, [fp, #-12]
80022aec:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022af0:	e0823003 	add	r3, r2, r3
80022af4:	e3a02000 	mov	r2, #0
80022af8:	e5c32000 	strb	r2, [r3]
80022afc:	ea000002 	b	80022b0c <skipelem+0xec>
80022b00:	e51b3010 	ldr	r3, [fp, #-16]
80022b04:	e2833001 	add	r3, r3, #1
80022b08:	e50b3010 	str	r3, [fp, #-16]
80022b0c:	e51b3010 	ldr	r3, [fp, #-16]
80022b10:	e5d33000 	ldrb	r3, [r3]
80022b14:	e353002f 	cmp	r3, #47	; 0x2f
80022b18:	0afffff8 	beq	80022b00 <skipelem+0xe0>
80022b1c:	e51b3010 	ldr	r3, [fp, #-16]
80022b20:	e1a00003 	mov	r0, r3
80022b24:	e24bd004 	sub	sp, fp, #4
80022b28:	e8bd8800 	pop	{fp, pc}

80022b2c <namex>:
80022b2c:	e92d4800 	push	{fp, lr}
80022b30:	e28db004 	add	fp, sp, #4
80022b34:	e24dd018 	sub	sp, sp, #24
80022b38:	e50b0010 	str	r0, [fp, #-16]
80022b3c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80022b40:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80022b44:	e51b3010 	ldr	r3, [fp, #-16]
80022b48:	e5d33000 	ldrb	r3, [r3]
80022b4c:	e353002f 	cmp	r3, #47	; 0x2f
80022b50:	1a000004 	bne	80022b68 <namex+0x3c>
80022b54:	e3a00001 	mov	r0, #1
80022b58:	e3a01001 	mov	r1, #1
80022b5c:	ebfffc01 	bl	80021b68 <iget>
80022b60:	e50b0008 	str	r0, [fp, #-8]
80022b64:	ea000005 	b	80022b80 <namex+0x54>
80022b68:	e59f30f4 	ldr	r3, [pc, #244]	; 80022c64 <namex+0x138>
80022b6c:	e5933000 	ldr	r3, [r3]
80022b70:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80022b74:	e1a00003 	mov	r0, r3
80022b78:	ebfffc4a 	bl	80021ca8 <idup>
80022b7c:	e50b0008 	str	r0, [fp, #-8]
80022b80:	ea000025 	b	80022c1c <namex+0xf0>
80022b84:	e51b0008 	ldr	r0, [fp, #-8]
80022b88:	ebfffc58 	bl	80021cf0 <ilock>
80022b8c:	e51b3008 	ldr	r3, [fp, #-8]
80022b90:	e1d331b0 	ldrh	r3, [r3, #16]
80022b94:	e6bf3073 	sxth	r3, r3
80022b98:	e3530001 	cmp	r3, #1
80022b9c:	0a000003 	beq	80022bb0 <namex+0x84>
80022ba0:	e51b0008 	ldr	r0, [fp, #-8]
80022ba4:	ebfffd10 	bl	80021fec <iunlockput>
80022ba8:	e3a03000 	mov	r3, #0
80022bac:	ea000029 	b	80022c58 <namex+0x12c>
80022bb0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022bb4:	e3530000 	cmp	r3, #0
80022bb8:	0a000007 	beq	80022bdc <namex+0xb0>
80022bbc:	e51b3010 	ldr	r3, [fp, #-16]
80022bc0:	e5d33000 	ldrb	r3, [r3]
80022bc4:	e3530000 	cmp	r3, #0
80022bc8:	1a000003 	bne	80022bdc <namex+0xb0>
80022bcc:	e51b0008 	ldr	r0, [fp, #-8]
80022bd0:	ebfffcaa 	bl	80021e80 <iunlock>
80022bd4:	e51b3008 	ldr	r3, [fp, #-8]
80022bd8:	ea00001e 	b	80022c58 <namex+0x12c>
80022bdc:	e51b0008 	ldr	r0, [fp, #-8]
80022be0:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80022be4:	e3a02000 	mov	r2, #0
80022be8:	ebffff00 	bl	800227f0 <dirlookup>
80022bec:	e50b000c 	str	r0, [fp, #-12]
80022bf0:	e51b300c 	ldr	r3, [fp, #-12]
80022bf4:	e3530000 	cmp	r3, #0
80022bf8:	1a000003 	bne	80022c0c <namex+0xe0>
80022bfc:	e51b0008 	ldr	r0, [fp, #-8]
80022c00:	ebfffcf9 	bl	80021fec <iunlockput>
80022c04:	e3a03000 	mov	r3, #0
80022c08:	ea000012 	b	80022c58 <namex+0x12c>
80022c0c:	e51b0008 	ldr	r0, [fp, #-8]
80022c10:	ebfffcf5 	bl	80021fec <iunlockput>
80022c14:	e51b300c 	ldr	r3, [fp, #-12]
80022c18:	e50b3008 	str	r3, [fp, #-8]
80022c1c:	e51b0010 	ldr	r0, [fp, #-16]
80022c20:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80022c24:	ebffff7d 	bl	80022a20 <skipelem>
80022c28:	e50b0010 	str	r0, [fp, #-16]
80022c2c:	e51b3010 	ldr	r3, [fp, #-16]
80022c30:	e3530000 	cmp	r3, #0
80022c34:	1affffd2 	bne	80022b84 <namex+0x58>
80022c38:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022c3c:	e3530000 	cmp	r3, #0
80022c40:	0a000003 	beq	80022c54 <namex+0x128>
80022c44:	e51b0008 	ldr	r0, [fp, #-8]
80022c48:	ebfffcad 	bl	80021f04 <iput>
80022c4c:	e3a03000 	mov	r3, #0
80022c50:	ea000000 	b	80022c58 <namex+0x12c>
80022c54:	e51b3008 	ldr	r3, [fp, #-8]
80022c58:	e1a00003 	mov	r0, r3
80022c5c:	e24bd004 	sub	sp, fp, #4
80022c60:	e8bd8800 	pop	{fp, pc}
80022c64:	800ad60c 	.word	0x800ad60c

80022c68 <namei>:
80022c68:	e92d4800 	push	{fp, lr}
80022c6c:	e28db004 	add	fp, sp, #4
80022c70:	e24dd018 	sub	sp, sp, #24
80022c74:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80022c78:	e24b3014 	sub	r3, fp, #20
80022c7c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80022c80:	e3a01000 	mov	r1, #0
80022c84:	e1a02003 	mov	r2, r3
80022c88:	ebffffa7 	bl	80022b2c <namex>
80022c8c:	e1a03000 	mov	r3, r0
80022c90:	e1a00003 	mov	r0, r3
80022c94:	e24bd004 	sub	sp, fp, #4
80022c98:	e8bd8800 	pop	{fp, pc}

80022c9c <nameiparent>:
80022c9c:	e92d4800 	push	{fp, lr}
80022ca0:	e28db004 	add	fp, sp, #4
80022ca4:	e24dd008 	sub	sp, sp, #8
80022ca8:	e50b0008 	str	r0, [fp, #-8]
80022cac:	e50b100c 	str	r1, [fp, #-12]
80022cb0:	e51b0008 	ldr	r0, [fp, #-8]
80022cb4:	e3a01001 	mov	r1, #1
80022cb8:	e51b200c 	ldr	r2, [fp, #-12]
80022cbc:	ebffff9a 	bl	80022b2c <namex>
80022cc0:	e1a03000 	mov	r3, r0
80022cc4:	e1a00003 	mov	r0, r3
80022cc8:	e24bd004 	sub	sp, fp, #4
80022ccc:	e8bd8800 	pop	{fp, pc}

80022cd0 <initlog>:
80022cd0:	e92d4800 	push	{fp, lr}
80022cd4:	e28db004 	add	fp, sp, #4
80022cd8:	e24dd010 	sub	sp, sp, #16
80022cdc:	e59f0054 	ldr	r0, [pc, #84]	; 80022d38 <initlog+0x68>
80022ce0:	e59f1054 	ldr	r1, [pc, #84]	; 80022d3c <initlog+0x6c>
80022ce4:	eb0006be 	bl	800247e4 <initlock>
80022ce8:	e24b3014 	sub	r3, fp, #20
80022cec:	e3a00001 	mov	r0, #1
80022cf0:	e1a01003 	mov	r1, r3
80022cf4:	ebfffa29 	bl	800215a0 <readsb>
80022cf8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022cfc:	e51b3008 	ldr	r3, [fp, #-8]
80022d00:	e0633002 	rsb	r3, r3, r2
80022d04:	e1a02003 	mov	r2, r3
80022d08:	e59f3028 	ldr	r3, [pc, #40]	; 80022d38 <initlog+0x68>
80022d0c:	e5832034 	str	r2, [r3, #52]	; 0x34
80022d10:	e51b3008 	ldr	r3, [fp, #-8]
80022d14:	e1a02003 	mov	r2, r3
80022d18:	e59f3018 	ldr	r3, [pc, #24]	; 80022d38 <initlog+0x68>
80022d1c:	e5832038 	str	r2, [r3, #56]	; 0x38
80022d20:	e59f3010 	ldr	r3, [pc, #16]	; 80022d38 <initlog+0x68>
80022d24:	e3a02001 	mov	r2, #1
80022d28:	e5832040 	str	r2, [r3, #64]	; 0x40
80022d2c:	eb000099 	bl	80022f98 <recover_from_log>
80022d30:	e24bd004 	sub	sp, fp, #4
80022d34:	e8bd8800 	pop	{fp, pc}
80022d38:	800ad430 	.word	0x800ad430
80022d3c:	80028e5c 	.word	0x80028e5c

80022d40 <install_trans>:
80022d40:	e92d4800 	push	{fp, lr}
80022d44:	e28db004 	add	fp, sp, #4
80022d48:	e24dd010 	sub	sp, sp, #16
80022d4c:	e3a03000 	mov	r3, #0
80022d50:	e50b3008 	str	r3, [fp, #-8]
80022d54:	ea000029 	b	80022e00 <install_trans+0xc0>
80022d58:	e59f30bc 	ldr	r3, [pc, #188]	; 80022e1c <install_trans+0xdc>
80022d5c:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80022d60:	e1a01003 	mov	r1, r3
80022d64:	e59f30b0 	ldr	r3, [pc, #176]	; 80022e1c <install_trans+0xdc>
80022d68:	e5932034 	ldr	r2, [r3, #52]	; 0x34
80022d6c:	e51b3008 	ldr	r3, [fp, #-8]
80022d70:	e0823003 	add	r3, r2, r3
80022d74:	e2833001 	add	r3, r3, #1
80022d78:	e1a00001 	mov	r0, r1
80022d7c:	e1a01003 	mov	r1, r3
80022d80:	ebfff52d 	bl	8002023c <bread>
80022d84:	e50b000c 	str	r0, [fp, #-12]
80022d88:	e59f308c 	ldr	r3, [pc, #140]	; 80022e1c <install_trans+0xdc>
80022d8c:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80022d90:	e1a01003 	mov	r1, r3
80022d94:	e59f2080 	ldr	r2, [pc, #128]	; 80022e1c <install_trans+0xdc>
80022d98:	e51b3008 	ldr	r3, [fp, #-8]
80022d9c:	e2833010 	add	r3, r3, #16
80022da0:	e1a03103 	lsl	r3, r3, #2
80022da4:	e0823003 	add	r3, r2, r3
80022da8:	e5933008 	ldr	r3, [r3, #8]
80022dac:	e1a00001 	mov	r0, r1
80022db0:	e1a01003 	mov	r1, r3
80022db4:	ebfff520 	bl	8002023c <bread>
80022db8:	e50b0010 	str	r0, [fp, #-16]
80022dbc:	e51b3010 	ldr	r3, [fp, #-16]
80022dc0:	e2832018 	add	r2, r3, #24
80022dc4:	e51b300c 	ldr	r3, [fp, #-12]
80022dc8:	e2833018 	add	r3, r3, #24
80022dcc:	e1a00002 	mov	r0, r2
80022dd0:	e1a01003 	mov	r1, r3
80022dd4:	e3a02c02 	mov	r2, #512	; 0x200
80022dd8:	eb000721 	bl	80024a64 <memmove>
80022ddc:	e51b0010 	ldr	r0, [fp, #-16]
80022de0:	ebfff529 	bl	8002028c <bwrite>
80022de4:	e51b000c 	ldr	r0, [fp, #-12]
80022de8:	ebfff53c 	bl	800202e0 <brelse>
80022dec:	e51b0010 	ldr	r0, [fp, #-16]
80022df0:	ebfff53a 	bl	800202e0 <brelse>
80022df4:	e51b3008 	ldr	r3, [fp, #-8]
80022df8:	e2833001 	add	r3, r3, #1
80022dfc:	e50b3008 	str	r3, [fp, #-8]
80022e00:	e59f3014 	ldr	r3, [pc, #20]	; 80022e1c <install_trans+0xdc>
80022e04:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80022e08:	e51b3008 	ldr	r3, [fp, #-8]
80022e0c:	e1520003 	cmp	r2, r3
80022e10:	caffffd0 	bgt	80022d58 <install_trans+0x18>
80022e14:	e24bd004 	sub	sp, fp, #4
80022e18:	e8bd8800 	pop	{fp, pc}
80022e1c:	800ad430 	.word	0x800ad430

80022e20 <read_head>:
80022e20:	e92d4800 	push	{fp, lr}
80022e24:	e28db004 	add	fp, sp, #4
80022e28:	e24dd010 	sub	sp, sp, #16
80022e2c:	e59f30a0 	ldr	r3, [pc, #160]	; 80022ed4 <read_head+0xb4>
80022e30:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80022e34:	e1a02003 	mov	r2, r3
80022e38:	e59f3094 	ldr	r3, [pc, #148]	; 80022ed4 <read_head+0xb4>
80022e3c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80022e40:	e1a00002 	mov	r0, r2
80022e44:	e1a01003 	mov	r1, r3
80022e48:	ebfff4fb 	bl	8002023c <bread>
80022e4c:	e50b000c 	str	r0, [fp, #-12]
80022e50:	e51b300c 	ldr	r3, [fp, #-12]
80022e54:	e2833018 	add	r3, r3, #24
80022e58:	e50b3010 	str	r3, [fp, #-16]
80022e5c:	e51b3010 	ldr	r3, [fp, #-16]
80022e60:	e5933000 	ldr	r3, [r3]
80022e64:	e59f2068 	ldr	r2, [pc, #104]	; 80022ed4 <read_head+0xb4>
80022e68:	e5823044 	str	r3, [r2, #68]	; 0x44
80022e6c:	e3a03000 	mov	r3, #0
80022e70:	e50b3008 	str	r3, [fp, #-8]
80022e74:	ea00000d 	b	80022eb0 <read_head+0x90>
80022e78:	e51b2010 	ldr	r2, [fp, #-16]
80022e7c:	e51b3008 	ldr	r3, [fp, #-8]
80022e80:	e1a03103 	lsl	r3, r3, #2
80022e84:	e0823003 	add	r3, r2, r3
80022e88:	e5932004 	ldr	r2, [r3, #4]
80022e8c:	e59f1040 	ldr	r1, [pc, #64]	; 80022ed4 <read_head+0xb4>
80022e90:	e51b3008 	ldr	r3, [fp, #-8]
80022e94:	e2833010 	add	r3, r3, #16
80022e98:	e1a03103 	lsl	r3, r3, #2
80022e9c:	e0813003 	add	r3, r1, r3
80022ea0:	e5832008 	str	r2, [r3, #8]
80022ea4:	e51b3008 	ldr	r3, [fp, #-8]
80022ea8:	e2833001 	add	r3, r3, #1
80022eac:	e50b3008 	str	r3, [fp, #-8]
80022eb0:	e59f301c 	ldr	r3, [pc, #28]	; 80022ed4 <read_head+0xb4>
80022eb4:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80022eb8:	e51b3008 	ldr	r3, [fp, #-8]
80022ebc:	e1520003 	cmp	r2, r3
80022ec0:	caffffec 	bgt	80022e78 <read_head+0x58>
80022ec4:	e51b000c 	ldr	r0, [fp, #-12]
80022ec8:	ebfff504 	bl	800202e0 <brelse>
80022ecc:	e24bd004 	sub	sp, fp, #4
80022ed0:	e8bd8800 	pop	{fp, pc}
80022ed4:	800ad430 	.word	0x800ad430

80022ed8 <write_head>:
80022ed8:	e92d4800 	push	{fp, lr}
80022edc:	e28db004 	add	fp, sp, #4
80022ee0:	e24dd010 	sub	sp, sp, #16
80022ee4:	e59f30a8 	ldr	r3, [pc, #168]	; 80022f94 <write_head+0xbc>
80022ee8:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80022eec:	e1a02003 	mov	r2, r3
80022ef0:	e59f309c 	ldr	r3, [pc, #156]	; 80022f94 <write_head+0xbc>
80022ef4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80022ef8:	e1a00002 	mov	r0, r2
80022efc:	e1a01003 	mov	r1, r3
80022f00:	ebfff4cd 	bl	8002023c <bread>
80022f04:	e50b000c 	str	r0, [fp, #-12]
80022f08:	e51b300c 	ldr	r3, [fp, #-12]
80022f0c:	e2833018 	add	r3, r3, #24
80022f10:	e50b3010 	str	r3, [fp, #-16]
80022f14:	e59f3078 	ldr	r3, [pc, #120]	; 80022f94 <write_head+0xbc>
80022f18:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80022f1c:	e51b3010 	ldr	r3, [fp, #-16]
80022f20:	e5832000 	str	r2, [r3]
80022f24:	e3a03000 	mov	r3, #0
80022f28:	e50b3008 	str	r3, [fp, #-8]
80022f2c:	ea00000d 	b	80022f68 <write_head+0x90>
80022f30:	e59f205c 	ldr	r2, [pc, #92]	; 80022f94 <write_head+0xbc>
80022f34:	e51b3008 	ldr	r3, [fp, #-8]
80022f38:	e2833010 	add	r3, r3, #16
80022f3c:	e1a03103 	lsl	r3, r3, #2
80022f40:	e0823003 	add	r3, r2, r3
80022f44:	e5932008 	ldr	r2, [r3, #8]
80022f48:	e51b1010 	ldr	r1, [fp, #-16]
80022f4c:	e51b3008 	ldr	r3, [fp, #-8]
80022f50:	e1a03103 	lsl	r3, r3, #2
80022f54:	e0813003 	add	r3, r1, r3
80022f58:	e5832004 	str	r2, [r3, #4]
80022f5c:	e51b3008 	ldr	r3, [fp, #-8]
80022f60:	e2833001 	add	r3, r3, #1
80022f64:	e50b3008 	str	r3, [fp, #-8]
80022f68:	e59f3024 	ldr	r3, [pc, #36]	; 80022f94 <write_head+0xbc>
80022f6c:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80022f70:	e51b3008 	ldr	r3, [fp, #-8]
80022f74:	e1520003 	cmp	r2, r3
80022f78:	caffffec 	bgt	80022f30 <write_head+0x58>
80022f7c:	e51b000c 	ldr	r0, [fp, #-12]
80022f80:	ebfff4c1 	bl	8002028c <bwrite>
80022f84:	e51b000c 	ldr	r0, [fp, #-12]
80022f88:	ebfff4d4 	bl	800202e0 <brelse>
80022f8c:	e24bd004 	sub	sp, fp, #4
80022f90:	e8bd8800 	pop	{fp, pc}
80022f94:	800ad430 	.word	0x800ad430

80022f98 <recover_from_log>:
80022f98:	e92d4800 	push	{fp, lr}
80022f9c:	e28db004 	add	fp, sp, #4
80022fa0:	ebffff9e 	bl	80022e20 <read_head>
80022fa4:	ebffff65 	bl	80022d40 <install_trans>
80022fa8:	e59f300c 	ldr	r3, [pc, #12]	; 80022fbc <recover_from_log+0x24>
80022fac:	e3a02000 	mov	r2, #0
80022fb0:	e5832044 	str	r2, [r3, #68]	; 0x44
80022fb4:	ebffffc7 	bl	80022ed8 <write_head>
80022fb8:	e8bd8800 	pop	{fp, pc}
80022fbc:	800ad430 	.word	0x800ad430

80022fc0 <begin_trans>:
80022fc0:	e92d4800 	push	{fp, lr}
80022fc4:	e28db004 	add	fp, sp, #4
80022fc8:	e59f0038 	ldr	r0, [pc, #56]	; 80023008 <begin_trans+0x48>
80022fcc:	eb000615 	bl	80024828 <acquire>
80022fd0:	ea000002 	b	80022fe0 <begin_trans+0x20>
80022fd4:	e59f002c 	ldr	r0, [pc, #44]	; 80023008 <begin_trans+0x48>
80022fd8:	e59f1028 	ldr	r1, [pc, #40]	; 80023008 <begin_trans+0x48>
80022fdc:	eb000536 	bl	800244bc <sleep>
80022fe0:	e59f3020 	ldr	r3, [pc, #32]	; 80023008 <begin_trans+0x48>
80022fe4:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
80022fe8:	e3530000 	cmp	r3, #0
80022fec:	1afffff8 	bne	80022fd4 <begin_trans+0x14>
80022ff0:	e59f3010 	ldr	r3, [pc, #16]	; 80023008 <begin_trans+0x48>
80022ff4:	e3a02001 	mov	r2, #1
80022ff8:	e583203c 	str	r2, [r3, #60]	; 0x3c
80022ffc:	e59f0004 	ldr	r0, [pc, #4]	; 80023008 <begin_trans+0x48>
80023000:	eb000612 	bl	80024850 <release>
80023004:	e8bd8800 	pop	{fp, pc}
80023008:	800ad430 	.word	0x800ad430

8002300c <commit_trans>:
8002300c:	e92d4800 	push	{fp, lr}
80023010:	e28db004 	add	fp, sp, #4
80023014:	e59f3048 	ldr	r3, [pc, #72]	; 80023064 <commit_trans+0x58>
80023018:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002301c:	e3530000 	cmp	r3, #0
80023020:	da000005 	ble	8002303c <commit_trans+0x30>
80023024:	ebffffab 	bl	80022ed8 <write_head>
80023028:	ebffff44 	bl	80022d40 <install_trans>
8002302c:	e59f3030 	ldr	r3, [pc, #48]	; 80023064 <commit_trans+0x58>
80023030:	e3a02000 	mov	r2, #0
80023034:	e5832044 	str	r2, [r3, #68]	; 0x44
80023038:	ebffffa6 	bl	80022ed8 <write_head>
8002303c:	e59f0020 	ldr	r0, [pc, #32]	; 80023064 <commit_trans+0x58>
80023040:	eb0005f8 	bl	80024828 <acquire>
80023044:	e59f3018 	ldr	r3, [pc, #24]	; 80023064 <commit_trans+0x58>
80023048:	e3a02000 	mov	r2, #0
8002304c:	e583203c 	str	r2, [r3, #60]	; 0x3c
80023050:	e59f000c 	ldr	r0, [pc, #12]	; 80023064 <commit_trans+0x58>
80023054:	eb00056a 	bl	80024604 <wakeup>
80023058:	e59f0004 	ldr	r0, [pc, #4]	; 80023064 <commit_trans+0x58>
8002305c:	eb0005fb 	bl	80024850 <release>
80023060:	e8bd8800 	pop	{fp, pc}
80023064:	800ad430 	.word	0x800ad430

80023068 <log_write>:
80023068:	e92d4800 	push	{fp, lr}
8002306c:	e28db004 	add	fp, sp, #4
80023070:	e24dd010 	sub	sp, sp, #16
80023074:	e50b0010 	str	r0, [fp, #-16]
80023078:	e59f3164 	ldr	r3, [pc, #356]	; 800231e4 <log_write+0x17c>
8002307c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80023080:	e3530009 	cmp	r3, #9
80023084:	ca000006 	bgt	800230a4 <log_write+0x3c>
80023088:	e59f3154 	ldr	r3, [pc, #340]	; 800231e4 <log_write+0x17c>
8002308c:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80023090:	e59f314c 	ldr	r3, [pc, #332]	; 800231e4 <log_write+0x17c>
80023094:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80023098:	e2433001 	sub	r3, r3, #1
8002309c:	e1520003 	cmp	r2, r3
800230a0:	ba000001 	blt	800230ac <log_write+0x44>
800230a4:	e59f013c 	ldr	r0, [pc, #316]	; 800231e8 <log_write+0x180>
800230a8:	ebfff58c 	bl	800206e0 <panic>
800230ac:	e59f3130 	ldr	r3, [pc, #304]	; 800231e4 <log_write+0x17c>
800230b0:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
800230b4:	e3530000 	cmp	r3, #0
800230b8:	1a000001 	bne	800230c4 <log_write+0x5c>
800230bc:	e59f0128 	ldr	r0, [pc, #296]	; 800231ec <log_write+0x184>
800230c0:	ebfff586 	bl	800206e0 <panic>
800230c4:	e3a03000 	mov	r3, #0
800230c8:	e50b3008 	str	r3, [fp, #-8]
800230cc:	ea00000e 	b	8002310c <log_write+0xa4>
800230d0:	e59f210c 	ldr	r2, [pc, #268]	; 800231e4 <log_write+0x17c>
800230d4:	e51b3008 	ldr	r3, [fp, #-8]
800230d8:	e2833010 	add	r3, r3, #16
800230dc:	e1a03103 	lsl	r3, r3, #2
800230e0:	e0823003 	add	r3, r2, r3
800230e4:	e5933008 	ldr	r3, [r3, #8]
800230e8:	e1a02003 	mov	r2, r3
800230ec:	e51b3010 	ldr	r3, [fp, #-16]
800230f0:	e5933008 	ldr	r3, [r3, #8]
800230f4:	e1520003 	cmp	r2, r3
800230f8:	1a000000 	bne	80023100 <log_write+0x98>
800230fc:	ea000007 	b	80023120 <log_write+0xb8>
80023100:	e51b3008 	ldr	r3, [fp, #-8]
80023104:	e2833001 	add	r3, r3, #1
80023108:	e50b3008 	str	r3, [fp, #-8]
8002310c:	e59f30d0 	ldr	r3, [pc, #208]	; 800231e4 <log_write+0x17c>
80023110:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80023114:	e51b3008 	ldr	r3, [fp, #-8]
80023118:	e1520003 	cmp	r2, r3
8002311c:	caffffeb 	bgt	800230d0 <log_write+0x68>
80023120:	e51b3010 	ldr	r3, [fp, #-16]
80023124:	e5933008 	ldr	r3, [r3, #8]
80023128:	e1a01003 	mov	r1, r3
8002312c:	e59f20b0 	ldr	r2, [pc, #176]	; 800231e4 <log_write+0x17c>
80023130:	e51b3008 	ldr	r3, [fp, #-8]
80023134:	e2833010 	add	r3, r3, #16
80023138:	e1a03103 	lsl	r3, r3, #2
8002313c:	e0823003 	add	r3, r2, r3
80023140:	e5831008 	str	r1, [r3, #8]
80023144:	e51b3010 	ldr	r3, [fp, #-16]
80023148:	e5931004 	ldr	r1, [r3, #4]
8002314c:	e59f3090 	ldr	r3, [pc, #144]	; 800231e4 <log_write+0x17c>
80023150:	e5932034 	ldr	r2, [r3, #52]	; 0x34
80023154:	e51b3008 	ldr	r3, [fp, #-8]
80023158:	e0823003 	add	r3, r2, r3
8002315c:	e2833001 	add	r3, r3, #1
80023160:	e1a00001 	mov	r0, r1
80023164:	e1a01003 	mov	r1, r3
80023168:	ebfff433 	bl	8002023c <bread>
8002316c:	e50b000c 	str	r0, [fp, #-12]
80023170:	e51b300c 	ldr	r3, [fp, #-12]
80023174:	e2832018 	add	r2, r3, #24
80023178:	e51b3010 	ldr	r3, [fp, #-16]
8002317c:	e2833018 	add	r3, r3, #24
80023180:	e1a00002 	mov	r0, r2
80023184:	e1a01003 	mov	r1, r3
80023188:	e3a02c02 	mov	r2, #512	; 0x200
8002318c:	eb000634 	bl	80024a64 <memmove>
80023190:	e51b000c 	ldr	r0, [fp, #-12]
80023194:	ebfff43c 	bl	8002028c <bwrite>
80023198:	e51b000c 	ldr	r0, [fp, #-12]
8002319c:	ebfff44f 	bl	800202e0 <brelse>
800231a0:	e59f303c 	ldr	r3, [pc, #60]	; 800231e4 <log_write+0x17c>
800231a4:	e5932044 	ldr	r2, [r3, #68]	; 0x44
800231a8:	e51b3008 	ldr	r3, [fp, #-8]
800231ac:	e1520003 	cmp	r2, r3
800231b0:	1a000004 	bne	800231c8 <log_write+0x160>
800231b4:	e59f3028 	ldr	r3, [pc, #40]	; 800231e4 <log_write+0x17c>
800231b8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
800231bc:	e2833001 	add	r3, r3, #1
800231c0:	e59f201c 	ldr	r2, [pc, #28]	; 800231e4 <log_write+0x17c>
800231c4:	e5823044 	str	r3, [r2, #68]	; 0x44
800231c8:	e51b3010 	ldr	r3, [fp, #-16]
800231cc:	e5933000 	ldr	r3, [r3]
800231d0:	e3832004 	orr	r2, r3, #4
800231d4:	e51b3010 	ldr	r3, [fp, #-16]
800231d8:	e5832000 	str	r2, [r3]
800231dc:	e24bd004 	sub	sp, fp, #4
800231e0:	e8bd8800 	pop	{fp, pc}
800231e4:	800ad430 	.word	0x800ad430
800231e8:	80028e60 	.word	0x80028e60
800231ec:	80028e78 	.word	0x80028e78

800231f0 <kmain>:
800231f0:	e92d4800 	push	{fp, lr}
800231f4:	e28db004 	add	fp, sp, #4
800231f8:	e24dd008 	sub	sp, sp, #8
800231fc:	e59f30a4 	ldr	r3, [pc, #164]	; 800232a8 <kmain+0xb8>
80023200:	e59f20a4 	ldr	r2, [pc, #164]	; 800232ac <kmain+0xbc>
80023204:	e5832000 	str	r2, [r3]
80023208:	e59f00a0 	ldr	r0, [pc, #160]	; 800232b0 <kmain+0xc0>
8002320c:	eb000de2 	bl	8002699c <uart_init>
80023210:	e59f309c 	ldr	r3, [pc, #156]	; 800232b4 <kmain+0xc4>
80023214:	e50b3008 	str	r3, [fp, #-8]
80023218:	eb000e6f 	bl	80026bdc <init_vmm>
8002321c:	e59f3094 	ldr	r3, [pc, #148]	; 800232b8 <kmain+0xc8>
80023220:	e2833fff 	add	r3, r3, #1020	; 0x3fc
80023224:	e2833003 	add	r3, r3, #3
80023228:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
8002322c:	e3c33003 	bic	r3, r3, #3
80023230:	e1a00003 	mov	r0, r3
80023234:	e51b1008 	ldr	r1, [fp, #-8]
80023238:	eb000e99 	bl	80026ca4 <kpt_freerange>
8002323c:	e51b3008 	ldr	r3, [fp, #-8]
80023240:	e2833b01 	add	r3, r3, #1024	; 0x400
80023244:	e1a00003 	mov	r0, r3
80023248:	e59f106c 	ldr	r1, [pc, #108]	; 800232bc <kmain+0xcc>
8002324c:	eb000e94 	bl	80026ca4 <kpt_freerange>
80023250:	e3a00601 	mov	r0, #1048576	; 0x100000
80023254:	e3a01302 	mov	r1, #134217728	; 0x8000000
80023258:	eb001156 	bl	800277b8 <paging_init>
8002325c:	eb0013a9 	bl	80028108 <kmem_init>
80023260:	e59f0054 	ldr	r0, [pc, #84]	; 800232bc <kmain+0xcc>
80023264:	e3a01322 	mov	r1, #-2013265920	; 0x88000000
80023268:	eb0013ae 	bl	80028128 <kmem_init2>
8002326c:	eb000ced 	bl	80026628 <trap_init>
80023270:	e59f0048 	ldr	r0, [pc, #72]	; 800232c0 <kmain+0xd0>
80023274:	eb00001d 	bl	800232f0 <pic_init>
80023278:	eb000df7 	bl	80026a5c <uart_enable_rx>
8002327c:	ebfff63f 	bl	80020b80 <consoleinit>
80023280:	eb0001da 	bl	800239f0 <pinit>
80023284:	ebfff35d 	bl	80020000 <binit>
80023288:	ebfff781 	bl	80021094 <fileinit>
8002328c:	ebfff9b5 	bl	80021968 <iinit>
80023290:	eb001295 	bl	80027cec <ideinit>
80023294:	e3a0000a 	mov	r0, #10
80023298:	eb001245 	bl	80027bb4 <timer_init>
8002329c:	eb001166 	bl	8002783c <sti>
800232a0:	eb000244 	bl	80023bb8 <userinit>
800232a4:	eb0003fe 	bl	800242a4 <scheduler>
800232a8:	800ad4a0 	.word	0x800ad4a0
800232ac:	800ad4a4 	.word	0x800ad4a4
800232b0:	901f1000 	.word	0x901f1000
800232b4:	800f0000 	.word	0x800f0000
800232b8:	800b0000 	.word	0x800b0000
800232bc:	80100000 	.word	0x80100000
800232c0:	90140000 	.word	0x90140000

800232c4 <default_isr>:
800232c4:	e92d4800 	push	{fp, lr}
800232c8:	e28db004 	add	fp, sp, #4
800232cc:	e24dd008 	sub	sp, sp, #8
800232d0:	e50b0008 	str	r0, [fp, #-8]
800232d4:	e50b100c 	str	r1, [fp, #-12]
800232d8:	e59f000c 	ldr	r0, [pc, #12]	; 800232ec <default_isr+0x28>
800232dc:	e51b100c 	ldr	r1, [fp, #-12]
800232e0:	ebfff47f 	bl	800204e4 <cprintf>
800232e4:	e24bd004 	sub	sp, fp, #4
800232e8:	e8bd8800 	pop	{fp, pc}
800232ec:	80028e90 	.word	0x80028e90

800232f0 <pic_init>:
800232f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800232f4:	e28db000 	add	fp, sp, #0
800232f8:	e24dd014 	sub	sp, sp, #20
800232fc:	e50b0010 	str	r0, [fp, #-16]
80023300:	e59f2058 	ldr	r2, [pc, #88]	; 80023360 <pic_init+0x70>
80023304:	e51b3010 	ldr	r3, [fp, #-16]
80023308:	e5823000 	str	r3, [r2]
8002330c:	e59f304c 	ldr	r3, [pc, #76]	; 80023360 <pic_init+0x70>
80023310:	e5933000 	ldr	r3, [r3]
80023314:	e2833014 	add	r3, r3, #20
80023318:	e3e02000 	mvn	r2, #0
8002331c:	e5832000 	str	r2, [r3]
80023320:	e3a03000 	mov	r3, #0
80023324:	e50b3008 	str	r3, [fp, #-8]
80023328:	ea000006 	b	80023348 <pic_init+0x58>
8002332c:	e59f2030 	ldr	r2, [pc, #48]	; 80023364 <pic_init+0x74>
80023330:	e51b3008 	ldr	r3, [fp, #-8]
80023334:	e59f102c 	ldr	r1, [pc, #44]	; 80023368 <pic_init+0x78>
80023338:	e7821103 	str	r1, [r2, r3, lsl #2]
8002333c:	e51b3008 	ldr	r3, [fp, #-8]
80023340:	e2833001 	add	r3, r3, #1
80023344:	e50b3008 	str	r3, [fp, #-8]
80023348:	e51b3008 	ldr	r3, [fp, #-8]
8002334c:	e353001f 	cmp	r3, #31
80023350:	dafffff5 	ble	8002332c <pic_init+0x3c>
80023354:	e24bd000 	sub	sp, fp, #0
80023358:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002335c:	e12fff1e 	bx	lr
80023360:	800ad584 	.word	0x800ad584
80023364:	800ad588 	.word	0x800ad588
80023368:	800232c4 	.word	0x800232c4

8002336c <pic_enable>:
8002336c:	e92d4800 	push	{fp, lr}
80023370:	e28db004 	add	fp, sp, #4
80023374:	e24dd008 	sub	sp, sp, #8
80023378:	e50b0008 	str	r0, [fp, #-8]
8002337c:	e50b100c 	str	r1, [fp, #-12]
80023380:	e51b3008 	ldr	r3, [fp, #-8]
80023384:	e3530000 	cmp	r3, #0
80023388:	ba000002 	blt	80023398 <pic_enable+0x2c>
8002338c:	e51b3008 	ldr	r3, [fp, #-8]
80023390:	e353001f 	cmp	r3, #31
80023394:	da000001 	ble	800233a0 <pic_enable+0x34>
80023398:	e59f0034 	ldr	r0, [pc, #52]	; 800233d4 <pic_enable+0x68>
8002339c:	ebfff4cf 	bl	800206e0 <panic>
800233a0:	e59f1030 	ldr	r1, [pc, #48]	; 800233d8 <pic_enable+0x6c>
800233a4:	e51b3008 	ldr	r3, [fp, #-8]
800233a8:	e51b200c 	ldr	r2, [fp, #-12]
800233ac:	e7812103 	str	r2, [r1, r3, lsl #2]
800233b0:	e59f3024 	ldr	r3, [pc, #36]	; 800233dc <pic_enable+0x70>
800233b4:	e5933000 	ldr	r3, [r3]
800233b8:	e2833010 	add	r3, r3, #16
800233bc:	e3a01001 	mov	r1, #1
800233c0:	e51b2008 	ldr	r2, [fp, #-8]
800233c4:	e1a02211 	lsl	r2, r1, r2
800233c8:	e5832000 	str	r2, [r3]
800233cc:	e24bd004 	sub	sp, fp, #4
800233d0:	e8bd8800 	pop	{fp, pc}
800233d4:	80028eac 	.word	0x80028eac
800233d8:	800ad588 	.word	0x800ad588
800233dc:	800ad584 	.word	0x800ad584

800233e0 <pic_disable>:
800233e0:	e92d4800 	push	{fp, lr}
800233e4:	e28db004 	add	fp, sp, #4
800233e8:	e24dd008 	sub	sp, sp, #8
800233ec:	e50b0008 	str	r0, [fp, #-8]
800233f0:	e51b3008 	ldr	r3, [fp, #-8]
800233f4:	e3530000 	cmp	r3, #0
800233f8:	ba000002 	blt	80023408 <pic_disable+0x28>
800233fc:	e51b3008 	ldr	r3, [fp, #-8]
80023400:	e353001f 	cmp	r3, #31
80023404:	da000001 	ble	80023410 <pic_disable+0x30>
80023408:	e59f0034 	ldr	r0, [pc, #52]	; 80023444 <pic_disable+0x64>
8002340c:	ebfff4b3 	bl	800206e0 <panic>
80023410:	e59f3030 	ldr	r3, [pc, #48]	; 80023448 <pic_disable+0x68>
80023414:	e5933000 	ldr	r3, [r3]
80023418:	e2833014 	add	r3, r3, #20
8002341c:	e3a01001 	mov	r1, #1
80023420:	e51b2008 	ldr	r2, [fp, #-8]
80023424:	e1a02211 	lsl	r2, r1, r2
80023428:	e5832000 	str	r2, [r3]
8002342c:	e59f2018 	ldr	r2, [pc, #24]	; 8002344c <pic_disable+0x6c>
80023430:	e51b3008 	ldr	r3, [fp, #-8]
80023434:	e59f1014 	ldr	r1, [pc, #20]	; 80023450 <pic_disable+0x70>
80023438:	e7821103 	str	r1, [r2, r3, lsl #2]
8002343c:	e24bd004 	sub	sp, fp, #4
80023440:	e8bd8800 	pop	{fp, pc}
80023444:	80028eac 	.word	0x80028eac
80023448:	800ad584 	.word	0x800ad584
8002344c:	800ad588 	.word	0x800ad588
80023450:	800232c4 	.word	0x800232c4

80023454 <pic_dispatch>:
80023454:	e92d4800 	push	{fp, lr}
80023458:	e28db004 	add	fp, sp, #4
8002345c:	e24dd010 	sub	sp, sp, #16
80023460:	e50b0010 	str	r0, [fp, #-16]
80023464:	e59f307c 	ldr	r3, [pc, #124]	; 800234e8 <pic_dispatch+0x94>
80023468:	e5933000 	ldr	r3, [r3]
8002346c:	e5933000 	ldr	r3, [r3]
80023470:	e50b300c 	str	r3, [fp, #-12]
80023474:	e3a03000 	mov	r3, #0
80023478:	e50b3008 	str	r3, [fp, #-8]
8002347c:	ea000010 	b	800234c4 <pic_dispatch+0x70>
80023480:	e3a02001 	mov	r2, #1
80023484:	e51b3008 	ldr	r3, [fp, #-8]
80023488:	e1a03312 	lsl	r3, r2, r3
8002348c:	e1a02003 	mov	r2, r3
80023490:	e51b300c 	ldr	r3, [fp, #-12]
80023494:	e0033002 	and	r3, r3, r2
80023498:	e3530000 	cmp	r3, #0
8002349c:	0a000005 	beq	800234b8 <pic_dispatch+0x64>
800234a0:	e59f2044 	ldr	r2, [pc, #68]	; 800234ec <pic_dispatch+0x98>
800234a4:	e51b3008 	ldr	r3, [fp, #-8]
800234a8:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800234ac:	e51b0010 	ldr	r0, [fp, #-16]
800234b0:	e51b1008 	ldr	r1, [fp, #-8]
800234b4:	e12fff33 	blx	r3
800234b8:	e51b3008 	ldr	r3, [fp, #-8]
800234bc:	e2833001 	add	r3, r3, #1
800234c0:	e50b3008 	str	r3, [fp, #-8]
800234c4:	e51b3008 	ldr	r3, [fp, #-8]
800234c8:	e353001f 	cmp	r3, #31
800234cc:	daffffeb 	ble	80023480 <pic_dispatch+0x2c>
800234d0:	e59f3010 	ldr	r3, [pc, #16]	; 800234e8 <pic_dispatch+0x94>
800234d4:	e5933000 	ldr	r3, [r3]
800234d8:	e5933000 	ldr	r3, [r3]
800234dc:	e50b300c 	str	r3, [fp, #-12]
800234e0:	e24bd004 	sub	sp, fp, #4
800234e4:	e8bd8800 	pop	{fp, pc}
800234e8:	800ad584 	.word	0x800ad584
800234ec:	800ad588 	.word	0x800ad588

800234f0 <pipealloc>:
800234f0:	e92d4800 	push	{fp, lr}
800234f4:	e28db004 	add	fp, sp, #4
800234f8:	e24dd010 	sub	sp, sp, #16
800234fc:	e50b0010 	str	r0, [fp, #-16]
80023500:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80023504:	e3a03000 	mov	r3, #0
80023508:	e50b3008 	str	r3, [fp, #-8]
8002350c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023510:	e3a02000 	mov	r2, #0
80023514:	e5832000 	str	r2, [r3]
80023518:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002351c:	e5932000 	ldr	r2, [r3]
80023520:	e51b3010 	ldr	r3, [fp, #-16]
80023524:	e5832000 	str	r2, [r3]
80023528:	ebfff6e1 	bl	800210b4 <filealloc>
8002352c:	e1a02000 	mov	r2, r0
80023530:	e51b3010 	ldr	r3, [fp, #-16]
80023534:	e5832000 	str	r2, [r3]
80023538:	e51b3010 	ldr	r3, [fp, #-16]
8002353c:	e5933000 	ldr	r3, [r3]
80023540:	e3530000 	cmp	r3, #0
80023544:	0a000043 	beq	80023658 <pipealloc+0x168>
80023548:	ebfff6d9 	bl	800210b4 <filealloc>
8002354c:	e1a02000 	mov	r2, r0
80023550:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023554:	e5832000 	str	r2, [r3]
80023558:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002355c:	e5933000 	ldr	r3, [r3]
80023560:	e3530000 	cmp	r3, #0
80023564:	0a00003b 	beq	80023658 <pipealloc+0x168>
80023568:	e3a00f91 	mov	r0, #580	; 0x244
8002356c:	eb001503 	bl	80028980 <get_order>
80023570:	e1a03000 	mov	r3, r0
80023574:	e1a00003 	mov	r0, r3
80023578:	eb00147a 	bl	80028768 <kmalloc>
8002357c:	e50b0008 	str	r0, [fp, #-8]
80023580:	e51b3008 	ldr	r3, [fp, #-8]
80023584:	e3530000 	cmp	r3, #0
80023588:	1a000000 	bne	80023590 <pipealloc+0xa0>
8002358c:	ea000031 	b	80023658 <pipealloc+0x168>
80023590:	e51b3008 	ldr	r3, [fp, #-8]
80023594:	e3a02001 	mov	r2, #1
80023598:	e583223c 	str	r2, [r3, #572]	; 0x23c
8002359c:	e51b3008 	ldr	r3, [fp, #-8]
800235a0:	e3a02001 	mov	r2, #1
800235a4:	e5832240 	str	r2, [r3, #576]	; 0x240
800235a8:	e51b3008 	ldr	r3, [fp, #-8]
800235ac:	e3a02000 	mov	r2, #0
800235b0:	e5832238 	str	r2, [r3, #568]	; 0x238
800235b4:	e51b3008 	ldr	r3, [fp, #-8]
800235b8:	e3a02000 	mov	r2, #0
800235bc:	e5832234 	str	r2, [r3, #564]	; 0x234
800235c0:	e51b3008 	ldr	r3, [fp, #-8]
800235c4:	e1a00003 	mov	r0, r3
800235c8:	e59f10fc 	ldr	r1, [pc, #252]	; 800236cc <pipealloc+0x1dc>
800235cc:	eb000484 	bl	800247e4 <initlock>
800235d0:	e51b3010 	ldr	r3, [fp, #-16]
800235d4:	e5933000 	ldr	r3, [r3]
800235d8:	e3a02001 	mov	r2, #1
800235dc:	e5c32000 	strb	r2, [r3]
800235e0:	e51b3010 	ldr	r3, [fp, #-16]
800235e4:	e5933000 	ldr	r3, [r3]
800235e8:	e3a02001 	mov	r2, #1
800235ec:	e5c32008 	strb	r2, [r3, #8]
800235f0:	e51b3010 	ldr	r3, [fp, #-16]
800235f4:	e5933000 	ldr	r3, [r3]
800235f8:	e3a02000 	mov	r2, #0
800235fc:	e5c32009 	strb	r2, [r3, #9]
80023600:	e51b3010 	ldr	r3, [fp, #-16]
80023604:	e5933000 	ldr	r3, [r3]
80023608:	e51b2008 	ldr	r2, [fp, #-8]
8002360c:	e583200c 	str	r2, [r3, #12]
80023610:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023614:	e5933000 	ldr	r3, [r3]
80023618:	e3a02001 	mov	r2, #1
8002361c:	e5c32000 	strb	r2, [r3]
80023620:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023624:	e5933000 	ldr	r3, [r3]
80023628:	e3a02000 	mov	r2, #0
8002362c:	e5c32008 	strb	r2, [r3, #8]
80023630:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023634:	e5933000 	ldr	r3, [r3]
80023638:	e3a02001 	mov	r2, #1
8002363c:	e5c32009 	strb	r2, [r3, #9]
80023640:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023644:	e5933000 	ldr	r3, [r3]
80023648:	e51b2008 	ldr	r2, [fp, #-8]
8002364c:	e583200c 	str	r2, [r3, #12]
80023650:	e3a03000 	mov	r3, #0
80023654:	ea000019 	b	800236c0 <pipealloc+0x1d0>
80023658:	e51b3008 	ldr	r3, [fp, #-8]
8002365c:	e3530000 	cmp	r3, #0
80023660:	0a000005 	beq	8002367c <pipealloc+0x18c>
80023664:	e3a00f91 	mov	r0, #580	; 0x244
80023668:	eb0014c4 	bl	80028980 <get_order>
8002366c:	e1a03000 	mov	r3, r0
80023670:	e51b0008 	ldr	r0, [fp, #-8]
80023674:	e1a01003 	mov	r1, r3
80023678:	eb00148f 	bl	800288bc <kfree>
8002367c:	e51b3010 	ldr	r3, [fp, #-16]
80023680:	e5933000 	ldr	r3, [r3]
80023684:	e3530000 	cmp	r3, #0
80023688:	0a000003 	beq	8002369c <pipealloc+0x1ac>
8002368c:	e51b3010 	ldr	r3, [fp, #-16]
80023690:	e5933000 	ldr	r3, [r3]
80023694:	e1a00003 	mov	r0, r3
80023698:	ebfff6c1 	bl	800211a4 <fileclose>
8002369c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800236a0:	e5933000 	ldr	r3, [r3]
800236a4:	e3530000 	cmp	r3, #0
800236a8:	0a000003 	beq	800236bc <pipealloc+0x1cc>
800236ac:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800236b0:	e5933000 	ldr	r3, [r3]
800236b4:	e1a00003 	mov	r0, r3
800236b8:	ebfff6b9 	bl	800211a4 <fileclose>
800236bc:	e3e03000 	mvn	r3, #0
800236c0:	e1a00003 	mov	r0, r3
800236c4:	e24bd004 	sub	sp, fp, #4
800236c8:	e8bd8800 	pop	{fp, pc}
800236cc:	80028ec8 	.word	0x80028ec8

800236d0 <pipeclose>:
800236d0:	e92d4800 	push	{fp, lr}
800236d4:	e28db004 	add	fp, sp, #4
800236d8:	e24dd008 	sub	sp, sp, #8
800236dc:	e50b0008 	str	r0, [fp, #-8]
800236e0:	e50b100c 	str	r1, [fp, #-12]
800236e4:	e51b3008 	ldr	r3, [fp, #-8]
800236e8:	e1a00003 	mov	r0, r3
800236ec:	eb00044d 	bl	80024828 <acquire>
800236f0:	e51b300c 	ldr	r3, [fp, #-12]
800236f4:	e3530000 	cmp	r3, #0
800236f8:	0a000007 	beq	8002371c <pipeclose+0x4c>
800236fc:	e51b3008 	ldr	r3, [fp, #-8]
80023700:	e3a02000 	mov	r2, #0
80023704:	e5832240 	str	r2, [r3, #576]	; 0x240
80023708:	e51b3008 	ldr	r3, [fp, #-8]
8002370c:	e2833f8d 	add	r3, r3, #564	; 0x234
80023710:	e1a00003 	mov	r0, r3
80023714:	eb0003ba 	bl	80024604 <wakeup>
80023718:	ea000006 	b	80023738 <pipeclose+0x68>
8002371c:	e51b3008 	ldr	r3, [fp, #-8]
80023720:	e3a02000 	mov	r2, #0
80023724:	e583223c 	str	r2, [r3, #572]	; 0x23c
80023728:	e51b3008 	ldr	r3, [fp, #-8]
8002372c:	e2833f8e 	add	r3, r3, #568	; 0x238
80023730:	e1a00003 	mov	r0, r3
80023734:	eb0003b2 	bl	80024604 <wakeup>
80023738:	e51b3008 	ldr	r3, [fp, #-8]
8002373c:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80023740:	e3530000 	cmp	r3, #0
80023744:	1a00000d 	bne	80023780 <pipeclose+0xb0>
80023748:	e51b3008 	ldr	r3, [fp, #-8]
8002374c:	e5933240 	ldr	r3, [r3, #576]	; 0x240
80023750:	e3530000 	cmp	r3, #0
80023754:	1a000009 	bne	80023780 <pipeclose+0xb0>
80023758:	e51b3008 	ldr	r3, [fp, #-8]
8002375c:	e1a00003 	mov	r0, r3
80023760:	eb00043a 	bl	80024850 <release>
80023764:	e3a00f91 	mov	r0, #580	; 0x244
80023768:	eb001484 	bl	80028980 <get_order>
8002376c:	e1a03000 	mov	r3, r0
80023770:	e51b0008 	ldr	r0, [fp, #-8]
80023774:	e1a01003 	mov	r1, r3
80023778:	eb00144f 	bl	800288bc <kfree>
8002377c:	ea000002 	b	8002378c <pipeclose+0xbc>
80023780:	e51b3008 	ldr	r3, [fp, #-8]
80023784:	e1a00003 	mov	r0, r3
80023788:	eb000430 	bl	80024850 <release>
8002378c:	e24bd004 	sub	sp, fp, #4
80023790:	e8bd8800 	pop	{fp, pc}

80023794 <pipewrite>:
80023794:	e92d4800 	push	{fp, lr}
80023798:	e28db004 	add	fp, sp, #4
8002379c:	e24dd018 	sub	sp, sp, #24
800237a0:	e50b0010 	str	r0, [fp, #-16]
800237a4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800237a8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800237ac:	e51b3010 	ldr	r3, [fp, #-16]
800237b0:	e1a00003 	mov	r0, r3
800237b4:	eb00041b 	bl	80024828 <acquire>
800237b8:	e3a03000 	mov	r3, #0
800237bc:	e50b3008 	str	r3, [fp, #-8]
800237c0:	ea00002c 	b	80023878 <pipewrite+0xe4>
800237c4:	ea000012 	b	80023814 <pipewrite+0x80>
800237c8:	e51b3010 	ldr	r3, [fp, #-16]
800237cc:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
800237d0:	e3530000 	cmp	r3, #0
800237d4:	1a000004 	bne	800237ec <pipewrite+0x58>
800237d8:	e51b3010 	ldr	r3, [fp, #-16]
800237dc:	e1a00003 	mov	r0, r3
800237e0:	eb00041a 	bl	80024850 <release>
800237e4:	e3e03000 	mvn	r3, #0
800237e8:	ea00002e 	b	800238a8 <pipewrite+0x114>
800237ec:	e51b3010 	ldr	r3, [fp, #-16]
800237f0:	e2833f8d 	add	r3, r3, #564	; 0x234
800237f4:	e1a00003 	mov	r0, r3
800237f8:	eb000381 	bl	80024604 <wakeup>
800237fc:	e51b3010 	ldr	r3, [fp, #-16]
80023800:	e2832f8e 	add	r2, r3, #568	; 0x238
80023804:	e51b3010 	ldr	r3, [fp, #-16]
80023808:	e1a00002 	mov	r0, r2
8002380c:	e1a01003 	mov	r1, r3
80023810:	eb000329 	bl	800244bc <sleep>
80023814:	e51b3010 	ldr	r3, [fp, #-16]
80023818:	e5932238 	ldr	r2, [r3, #568]	; 0x238
8002381c:	e51b3010 	ldr	r3, [fp, #-16]
80023820:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80023824:	e2833c02 	add	r3, r3, #512	; 0x200
80023828:	e1520003 	cmp	r2, r3
8002382c:	0affffe5 	beq	800237c8 <pipewrite+0x34>
80023830:	e51b3010 	ldr	r3, [fp, #-16]
80023834:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80023838:	e2831001 	add	r1, r3, #1
8002383c:	e51b2010 	ldr	r2, [fp, #-16]
80023840:	e5821238 	str	r1, [r2, #568]	; 0x238
80023844:	e1a03b83 	lsl	r3, r3, #23
80023848:	e1a03ba3 	lsr	r3, r3, #23
8002384c:	e51b2008 	ldr	r2, [fp, #-8]
80023850:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80023854:	e0812002 	add	r2, r1, r2
80023858:	e5d21000 	ldrb	r1, [r2]
8002385c:	e51b2010 	ldr	r2, [fp, #-16]
80023860:	e0823003 	add	r3, r2, r3
80023864:	e1a02001 	mov	r2, r1
80023868:	e5c32034 	strb	r2, [r3, #52]	; 0x34
8002386c:	e51b3008 	ldr	r3, [fp, #-8]
80023870:	e2833001 	add	r3, r3, #1
80023874:	e50b3008 	str	r3, [fp, #-8]
80023878:	e51b2008 	ldr	r2, [fp, #-8]
8002387c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023880:	e1520003 	cmp	r2, r3
80023884:	baffffce 	blt	800237c4 <pipewrite+0x30>
80023888:	e51b3010 	ldr	r3, [fp, #-16]
8002388c:	e2833f8d 	add	r3, r3, #564	; 0x234
80023890:	e1a00003 	mov	r0, r3
80023894:	eb00035a 	bl	80024604 <wakeup>
80023898:	e51b3010 	ldr	r3, [fp, #-16]
8002389c:	e1a00003 	mov	r0, r3
800238a0:	eb0003ea 	bl	80024850 <release>
800238a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800238a8:	e1a00003 	mov	r0, r3
800238ac:	e24bd004 	sub	sp, fp, #4
800238b0:	e8bd8800 	pop	{fp, pc}

800238b4 <piperead>:
800238b4:	e92d4800 	push	{fp, lr}
800238b8:	e28db004 	add	fp, sp, #4
800238bc:	e24dd018 	sub	sp, sp, #24
800238c0:	e50b0010 	str	r0, [fp, #-16]
800238c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800238c8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800238cc:	e51b3010 	ldr	r3, [fp, #-16]
800238d0:	e1a00003 	mov	r0, r3
800238d4:	eb0003d3 	bl	80024828 <acquire>
800238d8:	ea00000f 	b	8002391c <piperead+0x68>
800238dc:	e59f3108 	ldr	r3, [pc, #264]	; 800239ec <piperead+0x138>
800238e0:	e5933000 	ldr	r3, [r3]
800238e4:	e5933024 	ldr	r3, [r3, #36]	; 0x24
800238e8:	e3530000 	cmp	r3, #0
800238ec:	0a000004 	beq	80023904 <piperead+0x50>
800238f0:	e51b3010 	ldr	r3, [fp, #-16]
800238f4:	e1a00003 	mov	r0, r3
800238f8:	eb0003d4 	bl	80024850 <release>
800238fc:	e3e03000 	mvn	r3, #0
80023900:	ea000036 	b	800239e0 <piperead+0x12c>
80023904:	e51b3010 	ldr	r3, [fp, #-16]
80023908:	e2832f8d 	add	r2, r3, #564	; 0x234
8002390c:	e51b3010 	ldr	r3, [fp, #-16]
80023910:	e1a00002 	mov	r0, r2
80023914:	e1a01003 	mov	r1, r3
80023918:	eb0002e7 	bl	800244bc <sleep>
8002391c:	e51b3010 	ldr	r3, [fp, #-16]
80023920:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80023924:	e51b3010 	ldr	r3, [fp, #-16]
80023928:	e5933238 	ldr	r3, [r3, #568]	; 0x238
8002392c:	e1520003 	cmp	r2, r3
80023930:	1a000003 	bne	80023944 <piperead+0x90>
80023934:	e51b3010 	ldr	r3, [fp, #-16]
80023938:	e5933240 	ldr	r3, [r3, #576]	; 0x240
8002393c:	e3530000 	cmp	r3, #0
80023940:	1affffe5 	bne	800238dc <piperead+0x28>
80023944:	e3a03000 	mov	r3, #0
80023948:	e50b3008 	str	r3, [fp, #-8]
8002394c:	ea000017 	b	800239b0 <piperead+0xfc>
80023950:	e51b3010 	ldr	r3, [fp, #-16]
80023954:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80023958:	e51b3010 	ldr	r3, [fp, #-16]
8002395c:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80023960:	e1520003 	cmp	r2, r3
80023964:	1a000000 	bne	8002396c <piperead+0xb8>
80023968:	ea000014 	b	800239c0 <piperead+0x10c>
8002396c:	e51b3008 	ldr	r3, [fp, #-8]
80023970:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80023974:	e0822003 	add	r2, r2, r3
80023978:	e51b3010 	ldr	r3, [fp, #-16]
8002397c:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80023980:	e2830001 	add	r0, r3, #1
80023984:	e51b1010 	ldr	r1, [fp, #-16]
80023988:	e5810234 	str	r0, [r1, #564]	; 0x234
8002398c:	e1a03b83 	lsl	r3, r3, #23
80023990:	e1a03ba3 	lsr	r3, r3, #23
80023994:	e51b1010 	ldr	r1, [fp, #-16]
80023998:	e0813003 	add	r3, r1, r3
8002399c:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
800239a0:	e5c23000 	strb	r3, [r2]
800239a4:	e51b3008 	ldr	r3, [fp, #-8]
800239a8:	e2833001 	add	r3, r3, #1
800239ac:	e50b3008 	str	r3, [fp, #-8]
800239b0:	e51b2008 	ldr	r2, [fp, #-8]
800239b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800239b8:	e1520003 	cmp	r2, r3
800239bc:	baffffe3 	blt	80023950 <piperead+0x9c>
800239c0:	e51b3010 	ldr	r3, [fp, #-16]
800239c4:	e2833f8e 	add	r3, r3, #568	; 0x238
800239c8:	e1a00003 	mov	r0, r3
800239cc:	eb00030c 	bl	80024604 <wakeup>
800239d0:	e51b3010 	ldr	r3, [fp, #-16]
800239d4:	e1a00003 	mov	r0, r3
800239d8:	eb00039c 	bl	80024850 <release>
800239dc:	e51b3008 	ldr	r3, [fp, #-8]
800239e0:	e1a00003 	mov	r0, r3
800239e4:	e24bd004 	sub	sp, fp, #4
800239e8:	e8bd8800 	pop	{fp, pc}
800239ec:	800ad60c 	.word	0x800ad60c

800239f0 <pinit>:
800239f0:	e92d4800 	push	{fp, lr}
800239f4:	e28db004 	add	fp, sp, #4
800239f8:	e59f0008 	ldr	r0, [pc, #8]	; 80023a08 <pinit+0x18>
800239fc:	e59f1008 	ldr	r1, [pc, #8]	; 80023a0c <pinit+0x1c>
80023a00:	eb000377 	bl	800247e4 <initlock>
80023a04:	e8bd8800 	pop	{fp, pc}
80023a08:	800ad610 	.word	0x800ad610
80023a0c:	80028ed0 	.word	0x80028ed0

80023a10 <allocproc>:
80023a10:	e92d4800 	push	{fp, lr}
80023a14:	e28db004 	add	fp, sp, #4
80023a18:	e24dd008 	sub	sp, sp, #8
80023a1c:	e59f0168 	ldr	r0, [pc, #360]	; 80023b8c <allocproc+0x17c>
80023a20:	eb000380 	bl	80024828 <acquire>
80023a24:	e59f3164 	ldr	r3, [pc, #356]	; 80023b90 <allocproc+0x180>
80023a28:	e50b3008 	str	r3, [fp, #-8]
80023a2c:	ea00001c 	b	80023aa4 <allocproc+0x94>
80023a30:	e51b3008 	ldr	r3, [fp, #-8]
80023a34:	e5d3300c 	ldrb	r3, [r3, #12]
80023a38:	e3530000 	cmp	r3, #0
80023a3c:	1a000015 	bne	80023a98 <allocproc+0x88>
80023a40:	e1a00000 	nop			; (mov r0, r0)
80023a44:	e51b3008 	ldr	r3, [fp, #-8]
80023a48:	e3a02001 	mov	r2, #1
80023a4c:	e5c3200c 	strb	r2, [r3, #12]
80023a50:	e59f313c 	ldr	r3, [pc, #316]	; 80023b94 <allocproc+0x184>
80023a54:	e5933000 	ldr	r3, [r3]
80023a58:	e2832001 	add	r2, r3, #1
80023a5c:	e59f1130 	ldr	r1, [pc, #304]	; 80023b94 <allocproc+0x184>
80023a60:	e5812000 	str	r2, [r1]
80023a64:	e51b2008 	ldr	r2, [fp, #-8]
80023a68:	e5823010 	str	r3, [r2, #16]
80023a6c:	e59f0118 	ldr	r0, [pc, #280]	; 80023b8c <allocproc+0x17c>
80023a70:	eb000376 	bl	80024850 <release>
80023a74:	eb0013ba 	bl	80028964 <alloc_page>
80023a78:	e1a02000 	mov	r2, r0
80023a7c:	e51b3008 	ldr	r3, [fp, #-8]
80023a80:	e5832008 	str	r2, [r3, #8]
80023a84:	e51b3008 	ldr	r3, [fp, #-8]
80023a88:	e5933008 	ldr	r3, [r3, #8]
80023a8c:	e3530000 	cmp	r3, #0
80023a90:	1a000010 	bne	80023ad8 <allocproc+0xc8>
80023a94:	ea00000a 	b	80023ac4 <allocproc+0xb4>
80023a98:	e51b3008 	ldr	r3, [fp, #-8]
80023a9c:	e283307c 	add	r3, r3, #124	; 0x7c
80023aa0:	e50b3008 	str	r3, [fp, #-8]
80023aa4:	e51b3008 	ldr	r3, [fp, #-8]
80023aa8:	e59f20e8 	ldr	r2, [pc, #232]	; 80023b98 <allocproc+0x188>
80023aac:	e1530002 	cmp	r3, r2
80023ab0:	3affffde 	bcc	80023a30 <allocproc+0x20>
80023ab4:	e59f00d0 	ldr	r0, [pc, #208]	; 80023b8c <allocproc+0x17c>
80023ab8:	eb000364 	bl	80024850 <release>
80023abc:	e3a03000 	mov	r3, #0
80023ac0:	ea00002e 	b	80023b80 <allocproc+0x170>
80023ac4:	e51b3008 	ldr	r3, [fp, #-8]
80023ac8:	e3a02000 	mov	r2, #0
80023acc:	e5c3200c 	strb	r2, [r3, #12]
80023ad0:	e3a03000 	mov	r3, #0
80023ad4:	ea000029 	b	80023b80 <allocproc+0x170>
80023ad8:	e51b3008 	ldr	r3, [fp, #-8]
80023adc:	e5933008 	ldr	r3, [r3, #8]
80023ae0:	e2833a01 	add	r3, r3, #4096	; 0x1000
80023ae4:	e50b300c 	str	r3, [fp, #-12]
80023ae8:	e51b300c 	ldr	r3, [fp, #-12]
80023aec:	e2433048 	sub	r3, r3, #72	; 0x48
80023af0:	e50b300c 	str	r3, [fp, #-12]
80023af4:	e51b3008 	ldr	r3, [fp, #-8]
80023af8:	e51b200c 	ldr	r2, [fp, #-12]
80023afc:	e5832018 	str	r2, [r3, #24]
80023b00:	e51b300c 	ldr	r3, [fp, #-12]
80023b04:	e2433004 	sub	r3, r3, #4
80023b08:	e50b300c 	str	r3, [fp, #-12]
80023b0c:	e59f2088 	ldr	r2, [pc, #136]	; 80023b9c <allocproc+0x18c>
80023b10:	e51b300c 	ldr	r3, [fp, #-12]
80023b14:	e5832000 	str	r2, [r3]
80023b18:	e51b300c 	ldr	r3, [fp, #-12]
80023b1c:	e2433004 	sub	r3, r3, #4
80023b20:	e50b300c 	str	r3, [fp, #-12]
80023b24:	e51b3008 	ldr	r3, [fp, #-8]
80023b28:	e5933008 	ldr	r3, [r3, #8]
80023b2c:	e2832a01 	add	r2, r3, #4096	; 0x1000
80023b30:	e51b300c 	ldr	r3, [fp, #-12]
80023b34:	e5832000 	str	r2, [r3]
80023b38:	e51b300c 	ldr	r3, [fp, #-12]
80023b3c:	e2433028 	sub	r3, r3, #40	; 0x28
80023b40:	e50b300c 	str	r3, [fp, #-12]
80023b44:	e51b3008 	ldr	r3, [fp, #-8]
80023b48:	e51b200c 	ldr	r2, [fp, #-12]
80023b4c:	e583201c 	str	r2, [r3, #28]
80023b50:	e51b3008 	ldr	r3, [fp, #-8]
80023b54:	e593301c 	ldr	r3, [r3, #28]
80023b58:	e1a00003 	mov	r0, r3
80023b5c:	e3a01000 	mov	r1, #0
80023b60:	e3a02028 	mov	r2, #40	; 0x28
80023b64:	eb00034d 	bl	800248a0 <memset>
80023b68:	e51b3008 	ldr	r3, [fp, #-8]
80023b6c:	e593301c 	ldr	r3, [r3, #28]
80023b70:	e59f2028 	ldr	r2, [pc, #40]	; 80023ba0 <allocproc+0x190>
80023b74:	e2822004 	add	r2, r2, #4
80023b78:	e5832024 	str	r2, [r3, #36]	; 0x24
80023b7c:	e51b3008 	ldr	r3, [fp, #-8]
80023b80:	e1a00003 	mov	r0, r3
80023b84:	e24bd004 	sub	sp, fp, #4
80023b88:	e8bd8800 	pop	{fp, pc}
80023b8c:	800ad610 	.word	0x800ad610
80023b90:	800ad644 	.word	0x800ad644
80023b94:	8002a014 	.word	0x8002a014
80023b98:	800af544 	.word	0x800af544
80023b9c:	80027e90 	.word	0x80027e90
80023ba0:	80024480 	.word	0x80024480

80023ba4 <error_init>:
80023ba4:	e92d4800 	push	{fp, lr}
80023ba8:	e28db004 	add	fp, sp, #4
80023bac:	e59f0000 	ldr	r0, [pc]	; 80023bb4 <error_init+0x10>
80023bb0:	ebfff2ca 	bl	800206e0 <panic>
80023bb4:	80028ed8 	.word	0x80028ed8

80023bb8 <userinit>:
80023bb8:	e92d4810 	push	{r4, fp, lr}
80023bbc:	e28db008 	add	fp, sp, #8
80023bc0:	e24dd00c 	sub	sp, sp, #12
80023bc4:	ebffff91 	bl	80023a10 <allocproc>
80023bc8:	e50b0010 	str	r0, [fp, #-16]
80023bcc:	e59f20fc 	ldr	r2, [pc, #252]	; 80023cd0 <userinit+0x118>
80023bd0:	e51b3010 	ldr	r3, [fp, #-16]
80023bd4:	e5823000 	str	r3, [r2]
80023bd8:	eb000c43 	bl	80026cec <kpt_alloc>
80023bdc:	e1a02000 	mov	r2, r0
80023be0:	e51b3010 	ldr	r3, [fp, #-16]
80023be4:	e5832004 	str	r2, [r3, #4]
80023be8:	e51b3010 	ldr	r3, [fp, #-16]
80023bec:	e5933004 	ldr	r3, [r3, #4]
80023bf0:	e3530000 	cmp	r3, #0
80023bf4:	1a000001 	bne	80023c00 <userinit+0x48>
80023bf8:	e59f00d4 	ldr	r0, [pc, #212]	; 80023cd4 <userinit+0x11c>
80023bfc:	ebfff2b7 	bl	800206e0 <panic>
80023c00:	e51b3010 	ldr	r3, [fp, #-16]
80023c04:	e5933004 	ldr	r3, [r3, #4]
80023c08:	e59f20c8 	ldr	r2, [pc, #200]	; 80023cd8 <userinit+0x120>
80023c0c:	e1a00003 	mov	r0, r3
80023c10:	e59f10c4 	ldr	r1, [pc, #196]	; 80023cdc <userinit+0x124>
80023c14:	eb000cf2 	bl	80026fe4 <inituvm>
80023c18:	e51b3010 	ldr	r3, [fp, #-16]
80023c1c:	e3a02a01 	mov	r2, #4096	; 0x1000
80023c20:	e5832000 	str	r2, [r3]
80023c24:	e51b3010 	ldr	r3, [fp, #-16]
80023c28:	e5933018 	ldr	r3, [r3, #24]
80023c2c:	e1a00003 	mov	r0, r3
80023c30:	e3a01000 	mov	r1, #0
80023c34:	e3a02048 	mov	r2, #72	; 0x48
80023c38:	eb000318 	bl	800248a0 <memset>
80023c3c:	e51b3010 	ldr	r3, [fp, #-16]
80023c40:	e5933018 	ldr	r3, [r3, #24]
80023c44:	e59f2094 	ldr	r2, [pc, #148]	; 80023ce0 <userinit+0x128>
80023c48:	e5832008 	str	r2, [r3, #8]
80023c4c:	e51b3010 	ldr	r3, [fp, #-16]
80023c50:	e5934018 	ldr	r4, [r3, #24]
80023c54:	eb000f05 	bl	80027870 <spsr_usr>
80023c58:	e1a03000 	mov	r3, r0
80023c5c:	e584300c 	str	r3, [r4, #12]
80023c60:	e51b3010 	ldr	r3, [fp, #-16]
80023c64:	e5933018 	ldr	r3, [r3, #24]
80023c68:	e3a02a01 	mov	r2, #4096	; 0x1000
80023c6c:	e5832000 	str	r2, [r3]
80023c70:	e51b3010 	ldr	r3, [fp, #-16]
80023c74:	e5933018 	ldr	r3, [r3, #24]
80023c78:	e3a02000 	mov	r2, #0
80023c7c:	e5832004 	str	r2, [r3, #4]
80023c80:	e51b3010 	ldr	r3, [fp, #-16]
80023c84:	e5933018 	ldr	r3, [r3, #24]
80023c88:	e3a02000 	mov	r2, #0
80023c8c:	e5832044 	str	r2, [r3, #68]	; 0x44
80023c90:	e51b3010 	ldr	r3, [fp, #-16]
80023c94:	e283306c 	add	r3, r3, #108	; 0x6c
80023c98:	e1a00003 	mov	r0, r3
80023c9c:	e59f1040 	ldr	r1, [pc, #64]	; 80023ce4 <userinit+0x12c>
80023ca0:	e3a02010 	mov	r2, #16
80023ca4:	eb000411 	bl	80024cf0 <safestrcpy>
80023ca8:	e59f0038 	ldr	r0, [pc, #56]	; 80023ce8 <userinit+0x130>
80023cac:	ebfffbed 	bl	80022c68 <namei>
80023cb0:	e1a02000 	mov	r2, r0
80023cb4:	e51b3010 	ldr	r3, [fp, #-16]
80023cb8:	e5832068 	str	r2, [r3, #104]	; 0x68
80023cbc:	e51b3010 	ldr	r3, [fp, #-16]
80023cc0:	e3a02003 	mov	r2, #3
80023cc4:	e5c3200c 	strb	r2, [r3, #12]
80023cc8:	e24bd008 	sub	sp, fp, #8
80023ccc:	e8bd8810 	pop	{r4, fp, pc}
80023cd0:	800ad608 	.word	0x800ad608
80023cd4:	80028ef8 	.word	0x80028ef8
80023cd8:	00000034 	.word	0x00000034
80023cdc:	8002a08c 	.word	0x8002a08c
80023ce0:	80023ba4 	.word	0x80023ba4
80023ce4:	80028f14 	.word	0x80028f14
80023ce8:	80028f20 	.word	0x80028f20

80023cec <growproc>:
80023cec:	e92d4800 	push	{fp, lr}
80023cf0:	e28db004 	add	fp, sp, #4
80023cf4:	e24dd010 	sub	sp, sp, #16
80023cf8:	e50b0010 	str	r0, [fp, #-16]
80023cfc:	e59f30d8 	ldr	r3, [pc, #216]	; 80023ddc <growproc+0xf0>
80023d00:	e5933000 	ldr	r3, [r3]
80023d04:	e5933000 	ldr	r3, [r3]
80023d08:	e50b3008 	str	r3, [fp, #-8]
80023d0c:	e51b3010 	ldr	r3, [fp, #-16]
80023d10:	e3530000 	cmp	r3, #0
80023d14:	da000010 	ble	80023d5c <growproc+0x70>
80023d18:	e59f30bc 	ldr	r3, [pc, #188]	; 80023ddc <growproc+0xf0>
80023d1c:	e5933000 	ldr	r3, [r3]
80023d20:	e5931004 	ldr	r1, [r3, #4]
80023d24:	e51b2010 	ldr	r2, [fp, #-16]
80023d28:	e51b3008 	ldr	r3, [fp, #-8]
80023d2c:	e0823003 	add	r3, r2, r3
80023d30:	e1a00001 	mov	r0, r1
80023d34:	e51b1008 	ldr	r1, [fp, #-8]
80023d38:	e1a02003 	mov	r2, r3
80023d3c:	eb000d17 	bl	800271a0 <allocuvm>
80023d40:	e1a03000 	mov	r3, r0
80023d44:	e50b3008 	str	r3, [fp, #-8]
80023d48:	e51b3008 	ldr	r3, [fp, #-8]
80023d4c:	e3530000 	cmp	r3, #0
80023d50:	1a000015 	bne	80023dac <growproc+0xc0>
80023d54:	e3e03000 	mvn	r3, #0
80023d58:	ea00001c 	b	80023dd0 <growproc+0xe4>
80023d5c:	e51b3010 	ldr	r3, [fp, #-16]
80023d60:	e3530000 	cmp	r3, #0
80023d64:	aa000010 	bge	80023dac <growproc+0xc0>
80023d68:	e59f306c 	ldr	r3, [pc, #108]	; 80023ddc <growproc+0xf0>
80023d6c:	e5933000 	ldr	r3, [r3]
80023d70:	e5931004 	ldr	r1, [r3, #4]
80023d74:	e51b2010 	ldr	r2, [fp, #-16]
80023d78:	e51b3008 	ldr	r3, [fp, #-8]
80023d7c:	e0823003 	add	r3, r2, r3
80023d80:	e1a00001 	mov	r0, r1
80023d84:	e51b1008 	ldr	r1, [fp, #-8]
80023d88:	e1a02003 	mov	r2, r3
80023d8c:	eb000d43 	bl	800272a0 <deallocuvm>
80023d90:	e1a03000 	mov	r3, r0
80023d94:	e50b3008 	str	r3, [fp, #-8]
80023d98:	e51b3008 	ldr	r3, [fp, #-8]
80023d9c:	e3530000 	cmp	r3, #0
80023da0:	1a000001 	bne	80023dac <growproc+0xc0>
80023da4:	e3e03000 	mvn	r3, #0
80023da8:	ea000008 	b	80023dd0 <growproc+0xe4>
80023dac:	e59f3028 	ldr	r3, [pc, #40]	; 80023ddc <growproc+0xf0>
80023db0:	e5933000 	ldr	r3, [r3]
80023db4:	e51b2008 	ldr	r2, [fp, #-8]
80023db8:	e5832000 	str	r2, [r3]
80023dbc:	e59f3018 	ldr	r3, [pc, #24]	; 80023ddc <growproc+0xf0>
80023dc0:	e5933000 	ldr	r3, [r3]
80023dc4:	e1a00003 	mov	r0, r3
80023dc8:	eb000c6f 	bl	80026f8c <switchuvm>
80023dcc:	e3a03000 	mov	r3, #0
80023dd0:	e1a00003 	mov	r0, r3
80023dd4:	e24bd004 	sub	sp, fp, #4
80023dd8:	e8bd8800 	pop	{fp, pc}
80023ddc:	800ad60c 	.word	0x800ad60c

80023de0 <fork>:
80023de0:	e92d4800 	push	{fp, lr}
80023de4:	e28db004 	add	fp, sp, #4
80023de8:	e24dd010 	sub	sp, sp, #16
80023dec:	ebffff07 	bl	80023a10 <allocproc>
80023df0:	e50b000c 	str	r0, [fp, #-12]
80023df4:	e51b300c 	ldr	r3, [fp, #-12]
80023df8:	e3530000 	cmp	r3, #0
80023dfc:	1a000001 	bne	80023e08 <fork+0x28>
80023e00:	e3e03000 	mvn	r3, #0
80023e04:	ea000068 	b	80023fac <fork+0x1cc>
80023e08:	e59f31a8 	ldr	r3, [pc, #424]	; 80023fb8 <fork+0x1d8>
80023e0c:	e5933000 	ldr	r3, [r3]
80023e10:	e5932004 	ldr	r2, [r3, #4]
80023e14:	e59f319c 	ldr	r3, [pc, #412]	; 80023fb8 <fork+0x1d8>
80023e18:	e5933000 	ldr	r3, [r3]
80023e1c:	e5933000 	ldr	r3, [r3]
80023e20:	e1a00002 	mov	r0, r2
80023e24:	e1a01003 	mov	r1, r3
80023e28:	eb000da9 	bl	800274d4 <copyuvm>
80023e2c:	e1a02000 	mov	r2, r0
80023e30:	e51b300c 	ldr	r3, [fp, #-12]
80023e34:	e5832004 	str	r2, [r3, #4]
80023e38:	e51b300c 	ldr	r3, [fp, #-12]
80023e3c:	e5933004 	ldr	r3, [r3, #4]
80023e40:	e3530000 	cmp	r3, #0
80023e44:	1a00000b 	bne	80023e78 <fork+0x98>
80023e48:	e51b300c 	ldr	r3, [fp, #-12]
80023e4c:	e5933008 	ldr	r3, [r3, #8]
80023e50:	e1a00003 	mov	r0, r3
80023e54:	eb0012b9 	bl	80028940 <free_page>
80023e58:	e51b300c 	ldr	r3, [fp, #-12]
80023e5c:	e3a02000 	mov	r2, #0
80023e60:	e5832008 	str	r2, [r3, #8]
80023e64:	e51b300c 	ldr	r3, [fp, #-12]
80023e68:	e3a02000 	mov	r2, #0
80023e6c:	e5c3200c 	strb	r2, [r3, #12]
80023e70:	e3e03000 	mvn	r3, #0
80023e74:	ea00004c 	b	80023fac <fork+0x1cc>
80023e78:	e59f3138 	ldr	r3, [pc, #312]	; 80023fb8 <fork+0x1d8>
80023e7c:	e5933000 	ldr	r3, [r3]
80023e80:	e5932000 	ldr	r2, [r3]
80023e84:	e51b300c 	ldr	r3, [fp, #-12]
80023e88:	e5832000 	str	r2, [r3]
80023e8c:	e59f3124 	ldr	r3, [pc, #292]	; 80023fb8 <fork+0x1d8>
80023e90:	e5932000 	ldr	r2, [r3]
80023e94:	e51b300c 	ldr	r3, [fp, #-12]
80023e98:	e5832014 	str	r2, [r3, #20]
80023e9c:	e51b300c 	ldr	r3, [fp, #-12]
80023ea0:	e5932018 	ldr	r2, [r3, #24]
80023ea4:	e59f310c 	ldr	r3, [pc, #268]	; 80023fb8 <fork+0x1d8>
80023ea8:	e5933000 	ldr	r3, [r3]
80023eac:	e5933018 	ldr	r3, [r3, #24]
80023eb0:	e1a01002 	mov	r1, r2
80023eb4:	e1a02003 	mov	r2, r3
80023eb8:	e3a03048 	mov	r3, #72	; 0x48
80023ebc:	e1a00001 	mov	r0, r1
80023ec0:	e1a01002 	mov	r1, r2
80023ec4:	e1a02003 	mov	r2, r3
80023ec8:	eb000325 	bl	80024b64 <memcpy>
80023ecc:	e51b300c 	ldr	r3, [fp, #-12]
80023ed0:	e5933018 	ldr	r3, [r3, #24]
80023ed4:	e3a02000 	mov	r2, #0
80023ed8:	e5832010 	str	r2, [r3, #16]
80023edc:	e3a03000 	mov	r3, #0
80023ee0:	e50b3008 	str	r3, [fp, #-8]
80023ee4:	ea000015 	b	80023f40 <fork+0x160>
80023ee8:	e59f30c8 	ldr	r3, [pc, #200]	; 80023fb8 <fork+0x1d8>
80023eec:	e5933000 	ldr	r3, [r3]
80023ef0:	e51b2008 	ldr	r2, [fp, #-8]
80023ef4:	e282200a 	add	r2, r2, #10
80023ef8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80023efc:	e3530000 	cmp	r3, #0
80023f00:	0a00000b 	beq	80023f34 <fork+0x154>
80023f04:	e59f30ac 	ldr	r3, [pc, #172]	; 80023fb8 <fork+0x1d8>
80023f08:	e5933000 	ldr	r3, [r3]
80023f0c:	e51b2008 	ldr	r2, [fp, #-8]
80023f10:	e282200a 	add	r2, r2, #10
80023f14:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80023f18:	e1a00003 	mov	r0, r3
80023f1c:	ebfff487 	bl	80021140 <filedup>
80023f20:	e1a01000 	mov	r1, r0
80023f24:	e51b300c 	ldr	r3, [fp, #-12]
80023f28:	e51b2008 	ldr	r2, [fp, #-8]
80023f2c:	e282200a 	add	r2, r2, #10
80023f30:	e7831102 	str	r1, [r3, r2, lsl #2]
80023f34:	e51b3008 	ldr	r3, [fp, #-8]
80023f38:	e2833001 	add	r3, r3, #1
80023f3c:	e50b3008 	str	r3, [fp, #-8]
80023f40:	e51b3008 	ldr	r3, [fp, #-8]
80023f44:	e353000f 	cmp	r3, #15
80023f48:	daffffe6 	ble	80023ee8 <fork+0x108>
80023f4c:	e59f3064 	ldr	r3, [pc, #100]	; 80023fb8 <fork+0x1d8>
80023f50:	e5933000 	ldr	r3, [r3]
80023f54:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80023f58:	e1a00003 	mov	r0, r3
80023f5c:	ebfff751 	bl	80021ca8 <idup>
80023f60:	e1a02000 	mov	r2, r0
80023f64:	e51b300c 	ldr	r3, [fp, #-12]
80023f68:	e5832068 	str	r2, [r3, #104]	; 0x68
80023f6c:	e51b300c 	ldr	r3, [fp, #-12]
80023f70:	e5933010 	ldr	r3, [r3, #16]
80023f74:	e50b3010 	str	r3, [fp, #-16]
80023f78:	e51b300c 	ldr	r3, [fp, #-12]
80023f7c:	e3a02003 	mov	r2, #3
80023f80:	e5c3200c 	strb	r2, [r3, #12]
80023f84:	e51b300c 	ldr	r3, [fp, #-12]
80023f88:	e283206c 	add	r2, r3, #108	; 0x6c
80023f8c:	e59f3024 	ldr	r3, [pc, #36]	; 80023fb8 <fork+0x1d8>
80023f90:	e5933000 	ldr	r3, [r3]
80023f94:	e283306c 	add	r3, r3, #108	; 0x6c
80023f98:	e1a00002 	mov	r0, r2
80023f9c:	e1a01003 	mov	r1, r3
80023fa0:	e3a02010 	mov	r2, #16
80023fa4:	eb000351 	bl	80024cf0 <safestrcpy>
80023fa8:	e51b3010 	ldr	r3, [fp, #-16]
80023fac:	e1a00003 	mov	r0, r3
80023fb0:	e24bd004 	sub	sp, fp, #4
80023fb4:	e8bd8800 	pop	{fp, pc}
80023fb8:	800ad60c 	.word	0x800ad60c

80023fbc <exit>:
80023fbc:	e92d4800 	push	{fp, lr}
80023fc0:	e28db004 	add	fp, sp, #4
80023fc4:	e24dd008 	sub	sp, sp, #8
80023fc8:	e59f3158 	ldr	r3, [pc, #344]	; 80024128 <exit+0x16c>
80023fcc:	e5932000 	ldr	r2, [r3]
80023fd0:	e59f3154 	ldr	r3, [pc, #340]	; 8002412c <exit+0x170>
80023fd4:	e5933000 	ldr	r3, [r3]
80023fd8:	e1520003 	cmp	r2, r3
80023fdc:	1a000001 	bne	80023fe8 <exit+0x2c>
80023fe0:	e59f0148 	ldr	r0, [pc, #328]	; 80024130 <exit+0x174>
80023fe4:	ebfff1bd 	bl	800206e0 <panic>
80023fe8:	e3a03000 	mov	r3, #0
80023fec:	e50b300c 	str	r3, [fp, #-12]
80023ff0:	ea000016 	b	80024050 <exit+0x94>
80023ff4:	e59f312c 	ldr	r3, [pc, #300]	; 80024128 <exit+0x16c>
80023ff8:	e5933000 	ldr	r3, [r3]
80023ffc:	e51b200c 	ldr	r2, [fp, #-12]
80024000:	e282200a 	add	r2, r2, #10
80024004:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80024008:	e3530000 	cmp	r3, #0
8002400c:	0a00000c 	beq	80024044 <exit+0x88>
80024010:	e59f3110 	ldr	r3, [pc, #272]	; 80024128 <exit+0x16c>
80024014:	e5933000 	ldr	r3, [r3]
80024018:	e51b200c 	ldr	r2, [fp, #-12]
8002401c:	e282200a 	add	r2, r2, #10
80024020:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80024024:	e1a00003 	mov	r0, r3
80024028:	ebfff45d 	bl	800211a4 <fileclose>
8002402c:	e59f30f4 	ldr	r3, [pc, #244]	; 80024128 <exit+0x16c>
80024030:	e5933000 	ldr	r3, [r3]
80024034:	e51b200c 	ldr	r2, [fp, #-12]
80024038:	e282200a 	add	r2, r2, #10
8002403c:	e3a01000 	mov	r1, #0
80024040:	e7831102 	str	r1, [r3, r2, lsl #2]
80024044:	e51b300c 	ldr	r3, [fp, #-12]
80024048:	e2833001 	add	r3, r3, #1
8002404c:	e50b300c 	str	r3, [fp, #-12]
80024050:	e51b300c 	ldr	r3, [fp, #-12]
80024054:	e353000f 	cmp	r3, #15
80024058:	daffffe5 	ble	80023ff4 <exit+0x38>
8002405c:	e59f30c4 	ldr	r3, [pc, #196]	; 80024128 <exit+0x16c>
80024060:	e5933000 	ldr	r3, [r3]
80024064:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80024068:	e1a00003 	mov	r0, r3
8002406c:	ebfff7a4 	bl	80021f04 <iput>
80024070:	e59f30b0 	ldr	r3, [pc, #176]	; 80024128 <exit+0x16c>
80024074:	e5933000 	ldr	r3, [r3]
80024078:	e3a02000 	mov	r2, #0
8002407c:	e5832068 	str	r2, [r3, #104]	; 0x68
80024080:	e59f00ac 	ldr	r0, [pc, #172]	; 80024134 <exit+0x178>
80024084:	eb0001e7 	bl	80024828 <acquire>
80024088:	e59f3098 	ldr	r3, [pc, #152]	; 80024128 <exit+0x16c>
8002408c:	e5933000 	ldr	r3, [r3]
80024090:	e5933014 	ldr	r3, [r3, #20]
80024094:	e1a00003 	mov	r0, r3
80024098:	eb00013a 	bl	80024588 <wakeup1>
8002409c:	e59f3094 	ldr	r3, [pc, #148]	; 80024138 <exit+0x17c>
800240a0:	e50b3008 	str	r3, [fp, #-8]
800240a4:	ea000014 	b	800240fc <exit+0x140>
800240a8:	e51b3008 	ldr	r3, [fp, #-8]
800240ac:	e5932014 	ldr	r2, [r3, #20]
800240b0:	e59f3070 	ldr	r3, [pc, #112]	; 80024128 <exit+0x16c>
800240b4:	e5933000 	ldr	r3, [r3]
800240b8:	e1520003 	cmp	r2, r3
800240bc:	1a00000b 	bne	800240f0 <exit+0x134>
800240c0:	e59f3064 	ldr	r3, [pc, #100]	; 8002412c <exit+0x170>
800240c4:	e5932000 	ldr	r2, [r3]
800240c8:	e51b3008 	ldr	r3, [fp, #-8]
800240cc:	e5832014 	str	r2, [r3, #20]
800240d0:	e51b3008 	ldr	r3, [fp, #-8]
800240d4:	e5d3300c 	ldrb	r3, [r3, #12]
800240d8:	e3530005 	cmp	r3, #5
800240dc:	1a000003 	bne	800240f0 <exit+0x134>
800240e0:	e59f3044 	ldr	r3, [pc, #68]	; 8002412c <exit+0x170>
800240e4:	e5933000 	ldr	r3, [r3]
800240e8:	e1a00003 	mov	r0, r3
800240ec:	eb000125 	bl	80024588 <wakeup1>
800240f0:	e51b3008 	ldr	r3, [fp, #-8]
800240f4:	e283307c 	add	r3, r3, #124	; 0x7c
800240f8:	e50b3008 	str	r3, [fp, #-8]
800240fc:	e51b3008 	ldr	r3, [fp, #-8]
80024100:	e59f2034 	ldr	r2, [pc, #52]	; 8002413c <exit+0x180>
80024104:	e1530002 	cmp	r3, r2
80024108:	3affffe6 	bcc	800240a8 <exit+0xec>
8002410c:	e59f3014 	ldr	r3, [pc, #20]	; 80024128 <exit+0x16c>
80024110:	e5933000 	ldr	r3, [r3]
80024114:	e3a02005 	mov	r2, #5
80024118:	e5c3200c 	strb	r2, [r3, #12]
8002411c:	eb000091 	bl	80024368 <sched>
80024120:	e59f0018 	ldr	r0, [pc, #24]	; 80024140 <exit+0x184>
80024124:	ebfff16d 	bl	800206e0 <panic>
80024128:	800ad60c 	.word	0x800ad60c
8002412c:	800ad608 	.word	0x800ad608
80024130:	80028f24 	.word	0x80028f24
80024134:	800ad610 	.word	0x800ad610
80024138:	800ad644 	.word	0x800ad644
8002413c:	800af544 	.word	0x800af544
80024140:	80028f34 	.word	0x80028f34

80024144 <wait>:
80024144:	e92d4800 	push	{fp, lr}
80024148:	e28db004 	add	fp, sp, #4
8002414c:	e24dd010 	sub	sp, sp, #16
80024150:	e59f013c 	ldr	r0, [pc, #316]	; 80024294 <wait+0x150>
80024154:	eb0001b3 	bl	80024828 <acquire>
80024158:	e3a03000 	mov	r3, #0
8002415c:	e50b300c 	str	r3, [fp, #-12]
80024160:	e59f3130 	ldr	r3, [pc, #304]	; 80024298 <wait+0x154>
80024164:	e50b3008 	str	r3, [fp, #-8]
80024168:	ea000030 	b	80024230 <wait+0xec>
8002416c:	e51b3008 	ldr	r3, [fp, #-8]
80024170:	e5932014 	ldr	r2, [r3, #20]
80024174:	e59f3120 	ldr	r3, [pc, #288]	; 8002429c <wait+0x158>
80024178:	e5933000 	ldr	r3, [r3]
8002417c:	e1520003 	cmp	r2, r3
80024180:	0a000000 	beq	80024188 <wait+0x44>
80024184:	ea000026 	b	80024224 <wait+0xe0>
80024188:	e3a03001 	mov	r3, #1
8002418c:	e50b300c 	str	r3, [fp, #-12]
80024190:	e51b3008 	ldr	r3, [fp, #-8]
80024194:	e5d3300c 	ldrb	r3, [r3, #12]
80024198:	e3530005 	cmp	r3, #5
8002419c:	1a000020 	bne	80024224 <wait+0xe0>
800241a0:	e51b3008 	ldr	r3, [fp, #-8]
800241a4:	e5933010 	ldr	r3, [r3, #16]
800241a8:	e50b3010 	str	r3, [fp, #-16]
800241ac:	e51b3008 	ldr	r3, [fp, #-8]
800241b0:	e5933008 	ldr	r3, [r3, #8]
800241b4:	e1a00003 	mov	r0, r3
800241b8:	eb0011e0 	bl	80028940 <free_page>
800241bc:	e51b3008 	ldr	r3, [fp, #-8]
800241c0:	e3a02000 	mov	r2, #0
800241c4:	e5832008 	str	r2, [r3, #8]
800241c8:	e51b3008 	ldr	r3, [fp, #-8]
800241cc:	e5933004 	ldr	r3, [r3, #4]
800241d0:	e1a00003 	mov	r0, r3
800241d4:	eb000c77 	bl	800273b8 <freevm>
800241d8:	e51b3008 	ldr	r3, [fp, #-8]
800241dc:	e3a02000 	mov	r2, #0
800241e0:	e5c3200c 	strb	r2, [r3, #12]
800241e4:	e51b3008 	ldr	r3, [fp, #-8]
800241e8:	e3a02000 	mov	r2, #0
800241ec:	e5832010 	str	r2, [r3, #16]
800241f0:	e51b3008 	ldr	r3, [fp, #-8]
800241f4:	e3a02000 	mov	r2, #0
800241f8:	e5832014 	str	r2, [r3, #20]
800241fc:	e51b3008 	ldr	r3, [fp, #-8]
80024200:	e3a02000 	mov	r2, #0
80024204:	e5c3206c 	strb	r2, [r3, #108]	; 0x6c
80024208:	e51b3008 	ldr	r3, [fp, #-8]
8002420c:	e3a02000 	mov	r2, #0
80024210:	e5832024 	str	r2, [r3, #36]	; 0x24
80024214:	e59f0078 	ldr	r0, [pc, #120]	; 80024294 <wait+0x150>
80024218:	eb00018c 	bl	80024850 <release>
8002421c:	e51b3010 	ldr	r3, [fp, #-16]
80024220:	ea000018 	b	80024288 <wait+0x144>
80024224:	e51b3008 	ldr	r3, [fp, #-8]
80024228:	e283307c 	add	r3, r3, #124	; 0x7c
8002422c:	e50b3008 	str	r3, [fp, #-8]
80024230:	e51b3008 	ldr	r3, [fp, #-8]
80024234:	e59f2064 	ldr	r2, [pc, #100]	; 800242a0 <wait+0x15c>
80024238:	e1530002 	cmp	r3, r2
8002423c:	3affffca 	bcc	8002416c <wait+0x28>
80024240:	e51b300c 	ldr	r3, [fp, #-12]
80024244:	e3530000 	cmp	r3, #0
80024248:	0a000004 	beq	80024260 <wait+0x11c>
8002424c:	e59f3048 	ldr	r3, [pc, #72]	; 8002429c <wait+0x158>
80024250:	e5933000 	ldr	r3, [r3]
80024254:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80024258:	e3530000 	cmp	r3, #0
8002425c:	0a000003 	beq	80024270 <wait+0x12c>
80024260:	e59f002c 	ldr	r0, [pc, #44]	; 80024294 <wait+0x150>
80024264:	eb000179 	bl	80024850 <release>
80024268:	e3e03000 	mvn	r3, #0
8002426c:	ea000005 	b	80024288 <wait+0x144>
80024270:	e59f3024 	ldr	r3, [pc, #36]	; 8002429c <wait+0x158>
80024274:	e5933000 	ldr	r3, [r3]
80024278:	e1a00003 	mov	r0, r3
8002427c:	e59f1010 	ldr	r1, [pc, #16]	; 80024294 <wait+0x150>
80024280:	eb00008d 	bl	800244bc <sleep>
80024284:	eaffffb3 	b	80024158 <wait+0x14>
80024288:	e1a00003 	mov	r0, r3
8002428c:	e24bd004 	sub	sp, fp, #4
80024290:	e8bd8800 	pop	{fp, pc}
80024294:	800ad610 	.word	0x800ad610
80024298:	800ad644 	.word	0x800ad644
8002429c:	800ad60c 	.word	0x800ad60c
800242a0:	800af544 	.word	0x800af544

800242a4 <scheduler>:
800242a4:	e92d4800 	push	{fp, lr}
800242a8:	e28db004 	add	fp, sp, #4
800242ac:	e24dd008 	sub	sp, sp, #8
800242b0:	eb000d61 	bl	8002783c <sti>
800242b4:	e59f0098 	ldr	r0, [pc, #152]	; 80024354 <scheduler+0xb0>
800242b8:	eb00015a 	bl	80024828 <acquire>
800242bc:	e59f3094 	ldr	r3, [pc, #148]	; 80024358 <scheduler+0xb4>
800242c0:	e50b3008 	str	r3, [fp, #-8]
800242c4:	ea00001b 	b	80024338 <scheduler+0x94>
800242c8:	e51b3008 	ldr	r3, [fp, #-8]
800242cc:	e5d3300c 	ldrb	r3, [r3, #12]
800242d0:	e3530003 	cmp	r3, #3
800242d4:	0a000000 	beq	800242dc <scheduler+0x38>
800242d8:	ea000013 	b	8002432c <scheduler+0x88>
800242dc:	e59f2078 	ldr	r2, [pc, #120]	; 8002435c <scheduler+0xb8>
800242e0:	e51b3008 	ldr	r3, [fp, #-8]
800242e4:	e5823000 	str	r3, [r2]
800242e8:	e51b0008 	ldr	r0, [fp, #-8]
800242ec:	eb000b26 	bl	80026f8c <switchuvm>
800242f0:	e51b3008 	ldr	r3, [fp, #-8]
800242f4:	e3a02004 	mov	r2, #4
800242f8:	e5c3200c 	strb	r2, [r3, #12]
800242fc:	e59f305c 	ldr	r3, [pc, #92]	; 80024360 <scheduler+0xbc>
80024300:	e5933000 	ldr	r3, [r3]
80024304:	e2832004 	add	r2, r3, #4
80024308:	e59f304c 	ldr	r3, [pc, #76]	; 8002435c <scheduler+0xb8>
8002430c:	e5933000 	ldr	r3, [r3]
80024310:	e593301c 	ldr	r3, [r3, #28]
80024314:	e1a00002 	mov	r0, r2
80024318:	e1a01003 	mov	r1, r3
8002431c:	eb0002ae 	bl	80024ddc <swtch>
80024320:	e59f3034 	ldr	r3, [pc, #52]	; 8002435c <scheduler+0xb8>
80024324:	e3a02000 	mov	r2, #0
80024328:	e5832000 	str	r2, [r3]
8002432c:	e51b3008 	ldr	r3, [fp, #-8]
80024330:	e283307c 	add	r3, r3, #124	; 0x7c
80024334:	e50b3008 	str	r3, [fp, #-8]
80024338:	e51b3008 	ldr	r3, [fp, #-8]
8002433c:	e59f2020 	ldr	r2, [pc, #32]	; 80024364 <scheduler+0xc0>
80024340:	e1530002 	cmp	r3, r2
80024344:	3affffdf 	bcc	800242c8 <scheduler+0x24>
80024348:	e59f0004 	ldr	r0, [pc, #4]	; 80024354 <scheduler+0xb0>
8002434c:	eb00013f 	bl	80024850 <release>
80024350:	eaffffd6 	b	800242b0 <scheduler+0xc>
80024354:	800ad610 	.word	0x800ad610
80024358:	800ad644 	.word	0x800ad644
8002435c:	800ad60c 	.word	0x800ad60c
80024360:	800ad4a0 	.word	0x800ad4a0
80024364:	800af544 	.word	0x800af544

80024368 <sched>:
80024368:	e92d4800 	push	{fp, lr}
8002436c:	e28db004 	add	fp, sp, #4
80024370:	e24dd008 	sub	sp, sp, #8
80024374:	e59f00b0 	ldr	r0, [pc, #176]	; 8002442c <sched+0xc4>
80024378:	eb00013e 	bl	80024878 <holding>
8002437c:	e1a03000 	mov	r3, r0
80024380:	e3530000 	cmp	r3, #0
80024384:	1a000001 	bne	80024390 <sched+0x28>
80024388:	e59f00a0 	ldr	r0, [pc, #160]	; 80024430 <sched+0xc8>
8002438c:	ebfff0d3 	bl	800206e0 <panic>
80024390:	e59f309c 	ldr	r3, [pc, #156]	; 80024434 <sched+0xcc>
80024394:	e5933000 	ldr	r3, [r3]
80024398:	e593300c 	ldr	r3, [r3, #12]
8002439c:	e3530001 	cmp	r3, #1
800243a0:	0a000001 	beq	800243ac <sched+0x44>
800243a4:	e59f008c 	ldr	r0, [pc, #140]	; 80024438 <sched+0xd0>
800243a8:	ebfff0cc 	bl	800206e0 <panic>
800243ac:	e59f3088 	ldr	r3, [pc, #136]	; 8002443c <sched+0xd4>
800243b0:	e5933000 	ldr	r3, [r3]
800243b4:	e5d3300c 	ldrb	r3, [r3, #12]
800243b8:	e3530004 	cmp	r3, #4
800243bc:	1a000001 	bne	800243c8 <sched+0x60>
800243c0:	e59f0078 	ldr	r0, [pc, #120]	; 80024440 <sched+0xd8>
800243c4:	ebfff0c5 	bl	800206e0 <panic>
800243c8:	eb000d38 	bl	800278b0 <int_enabled>
800243cc:	e1a03000 	mov	r3, r0
800243d0:	e3530000 	cmp	r3, #0
800243d4:	0a000001 	beq	800243e0 <sched+0x78>
800243d8:	e59f0064 	ldr	r0, [pc, #100]	; 80024444 <sched+0xdc>
800243dc:	ebfff0bf 	bl	800206e0 <panic>
800243e0:	e59f304c 	ldr	r3, [pc, #76]	; 80024434 <sched+0xcc>
800243e4:	e5933000 	ldr	r3, [r3]
800243e8:	e5933010 	ldr	r3, [r3, #16]
800243ec:	e50b3008 	str	r3, [fp, #-8]
800243f0:	e59f3044 	ldr	r3, [pc, #68]	; 8002443c <sched+0xd4>
800243f4:	e5933000 	ldr	r3, [r3]
800243f8:	e283201c 	add	r2, r3, #28
800243fc:	e59f3030 	ldr	r3, [pc, #48]	; 80024434 <sched+0xcc>
80024400:	e5933000 	ldr	r3, [r3]
80024404:	e5933004 	ldr	r3, [r3, #4]
80024408:	e1a00002 	mov	r0, r2
8002440c:	e1a01003 	mov	r1, r3
80024410:	eb000271 	bl	80024ddc <swtch>
80024414:	e59f3018 	ldr	r3, [pc, #24]	; 80024434 <sched+0xcc>
80024418:	e5933000 	ldr	r3, [r3]
8002441c:	e51b2008 	ldr	r2, [fp, #-8]
80024420:	e5832010 	str	r2, [r3, #16]
80024424:	e24bd004 	sub	sp, fp, #4
80024428:	e8bd8800 	pop	{fp, pc}
8002442c:	800ad610 	.word	0x800ad610
80024430:	80028f40 	.word	0x80028f40
80024434:	800ad4a0 	.word	0x800ad4a0
80024438:	80028f54 	.word	0x80028f54
8002443c:	800ad60c 	.word	0x800ad60c
80024440:	80028f60 	.word	0x80028f60
80024444:	80028f70 	.word	0x80028f70

80024448 <yield>:
80024448:	e92d4800 	push	{fp, lr}
8002444c:	e28db004 	add	fp, sp, #4
80024450:	e59f0020 	ldr	r0, [pc, #32]	; 80024478 <yield+0x30>
80024454:	eb0000f3 	bl	80024828 <acquire>
80024458:	e59f301c 	ldr	r3, [pc, #28]	; 8002447c <yield+0x34>
8002445c:	e5933000 	ldr	r3, [r3]
80024460:	e3a02003 	mov	r2, #3
80024464:	e5c3200c 	strb	r2, [r3, #12]
80024468:	ebffffbe 	bl	80024368 <sched>
8002446c:	e59f0004 	ldr	r0, [pc, #4]	; 80024478 <yield+0x30>
80024470:	eb0000f6 	bl	80024850 <release>
80024474:	e8bd8800 	pop	{fp, pc}
80024478:	800ad610 	.word	0x800ad610
8002447c:	800ad60c 	.word	0x800ad60c

80024480 <forkret>:
80024480:	e92d4800 	push	{fp, lr}
80024484:	e28db004 	add	fp, sp, #4
80024488:	e59f0024 	ldr	r0, [pc, #36]	; 800244b4 <forkret+0x34>
8002448c:	eb0000ef 	bl	80024850 <release>
80024490:	e59f3020 	ldr	r3, [pc, #32]	; 800244b8 <forkret+0x38>
80024494:	e5933000 	ldr	r3, [r3]
80024498:	e3530000 	cmp	r3, #0
8002449c:	0a000003 	beq	800244b0 <forkret+0x30>
800244a0:	e59f3010 	ldr	r3, [pc, #16]	; 800244b8 <forkret+0x38>
800244a4:	e3a02000 	mov	r2, #0
800244a8:	e5832000 	str	r2, [r3]
800244ac:	ebfffa07 	bl	80022cd0 <initlog>
800244b0:	e8bd8800 	pop	{fp, pc}
800244b4:	800ad610 	.word	0x800ad610
800244b8:	8002a018 	.word	0x8002a018

800244bc <sleep>:
800244bc:	e92d4800 	push	{fp, lr}
800244c0:	e28db004 	add	fp, sp, #4
800244c4:	e24dd008 	sub	sp, sp, #8
800244c8:	e50b0008 	str	r0, [fp, #-8]
800244cc:	e50b100c 	str	r1, [fp, #-12]
800244d0:	e59f30a0 	ldr	r3, [pc, #160]	; 80024578 <sleep+0xbc>
800244d4:	e5933000 	ldr	r3, [r3]
800244d8:	e3530000 	cmp	r3, #0
800244dc:	1a000001 	bne	800244e8 <sleep+0x2c>
800244e0:	e59f0094 	ldr	r0, [pc, #148]	; 8002457c <sleep+0xc0>
800244e4:	ebfff07d 	bl	800206e0 <panic>
800244e8:	e51b300c 	ldr	r3, [fp, #-12]
800244ec:	e3530000 	cmp	r3, #0
800244f0:	1a000001 	bne	800244fc <sleep+0x40>
800244f4:	e59f0084 	ldr	r0, [pc, #132]	; 80024580 <sleep+0xc4>
800244f8:	ebfff078 	bl	800206e0 <panic>
800244fc:	e51b300c 	ldr	r3, [fp, #-12]
80024500:	e59f207c 	ldr	r2, [pc, #124]	; 80024584 <sleep+0xc8>
80024504:	e1530002 	cmp	r3, r2
80024508:	0a000003 	beq	8002451c <sleep+0x60>
8002450c:	e59f0070 	ldr	r0, [pc, #112]	; 80024584 <sleep+0xc8>
80024510:	eb0000c4 	bl	80024828 <acquire>
80024514:	e51b000c 	ldr	r0, [fp, #-12]
80024518:	eb0000cc 	bl	80024850 <release>
8002451c:	e59f3054 	ldr	r3, [pc, #84]	; 80024578 <sleep+0xbc>
80024520:	e5933000 	ldr	r3, [r3]
80024524:	e51b2008 	ldr	r2, [fp, #-8]
80024528:	e5832020 	str	r2, [r3, #32]
8002452c:	e59f3044 	ldr	r3, [pc, #68]	; 80024578 <sleep+0xbc>
80024530:	e5933000 	ldr	r3, [r3]
80024534:	e3a02002 	mov	r2, #2
80024538:	e5c3200c 	strb	r2, [r3, #12]
8002453c:	ebffff89 	bl	80024368 <sched>
80024540:	e59f3030 	ldr	r3, [pc, #48]	; 80024578 <sleep+0xbc>
80024544:	e5933000 	ldr	r3, [r3]
80024548:	e3a02000 	mov	r2, #0
8002454c:	e5832020 	str	r2, [r3, #32]
80024550:	e51b300c 	ldr	r3, [fp, #-12]
80024554:	e59f2028 	ldr	r2, [pc, #40]	; 80024584 <sleep+0xc8>
80024558:	e1530002 	cmp	r3, r2
8002455c:	0a000003 	beq	80024570 <sleep+0xb4>
80024560:	e59f001c 	ldr	r0, [pc, #28]	; 80024584 <sleep+0xc8>
80024564:	eb0000b9 	bl	80024850 <release>
80024568:	e51b000c 	ldr	r0, [fp, #-12]
8002456c:	eb0000ad 	bl	80024828 <acquire>
80024570:	e24bd004 	sub	sp, fp, #4
80024574:	e8bd8800 	pop	{fp, pc}
80024578:	800ad60c 	.word	0x800ad60c
8002457c:	80028f84 	.word	0x80028f84
80024580:	80028f8c 	.word	0x80028f8c
80024584:	800ad610 	.word	0x800ad610

80024588 <wakeup1>:
80024588:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002458c:	e28db000 	add	fp, sp, #0
80024590:	e24dd014 	sub	sp, sp, #20
80024594:	e50b0010 	str	r0, [fp, #-16]
80024598:	e59f305c 	ldr	r3, [pc, #92]	; 800245fc <wakeup1+0x74>
8002459c:	e50b3008 	str	r3, [fp, #-8]
800245a0:	ea00000e 	b	800245e0 <wakeup1+0x58>
800245a4:	e51b3008 	ldr	r3, [fp, #-8]
800245a8:	e5d3300c 	ldrb	r3, [r3, #12]
800245ac:	e3530002 	cmp	r3, #2
800245b0:	1a000007 	bne	800245d4 <wakeup1+0x4c>
800245b4:	e51b3008 	ldr	r3, [fp, #-8]
800245b8:	e5932020 	ldr	r2, [r3, #32]
800245bc:	e51b3010 	ldr	r3, [fp, #-16]
800245c0:	e1520003 	cmp	r2, r3
800245c4:	1a000002 	bne	800245d4 <wakeup1+0x4c>
800245c8:	e51b3008 	ldr	r3, [fp, #-8]
800245cc:	e3a02003 	mov	r2, #3
800245d0:	e5c3200c 	strb	r2, [r3, #12]
800245d4:	e51b3008 	ldr	r3, [fp, #-8]
800245d8:	e283307c 	add	r3, r3, #124	; 0x7c
800245dc:	e50b3008 	str	r3, [fp, #-8]
800245e0:	e51b3008 	ldr	r3, [fp, #-8]
800245e4:	e59f2014 	ldr	r2, [pc, #20]	; 80024600 <wakeup1+0x78>
800245e8:	e1530002 	cmp	r3, r2
800245ec:	3affffec 	bcc	800245a4 <wakeup1+0x1c>
800245f0:	e24bd000 	sub	sp, fp, #0
800245f4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800245f8:	e12fff1e 	bx	lr
800245fc:	800ad644 	.word	0x800ad644
80024600:	800af544 	.word	0x800af544

80024604 <wakeup>:
80024604:	e92d4800 	push	{fp, lr}
80024608:	e28db004 	add	fp, sp, #4
8002460c:	e24dd008 	sub	sp, sp, #8
80024610:	e50b0008 	str	r0, [fp, #-8]
80024614:	e59f0018 	ldr	r0, [pc, #24]	; 80024634 <wakeup+0x30>
80024618:	eb000082 	bl	80024828 <acquire>
8002461c:	e51b0008 	ldr	r0, [fp, #-8]
80024620:	ebffffd8 	bl	80024588 <wakeup1>
80024624:	e59f0008 	ldr	r0, [pc, #8]	; 80024634 <wakeup+0x30>
80024628:	eb000088 	bl	80024850 <release>
8002462c:	e24bd004 	sub	sp, fp, #4
80024630:	e8bd8800 	pop	{fp, pc}
80024634:	800ad610 	.word	0x800ad610

80024638 <kill>:
80024638:	e92d4800 	push	{fp, lr}
8002463c:	e28db004 	add	fp, sp, #4
80024640:	e24dd010 	sub	sp, sp, #16
80024644:	e50b0010 	str	r0, [fp, #-16]
80024648:	e59f008c 	ldr	r0, [pc, #140]	; 800246dc <kill+0xa4>
8002464c:	eb000075 	bl	80024828 <acquire>
80024650:	e59f3088 	ldr	r3, [pc, #136]	; 800246e0 <kill+0xa8>
80024654:	e50b3008 	str	r3, [fp, #-8]
80024658:	ea000015 	b	800246b4 <kill+0x7c>
8002465c:	e51b3008 	ldr	r3, [fp, #-8]
80024660:	e5932010 	ldr	r2, [r3, #16]
80024664:	e51b3010 	ldr	r3, [fp, #-16]
80024668:	e1520003 	cmp	r2, r3
8002466c:	1a00000d 	bne	800246a8 <kill+0x70>
80024670:	e51b3008 	ldr	r3, [fp, #-8]
80024674:	e3a02001 	mov	r2, #1
80024678:	e5832024 	str	r2, [r3, #36]	; 0x24
8002467c:	e51b3008 	ldr	r3, [fp, #-8]
80024680:	e5d3300c 	ldrb	r3, [r3, #12]
80024684:	e3530002 	cmp	r3, #2
80024688:	1a000002 	bne	80024698 <kill+0x60>
8002468c:	e51b3008 	ldr	r3, [fp, #-8]
80024690:	e3a02003 	mov	r2, #3
80024694:	e5c3200c 	strb	r2, [r3, #12]
80024698:	e59f003c 	ldr	r0, [pc, #60]	; 800246dc <kill+0xa4>
8002469c:	eb00006b 	bl	80024850 <release>
800246a0:	e3a03000 	mov	r3, #0
800246a4:	ea000009 	b	800246d0 <kill+0x98>
800246a8:	e51b3008 	ldr	r3, [fp, #-8]
800246ac:	e283307c 	add	r3, r3, #124	; 0x7c
800246b0:	e50b3008 	str	r3, [fp, #-8]
800246b4:	e51b3008 	ldr	r3, [fp, #-8]
800246b8:	e59f2024 	ldr	r2, [pc, #36]	; 800246e4 <kill+0xac>
800246bc:	e1530002 	cmp	r3, r2
800246c0:	3affffe5 	bcc	8002465c <kill+0x24>
800246c4:	e59f0010 	ldr	r0, [pc, #16]	; 800246dc <kill+0xa4>
800246c8:	eb000060 	bl	80024850 <release>
800246cc:	e3e03000 	mvn	r3, #0
800246d0:	e1a00003 	mov	r0, r3
800246d4:	e24bd004 	sub	sp, fp, #4
800246d8:	e8bd8800 	pop	{fp, pc}
800246dc:	800ad610 	.word	0x800ad610
800246e0:	800ad644 	.word	0x800ad644
800246e4:	800af544 	.word	0x800af544

800246e8 <procdump>:
800246e8:	e92d4800 	push	{fp, lr}
800246ec:	e28db004 	add	fp, sp, #4
800246f0:	e24dd010 	sub	sp, sp, #16
800246f4:	e59f30d0 	ldr	r3, [pc, #208]	; 800247cc <procdump+0xe4>
800246f8:	e50b3008 	str	r3, [fp, #-8]
800246fc:	ea00002a 	b	800247ac <procdump+0xc4>
80024700:	e51b3008 	ldr	r3, [fp, #-8]
80024704:	e5d3300c 	ldrb	r3, [r3, #12]
80024708:	e3530000 	cmp	r3, #0
8002470c:	1a000000 	bne	80024714 <procdump+0x2c>
80024710:	ea000022 	b	800247a0 <procdump+0xb8>
80024714:	e51b3008 	ldr	r3, [fp, #-8]
80024718:	e5d3300c 	ldrb	r3, [r3, #12]
8002471c:	e3530005 	cmp	r3, #5
80024720:	8a00000d 	bhi	8002475c <procdump+0x74>
80024724:	e51b3008 	ldr	r3, [fp, #-8]
80024728:	e5d3300c 	ldrb	r3, [r3, #12]
8002472c:	e1a02003 	mov	r2, r3
80024730:	e59f3098 	ldr	r3, [pc, #152]	; 800247d0 <procdump+0xe8>
80024734:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80024738:	e3530000 	cmp	r3, #0
8002473c:	0a000006 	beq	8002475c <procdump+0x74>
80024740:	e51b3008 	ldr	r3, [fp, #-8]
80024744:	e5d3300c 	ldrb	r3, [r3, #12]
80024748:	e1a02003 	mov	r2, r3
8002474c:	e59f307c 	ldr	r3, [pc, #124]	; 800247d0 <procdump+0xe8>
80024750:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80024754:	e50b300c 	str	r3, [fp, #-12]
80024758:	ea000001 	b	80024764 <procdump+0x7c>
8002475c:	e59f3070 	ldr	r3, [pc, #112]	; 800247d4 <procdump+0xec>
80024760:	e50b300c 	str	r3, [fp, #-12]
80024764:	e51b3008 	ldr	r3, [fp, #-8]
80024768:	e5931010 	ldr	r1, [r3, #16]
8002476c:	e51b3008 	ldr	r3, [fp, #-8]
80024770:	e593c010 	ldr	ip, [r3, #16]
80024774:	e51b3008 	ldr	r3, [fp, #-8]
80024778:	e283206c 	add	r2, r3, #108	; 0x6c
8002477c:	e51b3008 	ldr	r3, [fp, #-8]
80024780:	e5933014 	ldr	r3, [r3, #20]
80024784:	e5933010 	ldr	r3, [r3, #16]
80024788:	e58d2000 	str	r2, [sp]
8002478c:	e58d3004 	str	r3, [sp, #4]
80024790:	e59f0040 	ldr	r0, [pc, #64]	; 800247d8 <procdump+0xf0>
80024794:	e51b200c 	ldr	r2, [fp, #-12]
80024798:	e1a0300c 	mov	r3, ip
8002479c:	ebffef50 	bl	800204e4 <cprintf>
800247a0:	e51b3008 	ldr	r3, [fp, #-8]
800247a4:	e283307c 	add	r3, r3, #124	; 0x7c
800247a8:	e50b3008 	str	r3, [fp, #-8]
800247ac:	e51b3008 	ldr	r3, [fp, #-8]
800247b0:	e59f2024 	ldr	r2, [pc, #36]	; 800247dc <procdump+0xf4>
800247b4:	e1530002 	cmp	r3, r2
800247b8:	3affffd0 	bcc	80024700 <procdump+0x18>
800247bc:	e59f001c 	ldr	r0, [pc, #28]	; 800247e0 <procdump+0xf8>
800247c0:	eb000cbe 	bl	80027ac0 <show_callstk>
800247c4:	e24bd004 	sub	sp, fp, #4
800247c8:	e8bd8800 	pop	{fp, pc}
800247cc:	800ad644 	.word	0x800ad644
800247d0:	8002a01c 	.word	0x8002a01c
800247d4:	80028fa0 	.word	0x80028fa0
800247d8:	80028fa4 	.word	0x80028fa4
800247dc:	800af544 	.word	0x800af544
800247e0:	80028fb4 	.word	0x80028fb4

800247e4 <initlock>:
800247e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800247e8:	e28db000 	add	fp, sp, #0
800247ec:	e24dd00c 	sub	sp, sp, #12
800247f0:	e50b0008 	str	r0, [fp, #-8]
800247f4:	e50b100c 	str	r1, [fp, #-12]
800247f8:	e51b3008 	ldr	r3, [fp, #-8]
800247fc:	e51b200c 	ldr	r2, [fp, #-12]
80024800:	e5832004 	str	r2, [r3, #4]
80024804:	e51b3008 	ldr	r3, [fp, #-8]
80024808:	e3a02000 	mov	r2, #0
8002480c:	e5832000 	str	r2, [r3]
80024810:	e51b3008 	ldr	r3, [fp, #-8]
80024814:	e3a02000 	mov	r2, #0
80024818:	e5832008 	str	r2, [r3, #8]
8002481c:	e24bd000 	sub	sp, fp, #0
80024820:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024824:	e12fff1e 	bx	lr

80024828 <acquire>:
80024828:	e92d4800 	push	{fp, lr}
8002482c:	e28db004 	add	fp, sp, #4
80024830:	e24dd008 	sub	sp, sp, #8
80024834:	e50b0008 	str	r0, [fp, #-8]
80024838:	eb000c2b 	bl	800278ec <pushcli>
8002483c:	e51b3008 	ldr	r3, [fp, #-8]
80024840:	e3a02001 	mov	r2, #1
80024844:	e5832000 	str	r2, [r3]
80024848:	e24bd004 	sub	sp, fp, #4
8002484c:	e8bd8800 	pop	{fp, pc}

80024850 <release>:
80024850:	e92d4800 	push	{fp, lr}
80024854:	e28db004 	add	fp, sp, #4
80024858:	e24dd008 	sub	sp, sp, #8
8002485c:	e50b0008 	str	r0, [fp, #-8]
80024860:	e51b3008 	ldr	r3, [fp, #-8]
80024864:	e3a02000 	mov	r2, #0
80024868:	e5832000 	str	r2, [r3]
8002486c:	eb000c32 	bl	8002793c <popcli>
80024870:	e24bd004 	sub	sp, fp, #4
80024874:	e8bd8800 	pop	{fp, pc}

80024878 <holding>:
80024878:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002487c:	e28db000 	add	fp, sp, #0
80024880:	e24dd00c 	sub	sp, sp, #12
80024884:	e50b0008 	str	r0, [fp, #-8]
80024888:	e51b3008 	ldr	r3, [fp, #-8]
8002488c:	e5933000 	ldr	r3, [r3]
80024890:	e1a00003 	mov	r0, r3
80024894:	e24bd000 	sub	sp, fp, #0
80024898:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002489c:	e12fff1e 	bx	lr

800248a0 <memset>:
800248a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800248a4:	e28db000 	add	fp, sp, #0
800248a8:	e24dd024 	sub	sp, sp, #36	; 0x24
800248ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800248b0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800248b4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800248b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800248bc:	e50b3008 	str	r3, [fp, #-8]
800248c0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800248c4:	e54b300d 	strb	r3, [fp, #-13]
800248c8:	e55b300d 	ldrb	r3, [fp, #-13]
800248cc:	e1a02c03 	lsl	r2, r3, #24
800248d0:	e55b300d 	ldrb	r3, [fp, #-13]
800248d4:	e1a03803 	lsl	r3, r3, #16
800248d8:	e1822003 	orr	r2, r2, r3
800248dc:	e55b300d 	ldrb	r3, [fp, #-13]
800248e0:	e1a03403 	lsl	r3, r3, #8
800248e4:	e1822003 	orr	r2, r2, r3
800248e8:	e55b300d 	ldrb	r3, [fp, #-13]
800248ec:	e1823003 	orr	r3, r2, r3
800248f0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800248f4:	ea000008 	b	8002491c <memset+0x7c>
800248f8:	e51b3008 	ldr	r3, [fp, #-8]
800248fc:	e55b200d 	ldrb	r2, [fp, #-13]
80024900:	e5c32000 	strb	r2, [r3]
80024904:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80024908:	e2433001 	sub	r3, r3, #1
8002490c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80024910:	e51b3008 	ldr	r3, [fp, #-8]
80024914:	e2833001 	add	r3, r3, #1
80024918:	e50b3008 	str	r3, [fp, #-8]
8002491c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80024920:	e3530000 	cmp	r3, #0
80024924:	da000003 	ble	80024938 <memset+0x98>
80024928:	e51b3008 	ldr	r3, [fp, #-8]
8002492c:	e2033003 	and	r3, r3, #3
80024930:	e3530000 	cmp	r3, #0
80024934:	1affffef 	bne	800248f8 <memset+0x58>
80024938:	e51b3008 	ldr	r3, [fp, #-8]
8002493c:	e50b300c 	str	r3, [fp, #-12]
80024940:	ea000008 	b	80024968 <memset+0xc8>
80024944:	e51b300c 	ldr	r3, [fp, #-12]
80024948:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002494c:	e5832000 	str	r2, [r3]
80024950:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80024954:	e2433004 	sub	r3, r3, #4
80024958:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
8002495c:	e51b300c 	ldr	r3, [fp, #-12]
80024960:	e2833004 	add	r3, r3, #4
80024964:	e50b300c 	str	r3, [fp, #-12]
80024968:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002496c:	e3530003 	cmp	r3, #3
80024970:	cafffff3 	bgt	80024944 <memset+0xa4>
80024974:	e51b300c 	ldr	r3, [fp, #-12]
80024978:	e50b3008 	str	r3, [fp, #-8]
8002497c:	ea000008 	b	800249a4 <memset+0x104>
80024980:	e51b3008 	ldr	r3, [fp, #-8]
80024984:	e55b200d 	ldrb	r2, [fp, #-13]
80024988:	e5c32000 	strb	r2, [r3]
8002498c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80024990:	e2433001 	sub	r3, r3, #1
80024994:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80024998:	e51b3008 	ldr	r3, [fp, #-8]
8002499c:	e2833001 	add	r3, r3, #1
800249a0:	e50b3008 	str	r3, [fp, #-8]
800249a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800249a8:	e3530000 	cmp	r3, #0
800249ac:	cafffff3 	bgt	80024980 <memset+0xe0>
800249b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800249b4:	e1a00003 	mov	r0, r3
800249b8:	e24bd000 	sub	sp, fp, #0
800249bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800249c0:	e12fff1e 	bx	lr

800249c4 <memcmp>:
800249c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800249c8:	e28db000 	add	fp, sp, #0
800249cc:	e24dd01c 	sub	sp, sp, #28
800249d0:	e50b0010 	str	r0, [fp, #-16]
800249d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800249d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800249dc:	e51b3010 	ldr	r3, [fp, #-16]
800249e0:	e50b3008 	str	r3, [fp, #-8]
800249e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800249e8:	e50b300c 	str	r3, [fp, #-12]
800249ec:	ea000012 	b	80024a3c <memcmp+0x78>
800249f0:	e51b3008 	ldr	r3, [fp, #-8]
800249f4:	e5d32000 	ldrb	r2, [r3]
800249f8:	e51b300c 	ldr	r3, [fp, #-12]
800249fc:	e5d33000 	ldrb	r3, [r3]
80024a00:	e1520003 	cmp	r2, r3
80024a04:	0a000006 	beq	80024a24 <memcmp+0x60>
80024a08:	e51b3008 	ldr	r3, [fp, #-8]
80024a0c:	e5d33000 	ldrb	r3, [r3]
80024a10:	e1a02003 	mov	r2, r3
80024a14:	e51b300c 	ldr	r3, [fp, #-12]
80024a18:	e5d33000 	ldrb	r3, [r3]
80024a1c:	e0633002 	rsb	r3, r3, r2
80024a20:	ea00000b 	b	80024a54 <memcmp+0x90>
80024a24:	e51b3008 	ldr	r3, [fp, #-8]
80024a28:	e2833001 	add	r3, r3, #1
80024a2c:	e50b3008 	str	r3, [fp, #-8]
80024a30:	e51b300c 	ldr	r3, [fp, #-12]
80024a34:	e2833001 	add	r3, r3, #1
80024a38:	e50b300c 	str	r3, [fp, #-12]
80024a3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024a40:	e2432001 	sub	r2, r3, #1
80024a44:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024a48:	e3530000 	cmp	r3, #0
80024a4c:	1affffe7 	bne	800249f0 <memcmp+0x2c>
80024a50:	e3a03000 	mov	r3, #0
80024a54:	e1a00003 	mov	r0, r3
80024a58:	e24bd000 	sub	sp, fp, #0
80024a5c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024a60:	e12fff1e 	bx	lr

80024a64 <memmove>:
80024a64:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024a68:	e28db000 	add	fp, sp, #0
80024a6c:	e24dd01c 	sub	sp, sp, #28
80024a70:	e50b0010 	str	r0, [fp, #-16]
80024a74:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024a78:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024a7c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024a80:	e50b3008 	str	r3, [fp, #-8]
80024a84:	e51b3010 	ldr	r3, [fp, #-16]
80024a88:	e50b300c 	str	r3, [fp, #-12]
80024a8c:	e51b2008 	ldr	r2, [fp, #-8]
80024a90:	e51b300c 	ldr	r3, [fp, #-12]
80024a94:	e1520003 	cmp	r2, r3
80024a98:	2a00001e 	bcs	80024b18 <memmove+0xb4>
80024a9c:	e51b2008 	ldr	r2, [fp, #-8]
80024aa0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024aa4:	e0822003 	add	r2, r2, r3
80024aa8:	e51b300c 	ldr	r3, [fp, #-12]
80024aac:	e1520003 	cmp	r2, r3
80024ab0:	9a000018 	bls	80024b18 <memmove+0xb4>
80024ab4:	e51b2008 	ldr	r2, [fp, #-8]
80024ab8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024abc:	e0823003 	add	r3, r2, r3
80024ac0:	e50b3008 	str	r3, [fp, #-8]
80024ac4:	e51b200c 	ldr	r2, [fp, #-12]
80024ac8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024acc:	e0823003 	add	r3, r2, r3
80024ad0:	e50b300c 	str	r3, [fp, #-12]
80024ad4:	ea000009 	b	80024b00 <memmove+0x9c>
80024ad8:	e51b300c 	ldr	r3, [fp, #-12]
80024adc:	e2433001 	sub	r3, r3, #1
80024ae0:	e50b300c 	str	r3, [fp, #-12]
80024ae4:	e51b3008 	ldr	r3, [fp, #-8]
80024ae8:	e2433001 	sub	r3, r3, #1
80024aec:	e50b3008 	str	r3, [fp, #-8]
80024af0:	e51b3008 	ldr	r3, [fp, #-8]
80024af4:	e5d32000 	ldrb	r2, [r3]
80024af8:	e51b300c 	ldr	r3, [fp, #-12]
80024afc:	e5c32000 	strb	r2, [r3]
80024b00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024b04:	e2432001 	sub	r2, r3, #1
80024b08:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024b0c:	e3530000 	cmp	r3, #0
80024b10:	1afffff0 	bne	80024ad8 <memmove+0x74>
80024b14:	ea00000d 	b	80024b50 <memmove+0xec>
80024b18:	ea000007 	b	80024b3c <memmove+0xd8>
80024b1c:	e51b300c 	ldr	r3, [fp, #-12]
80024b20:	e2832001 	add	r2, r3, #1
80024b24:	e50b200c 	str	r2, [fp, #-12]
80024b28:	e51b2008 	ldr	r2, [fp, #-8]
80024b2c:	e2821001 	add	r1, r2, #1
80024b30:	e50b1008 	str	r1, [fp, #-8]
80024b34:	e5d22000 	ldrb	r2, [r2]
80024b38:	e5c32000 	strb	r2, [r3]
80024b3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024b40:	e2432001 	sub	r2, r3, #1
80024b44:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024b48:	e3530000 	cmp	r3, #0
80024b4c:	1afffff2 	bne	80024b1c <memmove+0xb8>
80024b50:	e51b3010 	ldr	r3, [fp, #-16]
80024b54:	e1a00003 	mov	r0, r3
80024b58:	e24bd000 	sub	sp, fp, #0
80024b5c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024b60:	e12fff1e 	bx	lr

80024b64 <memcpy>:
80024b64:	e92d4800 	push	{fp, lr}
80024b68:	e28db004 	add	fp, sp, #4
80024b6c:	e24dd010 	sub	sp, sp, #16
80024b70:	e50b0008 	str	r0, [fp, #-8]
80024b74:	e50b100c 	str	r1, [fp, #-12]
80024b78:	e50b2010 	str	r2, [fp, #-16]
80024b7c:	e51b0008 	ldr	r0, [fp, #-8]
80024b80:	e51b100c 	ldr	r1, [fp, #-12]
80024b84:	e51b2010 	ldr	r2, [fp, #-16]
80024b88:	ebffffb5 	bl	80024a64 <memmove>
80024b8c:	e1a03000 	mov	r3, r0
80024b90:	e1a00003 	mov	r0, r3
80024b94:	e24bd004 	sub	sp, fp, #4
80024b98:	e8bd8800 	pop	{fp, pc}

80024b9c <strncmp>:
80024b9c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024ba0:	e28db000 	add	fp, sp, #0
80024ba4:	e24dd014 	sub	sp, sp, #20
80024ba8:	e50b0008 	str	r0, [fp, #-8]
80024bac:	e50b100c 	str	r1, [fp, #-12]
80024bb0:	e50b2010 	str	r2, [fp, #-16]
80024bb4:	ea000008 	b	80024bdc <strncmp+0x40>
80024bb8:	e51b3010 	ldr	r3, [fp, #-16]
80024bbc:	e2433001 	sub	r3, r3, #1
80024bc0:	e50b3010 	str	r3, [fp, #-16]
80024bc4:	e51b3008 	ldr	r3, [fp, #-8]
80024bc8:	e2833001 	add	r3, r3, #1
80024bcc:	e50b3008 	str	r3, [fp, #-8]
80024bd0:	e51b300c 	ldr	r3, [fp, #-12]
80024bd4:	e2833001 	add	r3, r3, #1
80024bd8:	e50b300c 	str	r3, [fp, #-12]
80024bdc:	e51b3010 	ldr	r3, [fp, #-16]
80024be0:	e3530000 	cmp	r3, #0
80024be4:	0a000009 	beq	80024c10 <strncmp+0x74>
80024be8:	e51b3008 	ldr	r3, [fp, #-8]
80024bec:	e5d33000 	ldrb	r3, [r3]
80024bf0:	e3530000 	cmp	r3, #0
80024bf4:	0a000005 	beq	80024c10 <strncmp+0x74>
80024bf8:	e51b3008 	ldr	r3, [fp, #-8]
80024bfc:	e5d32000 	ldrb	r2, [r3]
80024c00:	e51b300c 	ldr	r3, [fp, #-12]
80024c04:	e5d33000 	ldrb	r3, [r3]
80024c08:	e1520003 	cmp	r2, r3
80024c0c:	0affffe9 	beq	80024bb8 <strncmp+0x1c>
80024c10:	e51b3010 	ldr	r3, [fp, #-16]
80024c14:	e3530000 	cmp	r3, #0
80024c18:	1a000001 	bne	80024c24 <strncmp+0x88>
80024c1c:	e3a03000 	mov	r3, #0
80024c20:	ea000005 	b	80024c3c <strncmp+0xa0>
80024c24:	e51b3008 	ldr	r3, [fp, #-8]
80024c28:	e5d33000 	ldrb	r3, [r3]
80024c2c:	e1a02003 	mov	r2, r3
80024c30:	e51b300c 	ldr	r3, [fp, #-12]
80024c34:	e5d33000 	ldrb	r3, [r3]
80024c38:	e0633002 	rsb	r3, r3, r2
80024c3c:	e1a00003 	mov	r0, r3
80024c40:	e24bd000 	sub	sp, fp, #0
80024c44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024c48:	e12fff1e 	bx	lr

80024c4c <strncpy>:
80024c4c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024c50:	e28db000 	add	fp, sp, #0
80024c54:	e24dd01c 	sub	sp, sp, #28
80024c58:	e50b0010 	str	r0, [fp, #-16]
80024c5c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024c60:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024c64:	e51b3010 	ldr	r3, [fp, #-16]
80024c68:	e50b3008 	str	r3, [fp, #-8]
80024c6c:	e1a00000 	nop			; (mov r0, r0)
80024c70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024c74:	e2432001 	sub	r2, r3, #1
80024c78:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024c7c:	e3530000 	cmp	r3, #0
80024c80:	da00000a 	ble	80024cb0 <strncpy+0x64>
80024c84:	e51b3010 	ldr	r3, [fp, #-16]
80024c88:	e2832001 	add	r2, r3, #1
80024c8c:	e50b2010 	str	r2, [fp, #-16]
80024c90:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80024c94:	e2821001 	add	r1, r2, #1
80024c98:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024c9c:	e5d22000 	ldrb	r2, [r2]
80024ca0:	e5c32000 	strb	r2, [r3]
80024ca4:	e5d33000 	ldrb	r3, [r3]
80024ca8:	e3530000 	cmp	r3, #0
80024cac:	1affffef 	bne	80024c70 <strncpy+0x24>
80024cb0:	ea000004 	b	80024cc8 <strncpy+0x7c>
80024cb4:	e51b3010 	ldr	r3, [fp, #-16]
80024cb8:	e2832001 	add	r2, r3, #1
80024cbc:	e50b2010 	str	r2, [fp, #-16]
80024cc0:	e3a02000 	mov	r2, #0
80024cc4:	e5c32000 	strb	r2, [r3]
80024cc8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024ccc:	e2432001 	sub	r2, r3, #1
80024cd0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024cd4:	e3530000 	cmp	r3, #0
80024cd8:	cafffff5 	bgt	80024cb4 <strncpy+0x68>
80024cdc:	e51b3008 	ldr	r3, [fp, #-8]
80024ce0:	e1a00003 	mov	r0, r3
80024ce4:	e24bd000 	sub	sp, fp, #0
80024ce8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024cec:	e12fff1e 	bx	lr

80024cf0 <safestrcpy>:
80024cf0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024cf4:	e28db000 	add	fp, sp, #0
80024cf8:	e24dd01c 	sub	sp, sp, #28
80024cfc:	e50b0010 	str	r0, [fp, #-16]
80024d00:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024d04:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024d08:	e51b3010 	ldr	r3, [fp, #-16]
80024d0c:	e50b3008 	str	r3, [fp, #-8]
80024d10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024d14:	e3530000 	cmp	r3, #0
80024d18:	ca000001 	bgt	80024d24 <safestrcpy+0x34>
80024d1c:	e51b3008 	ldr	r3, [fp, #-8]
80024d20:	ea000014 	b	80024d78 <safestrcpy+0x88>
80024d24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024d28:	e2433001 	sub	r3, r3, #1
80024d2c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80024d30:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024d34:	e3530000 	cmp	r3, #0
80024d38:	da00000a 	ble	80024d68 <safestrcpy+0x78>
80024d3c:	e51b3010 	ldr	r3, [fp, #-16]
80024d40:	e2832001 	add	r2, r3, #1
80024d44:	e50b2010 	str	r2, [fp, #-16]
80024d48:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80024d4c:	e2821001 	add	r1, r2, #1
80024d50:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024d54:	e5d22000 	ldrb	r2, [r2]
80024d58:	e5c32000 	strb	r2, [r3]
80024d5c:	e5d33000 	ldrb	r3, [r3]
80024d60:	e3530000 	cmp	r3, #0
80024d64:	1affffee 	bne	80024d24 <safestrcpy+0x34>
80024d68:	e51b3010 	ldr	r3, [fp, #-16]
80024d6c:	e3a02000 	mov	r2, #0
80024d70:	e5c32000 	strb	r2, [r3]
80024d74:	e51b3008 	ldr	r3, [fp, #-8]
80024d78:	e1a00003 	mov	r0, r3
80024d7c:	e24bd000 	sub	sp, fp, #0
80024d80:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024d84:	e12fff1e 	bx	lr

80024d88 <strlen>:
80024d88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024d8c:	e28db000 	add	fp, sp, #0
80024d90:	e24dd014 	sub	sp, sp, #20
80024d94:	e50b0010 	str	r0, [fp, #-16]
80024d98:	e3a03000 	mov	r3, #0
80024d9c:	e50b3008 	str	r3, [fp, #-8]
80024da0:	ea000002 	b	80024db0 <strlen+0x28>
80024da4:	e51b3008 	ldr	r3, [fp, #-8]
80024da8:	e2833001 	add	r3, r3, #1
80024dac:	e50b3008 	str	r3, [fp, #-8]
80024db0:	e51b3008 	ldr	r3, [fp, #-8]
80024db4:	e51b2010 	ldr	r2, [fp, #-16]
80024db8:	e0823003 	add	r3, r2, r3
80024dbc:	e5d33000 	ldrb	r3, [r3]
80024dc0:	e3530000 	cmp	r3, #0
80024dc4:	1afffff6 	bne	80024da4 <strlen+0x1c>
80024dc8:	e51b3008 	ldr	r3, [fp, #-8]
80024dcc:	e1a00003 	mov	r0, r3
80024dd0:	e24bd000 	sub	sp, fp, #0
80024dd4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024dd8:	e12fff1e 	bx	lr

80024ddc <swtch>:
80024ddc:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80024de0:	e580d000 	str	sp, [r0]
80024de4:	e1a0d001 	mov	sp, r1
80024de8:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80024dec:	e12fff1e 	bx	lr

80024df0 <fetchint>:
80024df0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024df4:	e28db000 	add	fp, sp, #0
80024df8:	e24dd00c 	sub	sp, sp, #12
80024dfc:	e50b0008 	str	r0, [fp, #-8]
80024e00:	e50b100c 	str	r1, [fp, #-12]
80024e04:	e59f3058 	ldr	r3, [pc, #88]	; 80024e64 <fetchint+0x74>
80024e08:	e5933000 	ldr	r3, [r3]
80024e0c:	e5932000 	ldr	r2, [r3]
80024e10:	e51b3008 	ldr	r3, [fp, #-8]
80024e14:	e1520003 	cmp	r2, r3
80024e18:	9a000006 	bls	80024e38 <fetchint+0x48>
80024e1c:	e51b3008 	ldr	r3, [fp, #-8]
80024e20:	e2832004 	add	r2, r3, #4
80024e24:	e59f3038 	ldr	r3, [pc, #56]	; 80024e64 <fetchint+0x74>
80024e28:	e5933000 	ldr	r3, [r3]
80024e2c:	e5933000 	ldr	r3, [r3]
80024e30:	e1520003 	cmp	r2, r3
80024e34:	9a000001 	bls	80024e40 <fetchint+0x50>
80024e38:	e3e03000 	mvn	r3, #0
80024e3c:	ea000004 	b	80024e54 <fetchint+0x64>
80024e40:	e51b3008 	ldr	r3, [fp, #-8]
80024e44:	e5932000 	ldr	r2, [r3]
80024e48:	e51b300c 	ldr	r3, [fp, #-12]
80024e4c:	e5832000 	str	r2, [r3]
80024e50:	e3a03000 	mov	r3, #0
80024e54:	e1a00003 	mov	r0, r3
80024e58:	e24bd000 	sub	sp, fp, #0
80024e5c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024e60:	e12fff1e 	bx	lr
80024e64:	800ad60c 	.word	0x800ad60c

80024e68 <fetchstr>:
80024e68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024e6c:	e28db000 	add	fp, sp, #0
80024e70:	e24dd014 	sub	sp, sp, #20
80024e74:	e50b0010 	str	r0, [fp, #-16]
80024e78:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024e7c:	e59f3098 	ldr	r3, [pc, #152]	; 80024f1c <fetchstr+0xb4>
80024e80:	e5933000 	ldr	r3, [r3]
80024e84:	e5932000 	ldr	r2, [r3]
80024e88:	e51b3010 	ldr	r3, [fp, #-16]
80024e8c:	e1520003 	cmp	r2, r3
80024e90:	8a000001 	bhi	80024e9c <fetchstr+0x34>
80024e94:	e3e03000 	mvn	r3, #0
80024e98:	ea00001b 	b	80024f0c <fetchstr+0xa4>
80024e9c:	e51b2010 	ldr	r2, [fp, #-16]
80024ea0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024ea4:	e5832000 	str	r2, [r3]
80024ea8:	e59f306c 	ldr	r3, [pc, #108]	; 80024f1c <fetchstr+0xb4>
80024eac:	e5933000 	ldr	r3, [r3]
80024eb0:	e5933000 	ldr	r3, [r3]
80024eb4:	e50b300c 	str	r3, [fp, #-12]
80024eb8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024ebc:	e5933000 	ldr	r3, [r3]
80024ec0:	e50b3008 	str	r3, [fp, #-8]
80024ec4:	ea00000b 	b	80024ef8 <fetchstr+0x90>
80024ec8:	e51b3008 	ldr	r3, [fp, #-8]
80024ecc:	e5d33000 	ldrb	r3, [r3]
80024ed0:	e3530000 	cmp	r3, #0
80024ed4:	1a000004 	bne	80024eec <fetchstr+0x84>
80024ed8:	e51b3008 	ldr	r3, [fp, #-8]
80024edc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80024ee0:	e5922000 	ldr	r2, [r2]
80024ee4:	e0623003 	rsb	r3, r2, r3
80024ee8:	ea000007 	b	80024f0c <fetchstr+0xa4>
80024eec:	e51b3008 	ldr	r3, [fp, #-8]
80024ef0:	e2833001 	add	r3, r3, #1
80024ef4:	e50b3008 	str	r3, [fp, #-8]
80024ef8:	e51b2008 	ldr	r2, [fp, #-8]
80024efc:	e51b300c 	ldr	r3, [fp, #-12]
80024f00:	e1520003 	cmp	r2, r3
80024f04:	3affffef 	bcc	80024ec8 <fetchstr+0x60>
80024f08:	e3e03000 	mvn	r3, #0
80024f0c:	e1a00003 	mov	r0, r3
80024f10:	e24bd000 	sub	sp, fp, #0
80024f14:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80024f18:	e12fff1e 	bx	lr
80024f1c:	800ad60c 	.word	0x800ad60c

80024f20 <argint>:
80024f20:	e92d4800 	push	{fp, lr}
80024f24:	e28db004 	add	fp, sp, #4
80024f28:	e24dd008 	sub	sp, sp, #8
80024f2c:	e50b0008 	str	r0, [fp, #-8]
80024f30:	e50b100c 	str	r1, [fp, #-12]
80024f34:	e51b3008 	ldr	r3, [fp, #-8]
80024f38:	e3530003 	cmp	r3, #3
80024f3c:	da000001 	ble	80024f48 <argint+0x28>
80024f40:	e59f003c 	ldr	r0, [pc, #60]	; 80024f84 <argint+0x64>
80024f44:	ebffede5 	bl	800206e0 <panic>
80024f48:	e59f3038 	ldr	r3, [pc, #56]	; 80024f88 <argint+0x68>
80024f4c:	e5933000 	ldr	r3, [r3]
80024f50:	e5933018 	ldr	r3, [r3, #24]
80024f54:	e2832014 	add	r2, r3, #20
80024f58:	e51b3008 	ldr	r3, [fp, #-8]
80024f5c:	e1a03103 	lsl	r3, r3, #2
80024f60:	e0823003 	add	r3, r2, r3
80024f64:	e5933000 	ldr	r3, [r3]
80024f68:	e1a02003 	mov	r2, r3
80024f6c:	e51b300c 	ldr	r3, [fp, #-12]
80024f70:	e5832000 	str	r2, [r3]
80024f74:	e3a03000 	mov	r3, #0
80024f78:	e1a00003 	mov	r0, r3
80024f7c:	e24bd004 	sub	sp, fp, #4
80024f80:	e8bd8800 	pop	{fp, pc}
80024f84:	80028ff0 	.word	0x80028ff0
80024f88:	800ad60c 	.word	0x800ad60c

80024f8c <argptr>:
80024f8c:	e92d4800 	push	{fp, lr}
80024f90:	e28db004 	add	fp, sp, #4
80024f94:	e24dd018 	sub	sp, sp, #24
80024f98:	e50b0010 	str	r0, [fp, #-16]
80024f9c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024fa0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024fa4:	e24b3008 	sub	r3, fp, #8
80024fa8:	e51b0010 	ldr	r0, [fp, #-16]
80024fac:	e1a01003 	mov	r1, r3
80024fb0:	ebffffda 	bl	80024f20 <argint>
80024fb4:	e1a03000 	mov	r3, r0
80024fb8:	e3530000 	cmp	r3, #0
80024fbc:	aa000001 	bge	80024fc8 <argptr+0x3c>
80024fc0:	e3e03000 	mvn	r3, #0
80024fc4:	ea000016 	b	80025024 <argptr+0x98>
80024fc8:	e51b3008 	ldr	r3, [fp, #-8]
80024fcc:	e1a02003 	mov	r2, r3
80024fd0:	e59f3058 	ldr	r3, [pc, #88]	; 80025030 <argptr+0xa4>
80024fd4:	e5933000 	ldr	r3, [r3]
80024fd8:	e5933000 	ldr	r3, [r3]
80024fdc:	e1520003 	cmp	r2, r3
80024fe0:	2a000008 	bcs	80025008 <argptr+0x7c>
80024fe4:	e51b3008 	ldr	r3, [fp, #-8]
80024fe8:	e1a02003 	mov	r2, r3
80024fec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024ff0:	e0822003 	add	r2, r2, r3
80024ff4:	e59f3034 	ldr	r3, [pc, #52]	; 80025030 <argptr+0xa4>
80024ff8:	e5933000 	ldr	r3, [r3]
80024ffc:	e5933000 	ldr	r3, [r3]
80025000:	e1520003 	cmp	r2, r3
80025004:	9a000001 	bls	80025010 <argptr+0x84>
80025008:	e3e03000 	mvn	r3, #0
8002500c:	ea000004 	b	80025024 <argptr+0x98>
80025010:	e51b3008 	ldr	r3, [fp, #-8]
80025014:	e1a02003 	mov	r2, r3
80025018:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002501c:	e5832000 	str	r2, [r3]
80025020:	e3a03000 	mov	r3, #0
80025024:	e1a00003 	mov	r0, r3
80025028:	e24bd004 	sub	sp, fp, #4
8002502c:	e8bd8800 	pop	{fp, pc}
80025030:	800ad60c 	.word	0x800ad60c

80025034 <argstr>:
80025034:	e92d4800 	push	{fp, lr}
80025038:	e28db004 	add	fp, sp, #4
8002503c:	e24dd010 	sub	sp, sp, #16
80025040:	e50b0010 	str	r0, [fp, #-16]
80025044:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80025048:	e24b3008 	sub	r3, fp, #8
8002504c:	e51b0010 	ldr	r0, [fp, #-16]
80025050:	e1a01003 	mov	r1, r3
80025054:	ebffffb1 	bl	80024f20 <argint>
80025058:	e1a03000 	mov	r3, r0
8002505c:	e3530000 	cmp	r3, #0
80025060:	aa000001 	bge	8002506c <argstr+0x38>
80025064:	e3e03000 	mvn	r3, #0
80025068:	ea000004 	b	80025080 <argstr+0x4c>
8002506c:	e51b3008 	ldr	r3, [fp, #-8]
80025070:	e1a00003 	mov	r0, r3
80025074:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80025078:	ebffff7a 	bl	80024e68 <fetchstr>
8002507c:	e1a03000 	mov	r3, r0
80025080:	e1a00003 	mov	r0, r3
80025084:	e24bd004 	sub	sp, fp, #4
80025088:	e8bd8800 	pop	{fp, pc}

8002508c <syscall>:
8002508c:	e92d4800 	push	{fp, lr}
80025090:	e28db004 	add	fp, sp, #4
80025094:	e24dd008 	sub	sp, sp, #8
80025098:	e59f30bc 	ldr	r3, [pc, #188]	; 8002515c <syscall+0xd0>
8002509c:	e5933000 	ldr	r3, [r3]
800250a0:	e5933018 	ldr	r3, [r3, #24]
800250a4:	e5933010 	ldr	r3, [r3, #16]
800250a8:	e50b3008 	str	r3, [fp, #-8]
800250ac:	e51b3008 	ldr	r3, [fp, #-8]
800250b0:	e3530000 	cmp	r3, #0
800250b4:	da000016 	ble	80025114 <syscall+0x88>
800250b8:	e51b3008 	ldr	r3, [fp, #-8]
800250bc:	e3530016 	cmp	r3, #22
800250c0:	8a000013 	bhi	80025114 <syscall+0x88>
800250c4:	e59f2094 	ldr	r2, [pc, #148]	; 80025160 <syscall+0xd4>
800250c8:	e51b3008 	ldr	r3, [fp, #-8]
800250cc:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800250d0:	e3530000 	cmp	r3, #0
800250d4:	0a00000e 	beq	80025114 <syscall+0x88>
800250d8:	e59f2080 	ldr	r2, [pc, #128]	; 80025160 <syscall+0xd4>
800250dc:	e51b3008 	ldr	r3, [fp, #-8]
800250e0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800250e4:	e12fff33 	blx	r3
800250e8:	e50b000c 	str	r0, [fp, #-12]
800250ec:	e51b3008 	ldr	r3, [fp, #-8]
800250f0:	e3530007 	cmp	r3, #7
800250f4:	0a000005 	beq	80025110 <syscall+0x84>
800250f8:	e59f305c 	ldr	r3, [pc, #92]	; 8002515c <syscall+0xd0>
800250fc:	e5933000 	ldr	r3, [r3]
80025100:	e5933018 	ldr	r3, [r3, #24]
80025104:	e51b200c 	ldr	r2, [fp, #-12]
80025108:	e5832010 	str	r2, [r3, #16]
8002510c:	ea000010 	b	80025154 <syscall+0xc8>
80025110:	ea00000f 	b	80025154 <syscall+0xc8>
80025114:	e59f3040 	ldr	r3, [pc, #64]	; 8002515c <syscall+0xd0>
80025118:	e5933000 	ldr	r3, [r3]
8002511c:	e5932010 	ldr	r2, [r3, #16]
80025120:	e59f3034 	ldr	r3, [pc, #52]	; 8002515c <syscall+0xd0>
80025124:	e5933000 	ldr	r3, [r3]
80025128:	e283306c 	add	r3, r3, #108	; 0x6c
8002512c:	e59f0030 	ldr	r0, [pc, #48]	; 80025164 <syscall+0xd8>
80025130:	e1a01002 	mov	r1, r2
80025134:	e1a02003 	mov	r2, r3
80025138:	e51b3008 	ldr	r3, [fp, #-8]
8002513c:	ebffece8 	bl	800204e4 <cprintf>
80025140:	e59f3014 	ldr	r3, [pc, #20]	; 8002515c <syscall+0xd0>
80025144:	e5933000 	ldr	r3, [r3]
80025148:	e5933018 	ldr	r3, [r3, #24]
8002514c:	e3e02000 	mvn	r2, #0
80025150:	e5832010 	str	r2, [r3, #16]
80025154:	e24bd004 	sub	sp, fp, #4
80025158:	e8bd8800 	pop	{fp, pc}
8002515c:	800ad60c 	.word	0x800ad60c
80025160:	8002a034 	.word	0x8002a034
80025164:	80029014 	.word	0x80029014

80025168 <argfd>:
80025168:	e92d4800 	push	{fp, lr}
8002516c:	e28db004 	add	fp, sp, #4
80025170:	e24dd018 	sub	sp, sp, #24
80025174:	e50b0010 	str	r0, [fp, #-16]
80025178:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
8002517c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80025180:	e24b300c 	sub	r3, fp, #12
80025184:	e51b0010 	ldr	r0, [fp, #-16]
80025188:	e1a01003 	mov	r1, r3
8002518c:	ebffff63 	bl	80024f20 <argint>
80025190:	e1a03000 	mov	r3, r0
80025194:	e3530000 	cmp	r3, #0
80025198:	aa000001 	bge	800251a4 <argfd+0x3c>
8002519c:	e3e03000 	mvn	r3, #0
800251a0:	ea00001d 	b	8002521c <argfd+0xb4>
800251a4:	e51b300c 	ldr	r3, [fp, #-12]
800251a8:	e3530000 	cmp	r3, #0
800251ac:	ba00000b 	blt	800251e0 <argfd+0x78>
800251b0:	e51b300c 	ldr	r3, [fp, #-12]
800251b4:	e353000f 	cmp	r3, #15
800251b8:	ca000008 	bgt	800251e0 <argfd+0x78>
800251bc:	e59f3064 	ldr	r3, [pc, #100]	; 80025228 <argfd+0xc0>
800251c0:	e5933000 	ldr	r3, [r3]
800251c4:	e51b200c 	ldr	r2, [fp, #-12]
800251c8:	e282200a 	add	r2, r2, #10
800251cc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800251d0:	e50b3008 	str	r3, [fp, #-8]
800251d4:	e51b3008 	ldr	r3, [fp, #-8]
800251d8:	e3530000 	cmp	r3, #0
800251dc:	1a000001 	bne	800251e8 <argfd+0x80>
800251e0:	e3e03000 	mvn	r3, #0
800251e4:	ea00000c 	b	8002521c <argfd+0xb4>
800251e8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800251ec:	e3530000 	cmp	r3, #0
800251f0:	0a000002 	beq	80025200 <argfd+0x98>
800251f4:	e51b200c 	ldr	r2, [fp, #-12]
800251f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800251fc:	e5832000 	str	r2, [r3]
80025200:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025204:	e3530000 	cmp	r3, #0
80025208:	0a000002 	beq	80025218 <argfd+0xb0>
8002520c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025210:	e51b2008 	ldr	r2, [fp, #-8]
80025214:	e5832000 	str	r2, [r3]
80025218:	e3a03000 	mov	r3, #0
8002521c:	e1a00003 	mov	r0, r3
80025220:	e24bd004 	sub	sp, fp, #4
80025224:	e8bd8800 	pop	{fp, pc}
80025228:	800ad60c 	.word	0x800ad60c

8002522c <fdalloc>:
8002522c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025230:	e28db000 	add	fp, sp, #0
80025234:	e24dd014 	sub	sp, sp, #20
80025238:	e50b0010 	str	r0, [fp, #-16]
8002523c:	e3a03000 	mov	r3, #0
80025240:	e50b3008 	str	r3, [fp, #-8]
80025244:	ea000011 	b	80025290 <fdalloc+0x64>
80025248:	e59f3060 	ldr	r3, [pc, #96]	; 800252b0 <fdalloc+0x84>
8002524c:	e5933000 	ldr	r3, [r3]
80025250:	e51b2008 	ldr	r2, [fp, #-8]
80025254:	e282200a 	add	r2, r2, #10
80025258:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002525c:	e3530000 	cmp	r3, #0
80025260:	1a000007 	bne	80025284 <fdalloc+0x58>
80025264:	e59f3044 	ldr	r3, [pc, #68]	; 800252b0 <fdalloc+0x84>
80025268:	e5933000 	ldr	r3, [r3]
8002526c:	e51b2008 	ldr	r2, [fp, #-8]
80025270:	e282200a 	add	r2, r2, #10
80025274:	e51b1010 	ldr	r1, [fp, #-16]
80025278:	e7831102 	str	r1, [r3, r2, lsl #2]
8002527c:	e51b3008 	ldr	r3, [fp, #-8]
80025280:	ea000006 	b	800252a0 <fdalloc+0x74>
80025284:	e51b3008 	ldr	r3, [fp, #-8]
80025288:	e2833001 	add	r3, r3, #1
8002528c:	e50b3008 	str	r3, [fp, #-8]
80025290:	e51b3008 	ldr	r3, [fp, #-8]
80025294:	e353000f 	cmp	r3, #15
80025298:	daffffea 	ble	80025248 <fdalloc+0x1c>
8002529c:	e3e03000 	mvn	r3, #0
800252a0:	e1a00003 	mov	r0, r3
800252a4:	e24bd000 	sub	sp, fp, #0
800252a8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800252ac:	e12fff1e 	bx	lr
800252b0:	800ad60c 	.word	0x800ad60c

800252b4 <sys_dup>:
800252b4:	e92d4800 	push	{fp, lr}
800252b8:	e28db004 	add	fp, sp, #4
800252bc:	e24dd008 	sub	sp, sp, #8
800252c0:	e24b300c 	sub	r3, fp, #12
800252c4:	e3a00000 	mov	r0, #0
800252c8:	e3a01000 	mov	r1, #0
800252cc:	e1a02003 	mov	r2, r3
800252d0:	ebffffa4 	bl	80025168 <argfd>
800252d4:	e1a03000 	mov	r3, r0
800252d8:	e3530000 	cmp	r3, #0
800252dc:	aa000001 	bge	800252e8 <sys_dup+0x34>
800252e0:	e3e03000 	mvn	r3, #0
800252e4:	ea00000c 	b	8002531c <sys_dup+0x68>
800252e8:	e51b300c 	ldr	r3, [fp, #-12]
800252ec:	e1a00003 	mov	r0, r3
800252f0:	ebffffcd 	bl	8002522c <fdalloc>
800252f4:	e50b0008 	str	r0, [fp, #-8]
800252f8:	e51b3008 	ldr	r3, [fp, #-8]
800252fc:	e3530000 	cmp	r3, #0
80025300:	aa000001 	bge	8002530c <sys_dup+0x58>
80025304:	e3e03000 	mvn	r3, #0
80025308:	ea000003 	b	8002531c <sys_dup+0x68>
8002530c:	e51b300c 	ldr	r3, [fp, #-12]
80025310:	e1a00003 	mov	r0, r3
80025314:	ebffef89 	bl	80021140 <filedup>
80025318:	e51b3008 	ldr	r3, [fp, #-8]
8002531c:	e1a00003 	mov	r0, r3
80025320:	e24bd004 	sub	sp, fp, #4
80025324:	e8bd8800 	pop	{fp, pc}

80025328 <sys_read>:
80025328:	e92d4800 	push	{fp, lr}
8002532c:	e28db004 	add	fp, sp, #4
80025330:	e24dd010 	sub	sp, sp, #16
80025334:	e24b3008 	sub	r3, fp, #8
80025338:	e3a00000 	mov	r0, #0
8002533c:	e3a01000 	mov	r1, #0
80025340:	e1a02003 	mov	r2, r3
80025344:	ebffff87 	bl	80025168 <argfd>
80025348:	e1a03000 	mov	r3, r0
8002534c:	e3530000 	cmp	r3, #0
80025350:	ba00000f 	blt	80025394 <sys_read+0x6c>
80025354:	e24b300c 	sub	r3, fp, #12
80025358:	e3a00002 	mov	r0, #2
8002535c:	e1a01003 	mov	r1, r3
80025360:	ebfffeee 	bl	80024f20 <argint>
80025364:	e1a03000 	mov	r3, r0
80025368:	e3530000 	cmp	r3, #0
8002536c:	ba000008 	blt	80025394 <sys_read+0x6c>
80025370:	e51b300c 	ldr	r3, [fp, #-12]
80025374:	e24b2010 	sub	r2, fp, #16
80025378:	e3a00001 	mov	r0, #1
8002537c:	e1a01002 	mov	r1, r2
80025380:	e1a02003 	mov	r2, r3
80025384:	ebffff00 	bl	80024f8c <argptr>
80025388:	e1a03000 	mov	r3, r0
8002538c:	e3530000 	cmp	r3, #0
80025390:	aa000001 	bge	8002539c <sys_read+0x74>
80025394:	e3e03000 	mvn	r3, #0
80025398:	ea000007 	b	800253bc <sys_read+0x94>
8002539c:	e51b1008 	ldr	r1, [fp, #-8]
800253a0:	e51b2010 	ldr	r2, [fp, #-16]
800253a4:	e51b300c 	ldr	r3, [fp, #-12]
800253a8:	e1a00001 	mov	r0, r1
800253ac:	e1a01002 	mov	r1, r2
800253b0:	e1a02003 	mov	r2, r3
800253b4:	ebffefd2 	bl	80021304 <fileread>
800253b8:	e1a03000 	mov	r3, r0
800253bc:	e1a00003 	mov	r0, r3
800253c0:	e24bd004 	sub	sp, fp, #4
800253c4:	e8bd8800 	pop	{fp, pc}

800253c8 <sys_write>:
800253c8:	e92d4800 	push	{fp, lr}
800253cc:	e28db004 	add	fp, sp, #4
800253d0:	e24dd010 	sub	sp, sp, #16
800253d4:	e24b3008 	sub	r3, fp, #8
800253d8:	e3a00000 	mov	r0, #0
800253dc:	e3a01000 	mov	r1, #0
800253e0:	e1a02003 	mov	r2, r3
800253e4:	ebffff5f 	bl	80025168 <argfd>
800253e8:	e1a03000 	mov	r3, r0
800253ec:	e3530000 	cmp	r3, #0
800253f0:	ba00000f 	blt	80025434 <sys_write+0x6c>
800253f4:	e24b300c 	sub	r3, fp, #12
800253f8:	e3a00002 	mov	r0, #2
800253fc:	e1a01003 	mov	r1, r3
80025400:	ebfffec6 	bl	80024f20 <argint>
80025404:	e1a03000 	mov	r3, r0
80025408:	e3530000 	cmp	r3, #0
8002540c:	ba000008 	blt	80025434 <sys_write+0x6c>
80025410:	e51b300c 	ldr	r3, [fp, #-12]
80025414:	e24b2010 	sub	r2, fp, #16
80025418:	e3a00001 	mov	r0, #1
8002541c:	e1a01002 	mov	r1, r2
80025420:	e1a02003 	mov	r2, r3
80025424:	ebfffed8 	bl	80024f8c <argptr>
80025428:	e1a03000 	mov	r3, r0
8002542c:	e3530000 	cmp	r3, #0
80025430:	aa000001 	bge	8002543c <sys_write+0x74>
80025434:	e3e03000 	mvn	r3, #0
80025438:	ea000007 	b	8002545c <sys_write+0x94>
8002543c:	e51b1008 	ldr	r1, [fp, #-8]
80025440:	e51b2010 	ldr	r2, [fp, #-16]
80025444:	e51b300c 	ldr	r3, [fp, #-12]
80025448:	e1a00001 	mov	r0, r1
8002544c:	e1a01002 	mov	r1, r2
80025450:	e1a02003 	mov	r2, r3
80025454:	ebffefe8 	bl	800213fc <filewrite>
80025458:	e1a03000 	mov	r3, r0
8002545c:	e1a00003 	mov	r0, r3
80025460:	e24bd004 	sub	sp, fp, #4
80025464:	e8bd8800 	pop	{fp, pc}

80025468 <sys_close>:
80025468:	e92d4800 	push	{fp, lr}
8002546c:	e28db004 	add	fp, sp, #4
80025470:	e24dd008 	sub	sp, sp, #8
80025474:	e24b2008 	sub	r2, fp, #8
80025478:	e24b300c 	sub	r3, fp, #12
8002547c:	e3a00000 	mov	r0, #0
80025480:	e1a01002 	mov	r1, r2
80025484:	e1a02003 	mov	r2, r3
80025488:	ebffff36 	bl	80025168 <argfd>
8002548c:	e1a03000 	mov	r3, r0
80025490:	e3530000 	cmp	r3, #0
80025494:	aa000001 	bge	800254a0 <sys_close+0x38>
80025498:	e3e03000 	mvn	r3, #0
8002549c:	ea000009 	b	800254c8 <sys_close+0x60>
800254a0:	e59f302c 	ldr	r3, [pc, #44]	; 800254d4 <sys_close+0x6c>
800254a4:	e5933000 	ldr	r3, [r3]
800254a8:	e51b2008 	ldr	r2, [fp, #-8]
800254ac:	e282200a 	add	r2, r2, #10
800254b0:	e3a01000 	mov	r1, #0
800254b4:	e7831102 	str	r1, [r3, r2, lsl #2]
800254b8:	e51b300c 	ldr	r3, [fp, #-12]
800254bc:	e1a00003 	mov	r0, r3
800254c0:	ebffef37 	bl	800211a4 <fileclose>
800254c4:	e3a03000 	mov	r3, #0
800254c8:	e1a00003 	mov	r0, r3
800254cc:	e24bd004 	sub	sp, fp, #4
800254d0:	e8bd8800 	pop	{fp, pc}
800254d4:	800ad60c 	.word	0x800ad60c

800254d8 <sys_fstat>:
800254d8:	e92d4800 	push	{fp, lr}
800254dc:	e28db004 	add	fp, sp, #4
800254e0:	e24dd008 	sub	sp, sp, #8
800254e4:	e24b3008 	sub	r3, fp, #8
800254e8:	e3a00000 	mov	r0, #0
800254ec:	e3a01000 	mov	r1, #0
800254f0:	e1a02003 	mov	r2, r3
800254f4:	ebffff1b 	bl	80025168 <argfd>
800254f8:	e1a03000 	mov	r3, r0
800254fc:	e3530000 	cmp	r3, #0
80025500:	ba000007 	blt	80025524 <sys_fstat+0x4c>
80025504:	e24b300c 	sub	r3, fp, #12
80025508:	e3a00001 	mov	r0, #1
8002550c:	e1a01003 	mov	r1, r3
80025510:	e3a02014 	mov	r2, #20
80025514:	ebfffe9c 	bl	80024f8c <argptr>
80025518:	e1a03000 	mov	r3, r0
8002551c:	e3530000 	cmp	r3, #0
80025520:	aa000001 	bge	8002552c <sys_fstat+0x54>
80025524:	e3e03000 	mvn	r3, #0
80025528:	ea000005 	b	80025544 <sys_fstat+0x6c>
8002552c:	e51b2008 	ldr	r2, [fp, #-8]
80025530:	e51b300c 	ldr	r3, [fp, #-12]
80025534:	e1a00002 	mov	r0, r2
80025538:	e1a01003 	mov	r1, r3
8002553c:	ebffef54 	bl	80021294 <filestat>
80025540:	e1a03000 	mov	r3, r0
80025544:	e1a00003 	mov	r0, r3
80025548:	e24bd004 	sub	sp, fp, #4
8002554c:	e8bd8800 	pop	{fp, pc}

80025550 <sys_link>:
80025550:	e92d4800 	push	{fp, lr}
80025554:	e28db004 	add	fp, sp, #4
80025558:	e24dd020 	sub	sp, sp, #32
8002555c:	e24b3024 	sub	r3, fp, #36	; 0x24
80025560:	e3a00000 	mov	r0, #0
80025564:	e1a01003 	mov	r1, r3
80025568:	ebfffeb1 	bl	80025034 <argstr>
8002556c:	e1a03000 	mov	r3, r0
80025570:	e3530000 	cmp	r3, #0
80025574:	ba000006 	blt	80025594 <sys_link+0x44>
80025578:	e24b3020 	sub	r3, fp, #32
8002557c:	e3a00001 	mov	r0, #1
80025580:	e1a01003 	mov	r1, r3
80025584:	ebfffeaa 	bl	80025034 <argstr>
80025588:	e1a03000 	mov	r3, r0
8002558c:	e3530000 	cmp	r3, #0
80025590:	aa000001 	bge	8002559c <sys_link+0x4c>
80025594:	e3e03000 	mvn	r3, #0
80025598:	ea000059 	b	80025704 <sys_link+0x1b4>
8002559c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800255a0:	e1a00003 	mov	r0, r3
800255a4:	ebfff5af 	bl	80022c68 <namei>
800255a8:	e50b0008 	str	r0, [fp, #-8]
800255ac:	e51b3008 	ldr	r3, [fp, #-8]
800255b0:	e3530000 	cmp	r3, #0
800255b4:	1a000001 	bne	800255c0 <sys_link+0x70>
800255b8:	e3e03000 	mvn	r3, #0
800255bc:	ea000050 	b	80025704 <sys_link+0x1b4>
800255c0:	ebfff67e 	bl	80022fc0 <begin_trans>
800255c4:	e51b0008 	ldr	r0, [fp, #-8]
800255c8:	ebfff1c8 	bl	80021cf0 <ilock>
800255cc:	e51b3008 	ldr	r3, [fp, #-8]
800255d0:	e1d331b0 	ldrh	r3, [r3, #16]
800255d4:	e6bf3073 	sxth	r3, r3
800255d8:	e3530001 	cmp	r3, #1
800255dc:	1a000004 	bne	800255f4 <sys_link+0xa4>
800255e0:	e51b0008 	ldr	r0, [fp, #-8]
800255e4:	ebfff280 	bl	80021fec <iunlockput>
800255e8:	ebfff687 	bl	8002300c <commit_trans>
800255ec:	e3e03000 	mvn	r3, #0
800255f0:	ea000043 	b	80025704 <sys_link+0x1b4>
800255f4:	e51b3008 	ldr	r3, [fp, #-8]
800255f8:	e1d331b6 	ldrh	r3, [r3, #22]
800255fc:	e6ff3073 	uxth	r3, r3
80025600:	e6ff3073 	uxth	r3, r3
80025604:	e2833001 	add	r3, r3, #1
80025608:	e6ff3073 	uxth	r3, r3
8002560c:	e6ff2073 	uxth	r2, r3
80025610:	e51b3008 	ldr	r3, [fp, #-8]
80025614:	e1c321b6 	strh	r2, [r3, #22]
80025618:	e51b0008 	ldr	r0, [fp, #-8]
8002561c:	ebfff119 	bl	80021a88 <iupdate>
80025620:	e51b0008 	ldr	r0, [fp, #-8]
80025624:	ebfff215 	bl	80021e80 <iunlock>
80025628:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
8002562c:	e24b301c 	sub	r3, fp, #28
80025630:	e1a00002 	mov	r0, r2
80025634:	e1a01003 	mov	r1, r3
80025638:	ebfff597 	bl	80022c9c <nameiparent>
8002563c:	e50b000c 	str	r0, [fp, #-12]
80025640:	e51b300c 	ldr	r3, [fp, #-12]
80025644:	e3530000 	cmp	r3, #0
80025648:	1a000000 	bne	80025650 <sys_link+0x100>
8002564c:	ea00001b 	b	800256c0 <sys_link+0x170>
80025650:	e51b000c 	ldr	r0, [fp, #-12]
80025654:	ebfff1a5 	bl	80021cf0 <ilock>
80025658:	e51b300c 	ldr	r3, [fp, #-12]
8002565c:	e5932000 	ldr	r2, [r3]
80025660:	e51b3008 	ldr	r3, [fp, #-8]
80025664:	e5933000 	ldr	r3, [r3]
80025668:	e1520003 	cmp	r2, r3
8002566c:	1a000009 	bne	80025698 <sys_link+0x148>
80025670:	e51b3008 	ldr	r3, [fp, #-8]
80025674:	e5933004 	ldr	r3, [r3, #4]
80025678:	e24b201c 	sub	r2, fp, #28
8002567c:	e51b000c 	ldr	r0, [fp, #-12]
80025680:	e1a01002 	mov	r1, r2
80025684:	e1a02003 	mov	r2, r3
80025688:	ebfff49c 	bl	80022900 <dirlink>
8002568c:	e1a03000 	mov	r3, r0
80025690:	e3530000 	cmp	r3, #0
80025694:	aa000002 	bge	800256a4 <sys_link+0x154>
80025698:	e51b000c 	ldr	r0, [fp, #-12]
8002569c:	ebfff252 	bl	80021fec <iunlockput>
800256a0:	ea000006 	b	800256c0 <sys_link+0x170>
800256a4:	e51b000c 	ldr	r0, [fp, #-12]
800256a8:	ebfff24f 	bl	80021fec <iunlockput>
800256ac:	e51b0008 	ldr	r0, [fp, #-8]
800256b0:	ebfff213 	bl	80021f04 <iput>
800256b4:	ebfff654 	bl	8002300c <commit_trans>
800256b8:	e3a03000 	mov	r3, #0
800256bc:	ea000010 	b	80025704 <sys_link+0x1b4>
800256c0:	e51b0008 	ldr	r0, [fp, #-8]
800256c4:	ebfff189 	bl	80021cf0 <ilock>
800256c8:	e51b3008 	ldr	r3, [fp, #-8]
800256cc:	e1d331b6 	ldrh	r3, [r3, #22]
800256d0:	e6ff3073 	uxth	r3, r3
800256d4:	e6ff3073 	uxth	r3, r3
800256d8:	e2433001 	sub	r3, r3, #1
800256dc:	e6ff3073 	uxth	r3, r3
800256e0:	e6ff2073 	uxth	r2, r3
800256e4:	e51b3008 	ldr	r3, [fp, #-8]
800256e8:	e1c321b6 	strh	r2, [r3, #22]
800256ec:	e51b0008 	ldr	r0, [fp, #-8]
800256f0:	ebfff0e4 	bl	80021a88 <iupdate>
800256f4:	e51b0008 	ldr	r0, [fp, #-8]
800256f8:	ebfff23b 	bl	80021fec <iunlockput>
800256fc:	ebfff642 	bl	8002300c <commit_trans>
80025700:	e3e03000 	mvn	r3, #0
80025704:	e1a00003 	mov	r0, r3
80025708:	e24bd004 	sub	sp, fp, #4
8002570c:	e8bd8800 	pop	{fp, pc}

80025710 <isdirempty>:
80025710:	e92d4800 	push	{fp, lr}
80025714:	e28db004 	add	fp, sp, #4
80025718:	e24dd020 	sub	sp, sp, #32
8002571c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80025720:	e3a03020 	mov	r3, #32
80025724:	e50b3008 	str	r3, [fp, #-8]
80025728:	ea000013 	b	8002577c <isdirempty+0x6c>
8002572c:	e51b3008 	ldr	r3, [fp, #-8]
80025730:	e24b2018 	sub	r2, fp, #24
80025734:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80025738:	e1a01002 	mov	r1, r2
8002573c:	e1a02003 	mov	r2, r3
80025740:	e3a03010 	mov	r3, #16
80025744:	ebfff312 	bl	80022394 <readi>
80025748:	e1a03000 	mov	r3, r0
8002574c:	e3530010 	cmp	r3, #16
80025750:	0a000001 	beq	8002575c <isdirempty+0x4c>
80025754:	e59f0044 	ldr	r0, [pc, #68]	; 800257a0 <isdirempty+0x90>
80025758:	ebffebe0 	bl	800206e0 <panic>
8002575c:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
80025760:	e3530000 	cmp	r3, #0
80025764:	0a000001 	beq	80025770 <isdirempty+0x60>
80025768:	e3a03000 	mov	r3, #0
8002576c:	ea000008 	b	80025794 <isdirempty+0x84>
80025770:	e51b3008 	ldr	r3, [fp, #-8]
80025774:	e2833010 	add	r3, r3, #16
80025778:	e50b3008 	str	r3, [fp, #-8]
8002577c:	e51b2008 	ldr	r2, [fp, #-8]
80025780:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80025784:	e5933018 	ldr	r3, [r3, #24]
80025788:	e1520003 	cmp	r2, r3
8002578c:	3affffe6 	bcc	8002572c <isdirempty+0x1c>
80025790:	e3a03001 	mov	r3, #1
80025794:	e1a00003 	mov	r0, r3
80025798:	e24bd004 	sub	sp, fp, #4
8002579c:	e8bd8800 	pop	{fp, pc}
800257a0:	80029030 	.word	0x80029030

800257a4 <sys_unlink>:
800257a4:	e92d4800 	push	{fp, lr}
800257a8:	e28db004 	add	fp, sp, #4
800257ac:	e24dd030 	sub	sp, sp, #48	; 0x30
800257b0:	e24b3030 	sub	r3, fp, #48	; 0x30
800257b4:	e3a00000 	mov	r0, #0
800257b8:	e1a01003 	mov	r1, r3
800257bc:	ebfffe1c 	bl	80025034 <argstr>
800257c0:	e1a03000 	mov	r3, r0
800257c4:	e3530000 	cmp	r3, #0
800257c8:	aa000001 	bge	800257d4 <sys_unlink+0x30>
800257cc:	e3e03000 	mvn	r3, #0
800257d0:	ea000073 	b	800259a4 <sys_unlink+0x200>
800257d4:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
800257d8:	e24b302c 	sub	r3, fp, #44	; 0x2c
800257dc:	e1a00002 	mov	r0, r2
800257e0:	e1a01003 	mov	r1, r3
800257e4:	ebfff52c 	bl	80022c9c <nameiparent>
800257e8:	e50b0008 	str	r0, [fp, #-8]
800257ec:	e51b3008 	ldr	r3, [fp, #-8]
800257f0:	e3530000 	cmp	r3, #0
800257f4:	1a000001 	bne	80025800 <sys_unlink+0x5c>
800257f8:	e3e03000 	mvn	r3, #0
800257fc:	ea000068 	b	800259a4 <sys_unlink+0x200>
80025800:	ebfff5ee 	bl	80022fc0 <begin_trans>
80025804:	e51b0008 	ldr	r0, [fp, #-8]
80025808:	ebfff138 	bl	80021cf0 <ilock>
8002580c:	e24b302c 	sub	r3, fp, #44	; 0x2c
80025810:	e1a00003 	mov	r0, r3
80025814:	e59f1194 	ldr	r1, [pc, #404]	; 800259b0 <sys_unlink+0x20c>
80025818:	ebfff3e7 	bl	800227bc <namecmp>
8002581c:	e1a03000 	mov	r3, r0
80025820:	e3530000 	cmp	r3, #0
80025824:	0a00005a 	beq	80025994 <sys_unlink+0x1f0>
80025828:	e24b302c 	sub	r3, fp, #44	; 0x2c
8002582c:	e1a00003 	mov	r0, r3
80025830:	e59f117c 	ldr	r1, [pc, #380]	; 800259b4 <sys_unlink+0x210>
80025834:	ebfff3e0 	bl	800227bc <namecmp>
80025838:	e1a03000 	mov	r3, r0
8002583c:	e3530000 	cmp	r3, #0
80025840:	0a000053 	beq	80025994 <sys_unlink+0x1f0>
80025844:	e24b202c 	sub	r2, fp, #44	; 0x2c
80025848:	e24b3034 	sub	r3, fp, #52	; 0x34
8002584c:	e51b0008 	ldr	r0, [fp, #-8]
80025850:	e1a01002 	mov	r1, r2
80025854:	e1a02003 	mov	r2, r3
80025858:	ebfff3e4 	bl	800227f0 <dirlookup>
8002585c:	e50b000c 	str	r0, [fp, #-12]
80025860:	e51b300c 	ldr	r3, [fp, #-12]
80025864:	e3530000 	cmp	r3, #0
80025868:	1a000000 	bne	80025870 <sys_unlink+0xcc>
8002586c:	ea000048 	b	80025994 <sys_unlink+0x1f0>
80025870:	e51b000c 	ldr	r0, [fp, #-12]
80025874:	ebfff11d 	bl	80021cf0 <ilock>
80025878:	e51b300c 	ldr	r3, [fp, #-12]
8002587c:	e1d331b6 	ldrh	r3, [r3, #22]
80025880:	e6bf3073 	sxth	r3, r3
80025884:	e3530000 	cmp	r3, #0
80025888:	ca000001 	bgt	80025894 <sys_unlink+0xf0>
8002588c:	e59f0124 	ldr	r0, [pc, #292]	; 800259b8 <sys_unlink+0x214>
80025890:	ebffeb92 	bl	800206e0 <panic>
80025894:	e51b300c 	ldr	r3, [fp, #-12]
80025898:	e1d331b0 	ldrh	r3, [r3, #16]
8002589c:	e6bf3073 	sxth	r3, r3
800258a0:	e3530001 	cmp	r3, #1
800258a4:	1a000007 	bne	800258c8 <sys_unlink+0x124>
800258a8:	e51b000c 	ldr	r0, [fp, #-12]
800258ac:	ebffff97 	bl	80025710 <isdirempty>
800258b0:	e1a03000 	mov	r3, r0
800258b4:	e3530000 	cmp	r3, #0
800258b8:	1a000002 	bne	800258c8 <sys_unlink+0x124>
800258bc:	e51b000c 	ldr	r0, [fp, #-12]
800258c0:	ebfff1c9 	bl	80021fec <iunlockput>
800258c4:	ea000032 	b	80025994 <sys_unlink+0x1f0>
800258c8:	e24b301c 	sub	r3, fp, #28
800258cc:	e1a00003 	mov	r0, r3
800258d0:	e3a01000 	mov	r1, #0
800258d4:	e3a02010 	mov	r2, #16
800258d8:	ebfffbf0 	bl	800248a0 <memset>
800258dc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
800258e0:	e24b201c 	sub	r2, fp, #28
800258e4:	e51b0008 	ldr	r0, [fp, #-8]
800258e8:	e1a01002 	mov	r1, r2
800258ec:	e1a02003 	mov	r2, r3
800258f0:	e3a03010 	mov	r3, #16
800258f4:	ebfff324 	bl	8002258c <writei>
800258f8:	e1a03000 	mov	r3, r0
800258fc:	e3530010 	cmp	r3, #16
80025900:	0a000001 	beq	8002590c <sys_unlink+0x168>
80025904:	e59f00b0 	ldr	r0, [pc, #176]	; 800259bc <sys_unlink+0x218>
80025908:	ebffeb74 	bl	800206e0 <panic>
8002590c:	e51b300c 	ldr	r3, [fp, #-12]
80025910:	e1d331b0 	ldrh	r3, [r3, #16]
80025914:	e6bf3073 	sxth	r3, r3
80025918:	e3530001 	cmp	r3, #1
8002591c:	1a00000a 	bne	8002594c <sys_unlink+0x1a8>
80025920:	e51b3008 	ldr	r3, [fp, #-8]
80025924:	e1d331b6 	ldrh	r3, [r3, #22]
80025928:	e6ff3073 	uxth	r3, r3
8002592c:	e6ff3073 	uxth	r3, r3
80025930:	e2433001 	sub	r3, r3, #1
80025934:	e6ff3073 	uxth	r3, r3
80025938:	e6ff2073 	uxth	r2, r3
8002593c:	e51b3008 	ldr	r3, [fp, #-8]
80025940:	e1c321b6 	strh	r2, [r3, #22]
80025944:	e51b0008 	ldr	r0, [fp, #-8]
80025948:	ebfff04e 	bl	80021a88 <iupdate>
8002594c:	e51b0008 	ldr	r0, [fp, #-8]
80025950:	ebfff1a5 	bl	80021fec <iunlockput>
80025954:	e51b300c 	ldr	r3, [fp, #-12]
80025958:	e1d331b6 	ldrh	r3, [r3, #22]
8002595c:	e6ff3073 	uxth	r3, r3
80025960:	e6ff3073 	uxth	r3, r3
80025964:	e2433001 	sub	r3, r3, #1
80025968:	e6ff3073 	uxth	r3, r3
8002596c:	e6ff2073 	uxth	r2, r3
80025970:	e51b300c 	ldr	r3, [fp, #-12]
80025974:	e1c321b6 	strh	r2, [r3, #22]
80025978:	e51b000c 	ldr	r0, [fp, #-12]
8002597c:	ebfff041 	bl	80021a88 <iupdate>
80025980:	e51b000c 	ldr	r0, [fp, #-12]
80025984:	ebfff198 	bl	80021fec <iunlockput>
80025988:	ebfff59f 	bl	8002300c <commit_trans>
8002598c:	e3a03000 	mov	r3, #0
80025990:	ea000003 	b	800259a4 <sys_unlink+0x200>
80025994:	e51b0008 	ldr	r0, [fp, #-8]
80025998:	ebfff193 	bl	80021fec <iunlockput>
8002599c:	ebfff59a 	bl	8002300c <commit_trans>
800259a0:	e3e03000 	mvn	r3, #0
800259a4:	e1a00003 	mov	r0, r3
800259a8:	e24bd004 	sub	sp, fp, #4
800259ac:	e8bd8800 	pop	{fp, pc}
800259b0:	80029044 	.word	0x80029044
800259b4:	80029048 	.word	0x80029048
800259b8:	8002904c 	.word	0x8002904c
800259bc:	80029060 	.word	0x80029060

800259c0 <create>:
800259c0:	e92d4800 	push	{fp, lr}
800259c4:	e28db004 	add	fp, sp, #4
800259c8:	e24dd030 	sub	sp, sp, #48	; 0x30
800259cc:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
800259d0:	e14b12ba 	strh	r1, [fp, #-42]	; 0xffffffd6
800259d4:	e14b22bc 	strh	r2, [fp, #-44]	; 0xffffffd4
800259d8:	e14b32be 	strh	r3, [fp, #-46]	; 0xffffffd2
800259dc:	e24b3020 	sub	r3, fp, #32
800259e0:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
800259e4:	e1a01003 	mov	r1, r3
800259e8:	ebfff4ab 	bl	80022c9c <nameiparent>
800259ec:	e50b0008 	str	r0, [fp, #-8]
800259f0:	e51b3008 	ldr	r3, [fp, #-8]
800259f4:	e3530000 	cmp	r3, #0
800259f8:	1a000001 	bne	80025a04 <create+0x44>
800259fc:	e3a03000 	mov	r3, #0
80025a00:	ea000067 	b	80025ba4 <create+0x1e4>
80025a04:	e51b0008 	ldr	r0, [fp, #-8]
80025a08:	ebfff0b8 	bl	80021cf0 <ilock>
80025a0c:	e24b2020 	sub	r2, fp, #32
80025a10:	e24b3010 	sub	r3, fp, #16
80025a14:	e51b0008 	ldr	r0, [fp, #-8]
80025a18:	e1a01002 	mov	r1, r2
80025a1c:	e1a02003 	mov	r2, r3
80025a20:	ebfff372 	bl	800227f0 <dirlookup>
80025a24:	e50b000c 	str	r0, [fp, #-12]
80025a28:	e51b300c 	ldr	r3, [fp, #-12]
80025a2c:	e3530000 	cmp	r3, #0
80025a30:	0a000011 	beq	80025a7c <create+0xbc>
80025a34:	e51b0008 	ldr	r0, [fp, #-8]
80025a38:	ebfff16b 	bl	80021fec <iunlockput>
80025a3c:	e51b000c 	ldr	r0, [fp, #-12]
80025a40:	ebfff0aa 	bl	80021cf0 <ilock>
80025a44:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80025a48:	e3530002 	cmp	r3, #2
80025a4c:	1a000006 	bne	80025a6c <create+0xac>
80025a50:	e51b300c 	ldr	r3, [fp, #-12]
80025a54:	e1d331b0 	ldrh	r3, [r3, #16]
80025a58:	e6bf3073 	sxth	r3, r3
80025a5c:	e3530002 	cmp	r3, #2
80025a60:	1a000001 	bne	80025a6c <create+0xac>
80025a64:	e51b300c 	ldr	r3, [fp, #-12]
80025a68:	ea00004d 	b	80025ba4 <create+0x1e4>
80025a6c:	e51b000c 	ldr	r0, [fp, #-12]
80025a70:	ebfff15d 	bl	80021fec <iunlockput>
80025a74:	e3a03000 	mov	r3, #0
80025a78:	ea000049 	b	80025ba4 <create+0x1e4>
80025a7c:	e51b3008 	ldr	r3, [fp, #-8]
80025a80:	e5932000 	ldr	r2, [r3]
80025a84:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80025a88:	e1a00002 	mov	r0, r2
80025a8c:	e1a01003 	mov	r1, r3
80025a90:	ebffefbc 	bl	80021988 <ialloc>
80025a94:	e50b000c 	str	r0, [fp, #-12]
80025a98:	e51b300c 	ldr	r3, [fp, #-12]
80025a9c:	e3530000 	cmp	r3, #0
80025aa0:	1a000001 	bne	80025aac <create+0xec>
80025aa4:	e59f0104 	ldr	r0, [pc, #260]	; 80025bb0 <create+0x1f0>
80025aa8:	ebffeb0c 	bl	800206e0 <panic>
80025aac:	e51b000c 	ldr	r0, [fp, #-12]
80025ab0:	ebfff08e 	bl	80021cf0 <ilock>
80025ab4:	e51b300c 	ldr	r3, [fp, #-12]
80025ab8:	e15b22bc 	ldrh	r2, [fp, #-44]	; 0xffffffd4
80025abc:	e1c321b2 	strh	r2, [r3, #18]
80025ac0:	e51b300c 	ldr	r3, [fp, #-12]
80025ac4:	e15b22be 	ldrh	r2, [fp, #-46]	; 0xffffffd2
80025ac8:	e1c321b4 	strh	r2, [r3, #20]
80025acc:	e51b300c 	ldr	r3, [fp, #-12]
80025ad0:	e3a02001 	mov	r2, #1
80025ad4:	e1c321b6 	strh	r2, [r3, #22]
80025ad8:	e51b000c 	ldr	r0, [fp, #-12]
80025adc:	ebffefe9 	bl	80021a88 <iupdate>
80025ae0:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80025ae4:	e3530001 	cmp	r3, #1
80025ae8:	1a00001e 	bne	80025b68 <create+0x1a8>
80025aec:	e51b3008 	ldr	r3, [fp, #-8]
80025af0:	e1d331b6 	ldrh	r3, [r3, #22]
80025af4:	e6ff3073 	uxth	r3, r3
80025af8:	e6ff3073 	uxth	r3, r3
80025afc:	e2833001 	add	r3, r3, #1
80025b00:	e6ff3073 	uxth	r3, r3
80025b04:	e6ff2073 	uxth	r2, r3
80025b08:	e51b3008 	ldr	r3, [fp, #-8]
80025b0c:	e1c321b6 	strh	r2, [r3, #22]
80025b10:	e51b0008 	ldr	r0, [fp, #-8]
80025b14:	ebffefdb 	bl	80021a88 <iupdate>
80025b18:	e51b300c 	ldr	r3, [fp, #-12]
80025b1c:	e5933004 	ldr	r3, [r3, #4]
80025b20:	e51b000c 	ldr	r0, [fp, #-12]
80025b24:	e59f1088 	ldr	r1, [pc, #136]	; 80025bb4 <create+0x1f4>
80025b28:	e1a02003 	mov	r2, r3
80025b2c:	ebfff373 	bl	80022900 <dirlink>
80025b30:	e1a03000 	mov	r3, r0
80025b34:	e3530000 	cmp	r3, #0
80025b38:	ba000008 	blt	80025b60 <create+0x1a0>
80025b3c:	e51b3008 	ldr	r3, [fp, #-8]
80025b40:	e5933004 	ldr	r3, [r3, #4]
80025b44:	e51b000c 	ldr	r0, [fp, #-12]
80025b48:	e59f1068 	ldr	r1, [pc, #104]	; 80025bb8 <create+0x1f8>
80025b4c:	e1a02003 	mov	r2, r3
80025b50:	ebfff36a 	bl	80022900 <dirlink>
80025b54:	e1a03000 	mov	r3, r0
80025b58:	e3530000 	cmp	r3, #0
80025b5c:	aa000001 	bge	80025b68 <create+0x1a8>
80025b60:	e59f0054 	ldr	r0, [pc, #84]	; 80025bbc <create+0x1fc>
80025b64:	ebffeadd 	bl	800206e0 <panic>
80025b68:	e51b300c 	ldr	r3, [fp, #-12]
80025b6c:	e5933004 	ldr	r3, [r3, #4]
80025b70:	e24b2020 	sub	r2, fp, #32
80025b74:	e51b0008 	ldr	r0, [fp, #-8]
80025b78:	e1a01002 	mov	r1, r2
80025b7c:	e1a02003 	mov	r2, r3
80025b80:	ebfff35e 	bl	80022900 <dirlink>
80025b84:	e1a03000 	mov	r3, r0
80025b88:	e3530000 	cmp	r3, #0
80025b8c:	aa000001 	bge	80025b98 <create+0x1d8>
80025b90:	e59f0028 	ldr	r0, [pc, #40]	; 80025bc0 <create+0x200>
80025b94:	ebffead1 	bl	800206e0 <panic>
80025b98:	e51b0008 	ldr	r0, [fp, #-8]
80025b9c:	ebfff112 	bl	80021fec <iunlockput>
80025ba0:	e51b300c 	ldr	r3, [fp, #-12]
80025ba4:	e1a00003 	mov	r0, r3
80025ba8:	e24bd004 	sub	sp, fp, #4
80025bac:	e8bd8800 	pop	{fp, pc}
80025bb0:	80029070 	.word	0x80029070
80025bb4:	80029044 	.word	0x80029044
80025bb8:	80029048 	.word	0x80029048
80025bbc:	80029080 	.word	0x80029080
80025bc0:	8002908c 	.word	0x8002908c

80025bc4 <sys_open>:
80025bc4:	e92d4800 	push	{fp, lr}
80025bc8:	e28db004 	add	fp, sp, #4
80025bcc:	e24dd018 	sub	sp, sp, #24
80025bd0:	e24b3014 	sub	r3, fp, #20
80025bd4:	e3a00000 	mov	r0, #0
80025bd8:	e1a01003 	mov	r1, r3
80025bdc:	ebfffd14 	bl	80025034 <argstr>
80025be0:	e1a03000 	mov	r3, r0
80025be4:	e3530000 	cmp	r3, #0
80025be8:	ba000006 	blt	80025c08 <sys_open+0x44>
80025bec:	e24b3018 	sub	r3, fp, #24
80025bf0:	e3a00001 	mov	r0, #1
80025bf4:	e1a01003 	mov	r1, r3
80025bf8:	ebfffcc8 	bl	80024f20 <argint>
80025bfc:	e1a03000 	mov	r3, r0
80025c00:	e3530000 	cmp	r3, #0
80025c04:	aa000001 	bge	80025c10 <sys_open+0x4c>
80025c08:	e3e03000 	mvn	r3, #0
80025c0c:	ea00005f 	b	80025d90 <sys_open+0x1cc>
80025c10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025c14:	e2033c02 	and	r3, r3, #512	; 0x200
80025c18:	e3530000 	cmp	r3, #0
80025c1c:	0a00000d 	beq	80025c58 <sys_open+0x94>
80025c20:	ebfff4e6 	bl	80022fc0 <begin_trans>
80025c24:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80025c28:	e1a00003 	mov	r0, r3
80025c2c:	e3a01002 	mov	r1, #2
80025c30:	e3a02000 	mov	r2, #0
80025c34:	e3a03000 	mov	r3, #0
80025c38:	ebffff60 	bl	800259c0 <create>
80025c3c:	e50b0008 	str	r0, [fp, #-8]
80025c40:	ebfff4f1 	bl	8002300c <commit_trans>
80025c44:	e51b3008 	ldr	r3, [fp, #-8]
80025c48:	e3530000 	cmp	r3, #0
80025c4c:	1a000018 	bne	80025cb4 <sys_open+0xf0>
80025c50:	e3e03000 	mvn	r3, #0
80025c54:	ea00004d 	b	80025d90 <sys_open+0x1cc>
80025c58:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80025c5c:	e1a00003 	mov	r0, r3
80025c60:	ebfff400 	bl	80022c68 <namei>
80025c64:	e50b0008 	str	r0, [fp, #-8]
80025c68:	e51b3008 	ldr	r3, [fp, #-8]
80025c6c:	e3530000 	cmp	r3, #0
80025c70:	1a000001 	bne	80025c7c <sys_open+0xb8>
80025c74:	e3e03000 	mvn	r3, #0
80025c78:	ea000044 	b	80025d90 <sys_open+0x1cc>
80025c7c:	e51b0008 	ldr	r0, [fp, #-8]
80025c80:	ebfff01a 	bl	80021cf0 <ilock>
80025c84:	e51b3008 	ldr	r3, [fp, #-8]
80025c88:	e1d331b0 	ldrh	r3, [r3, #16]
80025c8c:	e6bf3073 	sxth	r3, r3
80025c90:	e3530001 	cmp	r3, #1
80025c94:	1a000006 	bne	80025cb4 <sys_open+0xf0>
80025c98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025c9c:	e3530000 	cmp	r3, #0
80025ca0:	0a000003 	beq	80025cb4 <sys_open+0xf0>
80025ca4:	e51b0008 	ldr	r0, [fp, #-8]
80025ca8:	ebfff0cf 	bl	80021fec <iunlockput>
80025cac:	e3e03000 	mvn	r3, #0
80025cb0:	ea000036 	b	80025d90 <sys_open+0x1cc>
80025cb4:	ebffecfe 	bl	800210b4 <filealloc>
80025cb8:	e50b000c 	str	r0, [fp, #-12]
80025cbc:	e51b300c 	ldr	r3, [fp, #-12]
80025cc0:	e3530000 	cmp	r3, #0
80025cc4:	0a000005 	beq	80025ce0 <sys_open+0x11c>
80025cc8:	e51b000c 	ldr	r0, [fp, #-12]
80025ccc:	ebfffd56 	bl	8002522c <fdalloc>
80025cd0:	e50b0010 	str	r0, [fp, #-16]
80025cd4:	e51b3010 	ldr	r3, [fp, #-16]
80025cd8:	e3530000 	cmp	r3, #0
80025cdc:	aa000008 	bge	80025d04 <sys_open+0x140>
80025ce0:	e51b300c 	ldr	r3, [fp, #-12]
80025ce4:	e3530000 	cmp	r3, #0
80025ce8:	0a000001 	beq	80025cf4 <sys_open+0x130>
80025cec:	e51b000c 	ldr	r0, [fp, #-12]
80025cf0:	ebffed2b 	bl	800211a4 <fileclose>
80025cf4:	e51b0008 	ldr	r0, [fp, #-8]
80025cf8:	ebfff0bb 	bl	80021fec <iunlockput>
80025cfc:	e3e03000 	mvn	r3, #0
80025d00:	ea000022 	b	80025d90 <sys_open+0x1cc>
80025d04:	e51b0008 	ldr	r0, [fp, #-8]
80025d08:	ebfff05c 	bl	80021e80 <iunlock>
80025d0c:	e51b300c 	ldr	r3, [fp, #-12]
80025d10:	e3a02002 	mov	r2, #2
80025d14:	e5c32000 	strb	r2, [r3]
80025d18:	e51b300c 	ldr	r3, [fp, #-12]
80025d1c:	e51b2008 	ldr	r2, [fp, #-8]
80025d20:	e5832010 	str	r2, [r3, #16]
80025d24:	e51b300c 	ldr	r3, [fp, #-12]
80025d28:	e3a02000 	mov	r2, #0
80025d2c:	e5832014 	str	r2, [r3, #20]
80025d30:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025d34:	e2033001 	and	r3, r3, #1
80025d38:	e3530000 	cmp	r3, #0
80025d3c:	03a03001 	moveq	r3, #1
80025d40:	13a03000 	movne	r3, #0
80025d44:	e6ef3073 	uxtb	r3, r3
80025d48:	e1a02003 	mov	r2, r3
80025d4c:	e51b300c 	ldr	r3, [fp, #-12]
80025d50:	e5c32008 	strb	r2, [r3, #8]
80025d54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025d58:	e2033001 	and	r3, r3, #1
80025d5c:	e3530000 	cmp	r3, #0
80025d60:	1a000003 	bne	80025d74 <sys_open+0x1b0>
80025d64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025d68:	e2033002 	and	r3, r3, #2
80025d6c:	e3530000 	cmp	r3, #0
80025d70:	0a000001 	beq	80025d7c <sys_open+0x1b8>
80025d74:	e3a03001 	mov	r3, #1
80025d78:	ea000000 	b	80025d80 <sys_open+0x1bc>
80025d7c:	e3a03000 	mov	r3, #0
80025d80:	e6ef2073 	uxtb	r2, r3
80025d84:	e51b300c 	ldr	r3, [fp, #-12]
80025d88:	e5c32009 	strb	r2, [r3, #9]
80025d8c:	e51b3010 	ldr	r3, [fp, #-16]
80025d90:	e1a00003 	mov	r0, r3
80025d94:	e24bd004 	sub	sp, fp, #4
80025d98:	e8bd8800 	pop	{fp, pc}

80025d9c <sys_mkdir>:
80025d9c:	e92d4800 	push	{fp, lr}
80025da0:	e28db004 	add	fp, sp, #4
80025da4:	e24dd008 	sub	sp, sp, #8
80025da8:	ebfff484 	bl	80022fc0 <begin_trans>
80025dac:	e24b300c 	sub	r3, fp, #12
80025db0:	e3a00000 	mov	r0, #0
80025db4:	e1a01003 	mov	r1, r3
80025db8:	ebfffc9d 	bl	80025034 <argstr>
80025dbc:	e1a03000 	mov	r3, r0
80025dc0:	e3530000 	cmp	r3, #0
80025dc4:	ba000009 	blt	80025df0 <sys_mkdir+0x54>
80025dc8:	e51b300c 	ldr	r3, [fp, #-12]
80025dcc:	e1a00003 	mov	r0, r3
80025dd0:	e3a01001 	mov	r1, #1
80025dd4:	e3a02000 	mov	r2, #0
80025dd8:	e3a03000 	mov	r3, #0
80025ddc:	ebfffef7 	bl	800259c0 <create>
80025de0:	e50b0008 	str	r0, [fp, #-8]
80025de4:	e51b3008 	ldr	r3, [fp, #-8]
80025de8:	e3530000 	cmp	r3, #0
80025dec:	1a000002 	bne	80025dfc <sys_mkdir+0x60>
80025df0:	ebfff485 	bl	8002300c <commit_trans>
80025df4:	e3e03000 	mvn	r3, #0
80025df8:	ea000003 	b	80025e0c <sys_mkdir+0x70>
80025dfc:	e51b0008 	ldr	r0, [fp, #-8]
80025e00:	ebfff079 	bl	80021fec <iunlockput>
80025e04:	ebfff480 	bl	8002300c <commit_trans>
80025e08:	e3a03000 	mov	r3, #0
80025e0c:	e1a00003 	mov	r0, r3
80025e10:	e24bd004 	sub	sp, fp, #4
80025e14:	e8bd8800 	pop	{fp, pc}

80025e18 <sys_mknod>:
80025e18:	e92d4800 	push	{fp, lr}
80025e1c:	e28db004 	add	fp, sp, #4
80025e20:	e24dd018 	sub	sp, sp, #24
80025e24:	ebfff465 	bl	80022fc0 <begin_trans>
80025e28:	e24b3010 	sub	r3, fp, #16
80025e2c:	e3a00000 	mov	r0, #0
80025e30:	e1a01003 	mov	r1, r3
80025e34:	ebfffc7e 	bl	80025034 <argstr>
80025e38:	e50b0008 	str	r0, [fp, #-8]
80025e3c:	e51b3008 	ldr	r3, [fp, #-8]
80025e40:	e3530000 	cmp	r3, #0
80025e44:	ba00001b 	blt	80025eb8 <sys_mknod+0xa0>
80025e48:	e24b3014 	sub	r3, fp, #20
80025e4c:	e3a00001 	mov	r0, #1
80025e50:	e1a01003 	mov	r1, r3
80025e54:	ebfffc31 	bl	80024f20 <argint>
80025e58:	e1a03000 	mov	r3, r0
80025e5c:	e3530000 	cmp	r3, #0
80025e60:	ba000014 	blt	80025eb8 <sys_mknod+0xa0>
80025e64:	e24b3018 	sub	r3, fp, #24
80025e68:	e3a00002 	mov	r0, #2
80025e6c:	e1a01003 	mov	r1, r3
80025e70:	ebfffc2a 	bl	80024f20 <argint>
80025e74:	e1a03000 	mov	r3, r0
80025e78:	e3530000 	cmp	r3, #0
80025e7c:	ba00000d 	blt	80025eb8 <sys_mknod+0xa0>
80025e80:	e51b1010 	ldr	r1, [fp, #-16]
80025e84:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80025e88:	e6ff2073 	uxth	r2, r3
80025e8c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80025e90:	e6ff3073 	uxth	r3, r3
80025e94:	e6bf2072 	sxth	r2, r2
80025e98:	e6bf3073 	sxth	r3, r3
80025e9c:	e1a00001 	mov	r0, r1
80025ea0:	e3a01003 	mov	r1, #3
80025ea4:	ebfffec5 	bl	800259c0 <create>
80025ea8:	e50b000c 	str	r0, [fp, #-12]
80025eac:	e51b300c 	ldr	r3, [fp, #-12]
80025eb0:	e3530000 	cmp	r3, #0
80025eb4:	1a000002 	bne	80025ec4 <sys_mknod+0xac>
80025eb8:	ebfff453 	bl	8002300c <commit_trans>
80025ebc:	e3e03000 	mvn	r3, #0
80025ec0:	ea000003 	b	80025ed4 <sys_mknod+0xbc>
80025ec4:	e51b000c 	ldr	r0, [fp, #-12]
80025ec8:	ebfff047 	bl	80021fec <iunlockput>
80025ecc:	ebfff44e 	bl	8002300c <commit_trans>
80025ed0:	e3a03000 	mov	r3, #0
80025ed4:	e1a00003 	mov	r0, r3
80025ed8:	e24bd004 	sub	sp, fp, #4
80025edc:	e8bd8800 	pop	{fp, pc}

80025ee0 <sys_chdir>:
80025ee0:	e92d4800 	push	{fp, lr}
80025ee4:	e28db004 	add	fp, sp, #4
80025ee8:	e24dd008 	sub	sp, sp, #8
80025eec:	e24b300c 	sub	r3, fp, #12
80025ef0:	e3a00000 	mov	r0, #0
80025ef4:	e1a01003 	mov	r1, r3
80025ef8:	ebfffc4d 	bl	80025034 <argstr>
80025efc:	e1a03000 	mov	r3, r0
80025f00:	e3530000 	cmp	r3, #0
80025f04:	ba000006 	blt	80025f24 <sys_chdir+0x44>
80025f08:	e51b300c 	ldr	r3, [fp, #-12]
80025f0c:	e1a00003 	mov	r0, r3
80025f10:	ebfff354 	bl	80022c68 <namei>
80025f14:	e50b0008 	str	r0, [fp, #-8]
80025f18:	e51b3008 	ldr	r3, [fp, #-8]
80025f1c:	e3530000 	cmp	r3, #0
80025f20:	1a000001 	bne	80025f2c <sys_chdir+0x4c>
80025f24:	e3e03000 	mvn	r3, #0
80025f28:	ea000016 	b	80025f88 <sys_chdir+0xa8>
80025f2c:	e51b0008 	ldr	r0, [fp, #-8]
80025f30:	ebffef6e 	bl	80021cf0 <ilock>
80025f34:	e51b3008 	ldr	r3, [fp, #-8]
80025f38:	e1d331b0 	ldrh	r3, [r3, #16]
80025f3c:	e6bf3073 	sxth	r3, r3
80025f40:	e3530001 	cmp	r3, #1
80025f44:	0a000003 	beq	80025f58 <sys_chdir+0x78>
80025f48:	e51b0008 	ldr	r0, [fp, #-8]
80025f4c:	ebfff026 	bl	80021fec <iunlockput>
80025f50:	e3e03000 	mvn	r3, #0
80025f54:	ea00000b 	b	80025f88 <sys_chdir+0xa8>
80025f58:	e51b0008 	ldr	r0, [fp, #-8]
80025f5c:	ebffefc7 	bl	80021e80 <iunlock>
80025f60:	e59f302c 	ldr	r3, [pc, #44]	; 80025f94 <sys_chdir+0xb4>
80025f64:	e5933000 	ldr	r3, [r3]
80025f68:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80025f6c:	e1a00003 	mov	r0, r3
80025f70:	ebffefe3 	bl	80021f04 <iput>
80025f74:	e59f3018 	ldr	r3, [pc, #24]	; 80025f94 <sys_chdir+0xb4>
80025f78:	e5933000 	ldr	r3, [r3]
80025f7c:	e51b2008 	ldr	r2, [fp, #-8]
80025f80:	e5832068 	str	r2, [r3, #104]	; 0x68
80025f84:	e3a03000 	mov	r3, #0
80025f88:	e1a00003 	mov	r0, r3
80025f8c:	e24bd004 	sub	sp, fp, #4
80025f90:	e8bd8800 	pop	{fp, pc}
80025f94:	800ad60c 	.word	0x800ad60c

80025f98 <sys_exec>:
80025f98:	e92d4800 	push	{fp, lr}
80025f9c:	e28db004 	add	fp, sp, #4
80025fa0:	e24dd090 	sub	sp, sp, #144	; 0x90
80025fa4:	e24b300c 	sub	r3, fp, #12
80025fa8:	e3a00000 	mov	r0, #0
80025fac:	e1a01003 	mov	r1, r3
80025fb0:	ebfffc1f 	bl	80025034 <argstr>
80025fb4:	e1a03000 	mov	r3, r0
80025fb8:	e3530000 	cmp	r3, #0
80025fbc:	ba000006 	blt	80025fdc <sys_exec+0x44>
80025fc0:	e24b3090 	sub	r3, fp, #144	; 0x90
80025fc4:	e3a00001 	mov	r0, #1
80025fc8:	e1a01003 	mov	r1, r3
80025fcc:	ebfffbd3 	bl	80024f20 <argint>
80025fd0:	e1a03000 	mov	r3, r0
80025fd4:	e3530000 	cmp	r3, #0
80025fd8:	aa000001 	bge	80025fe4 <sys_exec+0x4c>
80025fdc:	e3e03000 	mvn	r3, #0
80025fe0:	ea00003b 	b	800260d4 <sys_exec+0x13c>
80025fe4:	e24b308c 	sub	r3, fp, #140	; 0x8c
80025fe8:	e1a00003 	mov	r0, r3
80025fec:	e3a01000 	mov	r1, #0
80025ff0:	e3a02080 	mov	r2, #128	; 0x80
80025ff4:	ebfffa29 	bl	800248a0 <memset>
80025ff8:	e3a03000 	mov	r3, #0
80025ffc:	e50b3008 	str	r3, [fp, #-8]
80026000:	e51b3008 	ldr	r3, [fp, #-8]
80026004:	e353001f 	cmp	r3, #31
80026008:	9a000001 	bls	80026014 <sys_exec+0x7c>
8002600c:	e3e03000 	mvn	r3, #0
80026010:	ea00002f 	b	800260d4 <sys_exec+0x13c>
80026014:	e51b3008 	ldr	r3, [fp, #-8]
80026018:	e1a03103 	lsl	r3, r3, #2
8002601c:	e1a02003 	mov	r2, r3
80026020:	e51b3090 	ldr	r3, [fp, #-144]	; 0xffffff70
80026024:	e0822003 	add	r2, r2, r3
80026028:	e24b3094 	sub	r3, fp, #148	; 0x94
8002602c:	e1a00002 	mov	r0, r2
80026030:	e1a01003 	mov	r1, r3
80026034:	ebfffb6d 	bl	80024df0 <fetchint>
80026038:	e1a03000 	mov	r3, r0
8002603c:	e3530000 	cmp	r3, #0
80026040:	aa000001 	bge	8002604c <sys_exec+0xb4>
80026044:	e3e03000 	mvn	r3, #0
80026048:	ea000021 	b	800260d4 <sys_exec+0x13c>
8002604c:	e51b3094 	ldr	r3, [fp, #-148]	; 0xffffff6c
80026050:	e3530000 	cmp	r3, #0
80026054:	1a00000d 	bne	80026090 <sys_exec+0xf8>
80026058:	e51b3008 	ldr	r3, [fp, #-8]
8002605c:	e1a03103 	lsl	r3, r3, #2
80026060:	e24b2004 	sub	r2, fp, #4
80026064:	e0823003 	add	r3, r2, r3
80026068:	e3a02000 	mov	r2, #0
8002606c:	e5032088 	str	r2, [r3, #-136]	; 0xffffff78
80026070:	e1a00000 	nop			; (mov r0, r0)
80026074:	e51b200c 	ldr	r2, [fp, #-12]
80026078:	e24b308c 	sub	r3, fp, #140	; 0x8c
8002607c:	e1a00002 	mov	r0, r2
80026080:	e1a01003 	mov	r1, r3
80026084:	ebffead6 	bl	80020be4 <exec>
80026088:	e1a03000 	mov	r3, r0
8002608c:	ea000010 	b	800260d4 <sys_exec+0x13c>
80026090:	e51b1094 	ldr	r1, [fp, #-148]	; 0xffffff6c
80026094:	e24b208c 	sub	r2, fp, #140	; 0x8c
80026098:	e51b3008 	ldr	r3, [fp, #-8]
8002609c:	e1a03103 	lsl	r3, r3, #2
800260a0:	e0823003 	add	r3, r2, r3
800260a4:	e1a00001 	mov	r0, r1
800260a8:	e1a01003 	mov	r1, r3
800260ac:	ebfffb6d 	bl	80024e68 <fetchstr>
800260b0:	e1a03000 	mov	r3, r0
800260b4:	e3530000 	cmp	r3, #0
800260b8:	aa000001 	bge	800260c4 <sys_exec+0x12c>
800260bc:	e3e03000 	mvn	r3, #0
800260c0:	ea000003 	b	800260d4 <sys_exec+0x13c>
800260c4:	e51b3008 	ldr	r3, [fp, #-8]
800260c8:	e2833001 	add	r3, r3, #1
800260cc:	e50b3008 	str	r3, [fp, #-8]
800260d0:	eaffffca 	b	80026000 <sys_exec+0x68>
800260d4:	e1a00003 	mov	r0, r3
800260d8:	e24bd004 	sub	sp, fp, #4
800260dc:	e8bd8800 	pop	{fp, pc}

800260e0 <sys_pipe>:
800260e0:	e92d4800 	push	{fp, lr}
800260e4:	e28db004 	add	fp, sp, #4
800260e8:	e24dd018 	sub	sp, sp, #24
800260ec:	e24b3010 	sub	r3, fp, #16
800260f0:	e3a00000 	mov	r0, #0
800260f4:	e1a01003 	mov	r1, r3
800260f8:	e3a02008 	mov	r2, #8
800260fc:	ebfffba2 	bl	80024f8c <argptr>
80026100:	e1a03000 	mov	r3, r0
80026104:	e3530000 	cmp	r3, #0
80026108:	aa000001 	bge	80026114 <sys_pipe+0x34>
8002610c:	e3e03000 	mvn	r3, #0
80026110:	ea000032 	b	800261e0 <sys_pipe+0x100>
80026114:	e24b2014 	sub	r2, fp, #20
80026118:	e24b3018 	sub	r3, fp, #24
8002611c:	e1a00002 	mov	r0, r2
80026120:	e1a01003 	mov	r1, r3
80026124:	ebfff4f1 	bl	800234f0 <pipealloc>
80026128:	e1a03000 	mov	r3, r0
8002612c:	e3530000 	cmp	r3, #0
80026130:	aa000001 	bge	8002613c <sys_pipe+0x5c>
80026134:	e3e03000 	mvn	r3, #0
80026138:	ea000028 	b	800261e0 <sys_pipe+0x100>
8002613c:	e3e03000 	mvn	r3, #0
80026140:	e50b3008 	str	r3, [fp, #-8]
80026144:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026148:	e1a00003 	mov	r0, r3
8002614c:	ebfffc36 	bl	8002522c <fdalloc>
80026150:	e50b0008 	str	r0, [fp, #-8]
80026154:	e51b3008 	ldr	r3, [fp, #-8]
80026158:	e3530000 	cmp	r3, #0
8002615c:	ba000006 	blt	8002617c <sys_pipe+0x9c>
80026160:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026164:	e1a00003 	mov	r0, r3
80026168:	ebfffc2f 	bl	8002522c <fdalloc>
8002616c:	e50b000c 	str	r0, [fp, #-12]
80026170:	e51b300c 	ldr	r3, [fp, #-12]
80026174:	e3530000 	cmp	r3, #0
80026178:	aa000010 	bge	800261c0 <sys_pipe+0xe0>
8002617c:	e51b3008 	ldr	r3, [fp, #-8]
80026180:	e3530000 	cmp	r3, #0
80026184:	ba000005 	blt	800261a0 <sys_pipe+0xc0>
80026188:	e59f305c 	ldr	r3, [pc, #92]	; 800261ec <sys_pipe+0x10c>
8002618c:	e5933000 	ldr	r3, [r3]
80026190:	e51b2008 	ldr	r2, [fp, #-8]
80026194:	e282200a 	add	r2, r2, #10
80026198:	e3a01000 	mov	r1, #0
8002619c:	e7831102 	str	r1, [r3, r2, lsl #2]
800261a0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800261a4:	e1a00003 	mov	r0, r3
800261a8:	ebffebfd 	bl	800211a4 <fileclose>
800261ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800261b0:	e1a00003 	mov	r0, r3
800261b4:	ebffebfa 	bl	800211a4 <fileclose>
800261b8:	e3e03000 	mvn	r3, #0
800261bc:	ea000007 	b	800261e0 <sys_pipe+0x100>
800261c0:	e51b3010 	ldr	r3, [fp, #-16]
800261c4:	e51b2008 	ldr	r2, [fp, #-8]
800261c8:	e5832000 	str	r2, [r3]
800261cc:	e51b3010 	ldr	r3, [fp, #-16]
800261d0:	e2833004 	add	r3, r3, #4
800261d4:	e51b200c 	ldr	r2, [fp, #-12]
800261d8:	e5832000 	str	r2, [r3]
800261dc:	e3a03000 	mov	r3, #0
800261e0:	e1a00003 	mov	r0, r3
800261e4:	e24bd004 	sub	sp, fp, #4
800261e8:	e8bd8800 	pop	{fp, pc}
800261ec:	800ad60c 	.word	0x800ad60c

800261f0 <sys_fork>:
800261f0:	e92d4800 	push	{fp, lr}
800261f4:	e28db004 	add	fp, sp, #4
800261f8:	ebfff6f8 	bl	80023de0 <fork>
800261fc:	e1a03000 	mov	r3, r0
80026200:	e1a00003 	mov	r0, r3
80026204:	e8bd8800 	pop	{fp, pc}

80026208 <sys_exit>:
80026208:	e92d4800 	push	{fp, lr}
8002620c:	e28db004 	add	fp, sp, #4
80026210:	ebfff769 	bl	80023fbc <exit>
80026214:	e3a03000 	mov	r3, #0
80026218:	e1a00003 	mov	r0, r3
8002621c:	e8bd8800 	pop	{fp, pc}

80026220 <sys_wait>:
80026220:	e92d4800 	push	{fp, lr}
80026224:	e28db004 	add	fp, sp, #4
80026228:	ebfff7c5 	bl	80024144 <wait>
8002622c:	e1a03000 	mov	r3, r0
80026230:	e1a00003 	mov	r0, r3
80026234:	e8bd8800 	pop	{fp, pc}

80026238 <sys_kill>:
80026238:	e92d4800 	push	{fp, lr}
8002623c:	e28db004 	add	fp, sp, #4
80026240:	e24dd008 	sub	sp, sp, #8
80026244:	e24b3008 	sub	r3, fp, #8
80026248:	e3a00000 	mov	r0, #0
8002624c:	e1a01003 	mov	r1, r3
80026250:	ebfffb32 	bl	80024f20 <argint>
80026254:	e1a03000 	mov	r3, r0
80026258:	e3530000 	cmp	r3, #0
8002625c:	aa000001 	bge	80026268 <sys_kill+0x30>
80026260:	e3e03000 	mvn	r3, #0
80026264:	ea000003 	b	80026278 <sys_kill+0x40>
80026268:	e51b3008 	ldr	r3, [fp, #-8]
8002626c:	e1a00003 	mov	r0, r3
80026270:	ebfff8f0 	bl	80024638 <kill>
80026274:	e1a03000 	mov	r3, r0
80026278:	e1a00003 	mov	r0, r3
8002627c:	e24bd004 	sub	sp, fp, #4
80026280:	e8bd8800 	pop	{fp, pc}

80026284 <sys_getpid>:
80026284:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026288:	e28db000 	add	fp, sp, #0
8002628c:	e59f3014 	ldr	r3, [pc, #20]	; 800262a8 <sys_getpid+0x24>
80026290:	e5933000 	ldr	r3, [r3]
80026294:	e5933010 	ldr	r3, [r3, #16]
80026298:	e1a00003 	mov	r0, r3
8002629c:	e24bd000 	sub	sp, fp, #0
800262a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800262a4:	e12fff1e 	bx	lr
800262a8:	800ad60c 	.word	0x800ad60c

800262ac <sys_sbrk>:
800262ac:	e92d4800 	push	{fp, lr}
800262b0:	e28db004 	add	fp, sp, #4
800262b4:	e24dd008 	sub	sp, sp, #8
800262b8:	e24b300c 	sub	r3, fp, #12
800262bc:	e3a00000 	mov	r0, #0
800262c0:	e1a01003 	mov	r1, r3
800262c4:	ebfffb15 	bl	80024f20 <argint>
800262c8:	e1a03000 	mov	r3, r0
800262cc:	e3530000 	cmp	r3, #0
800262d0:	aa000001 	bge	800262dc <sys_sbrk+0x30>
800262d4:	e3e03000 	mvn	r3, #0
800262d8:	ea00000c 	b	80026310 <sys_sbrk+0x64>
800262dc:	e59f3038 	ldr	r3, [pc, #56]	; 8002631c <sys_sbrk+0x70>
800262e0:	e5933000 	ldr	r3, [r3]
800262e4:	e5933000 	ldr	r3, [r3]
800262e8:	e50b3008 	str	r3, [fp, #-8]
800262ec:	e51b300c 	ldr	r3, [fp, #-12]
800262f0:	e1a00003 	mov	r0, r3
800262f4:	ebfff67c 	bl	80023cec <growproc>
800262f8:	e1a03000 	mov	r3, r0
800262fc:	e3530000 	cmp	r3, #0
80026300:	aa000001 	bge	8002630c <sys_sbrk+0x60>
80026304:	e3e03000 	mvn	r3, #0
80026308:	ea000000 	b	80026310 <sys_sbrk+0x64>
8002630c:	e51b3008 	ldr	r3, [fp, #-8]
80026310:	e1a00003 	mov	r0, r3
80026314:	e24bd004 	sub	sp, fp, #4
80026318:	e8bd8800 	pop	{fp, pc}
8002631c:	800ad60c 	.word	0x800ad60c

80026320 <sys_sleep>:
80026320:	e92d4800 	push	{fp, lr}
80026324:	e28db004 	add	fp, sp, #4
80026328:	e24dd008 	sub	sp, sp, #8
8002632c:	e24b300c 	sub	r3, fp, #12
80026330:	e3a00000 	mov	r0, #0
80026334:	e1a01003 	mov	r1, r3
80026338:	ebfffaf8 	bl	80024f20 <argint>
8002633c:	e1a03000 	mov	r3, r0
80026340:	e3530000 	cmp	r3, #0
80026344:	aa000001 	bge	80026350 <sys_sleep+0x30>
80026348:	e3e03000 	mvn	r3, #0
8002634c:	ea00001b 	b	800263c0 <sys_sleep+0xa0>
80026350:	e59f0074 	ldr	r0, [pc, #116]	; 800263cc <sys_sleep+0xac>
80026354:	ebfff933 	bl	80024828 <acquire>
80026358:	e59f3070 	ldr	r3, [pc, #112]	; 800263d0 <sys_sleep+0xb0>
8002635c:	e5933000 	ldr	r3, [r3]
80026360:	e50b3008 	str	r3, [fp, #-8]
80026364:	ea00000b 	b	80026398 <sys_sleep+0x78>
80026368:	e59f3064 	ldr	r3, [pc, #100]	; 800263d4 <sys_sleep+0xb4>
8002636c:	e5933000 	ldr	r3, [r3]
80026370:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80026374:	e3530000 	cmp	r3, #0
80026378:	0a000003 	beq	8002638c <sys_sleep+0x6c>
8002637c:	e59f0048 	ldr	r0, [pc, #72]	; 800263cc <sys_sleep+0xac>
80026380:	ebfff932 	bl	80024850 <release>
80026384:	e3e03000 	mvn	r3, #0
80026388:	ea00000c 	b	800263c0 <sys_sleep+0xa0>
8002638c:	e59f003c 	ldr	r0, [pc, #60]	; 800263d0 <sys_sleep+0xb0>
80026390:	e59f1034 	ldr	r1, [pc, #52]	; 800263cc <sys_sleep+0xac>
80026394:	ebfff848 	bl	800244bc <sleep>
80026398:	e59f3030 	ldr	r3, [pc, #48]	; 800263d0 <sys_sleep+0xb0>
8002639c:	e5932000 	ldr	r2, [r3]
800263a0:	e51b3008 	ldr	r3, [fp, #-8]
800263a4:	e0633002 	rsb	r3, r3, r2
800263a8:	e51b200c 	ldr	r2, [fp, #-12]
800263ac:	e1530002 	cmp	r3, r2
800263b0:	3affffec 	bcc	80026368 <sys_sleep+0x48>
800263b4:	e59f0010 	ldr	r0, [pc, #16]	; 800263cc <sys_sleep+0xac>
800263b8:	ebfff924 	bl	80024850 <release>
800263bc:	e3a03000 	mov	r3, #0
800263c0:	e1a00003 	mov	r0, r3
800263c4:	e24bd004 	sub	sp, fp, #4
800263c8:	e8bd8800 	pop	{fp, pc}
800263cc:	800af584 	.word	0x800af584
800263d0:	800af5b8 	.word	0x800af5b8
800263d4:	800ad60c 	.word	0x800ad60c

800263d8 <sys_uptime>:
800263d8:	e92d4800 	push	{fp, lr}
800263dc:	e28db004 	add	fp, sp, #4
800263e0:	e24dd008 	sub	sp, sp, #8
800263e4:	e59f0024 	ldr	r0, [pc, #36]	; 80026410 <sys_uptime+0x38>
800263e8:	ebfff90e 	bl	80024828 <acquire>
800263ec:	e59f3020 	ldr	r3, [pc, #32]	; 80026414 <sys_uptime+0x3c>
800263f0:	e5933000 	ldr	r3, [r3]
800263f4:	e50b3008 	str	r3, [fp, #-8]
800263f8:	e59f0010 	ldr	r0, [pc, #16]	; 80026410 <sys_uptime+0x38>
800263fc:	ebfff913 	bl	80024850 <release>
80026400:	e51b3008 	ldr	r3, [fp, #-8]
80026404:	e1a00003 	mov	r0, r3
80026408:	e24bd004 	sub	sp, fp, #4
8002640c:	e8bd8800 	pop	{fp, pc}
80026410:	800af584 	.word	0x800af584
80026414:	800af5b8 	.word	0x800af5b8

80026418 <swi_handler>:
80026418:	e92d4800 	push	{fp, lr}
8002641c:	e28db004 	add	fp, sp, #4
80026420:	e24dd008 	sub	sp, sp, #8
80026424:	e50b0008 	str	r0, [fp, #-8]
80026428:	e59f3044 	ldr	r3, [pc, #68]	; 80026474 <swi_handler+0x5c>
8002642c:	e5933000 	ldr	r3, [r3]
80026430:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80026434:	e3530000 	cmp	r3, #0
80026438:	0a000000 	beq	80026440 <swi_handler+0x28>
8002643c:	ebfff6de 	bl	80023fbc <exit>
80026440:	e59f302c 	ldr	r3, [pc, #44]	; 80026474 <swi_handler+0x5c>
80026444:	e5933000 	ldr	r3, [r3]
80026448:	e51b2008 	ldr	r2, [fp, #-8]
8002644c:	e5832018 	str	r2, [r3, #24]
80026450:	ebfffb0d 	bl	8002508c <syscall>
80026454:	e59f3018 	ldr	r3, [pc, #24]	; 80026474 <swi_handler+0x5c>
80026458:	e5933000 	ldr	r3, [r3]
8002645c:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80026460:	e3530000 	cmp	r3, #0
80026464:	0a000000 	beq	8002646c <swi_handler+0x54>
80026468:	ebfff6d3 	bl	80023fbc <exit>
8002646c:	e24bd004 	sub	sp, fp, #4
80026470:	e8bd8800 	pop	{fp, pc}
80026474:	800ad60c 	.word	0x800ad60c

80026478 <irq_handler>:
80026478:	e92d4800 	push	{fp, lr}
8002647c:	e28db004 	add	fp, sp, #4
80026480:	e24dd008 	sub	sp, sp, #8
80026484:	e50b0008 	str	r0, [fp, #-8]
80026488:	e59f3028 	ldr	r3, [pc, #40]	; 800264b8 <irq_handler+0x40>
8002648c:	e5933000 	ldr	r3, [r3]
80026490:	e3530000 	cmp	r3, #0
80026494:	0a000003 	beq	800264a8 <irq_handler+0x30>
80026498:	e59f3018 	ldr	r3, [pc, #24]	; 800264b8 <irq_handler+0x40>
8002649c:	e5933000 	ldr	r3, [r3]
800264a0:	e51b2008 	ldr	r2, [fp, #-8]
800264a4:	e5832018 	str	r2, [r3, #24]
800264a8:	e51b0008 	ldr	r0, [fp, #-8]
800264ac:	ebfff3e8 	bl	80023454 <pic_dispatch>
800264b0:	e24bd004 	sub	sp, fp, #4
800264b4:	e8bd8800 	pop	{fp, pc}
800264b8:	800ad60c 	.word	0x800ad60c

800264bc <reset_handler>:
800264bc:	e92d4800 	push	{fp, lr}
800264c0:	e28db004 	add	fp, sp, #4
800264c4:	e24dd008 	sub	sp, sp, #8
800264c8:	e50b0008 	str	r0, [fp, #-8]
800264cc:	eb0004cd 	bl	80027808 <cli>
800264d0:	e51b3008 	ldr	r3, [fp, #-8]
800264d4:	e5933044 	ldr	r3, [r3, #68]	; 0x44
800264d8:	e59f000c 	ldr	r0, [pc, #12]	; 800264ec <reset_handler+0x30>
800264dc:	e1a01003 	mov	r1, r3
800264e0:	ebffe7ff 	bl	800204e4 <cprintf>
800264e4:	e24bd004 	sub	sp, fp, #4
800264e8:	e8bd8800 	pop	{fp, pc}
800264ec:	8002909c 	.word	0x8002909c

800264f0 <und_handler>:
800264f0:	e92d4800 	push	{fp, lr}
800264f4:	e28db004 	add	fp, sp, #4
800264f8:	e24dd008 	sub	sp, sp, #8
800264fc:	e50b0008 	str	r0, [fp, #-8]
80026500:	eb0004c0 	bl	80027808 <cli>
80026504:	e51b3008 	ldr	r3, [fp, #-8]
80026508:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002650c:	e59f000c 	ldr	r0, [pc, #12]	; 80026520 <und_handler+0x30>
80026510:	e1a01003 	mov	r1, r3
80026514:	ebffe7f2 	bl	800204e4 <cprintf>
80026518:	e24bd004 	sub	sp, fp, #4
8002651c:	e8bd8800 	pop	{fp, pc}
80026520:	800290b0 	.word	0x800290b0

80026524 <dabort_handler>:
80026524:	e92d4800 	push	{fp, lr}
80026528:	e28db004 	add	fp, sp, #4
8002652c:	e24dd010 	sub	sp, sp, #16
80026530:	e50b0010 	str	r0, [fp, #-16]
80026534:	eb0004b3 	bl	80027808 <cli>
80026538:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
8002653c:	e50b3008 	str	r3, [fp, #-8]
80026540:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80026544:	e50b300c 	str	r3, [fp, #-12]
80026548:	e51b3010 	ldr	r3, [fp, #-16]
8002654c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80026550:	e59f001c 	ldr	r0, [pc, #28]	; 80026574 <dabort_handler+0x50>
80026554:	e1a01003 	mov	r1, r3
80026558:	e51b200c 	ldr	r2, [fp, #-12]
8002655c:	e51b3008 	ldr	r3, [fp, #-8]
80026560:	ebffe7df 	bl	800204e4 <cprintf>
80026564:	e51b0010 	ldr	r0, [fp, #-16]
80026568:	eb0000a5 	bl	80026804 <dump_trapframe>
8002656c:	e24bd004 	sub	sp, fp, #4
80026570:	e8bd8800 	pop	{fp, pc}
80026574:	800290c0 	.word	0x800290c0

80026578 <iabort_handler>:
80026578:	e92d4800 	push	{fp, lr}
8002657c:	e28db004 	add	fp, sp, #4
80026580:	e24dd010 	sub	sp, sp, #16
80026584:	e50b0010 	str	r0, [fp, #-16]
80026588:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
8002658c:	e50b3008 	str	r3, [fp, #-8]
80026590:	eb00049c 	bl	80027808 <cli>
80026594:	e51b3010 	ldr	r3, [fp, #-16]
80026598:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002659c:	e59f0018 	ldr	r0, [pc, #24]	; 800265bc <iabort_handler+0x44>
800265a0:	e1a01003 	mov	r1, r3
800265a4:	e51b2008 	ldr	r2, [fp, #-8]
800265a8:	ebffe7cd 	bl	800204e4 <cprintf>
800265ac:	e51b0010 	ldr	r0, [fp, #-16]
800265b0:	eb000093 	bl	80026804 <dump_trapframe>
800265b4:	e24bd004 	sub	sp, fp, #4
800265b8:	e8bd8800 	pop	{fp, pc}
800265bc:	80029100 	.word	0x80029100

800265c0 <na_handler>:
800265c0:	e92d4800 	push	{fp, lr}
800265c4:	e28db004 	add	fp, sp, #4
800265c8:	e24dd008 	sub	sp, sp, #8
800265cc:	e50b0008 	str	r0, [fp, #-8]
800265d0:	eb00048c 	bl	80027808 <cli>
800265d4:	e51b3008 	ldr	r3, [fp, #-8]
800265d8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
800265dc:	e59f000c 	ldr	r0, [pc, #12]	; 800265f0 <na_handler+0x30>
800265e0:	e1a01003 	mov	r1, r3
800265e4:	ebffe7be 	bl	800204e4 <cprintf>
800265e8:	e24bd004 	sub	sp, fp, #4
800265ec:	e8bd8800 	pop	{fp, pc}
800265f0:	80029128 	.word	0x80029128

800265f4 <fiq_handler>:
800265f4:	e92d4800 	push	{fp, lr}
800265f8:	e28db004 	add	fp, sp, #4
800265fc:	e24dd008 	sub	sp, sp, #8
80026600:	e50b0008 	str	r0, [fp, #-8]
80026604:	eb00047f 	bl	80027808 <cli>
80026608:	e51b3008 	ldr	r3, [fp, #-8]
8002660c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80026610:	e59f000c 	ldr	r0, [pc, #12]	; 80026624 <fiq_handler+0x30>
80026614:	e1a01003 	mov	r1, r3
80026618:	ebffe7b1 	bl	800204e4 <cprintf>
8002661c:	e24bd004 	sub	sp, fp, #4
80026620:	e8bd8800 	pop	{fp, pc}
80026624:	80029138 	.word	0x80029138

80026628 <trap_init>:
80026628:	e92d4800 	push	{fp, lr}
8002662c:	e28db004 	add	fp, sp, #4
80026630:	e24dd020 	sub	sp, sp, #32
80026634:	e59f3198 	ldr	r3, [pc, #408]	; 800267d4 <trap_init+0x1ac>
80026638:	e24bc020 	sub	ip, fp, #32
8002663c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80026640:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80026644:	e59f318c 	ldr	r3, [pc, #396]	; 800267d8 <trap_init+0x1b0>
80026648:	e50b300c 	str	r3, [fp, #-12]
8002664c:	e59f3188 	ldr	r3, [pc, #392]	; 800267dc <trap_init+0x1b4>
80026650:	e3832018 	orr	r2, r3, #24
80026654:	e51b300c 	ldr	r3, [fp, #-12]
80026658:	e5832000 	str	r2, [r3]
8002665c:	e51b300c 	ldr	r3, [fp, #-12]
80026660:	e2833004 	add	r3, r3, #4
80026664:	e59f2170 	ldr	r2, [pc, #368]	; 800267dc <trap_init+0x1b4>
80026668:	e3822018 	orr	r2, r2, #24
8002666c:	e5832000 	str	r2, [r3]
80026670:	e51b300c 	ldr	r3, [fp, #-12]
80026674:	e2833008 	add	r3, r3, #8
80026678:	e59f215c 	ldr	r2, [pc, #348]	; 800267dc <trap_init+0x1b4>
8002667c:	e3822018 	orr	r2, r2, #24
80026680:	e5832000 	str	r2, [r3]
80026684:	e51b300c 	ldr	r3, [fp, #-12]
80026688:	e283300c 	add	r3, r3, #12
8002668c:	e59f2148 	ldr	r2, [pc, #328]	; 800267dc <trap_init+0x1b4>
80026690:	e3822018 	orr	r2, r2, #24
80026694:	e5832000 	str	r2, [r3]
80026698:	e51b300c 	ldr	r3, [fp, #-12]
8002669c:	e2833010 	add	r3, r3, #16
800266a0:	e59f2134 	ldr	r2, [pc, #308]	; 800267dc <trap_init+0x1b4>
800266a4:	e3822018 	orr	r2, r2, #24
800266a8:	e5832000 	str	r2, [r3]
800266ac:	e51b300c 	ldr	r3, [fp, #-12]
800266b0:	e2833014 	add	r3, r3, #20
800266b4:	e59f2120 	ldr	r2, [pc, #288]	; 800267dc <trap_init+0x1b4>
800266b8:	e3822018 	orr	r2, r2, #24
800266bc:	e5832000 	str	r2, [r3]
800266c0:	e51b300c 	ldr	r3, [fp, #-12]
800266c4:	e2833018 	add	r3, r3, #24
800266c8:	e59f210c 	ldr	r2, [pc, #268]	; 800267dc <trap_init+0x1b4>
800266cc:	e3822018 	orr	r2, r2, #24
800266d0:	e5832000 	str	r2, [r3]
800266d4:	e51b300c 	ldr	r3, [fp, #-12]
800266d8:	e283301c 	add	r3, r3, #28
800266dc:	e59f20f8 	ldr	r2, [pc, #248]	; 800267dc <trap_init+0x1b4>
800266e0:	e3822018 	orr	r2, r2, #24
800266e4:	e5832000 	str	r2, [r3]
800266e8:	e51b300c 	ldr	r3, [fp, #-12]
800266ec:	e2833020 	add	r3, r3, #32
800266f0:	e59f20e8 	ldr	r2, [pc, #232]	; 800267e0 <trap_init+0x1b8>
800266f4:	e5832000 	str	r2, [r3]
800266f8:	e51b300c 	ldr	r3, [fp, #-12]
800266fc:	e2833024 	add	r3, r3, #36	; 0x24
80026700:	e59f20dc 	ldr	r2, [pc, #220]	; 800267e4 <trap_init+0x1bc>
80026704:	e5832000 	str	r2, [r3]
80026708:	e51b300c 	ldr	r3, [fp, #-12]
8002670c:	e2833028 	add	r3, r3, #40	; 0x28
80026710:	e59f20d0 	ldr	r2, [pc, #208]	; 800267e8 <trap_init+0x1c0>
80026714:	e5832000 	str	r2, [r3]
80026718:	e51b300c 	ldr	r3, [fp, #-12]
8002671c:	e283302c 	add	r3, r3, #44	; 0x2c
80026720:	e59f20c4 	ldr	r2, [pc, #196]	; 800267ec <trap_init+0x1c4>
80026724:	e5832000 	str	r2, [r3]
80026728:	e51b300c 	ldr	r3, [fp, #-12]
8002672c:	e2833030 	add	r3, r3, #48	; 0x30
80026730:	e59f20b8 	ldr	r2, [pc, #184]	; 800267f0 <trap_init+0x1c8>
80026734:	e5832000 	str	r2, [r3]
80026738:	e51b300c 	ldr	r3, [fp, #-12]
8002673c:	e2833034 	add	r3, r3, #52	; 0x34
80026740:	e59f20ac 	ldr	r2, [pc, #172]	; 800267f4 <trap_init+0x1cc>
80026744:	e5832000 	str	r2, [r3]
80026748:	e51b300c 	ldr	r3, [fp, #-12]
8002674c:	e2833038 	add	r3, r3, #56	; 0x38
80026750:	e59f20a0 	ldr	r2, [pc, #160]	; 800267f8 <trap_init+0x1d0>
80026754:	e5832000 	str	r2, [r3]
80026758:	e51b300c 	ldr	r3, [fp, #-12]
8002675c:	e283303c 	add	r3, r3, #60	; 0x3c
80026760:	e59f2094 	ldr	r2, [pc, #148]	; 800267fc <trap_init+0x1d4>
80026764:	e5832000 	str	r2, [r3]
80026768:	e3a03000 	mov	r3, #0
8002676c:	e50b3008 	str	r3, [fp, #-8]
80026770:	ea000012 	b	800267c0 <trap_init+0x198>
80026774:	eb00087a 	bl	80028964 <alloc_page>
80026778:	e50b0010 	str	r0, [fp, #-16]
8002677c:	e51b3010 	ldr	r3, [fp, #-16]
80026780:	e3530000 	cmp	r3, #0
80026784:	1a000001 	bne	80026790 <trap_init+0x168>
80026788:	e59f0070 	ldr	r0, [pc, #112]	; 80026800 <trap_init+0x1d8>
8002678c:	ebffe7d3 	bl	800206e0 <panic>
80026790:	e51b3008 	ldr	r3, [fp, #-8]
80026794:	e1a03103 	lsl	r3, r3, #2
80026798:	e24b2004 	sub	r2, fp, #4
8002679c:	e0823003 	add	r3, r2, r3
800267a0:	e513201c 	ldr	r2, [r3, #-28]	; 0xffffffe4
800267a4:	e51b3010 	ldr	r3, [fp, #-16]
800267a8:	e1a00002 	mov	r0, r2
800267ac:	e1a01003 	mov	r1, r3
800267b0:	eb0004e7 	bl	80027b54 <set_stk>
800267b4:	e51b3008 	ldr	r3, [fp, #-8]
800267b8:	e2833001 	add	r3, r3, #1
800267bc:	e50b3008 	str	r3, [fp, #-8]
800267c0:	e51b3008 	ldr	r3, [fp, #-8]
800267c4:	e3530003 	cmp	r3, #3
800267c8:	9affffe9 	bls	80026774 <trap_init+0x14c>
800267cc:	e24bd004 	sub	sp, fp, #4
800267d0:	e8bd8800 	pop	{fp, pc}
800267d4:	80029170 	.word	0x80029170
800267d8:	ffff0000 	.word	0xffff0000
800267dc:	e59ff000 	.word	0xe59ff000
800267e0:	80027efc 	.word	0x80027efc
800267e4:	80027f24 	.word	0x80027f24
800267e8:	80027e70 	.word	0x80027e70
800267ec:	80027f48 	.word	0x80027f48
800267f0:	80027f70 	.word	0x80027f70
800267f4:	80027fa0 	.word	0x80027fa0
800267f8:	80027ea8 	.word	0x80027ea8
800267fc:	80027fc4 	.word	0x80027fc4
80026800:	80029148 	.word	0x80029148

80026804 <dump_trapframe>:
80026804:	e92d4800 	push	{fp, lr}
80026808:	e28db004 	add	fp, sp, #4
8002680c:	e24dd008 	sub	sp, sp, #8
80026810:	e50b0008 	str	r0, [fp, #-8]
80026814:	e51b3008 	ldr	r3, [fp, #-8]
80026818:	e5933008 	ldr	r3, [r3, #8]
8002681c:	e59f0138 	ldr	r0, [pc, #312]	; 8002695c <dump_trapframe+0x158>
80026820:	e1a01003 	mov	r1, r3
80026824:	ebffe72e 	bl	800204e4 <cprintf>
80026828:	e51b3008 	ldr	r3, [fp, #-8]
8002682c:	e593300c 	ldr	r3, [r3, #12]
80026830:	e59f0128 	ldr	r0, [pc, #296]	; 80026960 <dump_trapframe+0x15c>
80026834:	e1a01003 	mov	r1, r3
80026838:	ebffe729 	bl	800204e4 <cprintf>
8002683c:	e51b3008 	ldr	r3, [fp, #-8]
80026840:	e5933010 	ldr	r3, [r3, #16]
80026844:	e59f0118 	ldr	r0, [pc, #280]	; 80026964 <dump_trapframe+0x160>
80026848:	e1a01003 	mov	r1, r3
8002684c:	ebffe724 	bl	800204e4 <cprintf>
80026850:	e51b3008 	ldr	r3, [fp, #-8]
80026854:	e5933014 	ldr	r3, [r3, #20]
80026858:	e59f0108 	ldr	r0, [pc, #264]	; 80026968 <dump_trapframe+0x164>
8002685c:	e1a01003 	mov	r1, r3
80026860:	ebffe71f 	bl	800204e4 <cprintf>
80026864:	e51b3008 	ldr	r3, [fp, #-8]
80026868:	e5933018 	ldr	r3, [r3, #24]
8002686c:	e59f00f8 	ldr	r0, [pc, #248]	; 8002696c <dump_trapframe+0x168>
80026870:	e1a01003 	mov	r1, r3
80026874:	ebffe71a 	bl	800204e4 <cprintf>
80026878:	e51b3008 	ldr	r3, [fp, #-8]
8002687c:	e593301c 	ldr	r3, [r3, #28]
80026880:	e59f00e8 	ldr	r0, [pc, #232]	; 80026970 <dump_trapframe+0x16c>
80026884:	e1a01003 	mov	r1, r3
80026888:	ebffe715 	bl	800204e4 <cprintf>
8002688c:	e51b3008 	ldr	r3, [fp, #-8]
80026890:	e5933020 	ldr	r3, [r3, #32]
80026894:	e59f00d8 	ldr	r0, [pc, #216]	; 80026974 <dump_trapframe+0x170>
80026898:	e1a01003 	mov	r1, r3
8002689c:	ebffe710 	bl	800204e4 <cprintf>
800268a0:	e51b3008 	ldr	r3, [fp, #-8]
800268a4:	e5933024 	ldr	r3, [r3, #36]	; 0x24
800268a8:	e59f00c8 	ldr	r0, [pc, #200]	; 80026978 <dump_trapframe+0x174>
800268ac:	e1a01003 	mov	r1, r3
800268b0:	ebffe70b 	bl	800204e4 <cprintf>
800268b4:	e51b3008 	ldr	r3, [fp, #-8]
800268b8:	e5933028 	ldr	r3, [r3, #40]	; 0x28
800268bc:	e59f00b8 	ldr	r0, [pc, #184]	; 8002697c <dump_trapframe+0x178>
800268c0:	e1a01003 	mov	r1, r3
800268c4:	ebffe706 	bl	800204e4 <cprintf>
800268c8:	e51b3008 	ldr	r3, [fp, #-8]
800268cc:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
800268d0:	e59f00a8 	ldr	r0, [pc, #168]	; 80026980 <dump_trapframe+0x17c>
800268d4:	e1a01003 	mov	r1, r3
800268d8:	ebffe701 	bl	800204e4 <cprintf>
800268dc:	e51b3008 	ldr	r3, [fp, #-8]
800268e0:	e5933030 	ldr	r3, [r3, #48]	; 0x30
800268e4:	e59f0098 	ldr	r0, [pc, #152]	; 80026984 <dump_trapframe+0x180>
800268e8:	e1a01003 	mov	r1, r3
800268ec:	ebffe6fc 	bl	800204e4 <cprintf>
800268f0:	e51b3008 	ldr	r3, [fp, #-8]
800268f4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
800268f8:	e59f0088 	ldr	r0, [pc, #136]	; 80026988 <dump_trapframe+0x184>
800268fc:	e1a01003 	mov	r1, r3
80026900:	ebffe6f7 	bl	800204e4 <cprintf>
80026904:	e51b3008 	ldr	r3, [fp, #-8]
80026908:	e5933038 	ldr	r3, [r3, #56]	; 0x38
8002690c:	e59f0078 	ldr	r0, [pc, #120]	; 8002698c <dump_trapframe+0x188>
80026910:	e1a01003 	mov	r1, r3
80026914:	ebffe6f2 	bl	800204e4 <cprintf>
80026918:	e51b3008 	ldr	r3, [fp, #-8]
8002691c:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
80026920:	e59f0068 	ldr	r0, [pc, #104]	; 80026990 <dump_trapframe+0x18c>
80026924:	e1a01003 	mov	r1, r3
80026928:	ebffe6ed 	bl	800204e4 <cprintf>
8002692c:	e51b3008 	ldr	r3, [fp, #-8]
80026930:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80026934:	e59f0058 	ldr	r0, [pc, #88]	; 80026994 <dump_trapframe+0x190>
80026938:	e1a01003 	mov	r1, r3
8002693c:	ebffe6e8 	bl	800204e4 <cprintf>
80026940:	e51b3008 	ldr	r3, [fp, #-8]
80026944:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80026948:	e59f0048 	ldr	r0, [pc, #72]	; 80026998 <dump_trapframe+0x194>
8002694c:	e1a01003 	mov	r1, r3
80026950:	ebffe6e3 	bl	800204e4 <cprintf>
80026954:	e24bd004 	sub	sp, fp, #4
80026958:	e8bd8800 	pop	{fp, pc}
8002695c:	80029180 	.word	0x80029180
80026960:	80029190 	.word	0x80029190
80026964:	800291a0 	.word	0x800291a0
80026968:	800291b0 	.word	0x800291b0
8002696c:	800291c0 	.word	0x800291c0
80026970:	800291d0 	.word	0x800291d0
80026974:	800291e0 	.word	0x800291e0
80026978:	800291f0 	.word	0x800291f0
8002697c:	80029200 	.word	0x80029200
80026980:	80029210 	.word	0x80029210
80026984:	80029220 	.word	0x80029220
80026988:	80029230 	.word	0x80029230
8002698c:	80029240 	.word	0x80029240
80026990:	80029250 	.word	0x80029250
80026994:	80029260 	.word	0x80029260
80026998:	80029270 	.word	0x80029270

8002699c <uart_init>:
8002699c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800269a0:	e28db000 	add	fp, sp, #0
800269a4:	e24dd014 	sub	sp, sp, #20
800269a8:	e50b0010 	str	r0, [fp, #-16]
800269ac:	e59f20a0 	ldr	r2, [pc, #160]	; 80026a54 <uart_init+0xb8>
800269b0:	e51b3010 	ldr	r3, [fp, #-16]
800269b4:	e5823000 	str	r3, [r2]
800269b8:	e59f3094 	ldr	r3, [pc, #148]	; 80026a54 <uart_init+0xb8>
800269bc:	e5933000 	ldr	r3, [r3]
800269c0:	e2833024 	add	r3, r3, #36	; 0x24
800269c4:	e3a0204e 	mov	r2, #78	; 0x4e
800269c8:	e5832000 	str	r2, [r3]
800269cc:	e3a03c96 	mov	r3, #38400	; 0x9600
800269d0:	e50b3008 	str	r3, [fp, #-8]
800269d4:	e59f3078 	ldr	r3, [pc, #120]	; 80026a54 <uart_init+0xb8>
800269d8:	e5933000 	ldr	r3, [r3]
800269dc:	e2833028 	add	r3, r3, #40	; 0x28
800269e0:	e51b2008 	ldr	r2, [fp, #-8]
800269e4:	e2822e96 	add	r2, r2, #2400	; 0x960
800269e8:	e1a02102 	lsl	r2, r2, #2
800269ec:	e59f1064 	ldr	r1, [pc, #100]	; 80026a58 <uart_init+0xbc>
800269f0:	e0821291 	umull	r1, r2, r1, r2
800269f4:	e1a025a2 	lsr	r2, r2, #11
800269f8:	e5832000 	str	r2, [r3]
800269fc:	e59f3050 	ldr	r3, [pc, #80]	; 80026a54 <uart_init+0xb8>
80026a00:	e5933000 	ldr	r3, [r3]
80026a04:	e2832030 	add	r2, r3, #48	; 0x30
80026a08:	e59f3044 	ldr	r3, [pc, #68]	; 80026a54 <uart_init+0xb8>
80026a0c:	e5933000 	ldr	r3, [r3]
80026a10:	e2833030 	add	r3, r3, #48	; 0x30
80026a14:	e5933000 	ldr	r3, [r3]
80026a18:	e3833c03 	orr	r3, r3, #768	; 0x300
80026a1c:	e3833001 	orr	r3, r3, #1
80026a20:	e5823000 	str	r3, [r2]
80026a24:	e59f3028 	ldr	r3, [pc, #40]	; 80026a54 <uart_init+0xb8>
80026a28:	e5933000 	ldr	r3, [r3]
80026a2c:	e283302c 	add	r3, r3, #44	; 0x2c
80026a30:	e59f201c 	ldr	r2, [pc, #28]	; 80026a54 <uart_init+0xb8>
80026a34:	e5922000 	ldr	r2, [r2]
80026a38:	e282202c 	add	r2, r2, #44	; 0x2c
80026a3c:	e5922000 	ldr	r2, [r2]
80026a40:	e3822010 	orr	r2, r2, #16
80026a44:	e5832000 	str	r2, [r3]
80026a48:	e24bd000 	sub	sp, fp, #0
80026a4c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026a50:	e12fff1e 	bx	lr
80026a54:	800af544 	.word	0x800af544
80026a58:	1b4e81b5 	.word	0x1b4e81b5

80026a5c <uart_enable_rx>:
80026a5c:	e92d4800 	push	{fp, lr}
80026a60:	e28db004 	add	fp, sp, #4
80026a64:	e59f301c 	ldr	r3, [pc, #28]	; 80026a88 <uart_enable_rx+0x2c>
80026a68:	e5933000 	ldr	r3, [r3]
80026a6c:	e2833038 	add	r3, r3, #56	; 0x38
80026a70:	e3a02010 	mov	r2, #16
80026a74:	e5832000 	str	r2, [r3]
80026a78:	e3a0000c 	mov	r0, #12
80026a7c:	e59f1008 	ldr	r1, [pc, #8]	; 80026a8c <uart_enable_rx+0x30>
80026a80:	ebfff239 	bl	8002336c <pic_enable>
80026a84:	e8bd8800 	pop	{fp, pc}
80026a88:	800af544 	.word	0x800af544
80026a8c:	80026b30 	.word	0x80026b30

80026a90 <uartputc>:
80026a90:	e92d4800 	push	{fp, lr}
80026a94:	e28db004 	add	fp, sp, #4
80026a98:	e24dd008 	sub	sp, sp, #8
80026a9c:	e50b0008 	str	r0, [fp, #-8]
80026aa0:	ea000001 	b	80026aac <uartputc+0x1c>
80026aa4:	e3a0000a 	mov	r0, #10
80026aa8:	eb000474 	bl	80027c80 <micro_delay>
80026aac:	e59f302c 	ldr	r3, [pc, #44]	; 80026ae0 <uartputc+0x50>
80026ab0:	e5933000 	ldr	r3, [r3]
80026ab4:	e2833018 	add	r3, r3, #24
80026ab8:	e5933000 	ldr	r3, [r3]
80026abc:	e2033020 	and	r3, r3, #32
80026ac0:	e3530000 	cmp	r3, #0
80026ac4:	1afffff6 	bne	80026aa4 <uartputc+0x14>
80026ac8:	e59f3010 	ldr	r3, [pc, #16]	; 80026ae0 <uartputc+0x50>
80026acc:	e5933000 	ldr	r3, [r3]
80026ad0:	e51b2008 	ldr	r2, [fp, #-8]
80026ad4:	e5832000 	str	r2, [r3]
80026ad8:	e24bd004 	sub	sp, fp, #4
80026adc:	e8bd8800 	pop	{fp, pc}
80026ae0:	800af544 	.word	0x800af544

80026ae4 <uartgetc>:
80026ae4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026ae8:	e28db000 	add	fp, sp, #0
80026aec:	e59f3038 	ldr	r3, [pc, #56]	; 80026b2c <uartgetc+0x48>
80026af0:	e5933000 	ldr	r3, [r3]
80026af4:	e2833018 	add	r3, r3, #24
80026af8:	e5933000 	ldr	r3, [r3]
80026afc:	e2033010 	and	r3, r3, #16
80026b00:	e3530000 	cmp	r3, #0
80026b04:	0a000001 	beq	80026b10 <uartgetc+0x2c>
80026b08:	e3e03000 	mvn	r3, #0
80026b0c:	ea000002 	b	80026b1c <uartgetc+0x38>
80026b10:	e59f3014 	ldr	r3, [pc, #20]	; 80026b2c <uartgetc+0x48>
80026b14:	e5933000 	ldr	r3, [r3]
80026b18:	e5933000 	ldr	r3, [r3]
80026b1c:	e1a00003 	mov	r0, r3
80026b20:	e24bd000 	sub	sp, fp, #0
80026b24:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026b28:	e12fff1e 	bx	lr
80026b2c:	800af544 	.word	0x800af544

80026b30 <isr_uart>:
80026b30:	e92d4800 	push	{fp, lr}
80026b34:	e28db004 	add	fp, sp, #4
80026b38:	e24dd008 	sub	sp, sp, #8
80026b3c:	e50b0008 	str	r0, [fp, #-8]
80026b40:	e50b100c 	str	r1, [fp, #-12]
80026b44:	e59f3038 	ldr	r3, [pc, #56]	; 80026b84 <isr_uart+0x54>
80026b48:	e5933000 	ldr	r3, [r3]
80026b4c:	e2833040 	add	r3, r3, #64	; 0x40
80026b50:	e5933000 	ldr	r3, [r3]
80026b54:	e2033010 	and	r3, r3, #16
80026b58:	e3530000 	cmp	r3, #0
80026b5c:	0a000001 	beq	80026b68 <isr_uart+0x38>
80026b60:	e59f0020 	ldr	r0, [pc, #32]	; 80026b88 <isr_uart+0x58>
80026b64:	ebffe70e 	bl	800207a4 <consoleintr>
80026b68:	e59f3014 	ldr	r3, [pc, #20]	; 80026b84 <isr_uart+0x54>
80026b6c:	e5933000 	ldr	r3, [r3]
80026b70:	e2833044 	add	r3, r3, #68	; 0x44
80026b74:	e3a02030 	mov	r2, #48	; 0x30
80026b78:	e5832000 	str	r2, [r3]
80026b7c:	e24bd004 	sub	sp, fp, #4
80026b80:	e8bd8800 	pop	{fp, pc}
80026b84:	800af544 	.word	0x800af544
80026b88:	80026ae4 	.word	0x80026ae4

80026b8c <v2p>:
80026b8c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026b90:	e28db000 	add	fp, sp, #0
80026b94:	e24dd00c 	sub	sp, sp, #12
80026b98:	e50b0008 	str	r0, [fp, #-8]
80026b9c:	e51b3008 	ldr	r3, [fp, #-8]
80026ba0:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
80026ba4:	e1a00003 	mov	r0, r3
80026ba8:	e24bd000 	sub	sp, fp, #0
80026bac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026bb0:	e12fff1e 	bx	lr

80026bb4 <p2v>:
80026bb4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026bb8:	e28db000 	add	fp, sp, #0
80026bbc:	e24dd00c 	sub	sp, sp, #12
80026bc0:	e50b0008 	str	r0, [fp, #-8]
80026bc4:	e51b3008 	ldr	r3, [fp, #-8]
80026bc8:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
80026bcc:	e1a00003 	mov	r0, r3
80026bd0:	e24bd000 	sub	sp, fp, #0
80026bd4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026bd8:	e12fff1e 	bx	lr

80026bdc <init_vmm>:
80026bdc:	e92d4800 	push	{fp, lr}
80026be0:	e28db004 	add	fp, sp, #4
80026be4:	e59f0014 	ldr	r0, [pc, #20]	; 80026c00 <init_vmm+0x24>
80026be8:	e59f1014 	ldr	r1, [pc, #20]	; 80026c04 <init_vmm+0x28>
80026bec:	ebfff6fc 	bl	800247e4 <initlock>
80026bf0:	e59f3008 	ldr	r3, [pc, #8]	; 80026c00 <init_vmm+0x24>
80026bf4:	e3a02000 	mov	r2, #0
80026bf8:	e5832034 	str	r2, [r3, #52]	; 0x34
80026bfc:	e8bd8800 	pop	{fp, pc}
80026c00:	800af54c 	.word	0x800af54c
80026c04:	80029284 	.word	0x80029284

80026c08 <_kpt_free>:
80026c08:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026c0c:	e28db000 	add	fp, sp, #0
80026c10:	e24dd014 	sub	sp, sp, #20
80026c14:	e50b0010 	str	r0, [fp, #-16]
80026c18:	e51b3010 	ldr	r3, [fp, #-16]
80026c1c:	e50b3008 	str	r3, [fp, #-8]
80026c20:	e59f3020 	ldr	r3, [pc, #32]	; 80026c48 <_kpt_free+0x40>
80026c24:	e5932034 	ldr	r2, [r3, #52]	; 0x34
80026c28:	e51b3008 	ldr	r3, [fp, #-8]
80026c2c:	e5832000 	str	r2, [r3]
80026c30:	e59f2010 	ldr	r2, [pc, #16]	; 80026c48 <_kpt_free+0x40>
80026c34:	e51b3008 	ldr	r3, [fp, #-8]
80026c38:	e5823034 	str	r3, [r2, #52]	; 0x34
80026c3c:	e24bd000 	sub	sp, fp, #0
80026c40:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026c44:	e12fff1e 	bx	lr
80026c48:	800af54c 	.word	0x800af54c

80026c4c <kpt_free>:
80026c4c:	e92d4800 	push	{fp, lr}
80026c50:	e28db004 	add	fp, sp, #4
80026c54:	e24dd008 	sub	sp, sp, #8
80026c58:	e50b0008 	str	r0, [fp, #-8]
80026c5c:	e51b3008 	ldr	r3, [fp, #-8]
80026c60:	e59f2034 	ldr	r2, [pc, #52]	; 80026c9c <kpt_free+0x50>
80026c64:	e1530002 	cmp	r3, r2
80026c68:	9a000003 	bls	80026c7c <kpt_free+0x30>
80026c6c:	e51b0008 	ldr	r0, [fp, #-8]
80026c70:	e3a0100a 	mov	r1, #10
80026c74:	eb000710 	bl	800288bc <kfree>
80026c78:	ea000005 	b	80026c94 <kpt_free+0x48>
80026c7c:	e59f001c 	ldr	r0, [pc, #28]	; 80026ca0 <kpt_free+0x54>
80026c80:	ebfff6e8 	bl	80024828 <acquire>
80026c84:	e51b0008 	ldr	r0, [fp, #-8]
80026c88:	ebffffde 	bl	80026c08 <_kpt_free>
80026c8c:	e59f000c 	ldr	r0, [pc, #12]	; 80026ca0 <kpt_free+0x54>
80026c90:	ebfff6ee 	bl	80024850 <release>
80026c94:	e24bd004 	sub	sp, fp, #4
80026c98:	e8bd8800 	pop	{fp, pc}
80026c9c:	800fffff 	.word	0x800fffff
80026ca0:	800af54c 	.word	0x800af54c

80026ca4 <kpt_freerange>:
80026ca4:	e92d4800 	push	{fp, lr}
80026ca8:	e28db004 	add	fp, sp, #4
80026cac:	e24dd008 	sub	sp, sp, #8
80026cb0:	e50b0008 	str	r0, [fp, #-8]
80026cb4:	e50b100c 	str	r1, [fp, #-12]
80026cb8:	ea000005 	b	80026cd4 <kpt_freerange+0x30>
80026cbc:	e51b3008 	ldr	r3, [fp, #-8]
80026cc0:	e1a00003 	mov	r0, r3
80026cc4:	ebffffcf 	bl	80026c08 <_kpt_free>
80026cc8:	e51b3008 	ldr	r3, [fp, #-8]
80026ccc:	e2833b01 	add	r3, r3, #1024	; 0x400
80026cd0:	e50b3008 	str	r3, [fp, #-8]
80026cd4:	e51b2008 	ldr	r2, [fp, #-8]
80026cd8:	e51b300c 	ldr	r3, [fp, #-12]
80026cdc:	e1520003 	cmp	r2, r3
80026ce0:	3afffff5 	bcc	80026cbc <kpt_freerange+0x18>
80026ce4:	e24bd004 	sub	sp, fp, #4
80026ce8:	e8bd8800 	pop	{fp, pc}

80026cec <kpt_alloc>:
80026cec:	e92d4800 	push	{fp, lr}
80026cf0:	e28db004 	add	fp, sp, #4
80026cf4:	e24dd008 	sub	sp, sp, #8
80026cf8:	e59f007c 	ldr	r0, [pc, #124]	; 80026d7c <kpt_alloc+0x90>
80026cfc:	ebfff6c9 	bl	80024828 <acquire>
80026d00:	e59f3074 	ldr	r3, [pc, #116]	; 80026d7c <kpt_alloc+0x90>
80026d04:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80026d08:	e50b3008 	str	r3, [fp, #-8]
80026d0c:	e51b3008 	ldr	r3, [fp, #-8]
80026d10:	e3530000 	cmp	r3, #0
80026d14:	0a000003 	beq	80026d28 <kpt_alloc+0x3c>
80026d18:	e51b3008 	ldr	r3, [fp, #-8]
80026d1c:	e5933000 	ldr	r3, [r3]
80026d20:	e59f2054 	ldr	r2, [pc, #84]	; 80026d7c <kpt_alloc+0x90>
80026d24:	e5823034 	str	r3, [r2, #52]	; 0x34
80026d28:	e59f004c 	ldr	r0, [pc, #76]	; 80026d7c <kpt_alloc+0x90>
80026d2c:	ebfff6c7 	bl	80024850 <release>
80026d30:	e51b3008 	ldr	r3, [fp, #-8]
80026d34:	e3530000 	cmp	r3, #0
80026d38:	1a000007 	bne	80026d5c <kpt_alloc+0x70>
80026d3c:	e3a0000a 	mov	r0, #10
80026d40:	eb000688 	bl	80028768 <kmalloc>
80026d44:	e50b0008 	str	r0, [fp, #-8]
80026d48:	e51b3008 	ldr	r3, [fp, #-8]
80026d4c:	e3530000 	cmp	r3, #0
80026d50:	1a000001 	bne	80026d5c <kpt_alloc+0x70>
80026d54:	e59f0024 	ldr	r0, [pc, #36]	; 80026d80 <kpt_alloc+0x94>
80026d58:	ebffe660 	bl	800206e0 <panic>
80026d5c:	e51b0008 	ldr	r0, [fp, #-8]
80026d60:	e3a01000 	mov	r1, #0
80026d64:	e3a02b01 	mov	r2, #1024	; 0x400
80026d68:	ebfff6cc 	bl	800248a0 <memset>
80026d6c:	e51b3008 	ldr	r3, [fp, #-8]
80026d70:	e1a00003 	mov	r0, r3
80026d74:	e24bd004 	sub	sp, fp, #4
80026d78:	e8bd8800 	pop	{fp, pc}
80026d7c:	800af54c 	.word	0x800af54c
80026d80:	80029288 	.word	0x80029288

80026d84 <walkpgdir>:
80026d84:	e92d4800 	push	{fp, lr}
80026d88:	e28db004 	add	fp, sp, #4
80026d8c:	e24dd018 	sub	sp, sp, #24
80026d90:	e50b0010 	str	r0, [fp, #-16]
80026d94:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80026d98:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80026d9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026da0:	e1a03a23 	lsr	r3, r3, #20
80026da4:	e1a03103 	lsl	r3, r3, #2
80026da8:	e51b2010 	ldr	r2, [fp, #-16]
80026dac:	e0823003 	add	r3, r2, r3
80026db0:	e50b300c 	str	r3, [fp, #-12]
80026db4:	e51b300c 	ldr	r3, [fp, #-12]
80026db8:	e5933000 	ldr	r3, [r3]
80026dbc:	e2033003 	and	r3, r3, #3
80026dc0:	e3530000 	cmp	r3, #0
80026dc4:	0a000007 	beq	80026de8 <walkpgdir+0x64>
80026dc8:	e51b300c 	ldr	r3, [fp, #-12]
80026dcc:	e5933000 	ldr	r3, [r3]
80026dd0:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
80026dd4:	e3c33003 	bic	r3, r3, #3
80026dd8:	e1a00003 	mov	r0, r3
80026ddc:	ebffff74 	bl	80026bb4 <p2v>
80026de0:	e50b0008 	str	r0, [fp, #-8]
80026de4:	ea000013 	b	80026e38 <walkpgdir+0xb4>
80026de8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026dec:	e3530000 	cmp	r3, #0
80026df0:	0a000004 	beq	80026e08 <walkpgdir+0x84>
80026df4:	ebffffbc 	bl	80026cec <kpt_alloc>
80026df8:	e50b0008 	str	r0, [fp, #-8]
80026dfc:	e51b3008 	ldr	r3, [fp, #-8]
80026e00:	e3530000 	cmp	r3, #0
80026e04:	1a000001 	bne	80026e10 <walkpgdir+0x8c>
80026e08:	e3a03000 	mov	r3, #0
80026e0c:	ea00000f 	b	80026e50 <walkpgdir+0xcc>
80026e10:	e51b0008 	ldr	r0, [fp, #-8]
80026e14:	e3a01000 	mov	r1, #0
80026e18:	e3a02b01 	mov	r2, #1024	; 0x400
80026e1c:	ebfff69f 	bl	800248a0 <memset>
80026e20:	e51b0008 	ldr	r0, [fp, #-8]
80026e24:	ebffff58 	bl	80026b8c <v2p>
80026e28:	e1a03000 	mov	r3, r0
80026e2c:	e3832001 	orr	r2, r3, #1
80026e30:	e51b300c 	ldr	r3, [fp, #-12]
80026e34:	e5832000 	str	r2, [r3]
80026e38:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026e3c:	e1a03623 	lsr	r3, r3, #12
80026e40:	e6ef3073 	uxtb	r3, r3
80026e44:	e1a03103 	lsl	r3, r3, #2
80026e48:	e51b2008 	ldr	r2, [fp, #-8]
80026e4c:	e0823003 	add	r3, r2, r3
80026e50:	e1a00003 	mov	r0, r3
80026e54:	e24bd004 	sub	sp, fp, #4
80026e58:	e8bd8800 	pop	{fp, pc}

80026e5c <mappages>:
80026e5c:	e92d4800 	push	{fp, lr}
80026e60:	e28db004 	add	fp, sp, #4
80026e64:	e24dd020 	sub	sp, sp, #32
80026e68:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80026e6c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80026e70:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80026e74:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80026e78:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80026e7c:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80026e80:	e3c3300f 	bic	r3, r3, #15
80026e84:	e50b3008 	str	r3, [fp, #-8]
80026e88:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80026e8c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80026e90:	e0823003 	add	r3, r2, r3
80026e94:	e2433001 	sub	r3, r3, #1
80026e98:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80026e9c:	e3c3300f 	bic	r3, r3, #15
80026ea0:	e50b300c 	str	r3, [fp, #-12]
80026ea4:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80026ea8:	e51b1008 	ldr	r1, [fp, #-8]
80026eac:	e3a02001 	mov	r2, #1
80026eb0:	ebffffb3 	bl	80026d84 <walkpgdir>
80026eb4:	e50b0010 	str	r0, [fp, #-16]
80026eb8:	e51b3010 	ldr	r3, [fp, #-16]
80026ebc:	e3530000 	cmp	r3, #0
80026ec0:	1a000001 	bne	80026ecc <mappages+0x70>
80026ec4:	e3e03000 	mvn	r3, #0
80026ec8:	ea00001d 	b	80026f44 <mappages+0xe8>
80026ecc:	e51b3010 	ldr	r3, [fp, #-16]
80026ed0:	e5933000 	ldr	r3, [r3]
80026ed4:	e2033003 	and	r3, r3, #3
80026ed8:	e3530000 	cmp	r3, #0
80026edc:	0a000001 	beq	80026ee8 <mappages+0x8c>
80026ee0:	e59f0068 	ldr	r0, [pc, #104]	; 80026f50 <mappages+0xf4>
80026ee4:	ebffe5fd 	bl	800206e0 <panic>
80026ee8:	e59b3004 	ldr	r3, [fp, #4]
80026eec:	e2033003 	and	r3, r3, #3
80026ef0:	e1a03203 	lsl	r3, r3, #4
80026ef4:	e1a02003 	mov	r2, r3
80026ef8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80026efc:	e1823003 	orr	r3, r2, r3
80026f00:	e383200e 	orr	r2, r3, #14
80026f04:	e51b3010 	ldr	r3, [fp, #-16]
80026f08:	e5832000 	str	r2, [r3]
80026f0c:	e51b2008 	ldr	r2, [fp, #-8]
80026f10:	e51b300c 	ldr	r3, [fp, #-12]
80026f14:	e1520003 	cmp	r2, r3
80026f18:	1a000002 	bne	80026f28 <mappages+0xcc>
80026f1c:	e1a00000 	nop			; (mov r0, r0)
80026f20:	e3a03000 	mov	r3, #0
80026f24:	ea000006 	b	80026f44 <mappages+0xe8>
80026f28:	e51b3008 	ldr	r3, [fp, #-8]
80026f2c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80026f30:	e50b3008 	str	r3, [fp, #-8]
80026f34:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80026f38:	e2833a01 	add	r3, r3, #4096	; 0x1000
80026f3c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80026f40:	eaffffd7 	b	80026ea4 <mappages+0x48>
80026f44:	e1a00003 	mov	r0, r3
80026f48:	e24bd004 	sub	sp, fp, #4
80026f4c:	e8bd8800 	pop	{fp, pc}
80026f50:	80029298 	.word	0x80029298

80026f54 <flush_tlb>:
80026f54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026f58:	e28db000 	add	fp, sp, #0
80026f5c:	e24dd00c 	sub	sp, sp, #12
80026f60:	e3a03000 	mov	r3, #0
80026f64:	e50b3008 	str	r3, [fp, #-8]
80026f68:	e51b3008 	ldr	r3, [fp, #-8]
80026f6c:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80026f70:	e51b3008 	ldr	r3, [fp, #-8]
80026f74:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80026f78:	e51b3008 	ldr	r3, [fp, #-8]
80026f7c:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80026f80:	e24bd000 	sub	sp, fp, #0
80026f84:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80026f88:	e12fff1e 	bx	lr

80026f8c <switchuvm>:
80026f8c:	e92d4800 	push	{fp, lr}
80026f90:	e28db004 	add	fp, sp, #4
80026f94:	e24dd010 	sub	sp, sp, #16
80026f98:	e50b0010 	str	r0, [fp, #-16]
80026f9c:	eb000252 	bl	800278ec <pushcli>
80026fa0:	e51b3010 	ldr	r3, [fp, #-16]
80026fa4:	e5933004 	ldr	r3, [r3, #4]
80026fa8:	e3530000 	cmp	r3, #0
80026fac:	1a000001 	bne	80026fb8 <switchuvm+0x2c>
80026fb0:	e59f0028 	ldr	r0, [pc, #40]	; 80026fe0 <switchuvm+0x54>
80026fb4:	ebffe5c9 	bl	800206e0 <panic>
80026fb8:	e51b3010 	ldr	r3, [fp, #-16]
80026fbc:	e5933004 	ldr	r3, [r3, #4]
80026fc0:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
80026fc4:	e50b3008 	str	r3, [fp, #-8]
80026fc8:	e51b3008 	ldr	r3, [fp, #-8]
80026fcc:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80026fd0:	ebffffdf 	bl	80026f54 <flush_tlb>
80026fd4:	eb000258 	bl	8002793c <popcli>
80026fd8:	e24bd004 	sub	sp, fp, #4
80026fdc:	e8bd8800 	pop	{fp, pc}
80026fe0:	800292a0 	.word	0x800292a0

80026fe4 <inituvm>:
80026fe4:	e92d4800 	push	{fp, lr}
80026fe8:	e28db004 	add	fp, sp, #4
80026fec:	e24dd020 	sub	sp, sp, #32
80026ff0:	e50b0010 	str	r0, [fp, #-16]
80026ff4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80026ff8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80026ffc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027000:	e3530a01 	cmp	r3, #4096	; 0x1000
80027004:	3a000001 	bcc	80027010 <inituvm+0x2c>
80027008:	e59f0058 	ldr	r0, [pc, #88]	; 80027068 <inituvm+0x84>
8002700c:	ebffe5b3 	bl	800206e0 <panic>
80027010:	eb000653 	bl	80028964 <alloc_page>
80027014:	e50b0008 	str	r0, [fp, #-8]
80027018:	e51b0008 	ldr	r0, [fp, #-8]
8002701c:	e3a01000 	mov	r1, #0
80027020:	e3a02a01 	mov	r2, #4096	; 0x1000
80027024:	ebfff61d 	bl	800248a0 <memset>
80027028:	e51b0008 	ldr	r0, [fp, #-8]
8002702c:	ebfffed6 	bl	80026b8c <v2p>
80027030:	e1a0c000 	mov	ip, r0
80027034:	e3a03003 	mov	r3, #3
80027038:	e58d3000 	str	r3, [sp]
8002703c:	e51b0010 	ldr	r0, [fp, #-16]
80027040:	e3a01000 	mov	r1, #0
80027044:	e3a02a01 	mov	r2, #4096	; 0x1000
80027048:	e1a0300c 	mov	r3, ip
8002704c:	ebffff82 	bl	80026e5c <mappages>
80027050:	e51b0008 	ldr	r0, [fp, #-8]
80027054:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80027058:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
8002705c:	ebfff680 	bl	80024a64 <memmove>
80027060:	e24bd004 	sub	sp, fp, #4
80027064:	e8bd8800 	pop	{fp, pc}
80027068:	800292b4 	.word	0x800292b4

8002706c <loaduvm>:
8002706c:	e92d4800 	push	{fp, lr}
80027070:	e28db004 	add	fp, sp, #4
80027074:	e24dd020 	sub	sp, sp, #32
80027078:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8002707c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80027080:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80027084:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80027088:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002708c:	e1a03a03 	lsl	r3, r3, #20
80027090:	e1a03a23 	lsr	r3, r3, #20
80027094:	e3530000 	cmp	r3, #0
80027098:	0a000001 	beq	800270a4 <loaduvm+0x38>
8002709c:	e59f00f4 	ldr	r0, [pc, #244]	; 80027198 <loaduvm+0x12c>
800270a0:	ebffe58e 	bl	800206e0 <panic>
800270a4:	e3a03000 	mov	r3, #0
800270a8:	e50b3008 	str	r3, [fp, #-8]
800270ac:	ea000031 	b	80027178 <loaduvm+0x10c>
800270b0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
800270b4:	e51b3008 	ldr	r3, [fp, #-8]
800270b8:	e0823003 	add	r3, r2, r3
800270bc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800270c0:	e1a01003 	mov	r1, r3
800270c4:	e3a02000 	mov	r2, #0
800270c8:	ebffff2d 	bl	80026d84 <walkpgdir>
800270cc:	e50b0010 	str	r0, [fp, #-16]
800270d0:	e51b3010 	ldr	r3, [fp, #-16]
800270d4:	e3530000 	cmp	r3, #0
800270d8:	1a000001 	bne	800270e4 <loaduvm+0x78>
800270dc:	e59f00b8 	ldr	r0, [pc, #184]	; 8002719c <loaduvm+0x130>
800270e0:	ebffe57e 	bl	800206e0 <panic>
800270e4:	e51b3010 	ldr	r3, [fp, #-16]
800270e8:	e5933000 	ldr	r3, [r3]
800270ec:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800270f0:	e3c3300f 	bic	r3, r3, #15
800270f4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800270f8:	e59b2004 	ldr	r2, [fp, #4]
800270fc:	e51b3008 	ldr	r3, [fp, #-8]
80027100:	e0633002 	rsb	r3, r3, r2
80027104:	e3530a01 	cmp	r3, #4096	; 0x1000
80027108:	2a000004 	bcs	80027120 <loaduvm+0xb4>
8002710c:	e59b2004 	ldr	r2, [fp, #4]
80027110:	e51b3008 	ldr	r3, [fp, #-8]
80027114:	e0633002 	rsb	r3, r3, r2
80027118:	e50b300c 	str	r3, [fp, #-12]
8002711c:	ea000001 	b	80027128 <loaduvm+0xbc>
80027120:	e3a03a01 	mov	r3, #4096	; 0x1000
80027124:	e50b300c 	str	r3, [fp, #-12]
80027128:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002712c:	ebfffea0 	bl	80026bb4 <p2v>
80027130:	e1a01000 	mov	r1, r0
80027134:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80027138:	e51b3008 	ldr	r3, [fp, #-8]
8002713c:	e0823003 	add	r3, r2, r3
80027140:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80027144:	e1a02003 	mov	r2, r3
80027148:	e51b300c 	ldr	r3, [fp, #-12]
8002714c:	ebffec90 	bl	80022394 <readi>
80027150:	e1a03000 	mov	r3, r0
80027154:	e1a02003 	mov	r2, r3
80027158:	e51b300c 	ldr	r3, [fp, #-12]
8002715c:	e1520003 	cmp	r2, r3
80027160:	0a000001 	beq	8002716c <loaduvm+0x100>
80027164:	e3e03000 	mvn	r3, #0
80027168:	ea000007 	b	8002718c <loaduvm+0x120>
8002716c:	e51b3008 	ldr	r3, [fp, #-8]
80027170:	e2833a01 	add	r3, r3, #4096	; 0x1000
80027174:	e50b3008 	str	r3, [fp, #-8]
80027178:	e51b2008 	ldr	r2, [fp, #-8]
8002717c:	e59b3004 	ldr	r3, [fp, #4]
80027180:	e1520003 	cmp	r2, r3
80027184:	3affffc9 	bcc	800270b0 <loaduvm+0x44>
80027188:	e3a03000 	mov	r3, #0
8002718c:	e1a00003 	mov	r0, r3
80027190:	e24bd004 	sub	sp, fp, #4
80027194:	e8bd8800 	pop	{fp, pc}
80027198:	800292d0 	.word	0x800292d0
8002719c:	800292f4 	.word	0x800292f4

800271a0 <allocuvm>:
800271a0:	e92d4810 	push	{r4, fp, lr}
800271a4:	e28db008 	add	fp, sp, #8
800271a8:	e24dd024 	sub	sp, sp, #36	; 0x24
800271ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800271b0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800271b4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800271b8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800271bc:	e373021f 	cmn	r3, #-268435455	; 0xf0000001
800271c0:	9a000001 	bls	800271cc <allocuvm+0x2c>
800271c4:	e3a03000 	mov	r3, #0
800271c8:	ea000030 	b	80027290 <allocuvm+0xf0>
800271cc:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
800271d0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800271d4:	e1520003 	cmp	r2, r3
800271d8:	2a000001 	bcs	800271e4 <allocuvm+0x44>
800271dc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800271e0:	ea00002a 	b	80027290 <allocuvm+0xf0>
800271e4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800271e8:	e2833eff 	add	r3, r3, #4080	; 0xff0
800271ec:	e283300f 	add	r3, r3, #15
800271f0:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800271f4:	e3c3300f 	bic	r3, r3, #15
800271f8:	e50b3010 	str	r3, [fp, #-16]
800271fc:	ea00001e 	b	8002727c <allocuvm+0xdc>
80027200:	eb0005d7 	bl	80028964 <alloc_page>
80027204:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80027208:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002720c:	e3530000 	cmp	r3, #0
80027210:	1a000007 	bne	80027234 <allocuvm+0x94>
80027214:	e59f0080 	ldr	r0, [pc, #128]	; 8002729c <allocuvm+0xfc>
80027218:	ebffe4b1 	bl	800204e4 <cprintf>
8002721c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80027220:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
80027224:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80027228:	eb00001c 	bl	800272a0 <deallocuvm>
8002722c:	e3a03000 	mov	r3, #0
80027230:	ea000016 	b	80027290 <allocuvm+0xf0>
80027234:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80027238:	e3a01000 	mov	r1, #0
8002723c:	e3a02a01 	mov	r2, #4096	; 0x1000
80027240:	ebfff596 	bl	800248a0 <memset>
80027244:	e51b4010 	ldr	r4, [fp, #-16]
80027248:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002724c:	ebfffe4e 	bl	80026b8c <v2p>
80027250:	e1a0c000 	mov	ip, r0
80027254:	e3a03003 	mov	r3, #3
80027258:	e58d3000 	str	r3, [sp]
8002725c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80027260:	e1a01004 	mov	r1, r4
80027264:	e3a02a01 	mov	r2, #4096	; 0x1000
80027268:	e1a0300c 	mov	r3, ip
8002726c:	ebfffefa 	bl	80026e5c <mappages>
80027270:	e51b3010 	ldr	r3, [fp, #-16]
80027274:	e2833a01 	add	r3, r3, #4096	; 0x1000
80027278:	e50b3010 	str	r3, [fp, #-16]
8002727c:	e51b2010 	ldr	r2, [fp, #-16]
80027280:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80027284:	e1520003 	cmp	r2, r3
80027288:	3affffdc 	bcc	80027200 <allocuvm+0x60>
8002728c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80027290:	e1a00003 	mov	r0, r3
80027294:	e24bd008 	sub	sp, fp, #8
80027298:	e8bd8810 	pop	{r4, fp, pc}
8002729c:	80029314 	.word	0x80029314

800272a0 <deallocuvm>:
800272a0:	e92d4800 	push	{fp, lr}
800272a4:	e28db004 	add	fp, sp, #4
800272a8:	e24dd020 	sub	sp, sp, #32
800272ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800272b0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800272b4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800272b8:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
800272bc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800272c0:	e1520003 	cmp	r2, r3
800272c4:	3a000001 	bcc	800272d0 <deallocuvm+0x30>
800272c8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800272cc:	ea000035 	b	800273a8 <deallocuvm+0x108>
800272d0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800272d4:	e2833eff 	add	r3, r3, #4080	; 0xff0
800272d8:	e283300f 	add	r3, r3, #15
800272dc:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800272e0:	e3c3300f 	bic	r3, r3, #15
800272e4:	e50b3008 	str	r3, [fp, #-8]
800272e8:	ea000029 	b	80027394 <deallocuvm+0xf4>
800272ec:	e51b3008 	ldr	r3, [fp, #-8]
800272f0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800272f4:	e1a01003 	mov	r1, r3
800272f8:	e3a02000 	mov	r2, #0
800272fc:	ebfffea0 	bl	80026d84 <walkpgdir>
80027300:	e50b000c 	str	r0, [fp, #-12]
80027304:	e51b300c 	ldr	r3, [fp, #-12]
80027308:	e3530000 	cmp	r3, #0
8002730c:	1a000006 	bne	8002732c <deallocuvm+0x8c>
80027310:	e51b3008 	ldr	r3, [fp, #-8]
80027314:	e243337f 	sub	r3, r3, #-67108863	; 0xfc000001
80027318:	e243363f 	sub	r3, r3, #66060288	; 0x3f00000
8002731c:	e1a03a23 	lsr	r3, r3, #20
80027320:	e1a03a03 	lsl	r3, r3, #20
80027324:	e50b3008 	str	r3, [fp, #-8]
80027328:	ea000016 	b	80027388 <deallocuvm+0xe8>
8002732c:	e51b300c 	ldr	r3, [fp, #-12]
80027330:	e5933000 	ldr	r3, [r3]
80027334:	e2033003 	and	r3, r3, #3
80027338:	e3530000 	cmp	r3, #0
8002733c:	0a000011 	beq	80027388 <deallocuvm+0xe8>
80027340:	e51b300c 	ldr	r3, [fp, #-12]
80027344:	e5933000 	ldr	r3, [r3]
80027348:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
8002734c:	e3c3300f 	bic	r3, r3, #15
80027350:	e50b3010 	str	r3, [fp, #-16]
80027354:	e51b3010 	ldr	r3, [fp, #-16]
80027358:	e3530000 	cmp	r3, #0
8002735c:	1a000001 	bne	80027368 <deallocuvm+0xc8>
80027360:	e59f004c 	ldr	r0, [pc, #76]	; 800273b4 <deallocuvm+0x114>
80027364:	ebffe4dd 	bl	800206e0 <panic>
80027368:	e51b0010 	ldr	r0, [fp, #-16]
8002736c:	ebfffe10 	bl	80026bb4 <p2v>
80027370:	e1a03000 	mov	r3, r0
80027374:	e1a00003 	mov	r0, r3
80027378:	eb000570 	bl	80028940 <free_page>
8002737c:	e51b300c 	ldr	r3, [fp, #-12]
80027380:	e3a02000 	mov	r2, #0
80027384:	e5832000 	str	r2, [r3]
80027388:	e51b3008 	ldr	r3, [fp, #-8]
8002738c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80027390:	e50b3008 	str	r3, [fp, #-8]
80027394:	e51b2008 	ldr	r2, [fp, #-8]
80027398:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002739c:	e1520003 	cmp	r2, r3
800273a0:	3affffd1 	bcc	800272ec <deallocuvm+0x4c>
800273a4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800273a8:	e1a00003 	mov	r0, r3
800273ac:	e24bd004 	sub	sp, fp, #4
800273b0:	e8bd8800 	pop	{fp, pc}
800273b4:	8002932c 	.word	0x8002932c

800273b8 <freevm>:
800273b8:	e92d4800 	push	{fp, lr}
800273bc:	e28db004 	add	fp, sp, #4
800273c0:	e24dd010 	sub	sp, sp, #16
800273c4:	e50b0010 	str	r0, [fp, #-16]
800273c8:	e51b3010 	ldr	r3, [fp, #-16]
800273cc:	e3530000 	cmp	r3, #0
800273d0:	1a000001 	bne	800273dc <freevm+0x24>
800273d4:	e59f0094 	ldr	r0, [pc, #148]	; 80027470 <freevm+0xb8>
800273d8:	ebffe4c0 	bl	800206e0 <panic>
800273dc:	e51b0010 	ldr	r0, [fp, #-16]
800273e0:	e3a01201 	mov	r1, #268435456	; 0x10000000
800273e4:	e3a02000 	mov	r2, #0
800273e8:	ebffffac 	bl	800272a0 <deallocuvm>
800273ec:	e3a03000 	mov	r3, #0
800273f0:	e50b3008 	str	r3, [fp, #-8]
800273f4:	ea000016 	b	80027454 <freevm+0x9c>
800273f8:	e51b3008 	ldr	r3, [fp, #-8]
800273fc:	e1a03103 	lsl	r3, r3, #2
80027400:	e51b2010 	ldr	r2, [fp, #-16]
80027404:	e0823003 	add	r3, r2, r3
80027408:	e5933000 	ldr	r3, [r3]
8002740c:	e2033003 	and	r3, r3, #3
80027410:	e3530000 	cmp	r3, #0
80027414:	0a00000b 	beq	80027448 <freevm+0x90>
80027418:	e51b3008 	ldr	r3, [fp, #-8]
8002741c:	e1a03103 	lsl	r3, r3, #2
80027420:	e51b2010 	ldr	r2, [fp, #-16]
80027424:	e0823003 	add	r3, r2, r3
80027428:	e5933000 	ldr	r3, [r3]
8002742c:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
80027430:	e3c33003 	bic	r3, r3, #3
80027434:	e1a00003 	mov	r0, r3
80027438:	ebfffddd 	bl	80026bb4 <p2v>
8002743c:	e50b000c 	str	r0, [fp, #-12]
80027440:	e51b000c 	ldr	r0, [fp, #-12]
80027444:	ebfffe00 	bl	80026c4c <kpt_free>
80027448:	e51b3008 	ldr	r3, [fp, #-8]
8002744c:	e2833001 	add	r3, r3, #1
80027450:	e50b3008 	str	r3, [fp, #-8]
80027454:	e51b3008 	ldr	r3, [fp, #-8]
80027458:	e35300ff 	cmp	r3, #255	; 0xff
8002745c:	9affffe5 	bls	800273f8 <freevm+0x40>
80027460:	e51b0010 	ldr	r0, [fp, #-16]
80027464:	ebfffdf8 	bl	80026c4c <kpt_free>
80027468:	e24bd004 	sub	sp, fp, #4
8002746c:	e8bd8800 	pop	{fp, pc}
80027470:	80029338 	.word	0x80029338

80027474 <clearpteu>:
80027474:	e92d4800 	push	{fp, lr}
80027478:	e28db004 	add	fp, sp, #4
8002747c:	e24dd010 	sub	sp, sp, #16
80027480:	e50b0010 	str	r0, [fp, #-16]
80027484:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80027488:	e51b0010 	ldr	r0, [fp, #-16]
8002748c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80027490:	e3a02000 	mov	r2, #0
80027494:	ebfffe3a 	bl	80026d84 <walkpgdir>
80027498:	e50b0008 	str	r0, [fp, #-8]
8002749c:	e51b3008 	ldr	r3, [fp, #-8]
800274a0:	e3530000 	cmp	r3, #0
800274a4:	1a000001 	bne	800274b0 <clearpteu+0x3c>
800274a8:	e59f0020 	ldr	r0, [pc, #32]	; 800274d0 <clearpteu+0x5c>
800274ac:	ebffe48b 	bl	800206e0 <panic>
800274b0:	e51b3008 	ldr	r3, [fp, #-8]
800274b4:	e5933000 	ldr	r3, [r3]
800274b8:	e3c33030 	bic	r3, r3, #48	; 0x30
800274bc:	e3832010 	orr	r2, r3, #16
800274c0:	e51b3008 	ldr	r3, [fp, #-8]
800274c4:	e5832000 	str	r2, [r3]
800274c8:	e24bd004 	sub	sp, fp, #4
800274cc:	e8bd8800 	pop	{fp, pc}
800274d0:	8002934c 	.word	0x8002934c

800274d4 <copyuvm>:
800274d4:	e92d4810 	push	{r4, fp, lr}
800274d8:	e28db008 	add	fp, sp, #8
800274dc:	e24dd02c 	sub	sp, sp, #44	; 0x2c
800274e0:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
800274e4:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
800274e8:	ebfffdff 	bl	80026cec <kpt_alloc>
800274ec:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800274f0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800274f4:	e3530000 	cmp	r3, #0
800274f8:	1a000001 	bne	80027504 <copyuvm+0x30>
800274fc:	e3a03000 	mov	r3, #0
80027500:	ea000046 	b	80027620 <copyuvm+0x14c>
80027504:	e3a03000 	mov	r3, #0
80027508:	e50b3010 	str	r3, [fp, #-16]
8002750c:	ea00003a 	b	800275fc <copyuvm+0x128>
80027510:	e51b3010 	ldr	r3, [fp, #-16]
80027514:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80027518:	e1a01003 	mov	r1, r3
8002751c:	e3a02000 	mov	r2, #0
80027520:	ebfffe17 	bl	80026d84 <walkpgdir>
80027524:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80027528:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002752c:	e3530000 	cmp	r3, #0
80027530:	1a000001 	bne	8002753c <copyuvm+0x68>
80027534:	e59f00f0 	ldr	r0, [pc, #240]	; 8002762c <copyuvm+0x158>
80027538:	ebffe468 	bl	800206e0 <panic>
8002753c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027540:	e5933000 	ldr	r3, [r3]
80027544:	e2033003 	and	r3, r3, #3
80027548:	e3530000 	cmp	r3, #0
8002754c:	1a000001 	bne	80027558 <copyuvm+0x84>
80027550:	e59f00d8 	ldr	r0, [pc, #216]	; 80027630 <copyuvm+0x15c>
80027554:	ebffe461 	bl	800206e0 <panic>
80027558:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002755c:	e5933000 	ldr	r3, [r3]
80027560:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80027564:	e3c3300f 	bic	r3, r3, #15
80027568:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
8002756c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027570:	e5933000 	ldr	r3, [r3]
80027574:	e1a03223 	lsr	r3, r3, #4
80027578:	e2033003 	and	r3, r3, #3
8002757c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80027580:	eb0004f7 	bl	80028964 <alloc_page>
80027584:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
80027588:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002758c:	e3530000 	cmp	r3, #0
80027590:	1a000000 	bne	80027598 <copyuvm+0xc4>
80027594:	ea00001e 	b	80027614 <copyuvm+0x140>
80027598:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
8002759c:	ebfffd84 	bl	80026bb4 <p2v>
800275a0:	e1a03000 	mov	r3, r0
800275a4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
800275a8:	e1a01003 	mov	r1, r3
800275ac:	e3a02a01 	mov	r2, #4096	; 0x1000
800275b0:	ebfff52b 	bl	80024a64 <memmove>
800275b4:	e51b4010 	ldr	r4, [fp, #-16]
800275b8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
800275bc:	ebfffd72 	bl	80026b8c <v2p>
800275c0:	e1a0c000 	mov	ip, r0
800275c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800275c8:	e58d3000 	str	r3, [sp]
800275cc:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800275d0:	e1a01004 	mov	r1, r4
800275d4:	e3a02a01 	mov	r2, #4096	; 0x1000
800275d8:	e1a0300c 	mov	r3, ip
800275dc:	ebfffe1e 	bl	80026e5c <mappages>
800275e0:	e1a03000 	mov	r3, r0
800275e4:	e3530000 	cmp	r3, #0
800275e8:	aa000000 	bge	800275f0 <copyuvm+0x11c>
800275ec:	ea000008 	b	80027614 <copyuvm+0x140>
800275f0:	e51b3010 	ldr	r3, [fp, #-16]
800275f4:	e2833a01 	add	r3, r3, #4096	; 0x1000
800275f8:	e50b3010 	str	r3, [fp, #-16]
800275fc:	e51b2010 	ldr	r2, [fp, #-16]
80027600:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80027604:	e1520003 	cmp	r2, r3
80027608:	3affffc0 	bcc	80027510 <copyuvm+0x3c>
8002760c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027610:	ea000002 	b	80027620 <copyuvm+0x14c>
80027614:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80027618:	ebffff66 	bl	800273b8 <freevm>
8002761c:	e3a03000 	mov	r3, #0
80027620:	e1a00003 	mov	r0, r3
80027624:	e24bd008 	sub	sp, fp, #8
80027628:	e8bd8810 	pop	{r4, fp, pc}
8002762c:	80029358 	.word	0x80029358
80027630:	80029374 	.word	0x80029374

80027634 <uva2ka>:
80027634:	e92d4800 	push	{fp, lr}
80027638:	e28db004 	add	fp, sp, #4
8002763c:	e24dd010 	sub	sp, sp, #16
80027640:	e50b0010 	str	r0, [fp, #-16]
80027644:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80027648:	e51b0010 	ldr	r0, [fp, #-16]
8002764c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80027650:	e3a02000 	mov	r2, #0
80027654:	ebfffdca 	bl	80026d84 <walkpgdir>
80027658:	e50b0008 	str	r0, [fp, #-8]
8002765c:	e51b3008 	ldr	r3, [fp, #-8]
80027660:	e5933000 	ldr	r3, [r3]
80027664:	e2033003 	and	r3, r3, #3
80027668:	e3530000 	cmp	r3, #0
8002766c:	1a000001 	bne	80027678 <uva2ka+0x44>
80027670:	e3a03000 	mov	r3, #0
80027674:	ea00000e 	b	800276b4 <uva2ka+0x80>
80027678:	e51b3008 	ldr	r3, [fp, #-8]
8002767c:	e5933000 	ldr	r3, [r3]
80027680:	e1a03223 	lsr	r3, r3, #4
80027684:	e2033003 	and	r3, r3, #3
80027688:	e3530003 	cmp	r3, #3
8002768c:	0a000001 	beq	80027698 <uva2ka+0x64>
80027690:	e3a03000 	mov	r3, #0
80027694:	ea000006 	b	800276b4 <uva2ka+0x80>
80027698:	e51b3008 	ldr	r3, [fp, #-8]
8002769c:	e5933000 	ldr	r3, [r3]
800276a0:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800276a4:	e3c3300f 	bic	r3, r3, #15
800276a8:	e1a00003 	mov	r0, r3
800276ac:	ebfffd40 	bl	80026bb4 <p2v>
800276b0:	e1a03000 	mov	r3, r0
800276b4:	e1a00003 	mov	r0, r3
800276b8:	e24bd004 	sub	sp, fp, #4
800276bc:	e8bd8800 	pop	{fp, pc}

800276c0 <copyout>:
800276c0:	e92d4800 	push	{fp, lr}
800276c4:	e28db004 	add	fp, sp, #4
800276c8:	e24dd020 	sub	sp, sp, #32
800276cc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800276d0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800276d4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800276d8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
800276dc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800276e0:	e50b3008 	str	r3, [fp, #-8]
800276e4:	ea00002c 	b	8002779c <copyout+0xdc>
800276e8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800276ec:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800276f0:	e3c3300f 	bic	r3, r3, #15
800276f4:	e50b3010 	str	r3, [fp, #-16]
800276f8:	e51b3010 	ldr	r3, [fp, #-16]
800276fc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80027700:	e1a01003 	mov	r1, r3
80027704:	ebffffca 	bl	80027634 <uva2ka>
80027708:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
8002770c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027710:	e3530000 	cmp	r3, #0
80027714:	1a000001 	bne	80027720 <copyout+0x60>
80027718:	e3e03000 	mvn	r3, #0
8002771c:	ea000022 	b	800277ac <copyout+0xec>
80027720:	e51b2010 	ldr	r2, [fp, #-16]
80027724:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80027728:	e0633002 	rsb	r3, r3, r2
8002772c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80027730:	e50b300c 	str	r3, [fp, #-12]
80027734:	e51b200c 	ldr	r2, [fp, #-12]
80027738:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
8002773c:	e1520003 	cmp	r2, r3
80027740:	9a000001 	bls	8002774c <copyout+0x8c>
80027744:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80027748:	e50b300c 	str	r3, [fp, #-12]
8002774c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80027750:	e51b3010 	ldr	r3, [fp, #-16]
80027754:	e0633002 	rsb	r3, r3, r2
80027758:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002775c:	e0823003 	add	r3, r2, r3
80027760:	e1a00003 	mov	r0, r3
80027764:	e51b1008 	ldr	r1, [fp, #-8]
80027768:	e51b200c 	ldr	r2, [fp, #-12]
8002776c:	ebfff4bc 	bl	80024a64 <memmove>
80027770:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80027774:	e51b300c 	ldr	r3, [fp, #-12]
80027778:	e0633002 	rsb	r3, r3, r2
8002777c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80027780:	e51b2008 	ldr	r2, [fp, #-8]
80027784:	e51b300c 	ldr	r3, [fp, #-12]
80027788:	e0823003 	add	r3, r2, r3
8002778c:	e50b3008 	str	r3, [fp, #-8]
80027790:	e51b3010 	ldr	r3, [fp, #-16]
80027794:	e2833a01 	add	r3, r3, #4096	; 0x1000
80027798:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
8002779c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800277a0:	e3530000 	cmp	r3, #0
800277a4:	1affffcf 	bne	800276e8 <copyout+0x28>
800277a8:	e3a03000 	mov	r3, #0
800277ac:	e1a00003 	mov	r0, r3
800277b0:	e24bd004 	sub	sp, fp, #4
800277b4:	e8bd8800 	pop	{fp, pc}

800277b8 <paging_init>:
800277b8:	e92d4800 	push	{fp, lr}
800277bc:	e28db004 	add	fp, sp, #4
800277c0:	e24dd010 	sub	sp, sp, #16
800277c4:	e50b0008 	str	r0, [fp, #-8]
800277c8:	e50b100c 	str	r1, [fp, #-12]
800277cc:	e51b3008 	ldr	r3, [fp, #-8]
800277d0:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
800277d4:	e1a01003 	mov	r1, r3
800277d8:	e51b200c 	ldr	r2, [fp, #-12]
800277dc:	e51b3008 	ldr	r3, [fp, #-8]
800277e0:	e0632002 	rsb	r2, r3, r2
800277e4:	e3a03003 	mov	r3, #3
800277e8:	e58d3000 	str	r3, [sp]
800277ec:	e59f0010 	ldr	r0, [pc, #16]	; 80027804 <paging_init+0x4c>
800277f0:	e51b3008 	ldr	r3, [fp, #-8]
800277f4:	ebfffd98 	bl	80026e5c <mappages>
800277f8:	ebfffdd5 	bl	80026f54 <flush_tlb>
800277fc:	e24bd004 	sub	sp, fp, #4
80027800:	e8bd8800 	pop	{fp, pc}
80027804:	80014000 	.word	0x80014000

80027808 <cli>:
80027808:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002780c:	e28db000 	add	fp, sp, #0
80027810:	e24dd00c 	sub	sp, sp, #12
80027814:	e10f3000 	mrs	r3, CPSR
80027818:	e50b3008 	str	r3, [fp, #-8]
8002781c:	e51b3008 	ldr	r3, [fp, #-8]
80027820:	e3833080 	orr	r3, r3, #128	; 0x80
80027824:	e50b3008 	str	r3, [fp, #-8]
80027828:	e51b3008 	ldr	r3, [fp, #-8]
8002782c:	e12ff003 	msr	CPSR_fsxc, r3
80027830:	e24bd000 	sub	sp, fp, #0
80027834:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027838:	e12fff1e 	bx	lr

8002783c <sti>:
8002783c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027840:	e28db000 	add	fp, sp, #0
80027844:	e24dd00c 	sub	sp, sp, #12
80027848:	e10f3000 	mrs	r3, CPSR
8002784c:	e50b3008 	str	r3, [fp, #-8]
80027850:	e51b3008 	ldr	r3, [fp, #-8]
80027854:	e3c33080 	bic	r3, r3, #128	; 0x80
80027858:	e50b3008 	str	r3, [fp, #-8]
8002785c:	e51b3008 	ldr	r3, [fp, #-8]
80027860:	e12ff003 	msr	CPSR_fsxc, r3
80027864:	e24bd000 	sub	sp, fp, #0
80027868:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002786c:	e12fff1e 	bx	lr

80027870 <spsr_usr>:
80027870:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027874:	e28db000 	add	fp, sp, #0
80027878:	e24dd00c 	sub	sp, sp, #12
8002787c:	e10f3000 	mrs	r3, CPSR
80027880:	e50b3008 	str	r3, [fp, #-8]
80027884:	e51b3008 	ldr	r3, [fp, #-8]
80027888:	e3c3301f 	bic	r3, r3, #31
8002788c:	e50b3008 	str	r3, [fp, #-8]
80027890:	e51b3008 	ldr	r3, [fp, #-8]
80027894:	e3833010 	orr	r3, r3, #16
80027898:	e50b3008 	str	r3, [fp, #-8]
8002789c:	e51b3008 	ldr	r3, [fp, #-8]
800278a0:	e1a00003 	mov	r0, r3
800278a4:	e24bd000 	sub	sp, fp, #0
800278a8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800278ac:	e12fff1e 	bx	lr

800278b0 <int_enabled>:
800278b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800278b4:	e28db000 	add	fp, sp, #0
800278b8:	e24dd00c 	sub	sp, sp, #12
800278bc:	e10f3000 	mrs	r3, CPSR
800278c0:	e50b3008 	str	r3, [fp, #-8]
800278c4:	e51b3008 	ldr	r3, [fp, #-8]
800278c8:	e2033080 	and	r3, r3, #128	; 0x80
800278cc:	e3530000 	cmp	r3, #0
800278d0:	03a03001 	moveq	r3, #1
800278d4:	13a03000 	movne	r3, #0
800278d8:	e6ef3073 	uxtb	r3, r3
800278dc:	e1a00003 	mov	r0, r3
800278e0:	e24bd000 	sub	sp, fp, #0
800278e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800278e8:	e12fff1e 	bx	lr

800278ec <pushcli>:
800278ec:	e92d4800 	push	{fp, lr}
800278f0:	e28db004 	add	fp, sp, #4
800278f4:	e24dd008 	sub	sp, sp, #8
800278f8:	ebffffec 	bl	800278b0 <int_enabled>
800278fc:	e50b0008 	str	r0, [fp, #-8]
80027900:	ebffffc0 	bl	80027808 <cli>
80027904:	e59f302c 	ldr	r3, [pc, #44]	; 80027938 <pushcli+0x4c>
80027908:	e5932000 	ldr	r2, [r3]
8002790c:	e592300c 	ldr	r3, [r2, #12]
80027910:	e2831001 	add	r1, r3, #1
80027914:	e582100c 	str	r1, [r2, #12]
80027918:	e3530000 	cmp	r3, #0
8002791c:	1a000003 	bne	80027930 <pushcli+0x44>
80027920:	e59f3010 	ldr	r3, [pc, #16]	; 80027938 <pushcli+0x4c>
80027924:	e5933000 	ldr	r3, [r3]
80027928:	e51b2008 	ldr	r2, [fp, #-8]
8002792c:	e5832010 	str	r2, [r3, #16]
80027930:	e24bd004 	sub	sp, fp, #4
80027934:	e8bd8800 	pop	{fp, pc}
80027938:	800ad4a0 	.word	0x800ad4a0

8002793c <popcli>:
8002793c:	e92d4800 	push	{fp, lr}
80027940:	e28db004 	add	fp, sp, #4
80027944:	ebffffd9 	bl	800278b0 <int_enabled>
80027948:	e1a03000 	mov	r3, r0
8002794c:	e3530000 	cmp	r3, #0
80027950:	0a000001 	beq	8002795c <popcli+0x20>
80027954:	e59f007c 	ldr	r0, [pc, #124]	; 800279d8 <popcli+0x9c>
80027958:	ebffe360 	bl	800206e0 <panic>
8002795c:	e59f3078 	ldr	r3, [pc, #120]	; 800279dc <popcli+0xa0>
80027960:	e5933000 	ldr	r3, [r3]
80027964:	e593200c 	ldr	r2, [r3, #12]
80027968:	e2422001 	sub	r2, r2, #1
8002796c:	e583200c 	str	r2, [r3, #12]
80027970:	e593300c 	ldr	r3, [r3, #12]
80027974:	e3530000 	cmp	r3, #0
80027978:	aa00000a 	bge	800279a8 <popcli+0x6c>
8002797c:	e59f3058 	ldr	r3, [pc, #88]	; 800279dc <popcli+0xa0>
80027980:	e5932000 	ldr	r2, [r3]
80027984:	e59f3050 	ldr	r3, [pc, #80]	; 800279dc <popcli+0xa0>
80027988:	e5933000 	ldr	r3, [r3]
8002798c:	e593300c 	ldr	r3, [r3, #12]
80027990:	e59f0048 	ldr	r0, [pc, #72]	; 800279e0 <popcli+0xa4>
80027994:	e1a01002 	mov	r1, r2
80027998:	e1a02003 	mov	r2, r3
8002799c:	ebffe2d0 	bl	800204e4 <cprintf>
800279a0:	e59f003c 	ldr	r0, [pc, #60]	; 800279e4 <popcli+0xa8>
800279a4:	ebffe34d 	bl	800206e0 <panic>
800279a8:	e59f302c 	ldr	r3, [pc, #44]	; 800279dc <popcli+0xa0>
800279ac:	e5933000 	ldr	r3, [r3]
800279b0:	e593300c 	ldr	r3, [r3, #12]
800279b4:	e3530000 	cmp	r3, #0
800279b8:	1a000005 	bne	800279d4 <popcli+0x98>
800279bc:	e59f3018 	ldr	r3, [pc, #24]	; 800279dc <popcli+0xa0>
800279c0:	e5933000 	ldr	r3, [r3]
800279c4:	e5933010 	ldr	r3, [r3, #16]
800279c8:	e3530000 	cmp	r3, #0
800279cc:	0a000000 	beq	800279d4 <popcli+0x98>
800279d0:	ebffff99 	bl	8002783c <sti>
800279d4:	e8bd8800 	pop	{fp, pc}
800279d8:	80029390 	.word	0x80029390
800279dc:	800ad4a0 	.word	0x800ad4a0
800279e0:	800293a8 	.word	0x800293a8
800279e4:	800293bc 	.word	0x800293bc

800279e8 <getcallerpcs>:
800279e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800279ec:	e28db000 	add	fp, sp, #0
800279f0:	e24dd014 	sub	sp, sp, #20
800279f4:	e50b0010 	str	r0, [fp, #-16]
800279f8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800279fc:	e51b3010 	ldr	r3, [fp, #-16]
80027a00:	e50b3008 	str	r3, [fp, #-8]
80027a04:	e3a03000 	mov	r3, #0
80027a08:	e50b300c 	str	r3, [fp, #-12]
80027a0c:	ea000018 	b	80027a74 <getcallerpcs+0x8c>
80027a10:	e51b3008 	ldr	r3, [fp, #-8]
80027a14:	e3530000 	cmp	r3, #0
80027a18:	0a000018 	beq	80027a80 <getcallerpcs+0x98>
80027a1c:	e51b3008 	ldr	r3, [fp, #-8]
80027a20:	e3730106 	cmn	r3, #-2147483647	; 0x80000001
80027a24:	9a000015 	bls	80027a80 <getcallerpcs+0x98>
80027a28:	e51b3008 	ldr	r3, [fp, #-8]
80027a2c:	e3730001 	cmn	r3, #1
80027a30:	0a000012 	beq	80027a80 <getcallerpcs+0x98>
80027a34:	e51b3008 	ldr	r3, [fp, #-8]
80027a38:	e2433004 	sub	r3, r3, #4
80027a3c:	e50b3008 	str	r3, [fp, #-8]
80027a40:	e51b300c 	ldr	r3, [fp, #-12]
80027a44:	e1a03103 	lsl	r3, r3, #2
80027a48:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80027a4c:	e0823003 	add	r3, r2, r3
80027a50:	e51b2008 	ldr	r2, [fp, #-8]
80027a54:	e5922004 	ldr	r2, [r2, #4]
80027a58:	e5832000 	str	r2, [r3]
80027a5c:	e51b3008 	ldr	r3, [fp, #-8]
80027a60:	e5933000 	ldr	r3, [r3]
80027a64:	e50b3008 	str	r3, [fp, #-8]
80027a68:	e51b300c 	ldr	r3, [fp, #-12]
80027a6c:	e2833001 	add	r3, r3, #1
80027a70:	e50b300c 	str	r3, [fp, #-12]
80027a74:	e51b300c 	ldr	r3, [fp, #-12]
80027a78:	e353000e 	cmp	r3, #14
80027a7c:	daffffe3 	ble	80027a10 <getcallerpcs+0x28>
80027a80:	ea000008 	b	80027aa8 <getcallerpcs+0xc0>
80027a84:	e51b300c 	ldr	r3, [fp, #-12]
80027a88:	e1a03103 	lsl	r3, r3, #2
80027a8c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80027a90:	e0823003 	add	r3, r2, r3
80027a94:	e3a02000 	mov	r2, #0
80027a98:	e5832000 	str	r2, [r3]
80027a9c:	e51b300c 	ldr	r3, [fp, #-12]
80027aa0:	e2833001 	add	r3, r3, #1
80027aa4:	e50b300c 	str	r3, [fp, #-12]
80027aa8:	e51b300c 	ldr	r3, [fp, #-12]
80027aac:	e353000e 	cmp	r3, #14
80027ab0:	dafffff3 	ble	80027a84 <getcallerpcs+0x9c>
80027ab4:	e24bd000 	sub	sp, fp, #0
80027ab8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027abc:	e12fff1e 	bx	lr

80027ac0 <show_callstk>:
80027ac0:	e92d4800 	push	{fp, lr}
80027ac4:	e28db004 	add	fp, sp, #4
80027ac8:	e24dd048 	sub	sp, sp, #72	; 0x48
80027acc:	e50b0048 	str	r0, [fp, #-72]	; 0xffffffb8
80027ad0:	e59f0074 	ldr	r0, [pc, #116]	; 80027b4c <show_callstk+0x8c>
80027ad4:	e51b1048 	ldr	r1, [fp, #-72]	; 0xffffffb8
80027ad8:	ebffe281 	bl	800204e4 <cprintf>
80027adc:	eb000025 	bl	80027b78 <get_fp>
80027ae0:	e1a02000 	mov	r2, r0
80027ae4:	e24b3044 	sub	r3, fp, #68	; 0x44
80027ae8:	e1a00002 	mov	r0, r2
80027aec:	e1a01003 	mov	r1, r3
80027af0:	ebffffbc 	bl	800279e8 <getcallerpcs>
80027af4:	e3a0300e 	mov	r3, #14
80027af8:	e50b3008 	str	r3, [fp, #-8]
80027afc:	ea00000d 	b	80027b38 <show_callstk+0x78>
80027b00:	e51b3008 	ldr	r3, [fp, #-8]
80027b04:	e2832001 	add	r2, r3, #1
80027b08:	e51b3008 	ldr	r3, [fp, #-8]
80027b0c:	e1a03103 	lsl	r3, r3, #2
80027b10:	e24b1004 	sub	r1, fp, #4
80027b14:	e0813003 	add	r3, r1, r3
80027b18:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
80027b1c:	e59f002c 	ldr	r0, [pc, #44]	; 80027b50 <show_callstk+0x90>
80027b20:	e1a01002 	mov	r1, r2
80027b24:	e1a02003 	mov	r2, r3
80027b28:	ebffe26d 	bl	800204e4 <cprintf>
80027b2c:	e51b3008 	ldr	r3, [fp, #-8]
80027b30:	e2433001 	sub	r3, r3, #1
80027b34:	e50b3008 	str	r3, [fp, #-8]
80027b38:	e51b3008 	ldr	r3, [fp, #-8]
80027b3c:	e3530000 	cmp	r3, #0
80027b40:	aaffffee 	bge	80027b00 <show_callstk+0x40>
80027b44:	e24bd004 	sub	sp, fp, #4
80027b48:	e8bd8800 	pop	{fp, pc}
80027b4c:	800293d0 	.word	0x800293d0
80027b50:	800293d4 	.word	0x800293d4

80027b54 <set_stk>:
80027b54:	e10f2000 	mrs	r2, CPSR
80027b58:	e3c2201f 	bic	r2, r2, #31
80027b5c:	e1822000 	orr	r2, r2, r0
80027b60:	e12ff002 	msr	CPSR_fsxc, r2
80027b64:	e1a0d001 	mov	sp, r1
80027b68:	e3c2201f 	bic	r2, r2, #31
80027b6c:	e3822013 	orr	r2, r2, #19
80027b70:	e12ff002 	msr	CPSR_fsxc, r2
80027b74:	e12fff1e 	bx	lr

80027b78 <get_fp>:
80027b78:	e1a0000b 	mov	r0, fp
80027b7c:	e12fff1e 	bx	lr

80027b80 <ack_timer>:
80027b80:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027b84:	e28db000 	add	fp, sp, #0
80027b88:	e24dd00c 	sub	sp, sp, #12
80027b8c:	e59f301c 	ldr	r3, [pc, #28]	; 80027bb0 <ack_timer+0x30>
80027b90:	e50b3008 	str	r3, [fp, #-8]
80027b94:	e51b3008 	ldr	r3, [fp, #-8]
80027b98:	e283300c 	add	r3, r3, #12
80027b9c:	e3a02001 	mov	r2, #1
80027ba0:	e5832000 	str	r2, [r3]
80027ba4:	e24bd000 	sub	sp, fp, #0
80027ba8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027bac:	e12fff1e 	bx	lr
80027bb0:	901e2000 	.word	0x901e2000

80027bb4 <timer_init>:
80027bb4:	e92d4800 	push	{fp, lr}
80027bb8:	e28db004 	add	fp, sp, #4
80027bbc:	e24dd010 	sub	sp, sp, #16
80027bc0:	e50b0010 	str	r0, [fp, #-16]
80027bc4:	e59f304c 	ldr	r3, [pc, #76]	; 80027c18 <timer_init+0x64>
80027bc8:	e50b3008 	str	r3, [fp, #-8]
80027bcc:	e59f0048 	ldr	r0, [pc, #72]	; 80027c1c <timer_init+0x68>
80027bd0:	e59f1048 	ldr	r1, [pc, #72]	; 80027c20 <timer_init+0x6c>
80027bd4:	ebfff302 	bl	800247e4 <initlock>
80027bd8:	e59f0044 	ldr	r0, [pc, #68]	; 80027c24 <timer_init+0x70>
80027bdc:	e51b1010 	ldr	r1, [fp, #-16]
80027be0:	eb0003f0 	bl	80028ba8 <__aeabi_idiv>
80027be4:	e1a03000 	mov	r3, r0
80027be8:	e1a02003 	mov	r2, r3
80027bec:	e51b3008 	ldr	r3, [fp, #-8]
80027bf0:	e5832000 	str	r2, [r3]
80027bf4:	e51b3008 	ldr	r3, [fp, #-8]
80027bf8:	e2833008 	add	r3, r3, #8
80027bfc:	e3a020e2 	mov	r2, #226	; 0xe2
80027c00:	e5832000 	str	r2, [r3]
80027c04:	e3a00004 	mov	r0, #4
80027c08:	e59f1018 	ldr	r1, [pc, #24]	; 80027c28 <timer_init+0x74>
80027c0c:	ebffedd6 	bl	8002336c <pic_enable>
80027c10:	e24bd004 	sub	sp, fp, #4
80027c14:	e8bd8800 	pop	{fp, pc}
80027c18:	901e2000 	.word	0x901e2000
80027c1c:	800af584 	.word	0x800af584
80027c20:	800293e0 	.word	0x800293e0
80027c24:	000f4240 	.word	0x000f4240
80027c28:	80027c2c 	.word	0x80027c2c

80027c2c <isr_timer>:
80027c2c:	e92d4800 	push	{fp, lr}
80027c30:	e28db004 	add	fp, sp, #4
80027c34:	e24dd008 	sub	sp, sp, #8
80027c38:	e50b0008 	str	r0, [fp, #-8]
80027c3c:	e50b100c 	str	r1, [fp, #-12]
80027c40:	e59f0030 	ldr	r0, [pc, #48]	; 80027c78 <isr_timer+0x4c>
80027c44:	ebfff2f7 	bl	80024828 <acquire>
80027c48:	e59f302c 	ldr	r3, [pc, #44]	; 80027c7c <isr_timer+0x50>
80027c4c:	e5933000 	ldr	r3, [r3]
80027c50:	e2833001 	add	r3, r3, #1
80027c54:	e59f2020 	ldr	r2, [pc, #32]	; 80027c7c <isr_timer+0x50>
80027c58:	e5823000 	str	r3, [r2]
80027c5c:	e59f0018 	ldr	r0, [pc, #24]	; 80027c7c <isr_timer+0x50>
80027c60:	ebfff267 	bl	80024604 <wakeup>
80027c64:	e59f000c 	ldr	r0, [pc, #12]	; 80027c78 <isr_timer+0x4c>
80027c68:	ebfff2f8 	bl	80024850 <release>
80027c6c:	ebffffc3 	bl	80027b80 <ack_timer>
80027c70:	e24bd004 	sub	sp, fp, #4
80027c74:	e8bd8800 	pop	{fp, pc}
80027c78:	800af584 	.word	0x800af584
80027c7c:	800af5b8 	.word	0x800af5b8

80027c80 <micro_delay>:
80027c80:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027c84:	e28db000 	add	fp, sp, #0
80027c88:	e24dd014 	sub	sp, sp, #20
80027c8c:	e50b0010 	str	r0, [fp, #-16]
80027c90:	e59f3050 	ldr	r3, [pc, #80]	; 80027ce8 <micro_delay+0x68>
80027c94:	e50b3008 	str	r3, [fp, #-8]
80027c98:	e51b3008 	ldr	r3, [fp, #-8]
80027c9c:	e2833008 	add	r3, r3, #8
80027ca0:	e3a02082 	mov	r2, #130	; 0x82
80027ca4:	e5832000 	str	r2, [r3]
80027ca8:	e51b2010 	ldr	r2, [fp, #-16]
80027cac:	e51b3008 	ldr	r3, [fp, #-8]
80027cb0:	e5832000 	str	r2, [r3]
80027cb4:	e1a00000 	nop			; (mov r0, r0)
80027cb8:	e51b3008 	ldr	r3, [fp, #-8]
80027cbc:	e2833004 	add	r3, r3, #4
80027cc0:	e5933000 	ldr	r3, [r3]
80027cc4:	e3530000 	cmp	r3, #0
80027cc8:	cafffffa 	bgt	80027cb8 <micro_delay+0x38>
80027ccc:	e51b3008 	ldr	r3, [fp, #-8]
80027cd0:	e2833008 	add	r3, r3, #8
80027cd4:	e3a02000 	mov	r2, #0
80027cd8:	e5832000 	str	r2, [r3]
80027cdc:	e24bd000 	sub	sp, fp, #0
80027ce0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027ce4:	e12fff1e 	bx	lr
80027ce8:	901e2020 	.word	0x901e2020

80027cec <ideinit>:
80027cec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027cf0:	e28db000 	add	fp, sp, #0
80027cf4:	e59f3024 	ldr	r3, [pc, #36]	; 80027d20 <ideinit+0x34>
80027cf8:	e59f2024 	ldr	r2, [pc, #36]	; 80027d24 <ideinit+0x38>
80027cfc:	e5832000 	str	r2, [r3]
80027d00:	e59f3020 	ldr	r3, [pc, #32]	; 80027d28 <ideinit+0x3c>
80027d04:	e1a034a3 	lsr	r3, r3, #9
80027d08:	e1a02003 	mov	r2, r3
80027d0c:	e59f3018 	ldr	r3, [pc, #24]	; 80027d2c <ideinit+0x40>
80027d10:	e5832000 	str	r2, [r3]
80027d14:	e24bd000 	sub	sp, fp, #0
80027d18:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027d1c:	e12fff1e 	bx	lr
80027d20:	800af5c0 	.word	0x800af5c0
80027d24:	8002a0c0 	.word	0x8002a0c0
80027d28:	00080000 	.word	0x00080000
80027d2c:	800af5bc 	.word	0x800af5bc

80027d30 <ideintr>:
80027d30:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027d34:	e28db000 	add	fp, sp, #0
80027d38:	e24bd000 	sub	sp, fp, #0
80027d3c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027d40:	e12fff1e 	bx	lr

80027d44 <iderw>:
80027d44:	e92d4800 	push	{fp, lr}
80027d48:	e28db004 	add	fp, sp, #4
80027d4c:	e24dd010 	sub	sp, sp, #16
80027d50:	e50b0010 	str	r0, [fp, #-16]
80027d54:	e51b3010 	ldr	r3, [fp, #-16]
80027d58:	e5933000 	ldr	r3, [r3]
80027d5c:	e2033001 	and	r3, r3, #1
80027d60:	e3530000 	cmp	r3, #0
80027d64:	1a000001 	bne	80027d70 <iderw+0x2c>
80027d68:	e59f00e8 	ldr	r0, [pc, #232]	; 80027e58 <iderw+0x114>
80027d6c:	ebffe25b 	bl	800206e0 <panic>
80027d70:	e51b3010 	ldr	r3, [fp, #-16]
80027d74:	e5933000 	ldr	r3, [r3]
80027d78:	e2033006 	and	r3, r3, #6
80027d7c:	e3530002 	cmp	r3, #2
80027d80:	1a000001 	bne	80027d8c <iderw+0x48>
80027d84:	e59f00d0 	ldr	r0, [pc, #208]	; 80027e5c <iderw+0x118>
80027d88:	ebffe254 	bl	800206e0 <panic>
80027d8c:	e51b3010 	ldr	r3, [fp, #-16]
80027d90:	e5933004 	ldr	r3, [r3, #4]
80027d94:	e3530001 	cmp	r3, #1
80027d98:	0a000001 	beq	80027da4 <iderw+0x60>
80027d9c:	e59f00bc 	ldr	r0, [pc, #188]	; 80027e60 <iderw+0x11c>
80027da0:	ebffe24e 	bl	800206e0 <panic>
80027da4:	e51b3010 	ldr	r3, [fp, #-16]
80027da8:	e5933008 	ldr	r3, [r3, #8]
80027dac:	e59f20b0 	ldr	r2, [pc, #176]	; 80027e64 <iderw+0x120>
80027db0:	e5922000 	ldr	r2, [r2]
80027db4:	e1530002 	cmp	r3, r2
80027db8:	3a000001 	bcc	80027dc4 <iderw+0x80>
80027dbc:	e59f00a4 	ldr	r0, [pc, #164]	; 80027e68 <iderw+0x124>
80027dc0:	ebffe246 	bl	800206e0 <panic>
80027dc4:	e59f30a0 	ldr	r3, [pc, #160]	; 80027e6c <iderw+0x128>
80027dc8:	e5932000 	ldr	r2, [r3]
80027dcc:	e51b3010 	ldr	r3, [fp, #-16]
80027dd0:	e5933008 	ldr	r3, [r3, #8]
80027dd4:	e1a03483 	lsl	r3, r3, #9
80027dd8:	e0823003 	add	r3, r2, r3
80027ddc:	e50b3008 	str	r3, [fp, #-8]
80027de0:	e51b3010 	ldr	r3, [fp, #-16]
80027de4:	e5933000 	ldr	r3, [r3]
80027de8:	e2033004 	and	r3, r3, #4
80027dec:	e3530000 	cmp	r3, #0
80027df0:	0a00000b 	beq	80027e24 <iderw+0xe0>
80027df4:	e51b3010 	ldr	r3, [fp, #-16]
80027df8:	e5933000 	ldr	r3, [r3]
80027dfc:	e3c32004 	bic	r2, r3, #4
80027e00:	e51b3010 	ldr	r3, [fp, #-16]
80027e04:	e5832000 	str	r2, [r3]
80027e08:	e51b3010 	ldr	r3, [fp, #-16]
80027e0c:	e2833018 	add	r3, r3, #24
80027e10:	e51b0008 	ldr	r0, [fp, #-8]
80027e14:	e1a01003 	mov	r1, r3
80027e18:	e3a02c02 	mov	r2, #512	; 0x200
80027e1c:	ebfff310 	bl	80024a64 <memmove>
80027e20:	ea000005 	b	80027e3c <iderw+0xf8>
80027e24:	e51b3010 	ldr	r3, [fp, #-16]
80027e28:	e2833018 	add	r3, r3, #24
80027e2c:	e1a00003 	mov	r0, r3
80027e30:	e51b1008 	ldr	r1, [fp, #-8]
80027e34:	e3a02c02 	mov	r2, #512	; 0x200
80027e38:	ebfff309 	bl	80024a64 <memmove>
80027e3c:	e51b3010 	ldr	r3, [fp, #-16]
80027e40:	e5933000 	ldr	r3, [r3]
80027e44:	e3832002 	orr	r2, r3, #2
80027e48:	e51b3010 	ldr	r3, [fp, #-16]
80027e4c:	e5832000 	str	r2, [r3]
80027e50:	e24bd004 	sub	sp, fp, #4
80027e54:	e8bd8800 	pop	{fp, pc}
80027e58:	800293e8 	.word	0x800293e8
80027e5c:	800293fc 	.word	0x800293fc
80027e60:	80029414 	.word	0x80029414
80027e64:	800af5bc 	.word	0x800af5bc
80027e68:	80029434 	.word	0x80029434
80027e6c:	800af5c0 	.word	0x800af5c0

80027e70 <trap_swi>:
80027e70:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027e74:	e14f2000 	mrs	r2, SPSR
80027e78:	e92d0004 	stmfd	sp!, {r2}
80027e7c:	e92d4000 	stmfd	sp!, {lr}
80027e80:	e94d6000 	stmdb	sp, {sp, lr}^
80027e84:	e24dd008 	sub	sp, sp, #8
80027e88:	e1a0000d 	mov	r0, sp
80027e8c:	ebfff961 	bl	80026418 <swi_handler>

80027e90 <trapret>:
80027e90:	e8dd6000 	ldm	sp, {sp, lr}^
80027e94:	e28dd008 	add	sp, sp, #8
80027e98:	e8bd4000 	ldmfd	sp!, {lr}
80027e9c:	e8bd0004 	ldmfd	sp!, {r2}
80027ea0:	e16ff002 	msr	SPSR_fsxc, r2
80027ea4:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027ea8 <trap_irq>:
80027ea8:	e24ee004 	sub	lr, lr, #4
80027eac:	e92d4007 	push	{r0, r1, r2, lr}
80027eb0:	e14f1000 	mrs	r1, SPSR
80027eb4:	e1a0000d 	mov	r0, sp
80027eb8:	e28dd010 	add	sp, sp, #16
80027ebc:	e10f2000 	mrs	r2, CPSR
80027ec0:	e3c2201f 	bic	r2, r2, #31
80027ec4:	e3822013 	orr	r2, r2, #19
80027ec8:	e12ff002 	msr	CPSR_fsxc, r2
80027ecc:	e590200c 	ldr	r2, [r0, #12]
80027ed0:	e92d0004 	stmfd	sp!, {r2}
80027ed4:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027ed8:	e8900038 	ldm	r0, {r3, r4, r5}
80027edc:	e92d0038 	push	{r3, r4, r5}
80027ee0:	e92d0002 	stmfd	sp!, {r1}
80027ee4:	e92d4000 	stmfd	sp!, {lr}
80027ee8:	e94d6000 	stmdb	sp, {sp, lr}^
80027eec:	e24dd008 	sub	sp, sp, #8
80027ef0:	e1a0000d 	mov	r0, sp
80027ef4:	ebfff95f 	bl	80026478 <irq_handler>
80027ef8:	eaffffe4 	b	80027e90 <trapret>

80027efc <trap_reset>:
80027efc:	e3a0e000 	mov	lr, #0
80027f00:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f04:	e14f2000 	mrs	r2, SPSR
80027f08:	e92d0004 	stmfd	sp!, {r2}
80027f0c:	e92d4000 	stmfd	sp!, {lr}
80027f10:	e94d6000 	stmdb	sp, {sp, lr}^
80027f14:	e24dd008 	sub	sp, sp, #8
80027f18:	e1a0000d 	mov	r0, sp
80027f1c:	ebfff966 	bl	800264bc <reset_handler>
80027f20:	eafffffe 	b	80027f20 <trap_reset+0x24>

80027f24 <trap_und>:
80027f24:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f28:	e14f2000 	mrs	r2, SPSR
80027f2c:	e92d0004 	stmfd	sp!, {r2}
80027f30:	e92d4000 	stmfd	sp!, {lr}
80027f34:	e94d6000 	stmdb	sp, {sp, lr}^
80027f38:	e24dd008 	sub	sp, sp, #8
80027f3c:	e1a0000d 	mov	r0, sp
80027f40:	ebfff96a 	bl	800264f0 <und_handler>
80027f44:	eafffffe 	b	80027f44 <trap_und+0x20>

80027f48 <trap_iabort>:
80027f48:	e24ee004 	sub	lr, lr, #4
80027f4c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f50:	e14f2000 	mrs	r2, SPSR
80027f54:	e92d0004 	stmfd	sp!, {r2}
80027f58:	e92d4000 	stmfd	sp!, {lr}
80027f5c:	e94d6000 	stmdb	sp, {sp, lr}^
80027f60:	e24dd008 	sub	sp, sp, #8
80027f64:	e1a0000d 	mov	r0, sp
80027f68:	ebfff982 	bl	80026578 <iabort_handler>
80027f6c:	eafffffe 	b	80027f6c <trap_iabort+0x24>

80027f70 <trap_dabort>:
80027f70:	e24ee008 	sub	lr, lr, #8
80027f74:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027f78:	e14f2000 	mrs	r2, SPSR
80027f7c:	e92d0004 	stmfd	sp!, {r2}
80027f80:	e92d4000 	stmfd	sp!, {lr}
80027f84:	e94d6000 	stmdb	sp, {sp, lr}^
80027f88:	e24dd008 	sub	sp, sp, #8
80027f8c:	e1a0000d 	mov	r0, sp
80027f90:	ebfff963 	bl	80026524 <dabort_handler>
80027f94:	e3a00002 	mov	r0, #2
80027f98:	ef000000 	svc	0x00000000
80027f9c:	eafff006 	b	80023fbc <exit>

80027fa0 <trap_na>:
80027fa0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fa4:	e14f2000 	mrs	r2, SPSR
80027fa8:	e92d0004 	stmfd	sp!, {r2}
80027fac:	e92d4000 	stmfd	sp!, {lr}
80027fb0:	e94d6000 	stmdb	sp, {sp, lr}^
80027fb4:	e24dd008 	sub	sp, sp, #8
80027fb8:	e1a0000d 	mov	r0, sp
80027fbc:	ebfff97f 	bl	800265c0 <na_handler>
80027fc0:	eafffffe 	b	80027fc0 <trap_na+0x20>

80027fc4 <trap_fiq>:
80027fc4:	e24ee004 	sub	lr, lr, #4
80027fc8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027fcc:	e14f2000 	mrs	r2, SPSR
80027fd0:	e92d0004 	stmfd	sp!, {r2}
80027fd4:	e92d4000 	stmfd	sp!, {lr}
80027fd8:	e94d6000 	stmdb	sp, {sp, lr}^
80027fdc:	e24dd008 	sub	sp, sp, #8
80027fe0:	e1a0000d 	mov	r0, sp
80027fe4:	ebfff982 	bl	800265f4 <fiq_handler>
80027fe8:	eafffffe 	b	80027fe8 <trap_fiq+0x24>

80027fec <get_mark>:
80027fec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027ff0:	e28db000 	add	fp, sp, #0
80027ff4:	e24dd00c 	sub	sp, sp, #12
80027ff8:	e50b0008 	str	r0, [fp, #-8]
80027ffc:	e50b100c 	str	r1, [fp, #-12]
80028000:	e51b3008 	ldr	r3, [fp, #-8]
80028004:	e2433006 	sub	r3, r3, #6
80028008:	e59f2034 	ldr	r2, [pc, #52]	; 80028044 <get_mark+0x58>
8002800c:	e2833008 	add	r3, r3, #8
80028010:	e1a03183 	lsl	r3, r3, #3
80028014:	e0823003 	add	r3, r2, r3
80028018:	e5932004 	ldr	r2, [r3, #4]
8002801c:	e51b300c 	ldr	r3, [fp, #-12]
80028020:	e0823003 	add	r3, r2, r3
80028024:	e1a02183 	lsl	r2, r3, #3
80028028:	e59f3014 	ldr	r3, [pc, #20]	; 80028044 <get_mark+0x58>
8002802c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80028030:	e0823003 	add	r3, r2, r3
80028034:	e1a00003 	mov	r0, r3
80028038:	e24bd000 	sub	sp, fp, #0
8002803c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80028040:	e12fff1e 	bx	lr
80028044:	800af5c4 	.word	0x800af5c4

80028048 <blkid2mem>:
80028048:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002804c:	e28db000 	add	fp, sp, #0
80028050:	e24dd00c 	sub	sp, sp, #12
80028054:	e50b0008 	str	r0, [fp, #-8]
80028058:	e50b100c 	str	r1, [fp, #-12]
8002805c:	e59f3020 	ldr	r3, [pc, #32]	; 80028084 <blkid2mem+0x3c>
80028060:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80028064:	e51b100c 	ldr	r1, [fp, #-12]
80028068:	e51b2008 	ldr	r2, [fp, #-8]
8002806c:	e1a02211 	lsl	r2, r1, r2
80028070:	e0833002 	add	r3, r3, r2
80028074:	e1a00003 	mov	r0, r3
80028078:	e24bd000 	sub	sp, fp, #0
8002807c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80028080:	e12fff1e 	bx	lr
80028084:	800af5c4 	.word	0x800af5c4

80028088 <mem2blkid>:
80028088:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002808c:	e28db000 	add	fp, sp, #0
80028090:	e24dd00c 	sub	sp, sp, #12
80028094:	e50b0008 	str	r0, [fp, #-8]
80028098:	e50b100c 	str	r1, [fp, #-12]
8002809c:	e51b200c 	ldr	r2, [fp, #-12]
800280a0:	e59f301c 	ldr	r3, [pc, #28]	; 800280c4 <mem2blkid+0x3c>
800280a4:	e5933038 	ldr	r3, [r3, #56]	; 0x38
800280a8:	e0632002 	rsb	r2, r3, r2
800280ac:	e51b3008 	ldr	r3, [fp, #-8]
800280b0:	e1a03332 	lsr	r3, r2, r3
800280b4:	e1a00003 	mov	r0, r3
800280b8:	e24bd000 	sub	sp, fp, #0
800280bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800280c0:	e12fff1e 	bx	lr
800280c4:	800af5c4 	.word	0x800af5c4

800280c8 <available>:
800280c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800280cc:	e28db000 	add	fp, sp, #0
800280d0:	e24dd00c 	sub	sp, sp, #12
800280d4:	e50b0008 	str	r0, [fp, #-8]
800280d8:	e50b100c 	str	r1, [fp, #-12]
800280dc:	e51b300c 	ldr	r3, [fp, #-12]
800280e0:	e203301f 	and	r3, r3, #31
800280e4:	e3a02001 	mov	r2, #1
800280e8:	e1a03312 	lsl	r3, r2, r3
800280ec:	e1a02003 	mov	r2, r3
800280f0:	e51b3008 	ldr	r3, [fp, #-8]
800280f4:	e0033002 	and	r3, r3, r2
800280f8:	e1a00003 	mov	r0, r3
800280fc:	e24bd000 	sub	sp, fp, #0
80028100:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80028104:	e12fff1e 	bx	lr

80028108 <kmem_init>:
80028108:	e92d4800 	push	{fp, lr}
8002810c:	e28db004 	add	fp, sp, #4
80028110:	e59f0008 	ldr	r0, [pc, #8]	; 80028120 <kmem_init+0x18>
80028114:	e59f1008 	ldr	r1, [pc, #8]	; 80028124 <kmem_init+0x1c>
80028118:	ebfff1b1 	bl	800247e4 <initlock>
8002811c:	e8bd8800 	pop	{fp, pc}
80028120:	800af5c4 	.word	0x800af5c4
80028124:	80029450 	.word	0x80029450

80028128 <kmem_init2>:
80028128:	e92d4800 	push	{fp, lr}
8002812c:	e28db004 	add	fp, sp, #4
80028130:	e24dd028 	sub	sp, sp, #40	; 0x28
80028134:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80028138:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
8002813c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80028140:	e59f2178 	ldr	r2, [pc, #376]	; 800282c0 <kmem_init2+0x198>
80028144:	e5823034 	str	r3, [r2, #52]	; 0x34
80028148:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002814c:	e59f216c 	ldr	r2, [pc, #364]	; 800282c0 <kmem_init2+0x198>
80028150:	e582303c 	str	r3, [r2, #60]	; 0x3c
80028154:	e59f3164 	ldr	r3, [pc, #356]	; 800282c0 <kmem_init2+0x198>
80028158:	e593203c 	ldr	r2, [r3, #60]	; 0x3c
8002815c:	e59f315c 	ldr	r3, [pc, #348]	; 800282c0 <kmem_init2+0x198>
80028160:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80028164:	e0633002 	rsb	r3, r3, r2
80028168:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
8002816c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028170:	e1a038a3 	lsr	r3, r3, #17
80028174:	e2833001 	add	r3, r3, #1
80028178:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8002817c:	e3a03000 	mov	r3, #0
80028180:	e50b3010 	str	r3, [fp, #-16]
80028184:	e3a03006 	mov	r3, #6
80028188:	e50b3008 	str	r3, [fp, #-8]
8002818c:	ea00002b 	b	80028240 <kmem_init2+0x118>
80028190:	e51b3008 	ldr	r3, [fp, #-8]
80028194:	e2833008 	add	r3, r3, #8
80028198:	e1a03183 	lsl	r3, r3, #3
8002819c:	e59f211c 	ldr	r2, [pc, #284]	; 800282c0 <kmem_init2+0x198>
800281a0:	e0833002 	add	r3, r3, r2
800281a4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
800281a8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800281ac:	e51b2010 	ldr	r2, [fp, #-16]
800281b0:	e5832004 	str	r2, [r3, #4]
800281b4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800281b8:	e59f2104 	ldr	r2, [pc, #260]	; 800282c4 <kmem_init2+0x19c>
800281bc:	e5832000 	str	r2, [r3]
800281c0:	e3a03000 	mov	r3, #0
800281c4:	e50b300c 	str	r3, [fp, #-12]
800281c8:	ea00000e 	b	80028208 <kmem_init2+0xe0>
800281cc:	e51b3008 	ldr	r3, [fp, #-8]
800281d0:	e2833006 	add	r3, r3, #6
800281d4:	e1a00003 	mov	r0, r3
800281d8:	e51b100c 	ldr	r1, [fp, #-12]
800281dc:	ebffff82 	bl	80027fec <get_mark>
800281e0:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
800281e4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800281e8:	e3e02000 	mvn	r2, #0
800281ec:	e5832000 	str	r2, [r3]
800281f0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800281f4:	e3a02000 	mov	r2, #0
800281f8:	e5832004 	str	r2, [r3, #4]
800281fc:	e51b300c 	ldr	r3, [fp, #-12]
80028200:	e2833001 	add	r3, r3, #1
80028204:	e50b300c 	str	r3, [fp, #-12]
80028208:	e51b200c 	ldr	r2, [fp, #-12]
8002820c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028210:	e1520003 	cmp	r2, r3
80028214:	3affffec 	bcc	800281cc <kmem_init2+0xa4>
80028218:	e51b2010 	ldr	r2, [fp, #-16]
8002821c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028220:	e0823003 	add	r3, r2, r3
80028224:	e50b3010 	str	r3, [fp, #-16]
80028228:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002822c:	e1a03083 	lsl	r3, r3, #1
80028230:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80028234:	e51b3008 	ldr	r3, [fp, #-8]
80028238:	e2433001 	sub	r3, r3, #1
8002823c:	e50b3008 	str	r3, [fp, #-8]
80028240:	e51b3008 	ldr	r3, [fp, #-8]
80028244:	e3530000 	cmp	r3, #0
80028248:	aaffffd0 	bge	80028190 <kmem_init2+0x68>
8002824c:	e59f306c 	ldr	r3, [pc, #108]	; 800282c0 <kmem_init2+0x198>
80028250:	e5932034 	ldr	r2, [r3, #52]	; 0x34
80028254:	e51b3010 	ldr	r3, [fp, #-16]
80028258:	e1a03183 	lsl	r3, r3, #3
8002825c:	e0823003 	add	r3, r2, r3
80028260:	e2833eff 	add	r3, r3, #4080	; 0xff0
80028264:	e283300f 	add	r3, r3, #15
80028268:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
8002826c:	e3c3300f 	bic	r3, r3, #15
80028270:	e59f2048 	ldr	r2, [pc, #72]	; 800282c0 <kmem_init2+0x198>
80028274:	e5823038 	str	r3, [r2, #56]	; 0x38
80028278:	e59f3040 	ldr	r3, [pc, #64]	; 800282c0 <kmem_init2+0x198>
8002827c:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80028280:	e50b3008 	str	r3, [fp, #-8]
80028284:	ea000006 	b	800282a4 <kmem_init2+0x17c>
80028288:	e51b3008 	ldr	r3, [fp, #-8]
8002828c:	e1a00003 	mov	r0, r3
80028290:	e3a0100c 	mov	r1, #12
80028294:	eb000188 	bl	800288bc <kfree>
80028298:	e51b3008 	ldr	r3, [fp, #-8]
8002829c:	e2833a01 	add	r3, r3, #4096	; 0x1000
800282a0:	e50b3008 	str	r3, [fp, #-8]
800282a4:	e51b2008 	ldr	r2, [fp, #-8]
800282a8:	e59f3010 	ldr	r3, [pc, #16]	; 800282c0 <kmem_init2+0x198>
800282ac:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
800282b0:	e1520003 	cmp	r2, r3
800282b4:	3afffff3 	bcc	80028288 <kmem_init2+0x160>
800282b8:	e24bd004 	sub	sp, fp, #4
800282bc:	e8bd8800 	pop	{fp, pc}
800282c0:	800af5c4 	.word	0x800af5c4
800282c4:	0000ffff 	.word	0x0000ffff

800282c8 <unmark_blk>:
800282c8:	e92d4800 	push	{fp, lr}
800282cc:	e28db004 	add	fp, sp, #4
800282d0:	e24dd020 	sub	sp, sp, #32
800282d4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
800282d8:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
800282dc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800282e0:	e2433006 	sub	r3, r3, #6
800282e4:	e2833008 	add	r3, r3, #8
800282e8:	e1a03183 	lsl	r3, r3, #3
800282ec:	e59f2168 	ldr	r2, [pc, #360]	; 8002845c <unmark_blk+0x194>
800282f0:	e0833002 	add	r3, r3, r2
800282f4:	e50b3008 	str	r3, [fp, #-8]
800282f8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800282fc:	e1a032c3 	asr	r3, r3, #5
80028300:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80028304:	e1a01003 	mov	r1, r3
80028308:	ebffff37 	bl	80027fec <get_mark>
8002830c:	e50b000c 	str	r0, [fp, #-12]
80028310:	e51b300c 	ldr	r3, [fp, #-12]
80028314:	e5933004 	ldr	r3, [r3, #4]
80028318:	e1a00003 	mov	r0, r3
8002831c:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80028320:	ebffff68 	bl	800280c8 <available>
80028324:	e1a03000 	mov	r3, r0
80028328:	e3530000 	cmp	r3, #0
8002832c:	1a000001 	bne	80028338 <unmark_blk+0x70>
80028330:	e59f0128 	ldr	r0, [pc, #296]	; 80028460 <unmark_blk+0x198>
80028334:	ebffe0e9 	bl	800206e0 <panic>
80028338:	e51b300c 	ldr	r3, [fp, #-12]
8002833c:	e5933004 	ldr	r3, [r3, #4]
80028340:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80028344:	e202201f 	and	r2, r2, #31
80028348:	e3a01001 	mov	r1, #1
8002834c:	e1a02211 	lsl	r2, r1, r2
80028350:	e1e02002 	mvn	r2, r2
80028354:	e0022003 	and	r2, r2, r3
80028358:	e51b300c 	ldr	r3, [fp, #-12]
8002835c:	e5832004 	str	r2, [r3, #4]
80028360:	e51b300c 	ldr	r3, [fp, #-12]
80028364:	e5933004 	ldr	r3, [r3, #4]
80028368:	e3530000 	cmp	r3, #0
8002836c:	1a000038 	bne	80028454 <unmark_blk+0x18c>
80028370:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028374:	e1a032c3 	asr	r3, r3, #5
80028378:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
8002837c:	e51b300c 	ldr	r3, [fp, #-12]
80028380:	e5933000 	ldr	r3, [r3]
80028384:	e1a03823 	lsr	r3, r3, #16
80028388:	e50b3010 	str	r3, [fp, #-16]
8002838c:	e51b300c 	ldr	r3, [fp, #-12]
80028390:	e5933000 	ldr	r3, [r3]
80028394:	e6ff3073 	uxth	r3, r3
80028398:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8002839c:	e51b3010 	ldr	r3, [fp, #-16]
800283a0:	e59f20bc 	ldr	r2, [pc, #188]	; 80028464 <unmark_blk+0x19c>
800283a4:	e1530002 	cmp	r3, r2
800283a8:	0a00000d 	beq	800283e4 <unmark_blk+0x11c>
800283ac:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800283b0:	e51b1010 	ldr	r1, [fp, #-16]
800283b4:	ebffff0c 	bl	80027fec <get_mark>
800283b8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800283bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800283c0:	e5933000 	ldr	r3, [r3]
800283c4:	e1a03823 	lsr	r3, r3, #16
800283c8:	e1a03803 	lsl	r3, r3, #16
800283cc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800283d0:	e6ff2072 	uxth	r2, r2
800283d4:	e1832002 	orr	r2, r3, r2
800283d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800283dc:	e5832000 	str	r2, [r3]
800283e0:	ea000007 	b	80028404 <unmark_blk+0x13c>
800283e4:	e51b3008 	ldr	r3, [fp, #-8]
800283e8:	e5932000 	ldr	r2, [r3]
800283ec:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800283f0:	e1520003 	cmp	r2, r3
800283f4:	1a000002 	bne	80028404 <unmark_blk+0x13c>
800283f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800283fc:	e51b3008 	ldr	r3, [fp, #-8]
80028400:	e5832000 	str	r2, [r3]
80028404:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028408:	e59f2054 	ldr	r2, [pc, #84]	; 80028464 <unmark_blk+0x19c>
8002840c:	e1530002 	cmp	r3, r2
80028410:	0a00000c 	beq	80028448 <unmark_blk+0x180>
80028414:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80028418:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
8002841c:	ebfffef2 	bl	80027fec <get_mark>
80028420:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028424:	e51b3010 	ldr	r3, [fp, #-16]
80028428:	e1a03803 	lsl	r3, r3, #16
8002842c:	e1a02003 	mov	r2, r3
80028430:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028434:	e5933000 	ldr	r3, [r3]
80028438:	e6ff3073 	uxth	r3, r3
8002843c:	e1822003 	orr	r2, r2, r3
80028440:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028444:	e5832000 	str	r2, [r3]
80028448:	e51b300c 	ldr	r3, [fp, #-12]
8002844c:	e3e02000 	mvn	r2, #0
80028450:	e5832000 	str	r2, [r3]
80028454:	e24bd004 	sub	sp, fp, #4
80028458:	e8bd8800 	pop	{fp, pc}
8002845c:	800af5c4 	.word	0x800af5c4
80028460:	80029458 	.word	0x80029458
80028464:	0000ffff 	.word	0x0000ffff

80028468 <mark_blk>:
80028468:	e92d4800 	push	{fp, lr}
8002846c:	e28db004 	add	fp, sp, #4
80028470:	e24dd018 	sub	sp, sp, #24
80028474:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028478:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
8002847c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028480:	e2433006 	sub	r3, r3, #6
80028484:	e2833008 	add	r3, r3, #8
80028488:	e1a03183 	lsl	r3, r3, #3
8002848c:	e59f2118 	ldr	r2, [pc, #280]	; 800285ac <mark_blk+0x144>
80028490:	e0833002 	add	r3, r3, r2
80028494:	e50b3008 	str	r3, [fp, #-8]
80028498:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002849c:	e1a032c3 	asr	r3, r3, #5
800284a0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800284a4:	e1a01003 	mov	r1, r3
800284a8:	ebfffecf 	bl	80027fec <get_mark>
800284ac:	e50b000c 	str	r0, [fp, #-12]
800284b0:	e51b300c 	ldr	r3, [fp, #-12]
800284b4:	e5933004 	ldr	r3, [r3, #4]
800284b8:	e3530000 	cmp	r3, #0
800284bc:	03a03001 	moveq	r3, #1
800284c0:	13a03000 	movne	r3, #0
800284c4:	e6ef3073 	uxtb	r3, r3
800284c8:	e50b3010 	str	r3, [fp, #-16]
800284cc:	e51b300c 	ldr	r3, [fp, #-12]
800284d0:	e5933004 	ldr	r3, [r3, #4]
800284d4:	e1a00003 	mov	r0, r3
800284d8:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
800284dc:	ebfffef9 	bl	800280c8 <available>
800284e0:	e1a03000 	mov	r3, r0
800284e4:	e3530000 	cmp	r3, #0
800284e8:	0a000001 	beq	800284f4 <mark_blk+0x8c>
800284ec:	e59f00bc 	ldr	r0, [pc, #188]	; 800285b0 <mark_blk+0x148>
800284f0:	ebffe07a 	bl	800206e0 <panic>
800284f4:	e51b300c 	ldr	r3, [fp, #-12]
800284f8:	e5933004 	ldr	r3, [r3, #4]
800284fc:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80028500:	e202201f 	and	r2, r2, #31
80028504:	e3a01001 	mov	r1, #1
80028508:	e1a02211 	lsl	r2, r1, r2
8002850c:	e1832002 	orr	r2, r3, r2
80028510:	e51b300c 	ldr	r3, [fp, #-12]
80028514:	e5832004 	str	r2, [r3, #4]
80028518:	e51b3010 	ldr	r3, [fp, #-16]
8002851c:	e3530000 	cmp	r3, #0
80028520:	0a00001f 	beq	800285a4 <mark_blk+0x13c>
80028524:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028528:	e1a032c3 	asr	r3, r3, #5
8002852c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80028530:	e51b3008 	ldr	r3, [fp, #-8]
80028534:	e5933000 	ldr	r3, [r3]
80028538:	e1e03803 	mvn	r3, r3, lsl #16
8002853c:	e1e03823 	mvn	r3, r3, lsr #16
80028540:	e51b200c 	ldr	r2, [fp, #-12]
80028544:	e5823000 	str	r3, [r2]
80028548:	e51b3008 	ldr	r3, [fp, #-8]
8002854c:	e5933000 	ldr	r3, [r3]
80028550:	e59f205c 	ldr	r2, [pc, #92]	; 800285b4 <mark_blk+0x14c>
80028554:	e1530002 	cmp	r3, r2
80028558:	0a00000e 	beq	80028598 <mark_blk+0x130>
8002855c:	e51b3008 	ldr	r3, [fp, #-8]
80028560:	e5933000 	ldr	r3, [r3]
80028564:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028568:	e1a01003 	mov	r1, r3
8002856c:	ebfffe9e 	bl	80027fec <get_mark>
80028570:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80028574:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028578:	e1a03803 	lsl	r3, r3, #16
8002857c:	e1a02003 	mov	r2, r3
80028580:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028584:	e5933000 	ldr	r3, [r3]
80028588:	e6ff3073 	uxth	r3, r3
8002858c:	e1822003 	orr	r2, r2, r3
80028590:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028594:	e5832000 	str	r2, [r3]
80028598:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
8002859c:	e51b3008 	ldr	r3, [fp, #-8]
800285a0:	e5832000 	str	r2, [r3]
800285a4:	e24bd004 	sub	sp, fp, #4
800285a8:	e8bd8800 	pop	{fp, pc}
800285ac:	800af5c4 	.word	0x800af5c4
800285b0:	80029468 	.word	0x80029468
800285b4:	0000ffff 	.word	0x0000ffff

800285b8 <get_blk>:
800285b8:	e92d4800 	push	{fp, lr}
800285bc:	e28db004 	add	fp, sp, #4
800285c0:	e24dd018 	sub	sp, sp, #24
800285c4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800285c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800285cc:	e2433006 	sub	r3, r3, #6
800285d0:	e2833008 	add	r3, r3, #8
800285d4:	e1a03183 	lsl	r3, r3, #3
800285d8:	e59f20c0 	ldr	r2, [pc, #192]	; 800286a0 <get_blk+0xe8>
800285dc:	e0833002 	add	r3, r3, r2
800285e0:	e50b300c 	str	r3, [fp, #-12]
800285e4:	e51b300c 	ldr	r3, [fp, #-12]
800285e8:	e5933000 	ldr	r3, [r3]
800285ec:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800285f0:	e1a01003 	mov	r1, r3
800285f4:	ebfffe7c 	bl	80027fec <get_mark>
800285f8:	e50b0010 	str	r0, [fp, #-16]
800285fc:	e51b3010 	ldr	r3, [fp, #-16]
80028600:	e5933004 	ldr	r3, [r3, #4]
80028604:	e3530000 	cmp	r3, #0
80028608:	1a000001 	bne	80028614 <get_blk+0x5c>
8002860c:	e59f0090 	ldr	r0, [pc, #144]	; 800286a4 <get_blk+0xec>
80028610:	ebffe032 	bl	800206e0 <panic>
80028614:	e3a03000 	mov	r3, #0
80028618:	e50b3008 	str	r3, [fp, #-8]
8002861c:	ea000018 	b	80028684 <get_blk+0xcc>
80028620:	e51b3010 	ldr	r3, [fp, #-16]
80028624:	e5933004 	ldr	r3, [r3, #4]
80028628:	e3a01001 	mov	r1, #1
8002862c:	e51b2008 	ldr	r2, [fp, #-8]
80028630:	e1a02211 	lsl	r2, r1, r2
80028634:	e0033002 	and	r3, r3, r2
80028638:	e3530000 	cmp	r3, #0
8002863c:	0a00000d 	beq	80028678 <get_blk+0xc0>
80028640:	e51b300c 	ldr	r3, [fp, #-12]
80028644:	e5933000 	ldr	r3, [r3]
80028648:	e1a02283 	lsl	r2, r3, #5
8002864c:	e51b3008 	ldr	r3, [fp, #-8]
80028650:	e0823003 	add	r3, r2, r3
80028654:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80028658:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
8002865c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80028660:	ebffff18 	bl	800282c8 <unmark_blk>
80028664:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028668:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
8002866c:	ebfffe75 	bl	80028048 <blkid2mem>
80028670:	e1a03000 	mov	r3, r0
80028674:	ea000006 	b	80028694 <get_blk+0xdc>
80028678:	e51b3008 	ldr	r3, [fp, #-8]
8002867c:	e2833001 	add	r3, r3, #1
80028680:	e50b3008 	str	r3, [fp, #-8]
80028684:	e51b3008 	ldr	r3, [fp, #-8]
80028688:	e353001f 	cmp	r3, #31
8002868c:	daffffe3 	ble	80028620 <get_blk+0x68>
80028690:	e3a03000 	mov	r3, #0
80028694:	e1a00003 	mov	r0, r3
80028698:	e24bd004 	sub	sp, fp, #4
8002869c:	e8bd8800 	pop	{fp, pc}
800286a0:	800af5c4 	.word	0x800af5c4
800286a4:	80029478 	.word	0x80029478

800286a8 <_kmalloc>:
800286a8:	e92d4800 	push	{fp, lr}
800286ac:	e28db004 	add	fp, sp, #4
800286b0:	e24dd010 	sub	sp, sp, #16
800286b4:	e50b0010 	str	r0, [fp, #-16]
800286b8:	e51b3010 	ldr	r3, [fp, #-16]
800286bc:	e2433006 	sub	r3, r3, #6
800286c0:	e2833008 	add	r3, r3, #8
800286c4:	e1a03183 	lsl	r3, r3, #3
800286c8:	e59f2090 	ldr	r2, [pc, #144]	; 80028760 <_kmalloc+0xb8>
800286cc:	e0833002 	add	r3, r3, r2
800286d0:	e50b300c 	str	r3, [fp, #-12]
800286d4:	e3a03000 	mov	r3, #0
800286d8:	e50b3008 	str	r3, [fp, #-8]
800286dc:	e51b300c 	ldr	r3, [fp, #-12]
800286e0:	e5933000 	ldr	r3, [r3]
800286e4:	e59f2078 	ldr	r2, [pc, #120]	; 80028764 <_kmalloc+0xbc>
800286e8:	e1530002 	cmp	r3, r2
800286ec:	0a000003 	beq	80028700 <_kmalloc+0x58>
800286f0:	e51b0010 	ldr	r0, [fp, #-16]
800286f4:	ebffffaf 	bl	800285b8 <get_blk>
800286f8:	e50b0008 	str	r0, [fp, #-8]
800286fc:	ea000013 	b	80028750 <_kmalloc+0xa8>
80028700:	e51b3010 	ldr	r3, [fp, #-16]
80028704:	e353000b 	cmp	r3, #11
80028708:	ca000010 	bgt	80028750 <_kmalloc+0xa8>
8002870c:	e51b3010 	ldr	r3, [fp, #-16]
80028710:	e2833001 	add	r3, r3, #1
80028714:	e1a00003 	mov	r0, r3
80028718:	ebffffe2 	bl	800286a8 <_kmalloc>
8002871c:	e50b0008 	str	r0, [fp, #-8]
80028720:	e51b3008 	ldr	r3, [fp, #-8]
80028724:	e3530000 	cmp	r3, #0
80028728:	0a000008 	beq	80028750 <_kmalloc+0xa8>
8002872c:	e3a02001 	mov	r2, #1
80028730:	e51b3010 	ldr	r3, [fp, #-16]
80028734:	e1a03312 	lsl	r3, r2, r3
80028738:	e1a02003 	mov	r2, r3
8002873c:	e51b3008 	ldr	r3, [fp, #-8]
80028740:	e0833002 	add	r3, r3, r2
80028744:	e1a00003 	mov	r0, r3
80028748:	e51b1010 	ldr	r1, [fp, #-16]
8002874c:	eb00001e 	bl	800287cc <_kfree>
80028750:	e51b3008 	ldr	r3, [fp, #-8]
80028754:	e1a00003 	mov	r0, r3
80028758:	e24bd004 	sub	sp, fp, #4
8002875c:	e8bd8800 	pop	{fp, pc}
80028760:	800af5c4 	.word	0x800af5c4
80028764:	0000ffff 	.word	0x0000ffff

80028768 <kmalloc>:
80028768:	e92d4800 	push	{fp, lr}
8002876c:	e28db004 	add	fp, sp, #4
80028770:	e24dd010 	sub	sp, sp, #16
80028774:	e50b0010 	str	r0, [fp, #-16]
80028778:	e51b3010 	ldr	r3, [fp, #-16]
8002877c:	e353000c 	cmp	r3, #12
80028780:	ca000002 	bgt	80028790 <kmalloc+0x28>
80028784:	e51b3010 	ldr	r3, [fp, #-16]
80028788:	e3530005 	cmp	r3, #5
8002878c:	ca000001 	bgt	80028798 <kmalloc+0x30>
80028790:	e59f002c 	ldr	r0, [pc, #44]	; 800287c4 <kmalloc+0x5c>
80028794:	ebffdfd1 	bl	800206e0 <panic>
80028798:	e59f0028 	ldr	r0, [pc, #40]	; 800287c8 <kmalloc+0x60>
8002879c:	ebfff021 	bl	80024828 <acquire>
800287a0:	e51b0010 	ldr	r0, [fp, #-16]
800287a4:	ebffffbf 	bl	800286a8 <_kmalloc>
800287a8:	e50b0008 	str	r0, [fp, #-8]
800287ac:	e59f0014 	ldr	r0, [pc, #20]	; 800287c8 <kmalloc+0x60>
800287b0:	ebfff026 	bl	80024850 <release>
800287b4:	e51b3008 	ldr	r3, [fp, #-8]
800287b8:	e1a00003 	mov	r0, r3
800287bc:	e24bd004 	sub	sp, fp, #4
800287c0:	e8bd8800 	pop	{fp, pc}
800287c4:	80029490 	.word	0x80029490
800287c8:	800af5c4 	.word	0x800af5c4

800287cc <_kfree>:
800287cc:	e92d4800 	push	{fp, lr}
800287d0:	e28db004 	add	fp, sp, #4
800287d4:	e24dd018 	sub	sp, sp, #24
800287d8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800287dc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800287e0:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
800287e4:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
800287e8:	ebfffe26 	bl	80028088 <mem2blkid>
800287ec:	e50b0008 	str	r0, [fp, #-8]
800287f0:	e51b3008 	ldr	r3, [fp, #-8]
800287f4:	e1a032c3 	asr	r3, r3, #5
800287f8:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
800287fc:	e1a01003 	mov	r1, r3
80028800:	ebfffdf9 	bl	80027fec <get_mark>
80028804:	e50b000c 	str	r0, [fp, #-12]
80028808:	e51b300c 	ldr	r3, [fp, #-12]
8002880c:	e5933004 	ldr	r3, [r3, #4]
80028810:	e1a00003 	mov	r0, r3
80028814:	e51b1008 	ldr	r1, [fp, #-8]
80028818:	ebfffe2a 	bl	800280c8 <available>
8002881c:	e1a03000 	mov	r3, r0
80028820:	e3530000 	cmp	r3, #0
80028824:	0a000001 	beq	80028830 <_kfree+0x64>
80028828:	e59f0088 	ldr	r0, [pc, #136]	; 800288b8 <_kfree+0xec>
8002882c:	ebffdfab 	bl	800206e0 <panic>
80028830:	e51b3008 	ldr	r3, [fp, #-8]
80028834:	e2233001 	eor	r3, r3, #1
80028838:	e50b3010 	str	r3, [fp, #-16]
8002883c:	e51b300c 	ldr	r3, [fp, #-12]
80028840:	e5933004 	ldr	r3, [r3, #4]
80028844:	e1a00003 	mov	r0, r3
80028848:	e51b1010 	ldr	r1, [fp, #-16]
8002884c:	ebfffe1d 	bl	800280c8 <available>
80028850:	e1a03000 	mov	r3, r0
80028854:	e3530000 	cmp	r3, #0
80028858:	0a000002 	beq	80028868 <_kfree+0x9c>
8002885c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028860:	e353000c 	cmp	r3, #12
80028864:	1a000003 	bne	80028878 <_kfree+0xac>
80028868:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
8002886c:	e51b1008 	ldr	r1, [fp, #-8]
80028870:	ebfffefc 	bl	80028468 <mark_blk>
80028874:	ea00000d 	b	800288b0 <_kfree+0xe4>
80028878:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
8002887c:	e51b1010 	ldr	r1, [fp, #-16]
80028880:	ebfffe90 	bl	800282c8 <unmark_blk>
80028884:	e51b3008 	ldr	r3, [fp, #-8]
80028888:	e3c33001 	bic	r3, r3, #1
8002888c:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80028890:	e1a01003 	mov	r1, r3
80028894:	ebfffdeb 	bl	80028048 <blkid2mem>
80028898:	e1a02000 	mov	r2, r0
8002889c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800288a0:	e2833001 	add	r3, r3, #1
800288a4:	e1a00002 	mov	r0, r2
800288a8:	e1a01003 	mov	r1, r3
800288ac:	ebffffc6 	bl	800287cc <_kfree>
800288b0:	e24bd004 	sub	sp, fp, #4
800288b4:	e8bd8800 	pop	{fp, pc}
800288b8:	800294b0 	.word	0x800294b0

800288bc <kfree>:
800288bc:	e92d4800 	push	{fp, lr}
800288c0:	e28db004 	add	fp, sp, #4
800288c4:	e24dd008 	sub	sp, sp, #8
800288c8:	e50b0008 	str	r0, [fp, #-8]
800288cc:	e50b100c 	str	r1, [fp, #-12]
800288d0:	e51b300c 	ldr	r3, [fp, #-12]
800288d4:	e353000c 	cmp	r3, #12
800288d8:	ca00000b 	bgt	8002890c <kfree+0x50>
800288dc:	e51b300c 	ldr	r3, [fp, #-12]
800288e0:	e3530005 	cmp	r3, #5
800288e4:	da000008 	ble	8002890c <kfree+0x50>
800288e8:	e3a02001 	mov	r2, #1
800288ec:	e51b300c 	ldr	r3, [fp, #-12]
800288f0:	e1a03312 	lsl	r3, r2, r3
800288f4:	e2433001 	sub	r3, r3, #1
800288f8:	e1a02003 	mov	r2, r3
800288fc:	e51b3008 	ldr	r3, [fp, #-8]
80028900:	e0033002 	and	r3, r3, r2
80028904:	e3530000 	cmp	r3, #0
80028908:	0a000001 	beq	80028914 <kfree+0x58>
8002890c:	e59f0024 	ldr	r0, [pc, #36]	; 80028938 <kfree+0x7c>
80028910:	ebffdf72 	bl	800206e0 <panic>
80028914:	e59f0020 	ldr	r0, [pc, #32]	; 8002893c <kfree+0x80>
80028918:	ebffefc2 	bl	80024828 <acquire>
8002891c:	e51b0008 	ldr	r0, [fp, #-8]
80028920:	e51b100c 	ldr	r1, [fp, #-12]
80028924:	ebffffa8 	bl	800287cc <_kfree>
80028928:	e59f000c 	ldr	r0, [pc, #12]	; 8002893c <kfree+0x80>
8002892c:	ebffefc7 	bl	80024850 <release>
80028930:	e24bd004 	sub	sp, fp, #4
80028934:	e8bd8800 	pop	{fp, pc}
80028938:	800294c4 	.word	0x800294c4
8002893c:	800af5c4 	.word	0x800af5c4

80028940 <free_page>:
80028940:	e92d4800 	push	{fp, lr}
80028944:	e28db004 	add	fp, sp, #4
80028948:	e24dd008 	sub	sp, sp, #8
8002894c:	e50b0008 	str	r0, [fp, #-8]
80028950:	e51b0008 	ldr	r0, [fp, #-8]
80028954:	e3a0100c 	mov	r1, #12
80028958:	ebffffd7 	bl	800288bc <kfree>
8002895c:	e24bd004 	sub	sp, fp, #4
80028960:	e8bd8800 	pop	{fp, pc}

80028964 <alloc_page>:
80028964:	e92d4800 	push	{fp, lr}
80028968:	e28db004 	add	fp, sp, #4
8002896c:	e3a0000c 	mov	r0, #12
80028970:	ebffff7c 	bl	80028768 <kmalloc>
80028974:	e1a03000 	mov	r3, r0
80028978:	e1a00003 	mov	r0, r3
8002897c:	e8bd8800 	pop	{fp, pc}

80028980 <get_order>:
80028980:	e92d4800 	push	{fp, lr}
80028984:	e28db004 	add	fp, sp, #4
80028988:	e24dd010 	sub	sp, sp, #16
8002898c:	e50b0010 	str	r0, [fp, #-16]
80028990:	e51b3010 	ldr	r3, [fp, #-16]
80028994:	e2433001 	sub	r3, r3, #1
80028998:	e50b3010 	str	r3, [fp, #-16]
8002899c:	e51b3010 	ldr	r3, [fp, #-16]
800289a0:	e1a030a3 	lsr	r3, r3, #1
800289a4:	e51b2010 	ldr	r2, [fp, #-16]
800289a8:	e1823003 	orr	r3, r2, r3
800289ac:	e50b3010 	str	r3, [fp, #-16]
800289b0:	e51b3010 	ldr	r3, [fp, #-16]
800289b4:	e1a03123 	lsr	r3, r3, #2
800289b8:	e51b2010 	ldr	r2, [fp, #-16]
800289bc:	e1823003 	orr	r3, r2, r3
800289c0:	e50b3010 	str	r3, [fp, #-16]
800289c4:	e51b3010 	ldr	r3, [fp, #-16]
800289c8:	e1a03223 	lsr	r3, r3, #4
800289cc:	e51b2010 	ldr	r2, [fp, #-16]
800289d0:	e1823003 	orr	r3, r2, r3
800289d4:	e50b3010 	str	r3, [fp, #-16]
800289d8:	e51b3010 	ldr	r3, [fp, #-16]
800289dc:	e1a03423 	lsr	r3, r3, #8
800289e0:	e51b2010 	ldr	r2, [fp, #-16]
800289e4:	e1823003 	orr	r3, r2, r3
800289e8:	e50b3010 	str	r3, [fp, #-16]
800289ec:	e51b3010 	ldr	r3, [fp, #-16]
800289f0:	e1a03823 	lsr	r3, r3, #16
800289f4:	e51b2010 	ldr	r2, [fp, #-16]
800289f8:	e1823003 	orr	r3, r2, r3
800289fc:	e50b3010 	str	r3, [fp, #-16]
80028a00:	e51b3010 	ldr	r3, [fp, #-16]
80028a04:	e2833001 	add	r3, r3, #1
80028a08:	e50b3010 	str	r3, [fp, #-16]
80028a0c:	e3a03000 	mov	r3, #0
80028a10:	e50b3008 	str	r3, [fp, #-8]
80028a14:	ea00000b 	b	80028a48 <get_order+0xc8>
80028a18:	e51b3008 	ldr	r3, [fp, #-8]
80028a1c:	e3a02001 	mov	r2, #1
80028a20:	e1a03312 	lsl	r3, r2, r3
80028a24:	e1a02003 	mov	r2, r3
80028a28:	e51b3010 	ldr	r3, [fp, #-16]
80028a2c:	e0033002 	and	r3, r3, r2
80028a30:	e3530000 	cmp	r3, #0
80028a34:	0a000000 	beq	80028a3c <get_order+0xbc>
80028a38:	ea000005 	b	80028a54 <get_order+0xd4>
80028a3c:	e51b3008 	ldr	r3, [fp, #-8]
80028a40:	e2833001 	add	r3, r3, #1
80028a44:	e50b3008 	str	r3, [fp, #-8]
80028a48:	e51b3008 	ldr	r3, [fp, #-8]
80028a4c:	e353001f 	cmp	r3, #31
80028a50:	9afffff0 	bls	80028a18 <get_order+0x98>
80028a54:	e51b3008 	ldr	r3, [fp, #-8]
80028a58:	e3530005 	cmp	r3, #5
80028a5c:	8a000002 	bhi	80028a6c <get_order+0xec>
80028a60:	e3a03006 	mov	r3, #6
80028a64:	e50b3008 	str	r3, [fp, #-8]
80028a68:	ea000004 	b	80028a80 <get_order+0x100>
80028a6c:	e51b3008 	ldr	r3, [fp, #-8]
80028a70:	e353000c 	cmp	r3, #12
80028a74:	9a000001 	bls	80028a80 <get_order+0x100>
80028a78:	e59f0010 	ldr	r0, [pc, #16]	; 80028a90 <get_order+0x110>
80028a7c:	ebffdf17 	bl	800206e0 <panic>
80028a80:	e51b3008 	ldr	r3, [fp, #-8]
80028a84:	e1a00003 	mov	r0, r3
80028a88:	e24bd004 	sub	sp, fp, #4
80028a8c:	e8bd8800 	pop	{fp, pc}
80028a90:	800294f4 	.word	0x800294f4

80028a94 <__aeabi_uidiv>:
80028a94:	e2512001 	subs	r2, r1, #1
80028a98:	012fff1e 	bxeq	lr
80028a9c:	3a000036 	bcc	80028b7c <__aeabi_uidiv+0xe8>
80028aa0:	e1500001 	cmp	r0, r1
80028aa4:	9a000022 	bls	80028b34 <__aeabi_uidiv+0xa0>
80028aa8:	e1110002 	tst	r1, r2
80028aac:	0a000023 	beq	80028b40 <__aeabi_uidiv+0xac>
80028ab0:	e311020e 	tst	r1, #-536870912	; 0xe0000000
80028ab4:	01a01181 	lsleq	r1, r1, #3
80028ab8:	03a03008 	moveq	r3, #8
80028abc:	13a03001 	movne	r3, #1
80028ac0:	e3510201 	cmp	r1, #268435456	; 0x10000000
80028ac4:	31510000 	cmpcc	r1, r0
80028ac8:	31a01201 	lslcc	r1, r1, #4
80028acc:	31a03203 	lslcc	r3, r3, #4
80028ad0:	3afffffa 	bcc	80028ac0 <__aeabi_uidiv+0x2c>
80028ad4:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
80028ad8:	31510000 	cmpcc	r1, r0
80028adc:	31a01081 	lslcc	r1, r1, #1
80028ae0:	31a03083 	lslcc	r3, r3, #1
80028ae4:	3afffffa 	bcc	80028ad4 <__aeabi_uidiv+0x40>
80028ae8:	e3a02000 	mov	r2, #0
80028aec:	e1500001 	cmp	r0, r1
80028af0:	20400001 	subcs	r0, r0, r1
80028af4:	21822003 	orrcs	r2, r2, r3
80028af8:	e15000a1 	cmp	r0, r1, lsr #1
80028afc:	204000a1 	subcs	r0, r0, r1, lsr #1
80028b00:	218220a3 	orrcs	r2, r2, r3, lsr #1
80028b04:	e1500121 	cmp	r0, r1, lsr #2
80028b08:	20400121 	subcs	r0, r0, r1, lsr #2
80028b0c:	21822123 	orrcs	r2, r2, r3, lsr #2
80028b10:	e15001a1 	cmp	r0, r1, lsr #3
80028b14:	204001a1 	subcs	r0, r0, r1, lsr #3
80028b18:	218221a3 	orrcs	r2, r2, r3, lsr #3
80028b1c:	e3500000 	cmp	r0, #0
80028b20:	11b03223 	lsrsne	r3, r3, #4
80028b24:	11a01221 	lsrne	r1, r1, #4
80028b28:	1affffef 	bne	80028aec <__aeabi_uidiv+0x58>
80028b2c:	e1a00002 	mov	r0, r2
80028b30:	e12fff1e 	bx	lr
80028b34:	03a00001 	moveq	r0, #1
80028b38:	13a00000 	movne	r0, #0
80028b3c:	e12fff1e 	bx	lr
80028b40:	e3510801 	cmp	r1, #65536	; 0x10000
80028b44:	21a01821 	lsrcs	r1, r1, #16
80028b48:	23a02010 	movcs	r2, #16
80028b4c:	33a02000 	movcc	r2, #0
80028b50:	e3510c01 	cmp	r1, #256	; 0x100
80028b54:	21a01421 	lsrcs	r1, r1, #8
80028b58:	22822008 	addcs	r2, r2, #8
80028b5c:	e3510010 	cmp	r1, #16
80028b60:	21a01221 	lsrcs	r1, r1, #4
80028b64:	22822004 	addcs	r2, r2, #4
80028b68:	e3510004 	cmp	r1, #4
80028b6c:	82822003 	addhi	r2, r2, #3
80028b70:	908220a1 	addls	r2, r2, r1, lsr #1
80028b74:	e1a00230 	lsr	r0, r0, r2
80028b78:	e12fff1e 	bx	lr
80028b7c:	e3500000 	cmp	r0, #0
80028b80:	13e00000 	mvnne	r0, #0
80028b84:	ea000059 	b	80028cf0 <__aeabi_idiv0>

80028b88 <__aeabi_uidivmod>:
80028b88:	e3510000 	cmp	r1, #0
80028b8c:	0afffffa 	beq	80028b7c <__aeabi_uidiv+0xe8>
80028b90:	e92d4003 	push	{r0, r1, lr}
80028b94:	ebffffbe 	bl	80028a94 <__aeabi_uidiv>
80028b98:	e8bd4006 	pop	{r1, r2, lr}
80028b9c:	e0030092 	mul	r3, r2, r0
80028ba0:	e0411003 	sub	r1, r1, r3
80028ba4:	e12fff1e 	bx	lr

80028ba8 <__aeabi_idiv>:
80028ba8:	e3510000 	cmp	r1, #0
80028bac:	0a000043 	beq	80028cc0 <.divsi3_skip_div0_test+0x110>

80028bb0 <.divsi3_skip_div0_test>:
80028bb0:	e020c001 	eor	ip, r0, r1
80028bb4:	42611000 	rsbmi	r1, r1, #0
80028bb8:	e2512001 	subs	r2, r1, #1
80028bbc:	0a000027 	beq	80028c60 <.divsi3_skip_div0_test+0xb0>
80028bc0:	e1b03000 	movs	r3, r0
80028bc4:	42603000 	rsbmi	r3, r0, #0
80028bc8:	e1530001 	cmp	r3, r1
80028bcc:	9a000026 	bls	80028c6c <.divsi3_skip_div0_test+0xbc>
80028bd0:	e1110002 	tst	r1, r2
80028bd4:	0a000028 	beq	80028c7c <.divsi3_skip_div0_test+0xcc>
80028bd8:	e311020e 	tst	r1, #-536870912	; 0xe0000000
80028bdc:	01a01181 	lsleq	r1, r1, #3
80028be0:	03a02008 	moveq	r2, #8
80028be4:	13a02001 	movne	r2, #1
80028be8:	e3510201 	cmp	r1, #268435456	; 0x10000000
80028bec:	31510003 	cmpcc	r1, r3
80028bf0:	31a01201 	lslcc	r1, r1, #4
80028bf4:	31a02202 	lslcc	r2, r2, #4
80028bf8:	3afffffa 	bcc	80028be8 <.divsi3_skip_div0_test+0x38>
80028bfc:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
80028c00:	31510003 	cmpcc	r1, r3
80028c04:	31a01081 	lslcc	r1, r1, #1
80028c08:	31a02082 	lslcc	r2, r2, #1
80028c0c:	3afffffa 	bcc	80028bfc <.divsi3_skip_div0_test+0x4c>
80028c10:	e3a00000 	mov	r0, #0
80028c14:	e1530001 	cmp	r3, r1
80028c18:	20433001 	subcs	r3, r3, r1
80028c1c:	21800002 	orrcs	r0, r0, r2
80028c20:	e15300a1 	cmp	r3, r1, lsr #1
80028c24:	204330a1 	subcs	r3, r3, r1, lsr #1
80028c28:	218000a2 	orrcs	r0, r0, r2, lsr #1
80028c2c:	e1530121 	cmp	r3, r1, lsr #2
80028c30:	20433121 	subcs	r3, r3, r1, lsr #2
80028c34:	21800122 	orrcs	r0, r0, r2, lsr #2
80028c38:	e15301a1 	cmp	r3, r1, lsr #3
80028c3c:	204331a1 	subcs	r3, r3, r1, lsr #3
80028c40:	218001a2 	orrcs	r0, r0, r2, lsr #3
80028c44:	e3530000 	cmp	r3, #0
80028c48:	11b02222 	lsrsne	r2, r2, #4
80028c4c:	11a01221 	lsrne	r1, r1, #4
80028c50:	1affffef 	bne	80028c14 <.divsi3_skip_div0_test+0x64>
80028c54:	e35c0000 	cmp	ip, #0
80028c58:	42600000 	rsbmi	r0, r0, #0
80028c5c:	e12fff1e 	bx	lr
80028c60:	e13c0000 	teq	ip, r0
80028c64:	42600000 	rsbmi	r0, r0, #0
80028c68:	e12fff1e 	bx	lr
80028c6c:	33a00000 	movcc	r0, #0
80028c70:	01a00fcc 	asreq	r0, ip, #31
80028c74:	03800001 	orreq	r0, r0, #1
80028c78:	e12fff1e 	bx	lr
80028c7c:	e3510801 	cmp	r1, #65536	; 0x10000
80028c80:	21a01821 	lsrcs	r1, r1, #16
80028c84:	23a02010 	movcs	r2, #16
80028c88:	33a02000 	movcc	r2, #0
80028c8c:	e3510c01 	cmp	r1, #256	; 0x100
80028c90:	21a01421 	lsrcs	r1, r1, #8
80028c94:	22822008 	addcs	r2, r2, #8
80028c98:	e3510010 	cmp	r1, #16
80028c9c:	21a01221 	lsrcs	r1, r1, #4
80028ca0:	22822004 	addcs	r2, r2, #4
80028ca4:	e3510004 	cmp	r1, #4
80028ca8:	82822003 	addhi	r2, r2, #3
80028cac:	908220a1 	addls	r2, r2, r1, lsr #1
80028cb0:	e35c0000 	cmp	ip, #0
80028cb4:	e1a00233 	lsr	r0, r3, r2
80028cb8:	42600000 	rsbmi	r0, r0, #0
80028cbc:	e12fff1e 	bx	lr
80028cc0:	e3500000 	cmp	r0, #0
80028cc4:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
80028cc8:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
80028ccc:	ea000007 	b	80028cf0 <__aeabi_idiv0>

80028cd0 <__aeabi_idivmod>:
80028cd0:	e3510000 	cmp	r1, #0
80028cd4:	0afffff9 	beq	80028cc0 <.divsi3_skip_div0_test+0x110>
80028cd8:	e92d4003 	push	{r0, r1, lr}
80028cdc:	ebffffb3 	bl	80028bb0 <.divsi3_skip_div0_test>
80028ce0:	e8bd4006 	pop	{r1, r2, lr}
80028ce4:	e0030092 	mul	r3, r2, r0
80028ce8:	e0411003 	sub	r1, r1, r3
80028cec:	e12fff1e 	bx	lr

80028cf0 <__aeabi_idiv0>:
80028cf0:	e12fff1e 	bx	lr
