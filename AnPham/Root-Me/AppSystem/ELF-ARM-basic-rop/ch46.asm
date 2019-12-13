
ch46:     file format elf32-littlearm


Disassembly of section .interp:

00010154 <.interp>:
   10154:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
   10158:	2d646c2f 	stclcs	12, cr6, [r4, #-188]!	; 0xffffff44
   1015c:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0xfffff694
   10160:	72612d78 	rsbvc	r2, r1, #120, 26	; 0x1e00
   10164:	2e66686d 	cdpcs	8, 6, cr6, cr6, cr13, {3}
   10168:	332e6f73 			; <UNDEFINED> instruction: 0x332e6f73
	...

Disassembly of section .note.ABI-tag:

00010170 <.note.ABI-tag>:
   10170:	00000004 	andeq	r0, r0, r4
   10174:	00000010 	andeq	r0, r0, r0, lsl r0
   10178:	00000001 	andeq	r0, r0, r1
   1017c:	00554e47 	subseq	r4, r5, r7, asr #28
   10180:	00000000 	andeq	r0, r0, r0
   10184:	00000003 	andeq	r0, r0, r3
   10188:	00000002 	andeq	r0, r0, r2
   1018c:	00000000 	andeq	r0, r0, r0

Disassembly of section .note.gnu.build-id:

00010190 <.note.gnu.build-id>:
   10190:	00000004 	andeq	r0, r0, r4
   10194:	00000014 	andeq	r0, r0, r4, lsl r0
   10198:	00000003 	andeq	r0, r0, r3
   1019c:	00554e47 	subseq	r4, r5, r7, asr #28
   101a0:	373f8067 	ldrcc	r8, [pc, -r7, rrx]!
   101a4:	a285b050 	addge	fp, r5, #80	; 0x50
   101a8:	c777c53b 			; <UNDEFINED> instruction: 0xc777c53b
   101ac:	3ba321f2 	blcc	fe8d897c <__bss_end__+0xfe8b7970>
   101b0:	9f3ee39a 	svcls	0x003ee39a

Disassembly of section .gnu.hash:

000101b4 <.gnu.hash>:
   101b4:	00000003 	andeq	r0, r0, r3
   101b8:	00000002 	andeq	r0, r0, r2
   101bc:	00000002 	andeq	r0, r0, r2
   101c0:	00000006 	andeq	r0, r0, r6
   101c4:	60067400 	andvs	r7, r6, r0, lsl #8
   101c8:	35205800 	strcc	r5, [r0, #-2048]!	; 0xfffff800
   101cc:	00000002 	andeq	r0, r0, r2
   101d0:	00000005 	andeq	r0, r0, r5
   101d4:	00000009 	andeq	r0, r0, r9
   101d8:	7c9c7b10 	vldmiavc	ip, {d7-d14}
   101dc:	1c93bb9c 	vldmiane	r3, {d11-d24}
   101e0:	eafe348d 	b	fff9d41c <__bss_end__+0xfff7c410>
   101e4:	156b2bb8 	strbne	r2, [fp, #-3000]!	; 0xfffff448
   101e8:	12de978a 	sbcsne	r9, lr, #36175872	; 0x2280000
   101ec:	ca90eebc 	bgt	fe44bce4 <__bss_end__+0xfe42acd8>
   101f0:	0f11ed7d 	svceq	0x0011ed7d
   101f4:	f07392ec 			; <UNDEFINED> instruction: 0xf07392ec
   101f8:	f63d4e2e 			; <UNDEFINED> instruction: 0xf63d4e2e
   101fc:	1ceee48b 	cfstrdne	mvd14, [lr], #556	; 0x22c

Disassembly of section .dynsym:

00010200 <.dynsym>:
	...
   10210:	00000065 	andeq	r0, r0, r5, rrx
	...
   1021c:	00000020 	andeq	r0, r0, r0, lsr #32
   10220:	0000001a 	andeq	r0, r0, sl, lsl r0
	...
   1022c:	00000012 	andeq	r0, r0, r2, lsl r0
   10230:	0000003d 	andeq	r0, r0, sp, lsr r0
	...
   1023c:	00000012 	andeq	r0, r0, r2, lsl r0
   10240:	0000000b 	andeq	r0, r0, fp
	...
   1024c:	00000012 	andeq	r0, r0, r2, lsl r0
   10250:	00000036 	andeq	r0, r0, r6, lsr r0
	...
   1025c:	00000012 	andeq	r0, r0, r2, lsl r0
   10260:	0000001f 	andeq	r0, r0, pc, lsl r0
	...
   1026c:	00000012 	andeq	r0, r0, r2, lsl r0
   10270:	00000028 	andeq	r0, r0, r8, lsr #32
	...
   1027c:	00000012 	andeq	r0, r0, r2, lsl r0
   10280:	00000030 	andeq	r0, r0, r0, lsr r0
	...
   1028c:	00000012 	andeq	r0, r0, r2, lsl r0
   10290:	0000004b 	andeq	r0, r0, fp, asr #32
	...
   1029c:	00000012 	andeq	r0, r0, r2, lsl r0
   102a0:	00000053 	andeq	r0, r0, r3, asr r0
	...
   102ac:	00000012 	andeq	r0, r0, r2, lsl r0
   102b0:	00000044 	andeq	r0, r0, r4, asr #32
	...
   102bc:	00000012 	andeq	r0, r0, r2, lsl r0

Disassembly of section .dynstr:

000102c0 <.dynstr>:
   102c0:	62696c00 	rsbvs	r6, r9, #0, 24
   102c4:	6f732e63 	svcvs	0x00732e63
   102c8:	5f00362e 	svcpl	0x0000362e
   102cc:	6f73695f 	svcvs	0x0073695f
   102d0:	5f393963 	svcpl	0x00393963
   102d4:	6e616373 	mcrvs	3, 3, r6, cr1, cr3, {3}
   102d8:	75700066 	ldrbvc	r0, [r0, #-102]!	; 0xffffff9a
   102dc:	73007374 	movwvc	r7, #884	; 0x374
   102e0:	65727465 	ldrbvs	r7, [r2, #-1125]!	; 0xfffffb9b
   102e4:	00646975 	rsbeq	r6, r4, r5, ror r9
   102e8:	63747570 	cmnvs	r4, #112, 10	; 0x1c000000
   102ec:	00726168 	rsbseq	r6, r2, r8, ror #2
   102f0:	726f6261 	rsbvc	r6, pc, #268435462	; 0x10000006
   102f4:	72700074 	rsbsvc	r0, r0, #116	; 0x74
   102f8:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
   102fc:	72747300 	rsbsvc	r7, r4, #0, 6
   10300:	006e656c 	rsbeq	r6, lr, ip, ror #10
   10304:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
   10308:	67006d65 	strvs	r6, [r0, -r5, ror #26]
   1030c:	75657465 	strbvc	r7, [r5, #-1125]!	; 0xfffffb9b
   10310:	5f006469 	svcpl	0x00006469
   10314:	62696c5f 	rsbvs	r6, r9, #24320	; 0x5f00
   10318:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
   1031c:	5f747261 	svcpl	0x00747261
   10320:	6e69616d 	powvsez	f6, f1, #5.0
   10324:	675f5f00 	ldrbvs	r5, [pc, -r0, lsl #30]
   10328:	5f6e6f6d 	svcpl	0x006e6f6d
   1032c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
   10330:	005f5f74 	subseq	r5, pc, r4, ror pc	; <UNPREDICTABLE>
   10334:	42494c47 	submi	r4, r9, #18176	; 0x4700
   10338:	2e325f43 	cdpcs	15, 3, cr5, cr2, cr3, {2}
   1033c:	4c470037 	mcrrmi	0, 3, r0, r7, cr7
   10340:	5f434249 	svcpl	0x00434249
   10344:	00342e32 	eorseq	r2, r4, r2, lsr lr

Disassembly of section .gnu.version:

00010348 <.gnu.version>:
   10348:	00000000 	andeq	r0, r0, r0
   1034c:	00020002 	andeq	r0, r2, r2
   10350:	00020003 	andeq	r0, r2, r3
   10354:	00020002 	andeq	r0, r2, r2
   10358:	00020002 	andeq	r0, r2, r2
   1035c:	00020002 	andeq	r0, r2, r2

Disassembly of section .gnu.version_r:

00010360 <.gnu.version_r>:
   10360:	00020001 	andeq	r0, r2, r1
   10364:	00000001 	andeq	r0, r0, r1
   10368:	00000010 	andeq	r0, r0, r0, lsl r0
   1036c:	00000000 	andeq	r0, r0, r0
   10370:	0d696917 			; <UNDEFINED> instruction: 0x0d696917
   10374:	00030000 	andeq	r0, r3, r0
   10378:	00000074 	andeq	r0, r0, r4, ror r0
   1037c:	00000010 	andeq	r0, r0, r0, lsl r0
   10380:	0d696914 			; <UNDEFINED> instruction: 0x0d696914
   10384:	00020000 	andeq	r0, r2, r0
   10388:	0000007e 	andeq	r0, r0, lr, ror r0
   1038c:	00000000 	andeq	r0, r0, r0

Disassembly of section .rel.dyn:

00010390 <.rel.dyn>:
   10390:	00020ffc 	strdeq	r0, [r2], -ip
   10394:	00000115 	andeq	r0, r0, r5, lsl r1

Disassembly of section .rel.plt:

00010398 <.rel.plt>:
   10398:	00020fd0 	ldrdeq	r0, [r2], -r0	; <UNPREDICTABLE>
   1039c:	00000516 	andeq	r0, r0, r6, lsl r5
   103a0:	00020fd4 	ldrdeq	r0, [r2], -r4
   103a4:	00000916 	andeq	r0, r0, r6, lsl r9
   103a8:	00020fd8 	ldrdeq	r0, [r2], -r8
   103ac:	00000216 	andeq	r0, r0, r6, lsl r2
   103b0:	00020fdc 	ldrdeq	r0, [r2], -ip
   103b4:	00000a16 	andeq	r0, r0, r6, lsl sl
   103b8:	00020fe0 	andeq	r0, r2, r0, ror #31
   103bc:	00000b16 	andeq	r0, r0, r6, lsl fp
   103c0:	00020fe4 	andeq	r0, r2, r4, ror #31
   103c4:	00000116 	andeq	r0, r0, r6, lsl r1
   103c8:	00020fe8 	andeq	r0, r2, r8, ror #31
   103cc:	00000316 	andeq	r0, r0, r6, lsl r3
   103d0:	00020fec 	andeq	r0, r2, ip, ror #31
   103d4:	00000616 	andeq	r0, r0, r6, lsl r6
   103d8:	00020ff0 	strdeq	r0, [r2], -r0	; <UNPREDICTABLE>
   103dc:	00000716 	andeq	r0, r0, r6, lsl r7
   103e0:	00020ff4 	strdeq	r0, [r2], -r4
   103e4:	00000416 	andeq	r0, r0, r6, lsl r4
   103e8:	00020ff8 	strdeq	r0, [r2], -r8
   103ec:	00000816 	andeq	r0, r0, r6, lsl r8

Disassembly of section .init:

000103f0 <_init>:
   103f0:	e92d4008 	push	{r3, lr}
   103f4:	eb000032 	bl	104c4 <call_weak_fn>
   103f8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000103fc <.plt>:
   103fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10400:	e59fe004 	ldr	lr, [pc, #4]	; 1040c <.plt+0x10>
   10404:	e08fe00e 	add	lr, pc, lr
   10408:	e5bef008 	ldr	pc, [lr, #8]!
   1040c:	00010bb8 			; <UNDEFINED> instruction: 0x00010bb8

00010410 <printf@plt>:
   10410:	e28fc600 	add	ip, pc, #0, 12
   10414:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10418:	e5bcfbb8 	ldr	pc, [ip, #3000]!	; 0xbb8

0001041c <geteuid@plt>:
   1041c:	e28fc600 	add	ip, pc, #0, 12
   10420:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10424:	e5bcfbb0 	ldr	pc, [ip, #2992]!	; 0xbb0

00010428 <puts@plt>:
   10428:	e28fc600 	add	ip, pc, #0, 12
   1042c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10430:	e5bcfba8 	ldr	pc, [ip, #2984]!	; 0xba8

00010434 <__libc_start_main@plt>:
   10434:	e28fc600 	add	ip, pc, #0, 12
   10438:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1043c:	e5bcfba0 	ldr	pc, [ip, #2976]!	; 0xba0

00010440 <system@plt>:
   10440:	e28fc600 	add	ip, pc, #0, 12
   10444:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10448:	e5bcfb98 	ldr	pc, [ip, #2968]!	; 0xb98

0001044c <__gmon_start__@plt>:
   1044c:	e28fc600 	add	ip, pc, #0, 12
   10450:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10454:	e5bcfb90 	ldr	pc, [ip, #2960]!	; 0xb90

00010458 <strlen@plt>:
   10458:	e28fc600 	add	ip, pc, #0, 12
   1045c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10460:	e5bcfb88 	ldr	pc, [ip, #2952]!	; 0xb88

00010464 <setreuid@plt>:
   10464:	e28fc600 	add	ip, pc, #0, 12
   10468:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1046c:	e5bcfb80 	ldr	pc, [ip, #2944]!	; 0xb80

00010470 <putchar@plt>:
   10470:	e28fc600 	add	ip, pc, #0, 12
   10474:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10478:	e5bcfb78 	ldr	pc, [ip, #2936]!	; 0xb78

0001047c <__isoc99_scanf@plt>:
   1047c:	e28fc600 	add	ip, pc, #0, 12
   10480:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10484:	e5bcfb70 	ldr	pc, [ip, #2928]!	; 0xb70

00010488 <abort@plt>:
   10488:	e28fc600 	add	ip, pc, #0, 12
   1048c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10490:	e5bcfb68 	ldr	pc, [ip, #2920]!	; 0xb68

Disassembly of section .text:

00010494 <_start>:
   10494:	f04f 0b00 	mov.w	fp, #0
   10498:	f04f 0e00 	mov.w	lr, #0
   1049c:	bc02      	pop	{r1}
   1049e:	466a      	mov	r2, sp
   104a0:	b404      	push	{r2}
   104a2:	b401      	push	{r0}
   104a4:	f8df c010 	ldr.w	ip, [pc, #16]	; 104b8 <_start+0x24>
   104a8:	f84d cd04 	str.w	ip, [sp, #-4]!
   104ac:	4803      	ldr	r0, [pc, #12]	; (104bc <_start+0x28>)
   104ae:	4b04      	ldr	r3, [pc, #16]	; (104c0 <_start+0x2c>)
   104b0:	f7ff efc0 	blx	10434 <__libc_start_main@plt>
   104b4:	f7ff efe8 	blx	10488 <abort@plt>
   104b8:	000106c5 	andeq	r0, r1, r5, asr #13
   104bc:	00010638 	andeq	r0, r1, r8, lsr r6
   104c0:	00010689 	andeq	r0, r1, r9, lsl #13

000104c4 <call_weak_fn>:
   104c4:	e59f3014 	ldr	r3, [pc, #20]	; 104e0 <call_weak_fn+0x1c>
   104c8:	e59f2014 	ldr	r2, [pc, #20]	; 104e4 <call_weak_fn+0x20>
   104cc:	e08f3003 	add	r3, pc, r3
   104d0:	e7932002 	ldr	r2, [r3, r2]
   104d4:	e3520000 	cmp	r2, #0
   104d8:	012fff1e 	bxeq	lr
   104dc:	eaffffda 	b	1044c <__gmon_start__@plt>
   104e0:	00010af0 	strdeq	r0, [r1], -r0	; <UNPREDICTABLE>
   104e4:	00000038 	andeq	r0, r0, r8, lsr r0

000104e8 <deregister_tm_clones>:
   104e8:	4b07      	ldr	r3, [pc, #28]	; (10508 <deregister_tm_clones+0x20>)
   104ea:	f241 0008 	movw	r0, #4104	; 0x1008
   104ee:	f2c0 0002 	movt	r0, #2
   104f2:	1a1b      	subs	r3, r3, r0
   104f4:	2b06      	cmp	r3, #6
   104f6:	d905      	bls.n	10504 <deregister_tm_clones+0x1c>
   104f8:	f240 0300 	movw	r3, #0
   104fc:	f2c0 0300 	movt	r3, #0
   10500:	b103      	cbz	r3, 10504 <deregister_tm_clones+0x1c>
   10502:	4718      	bx	r3
   10504:	4770      	bx	lr
   10506:	bf00      	nop
   10508:	0002100b 	andeq	r1, r2, fp

0001050c <register_tm_clones>:
   1050c:	f241 0308 	movw	r3, #4104	; 0x1008
   10510:	f241 0008 	movw	r0, #4104	; 0x1008
   10514:	f2c0 0302 	movt	r3, #2
   10518:	f2c0 0002 	movt	r0, #2
   1051c:	1a19      	subs	r1, r3, r0
   1051e:	1089      	asrs	r1, r1, #2
   10520:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   10524:	1049      	asrs	r1, r1, #1
   10526:	d005      	beq.n	10534 <register_tm_clones+0x28>
   10528:	f240 0300 	movw	r3, #0
   1052c:	f2c0 0300 	movt	r3, #0
   10530:	b103      	cbz	r3, 10534 <register_tm_clones+0x28>
   10532:	4718      	bx	r3
   10534:	4770      	bx	lr
   10536:	bf00      	nop

00010538 <__do_global_dtors_aux>:
   10538:	b510      	push	{r4, lr}
   1053a:	f241 0408 	movw	r4, #4104	; 0x1008
   1053e:	f2c0 0402 	movt	r4, #2
   10542:	7823      	ldrb	r3, [r4, #0]
   10544:	b91b      	cbnz	r3, 1054e <__do_global_dtors_aux+0x16>
   10546:	f7ff ffcf 	bl	104e8 <deregister_tm_clones>
   1054a:	2301      	movs	r3, #1
   1054c:	7023      	strb	r3, [r4, #0]
   1054e:	bd10      	pop	{r4, pc}

00010550 <frame_dummy>:
   10550:	b508      	push	{r3, lr}
   10552:	f640 60c8 	movw	r0, #3784	; 0xec8
   10556:	f2c0 0002 	movt	r0, #2
   1055a:	6803      	ldr	r3, [r0, #0]
   1055c:	b913      	cbnz	r3, 10564 <frame_dummy+0x14>
   1055e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   10562:	e7d3      	b.n	1050c <register_tm_clones>
   10564:	f240 0300 	movw	r3, #0
   10568:	f2c0 0300 	movt	r3, #0
   1056c:	2b00      	cmp	r3, #0
   1056e:	d0f6      	beq.n	1055e <frame_dummy+0xe>
   10570:	4798      	blx	r3
   10572:	e7f4      	b.n	1055e <frame_dummy+0xe>

00010574 <exec>:
   10574:	e92d4810 	push	{r4, fp, lr}
   10578:	e28db008 	add	fp, sp, #8
   1057c:	e24dd00c 	sub	sp, sp, #12
   10580:	e50b0010 	str	r0, [fp, #-16]
   10584:	ebffffa4 	bl	1041c <geteuid@plt>
   10588:	e1a04000 	mov	r4, r0
   1058c:	ebffffa2 	bl	1041c <geteuid@plt>
   10590:	e1a03000 	mov	r3, r0
   10594:	e1a01003 	mov	r1, r3
   10598:	e1a00004 	mov	r0, r4
   1059c:	ebffffb0 	bl	10464 <setreuid@plt>
   105a0:	e51b0010 	ldr	r0, [fp, #-16]
   105a4:	ebffffa5 	bl	10440 <system@plt>
   105a8:	e320f000 	nop	{0}
   105ac:	e24bd008 	sub	sp, fp, #8
   105b0:	e8bd8810 	pop	{r4, fp, pc}

000105b4 <dump>:
   105b4:	e92d4800 	push	{fp, lr}
   105b8:	e28db004 	add	fp, sp, #4
   105bc:	e24dd010 	sub	sp, sp, #16
   105c0:	e50b0010 	str	r0, [fp, #-16]
   105c4:	e30006d4 	movw	r0, #1748	; 0x6d4
   105c8:	e3400001 	movt	r0, #1
   105cc:	ebffff95 	bl	10428 <puts@plt>
   105d0:	e3a03000 	mov	r3, #0
   105d4:	e50b3008 	str	r3, [fp, #-8]
   105d8:	ea00000a 	b	10608 <dump+0x54>
   105dc:	e51b3008 	ldr	r3, [fp, #-8]
   105e0:	e51b2010 	ldr	r2, [fp, #-16]
   105e4:	e0823003 	add	r3, r2, r3
   105e8:	e5d33000 	ldrb	r3, [r3]
   105ec:	e1a01003 	mov	r1, r3
   105f0:	e30006e4 	movw	r0, #1764	; 0x6e4
   105f4:	e3400001 	movt	r0, #1
   105f8:	ebffff84 	bl	10410 <printf@plt>
   105fc:	e51b3008 	ldr	r3, [fp, #-8]
   10600:	e2833001 	add	r3, r3, #1
   10604:	e50b3008 	str	r3, [fp, #-8]
   10608:	e51b0010 	ldr	r0, [fp, #-16]
   1060c:	ebffff91 	bl	10458 <strlen@plt>
   10610:	e1a02000 	mov	r2, r0
   10614:	e51b3008 	ldr	r3, [fp, #-8]
   10618:	e1520003 	cmp	r2, r3
   1061c:	8affffee 	bhi	105dc <dump+0x28>
   10620:	e3a0000a 	mov	r0, #10
   10624:	ebffff91 	bl	10470 <putchar@plt>
   10628:	e51b3008 	ldr	r3, [fp, #-8]
   1062c:	e1a00003 	mov	r0, r3
   10630:	e24bd004 	sub	sp, fp, #4
   10634:	e8bd8800 	pop	{fp, pc}

00010638 <main>:
   10638:	e92d4800 	push	{fp, lr}
   1063c:	e28db004 	add	fp, sp, #4
   10640:	e24dd048 	sub	sp, sp, #72	; 0x48
   10644:	e50b0048 	str	r0, [fp, #-72]	; 0xffffffb8
   10648:	e50b104c 	str	r1, [fp, #-76]	; 0xffffffb4
   1064c:	e30006ec 	movw	r0, #1772	; 0x6ec
   10650:	e3400001 	movt	r0, #1
   10654:	ebffff73 	bl	10428 <puts@plt>
   10658:	e24b3044 	sub	r3, fp, #68	; 0x44
   1065c:	e1a01003 	mov	r1, r3
   10660:	e3000704 	movw	r0, #1796	; 0x704
   10664:	e3400001 	movt	r0, #1
   10668:	ebffff83 	bl	1047c <__isoc99_scanf@plt>
   1066c:	e24b3044 	sub	r3, fp, #68	; 0x44
   10670:	e1a00003 	mov	r0, r3
   10674:	ebffffce 	bl	105b4 <dump>
   10678:	e1a03000 	mov	r3, r0
   1067c:	e1a00003 	mov	r0, r3
   10680:	e24bd004 	sub	sp, fp, #4
   10684:	e8bd8800 	pop	{fp, pc}

00010688 <__libc_csu_init>:
   10688:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   1068c:	4607      	mov	r7, r0
   1068e:	4e0b      	ldr	r6, [pc, #44]	; (106bc <__libc_csu_init+0x34>)
   10690:	4688      	mov	r8, r1
   10692:	4d0b      	ldr	r5, [pc, #44]	; (106c0 <__libc_csu_init+0x38>)
   10694:	4691      	mov	r9, r2
   10696:	447e      	add	r6, pc
   10698:	f7ff eeaa 	blx	103f0 <_init>
   1069c:	447d      	add	r5, pc
   1069e:	1b76      	subs	r6, r6, r5
   106a0:	10b6      	asrs	r6, r6, #2
   106a2:	d009      	beq.n	106b8 <__libc_csu_init+0x30>
   106a4:	2400      	movs	r4, #0
   106a6:	3401      	adds	r4, #1
   106a8:	f855 3b04 	ldr.w	r3, [r5], #4
   106ac:	464a      	mov	r2, r9
   106ae:	4641      	mov	r1, r8
   106b0:	4638      	mov	r0, r7
   106b2:	4798      	blx	r3
   106b4:	42b4      	cmp	r4, r6
   106b6:	d1f6      	bne.n	106a6 <__libc_csu_init+0x1e>
   106b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   106bc:	0001082a 	andeq	r0, r1, sl, lsr #16
   106c0:	00010820 	andeq	r0, r1, r0, lsr #16

000106c4 <__libc_csu_fini>:
   106c4:	4770      	bx	lr
   106c6:	bf00      	nop

Disassembly of section .fini:

000106c8 <_fini>:
   106c8:	e92d4008 	push	{r3, lr}
   106cc:	e8bd8008 	pop	{r3, pc}

Disassembly of section .rodata:

000106d0 <_IO_stdin_used>:
   106d0:	00020001 	andeq	r0, r2, r1
   106d4:	6c796150 	ldfvse	f6, [r9], #-320	; 0xfffffec0
   106d8:	2064616f 	rsbcs	r6, r4, pc, ror #2
   106dc:	203a7369 	eorscs	r7, sl, r9, ror #6
   106e0:	00000000 	andeq	r0, r0, r0
   106e4:	78323025 	ldmdavc	r2!, {r0, r2, r5, ip, sp}
   106e8:	00000020 	andeq	r0, r0, r0, lsr #32
   106ec:	65766947 	ldrbvs	r6, [r6, #-2375]!	; 0xfffff6b9
   106f0:	20656d20 	rsbcs	r6, r5, r0, lsr #26
   106f4:	61746164 	cmnvs	r4, r4, ror #2
   106f8:	206f7420 	rsbcs	r7, pc, r0, lsr #8
   106fc:	706d7564 	rsbvc	r7, sp, r4, ror #10
   10700:	0000003a 	andeq	r0, r0, sl, lsr r0
   10704:	Address 0x0000000000010704 is out of bounds.


Disassembly of section .ARM.exidx:

00010708 <.ARM.exidx>:
   10708:	7ffffd8c 	svcvc	0x00fffd8c
   1070c:	00000001 	andeq	r0, r0, r1

Disassembly of section .eh_frame:

00010710 <__FRAME_END__>:
   10710:	00000000 	andeq	r0, r0, r0

Disassembly of section .init_array:

00020ec0 <__frame_dummy_init_array_entry>:
   20ec0:	00010551 	andeq	r0, r1, r1, asr r5

Disassembly of section .fini_array:

00020ec4 <__do_global_dtors_aux_fini_array_entry>:
   20ec4:	00010539 	andeq	r0, r1, r9, lsr r5

Disassembly of section .jcr:

00020ec8 <__JCR_END__>:
   20ec8:	00000000 	andeq	r0, r0, r0

Disassembly of section .dynamic:

00020ecc <_DYNAMIC>:
   20ecc:	00000001 	andeq	r0, r0, r1
   20ed0:	00000001 	andeq	r0, r0, r1
   20ed4:	0000000c 	andeq	r0, r0, ip
   20ed8:	000103f0 	strdeq	r0, [r1], -r0	; <UNPREDICTABLE>
   20edc:	0000000d 	andeq	r0, r0, sp
   20ee0:	000106c8 	andeq	r0, r1, r8, asr #13
   20ee4:	00000019 	andeq	r0, r0, r9, lsl r0
   20ee8:	00020ec0 	andeq	r0, r2, r0, asr #29
   20eec:	0000001b 	andeq	r0, r0, fp, lsl r0
   20ef0:	00000004 	andeq	r0, r0, r4
   20ef4:	0000001a 	andeq	r0, r0, sl, lsl r0
   20ef8:	00020ec4 	andeq	r0, r2, r4, asr #29
   20efc:	0000001c 	andeq	r0, r0, ip, lsl r0
   20f00:	00000004 	andeq	r0, r0, r4
   20f04:	6ffffef5 	svcvs	0x00fffef5
   20f08:	000101b4 			; <UNDEFINED> instruction: 0x000101b4
   20f0c:	00000005 	andeq	r0, r0, r5
   20f10:	000102c0 	andeq	r0, r1, r0, asr #5
   20f14:	00000006 	andeq	r0, r0, r6
   20f18:	00010200 	andeq	r0, r1, r0, lsl #4
   20f1c:	0000000a 	andeq	r0, r0, sl
   20f20:	00000088 	andeq	r0, r0, r8, lsl #1
   20f24:	0000000b 	andeq	r0, r0, fp
   20f28:	00000010 	andeq	r0, r0, r0, lsl r0
   20f2c:	00000015 	andeq	r0, r0, r5, lsl r0
   20f30:	00000000 	andeq	r0, r0, r0
   20f34:	00000003 	andeq	r0, r0, r3
   20f38:	00020fc4 	andeq	r0, r2, r4, asr #31
   20f3c:	00000002 	andeq	r0, r0, r2
   20f40:	00000058 	andeq	r0, r0, r8, asr r0
   20f44:	00000014 	andeq	r0, r0, r4, lsl r0
   20f48:	00000011 	andeq	r0, r0, r1, lsl r0
   20f4c:	00000017 	andeq	r0, r0, r7, lsl r0
   20f50:	00010398 	muleq	r1, r8, r3
   20f54:	00000011 	andeq	r0, r0, r1, lsl r0
   20f58:	00010390 	muleq	r1, r0, r3
   20f5c:	00000012 	andeq	r0, r0, r2, lsl r0
   20f60:	00000008 	andeq	r0, r0, r8
   20f64:	00000013 	andeq	r0, r0, r3, lsl r0
   20f68:	00000008 	andeq	r0, r0, r8
   20f6c:	00000018 	andeq	r0, r0, r8, lsl r0
   20f70:	00000000 	andeq	r0, r0, r0
   20f74:	6ffffffb 	svcvs	0x00fffffb
   20f78:	00000001 	andeq	r0, r0, r1
   20f7c:	6ffffffe 	svcvs	0x00fffffe
   20f80:	00010360 	andeq	r0, r1, r0, ror #6
   20f84:	6fffffff 	svcvs	0x00ffffff
   20f88:	00000001 	andeq	r0, r0, r1
   20f8c:	6ffffff0 	svcvs	0x00fffff0
   20f90:	00010348 	andeq	r0, r1, r8, asr #6
	...

Disassembly of section .got:

00020fc4 <_GLOBAL_OFFSET_TABLE_>:
   20fc4:	00020ecc 	andeq	r0, r2, ip, asr #29
	...
   20fd0:	000103fc 	strdeq	r0, [r1], -ip
   20fd4:	000103fc 	strdeq	r0, [r1], -ip
   20fd8:	000103fc 	strdeq	r0, [r1], -ip
   20fdc:	000103fc 	strdeq	r0, [r1], -ip
   20fe0:	000103fc 	strdeq	r0, [r1], -ip
   20fe4:	000103fc 	strdeq	r0, [r1], -ip
   20fe8:	000103fc 	strdeq	r0, [r1], -ip
   20fec:	000103fc 	strdeq	r0, [r1], -ip
   20ff0:	000103fc 	strdeq	r0, [r1], -ip
   20ff4:	000103fc 	strdeq	r0, [r1], -ip
   20ff8:	000103fc 	strdeq	r0, [r1], -ip
   20ffc:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00021000 <__data_start>:
   21000:	00000000 	andeq	r0, r0, r0

00021004 <__dso_handle>:
   21004:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss:

00021008 <__bss_start>:
   21008:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0x10afd18>
   4:	62552820 	subsvs	r2, r5, #32, 16	; 0x200000
   8:	75746e75 	ldrbvc	r6, [r4, #-3701]!	; 0xfffff18b
   c:	6e694c2f 	cdpvs	12, 6, cr4, cr9, cr15, {1}
  10:	206f7261 	rsbcs	r7, pc, r1, ror #4
  14:	2e342e35 	mrccs	14, 1, r2, cr4, cr5, {1}
  18:	75362d30 	ldrvc	r2, [r6, #-3376]!	; 0xfffff2d0
  1c:	746e7562 	strbtvc	r7, [lr], #-1378	; 0xfffffa9e
  20:	317e3175 	cmncc	lr, r5, ror r1
  24:	34302e36 	ldrtcc	r2, [r0], #-3638	; 0xfffff1ca
  28:	2029342e 	eorcs	r3, r9, lr, lsr #8
  2c:	2e342e35 	mrccs	14, 1, r2, cr4, cr5, {1}
  30:	30322030 	eorscc	r2, r2, r0, lsr r0
  34:	36303631 			; <UNDEFINED> instruction: 0x36303631
  38:	Address 0x0000000000000038 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	412d3705 			; <UNDEFINED> instruction: 0x412d3705
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	12040a02 	andne	r0, r4, #8192	; 0x2000
  20:	14011304 	strne	r1, [r1], #-772	; 0xfffffcfc
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1c021a01 			; <UNDEFINED> instruction: 0x1c021a01
  30:	Address 0x0000000000000030 is out of bounds.

