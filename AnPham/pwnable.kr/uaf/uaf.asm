
uaf:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x9b3>
  400248:	78 38                	js     400282 <_init-0x9a6>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 18                	add    %bl,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 d5                	add    %dl,%ch
  400285:	3a 1a                	cmp    (%rdx),%bl
  400287:	f6 66 2f             	mulb   0x2f(%rsi)
  40028a:	8b 35 35 29 d5 ee    	mov    -0x112ad6cb(%rip),%esi        # ffffffffef152bc5 <_end+0xffffffffeeb507d5>
  400290:	7a fc                	jp     40028e <_init-0x99a>
  400292:	6b f4 0f             	imul   $0xf,%esp,%esi
  400295:	ea                   	(bad)
  400296:	66                   	data16
  400297:	30                   	.byte 0x30

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    (%rax),%eax
  40029a:	00 00                	add    %al,(%rax)
  40029c:	1a 00                	sbb    (%rax),%al
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
  4002a2:	00 00                	add    %al,(%rax)
  4002a4:	06                   	(bad)
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 80 41 10 22 21    	add    %al,0x21221041(%rax)
  4002ad:	01 14 01             	add    %edx,(%rcx,%rax,1)
  4002b0:	1a 00                	sbb    (%rax),%al
  4002b2:	00 00                	add    %al,(%rax)
  4002b4:	1d 00 00 00 1e       	sbb    $0x1e000000,%eax
  4002b9:	00 00                	add    %al,(%rax)
  4002bb:	00 72 96             	add    %dh,-0x6a(%rdx)
  4002be:	07                   	(bad)
  4002bf:	02 c8                	add    %al,%cl
  4002c1:	81 0a d2 9d 63 bd    	orl    $0xbd639dd2,(%rdx)
  4002c7:	c5 21 fd f4          	vpaddw %xmm4,%xmm11,%xmm14
  4002cb:	09 28                	or     %ebp,(%rax)
  4002cd:	45 d5                	rex.RB (bad)
  4002cf:	4c 14 98             	rex.WR adc $0x98,%al
  4002d2:	0c 43                	or     $0x43,%al
  4002d4:	79 49                	jns    40031f <_init-0x909>
  4002d6:	6b                   	.byte 0x6b
  4002d7:	b6                   	.byte 0xb6

Disassembly of section .dynsym:

00000000004002d8 <.dynsym>:
	...
  4002f0:	80 01 00             	addb   $0x0,(%rcx)
  4002f3:	00 12                	add    %dl,(%rdx)
	...
  400305:	00 00                	add    %al,(%rax)
  400307:	00 f0                	add    %dh,%al
  400309:	00 00                	add    %al,(%rax)
  40030b:	00 12                	add    %dl,(%rdx)
	...
  40031d:	00 00                	add    %al,(%rax)
  40031f:	00 10                	add    %dl,(%rax)
  400321:	00 00                	add    %al,(%rax)
  400323:	00 20                	add    %ah,(%rax)
	...
  400335:	00 00                	add    %al,(%rax)
  400337:	00 1f                	add    %bl,(%rdi)
  400339:	00 00                	add    %al,(%rax)
  40033b:	00 20                	add    %ah,(%rax)
	...
  40034d:	00 00                	add    %al,(%rax)
  40034f:	00 42 00             	add    %al,0x0(%rdx)
  400352:	00 00                	add    %al,(%rax)
  400354:	12 00                	adc    (%rax),%al
	...
  400366:	00 00                	add    %al,(%rax)
  400368:	28 02                	sub    %al,(%rdx)
  40036a:	00 00                	add    %al,(%rax)
  40036c:	12 00                	adc    (%rax),%al
	...
  40037e:	00 00                	add    %al,(%rax)
  400380:	10 02                	adc    %al,(%rdx)
  400382:	00 00                	add    %al,(%rax)
  400384:	12 00                	adc    (%rax),%al
	...
  400396:	00 00                	add    %al,(%rax)
  400398:	63 02                	movslq (%rdx),%eax
  40039a:	00 00                	add    %al,(%rax)
  40039c:	12 00                	adc    (%rax),%al
	...
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	79 02                	jns    4003b4 <_init-0x874>
  4003b2:	00 00                	add    %al,(%rax)
  4003b4:	12 00                	adc    (%rax),%al
	...
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	68 02 00 00 12       	pushq  $0x12000002
	...
  4003dd:	00 00                	add    %al,(%rax)
  4003df:	00 56 02             	add    %dl,0x2(%rsi)
  4003e2:	00 00                	add    %al,(%rax)
  4003e4:	12 00                	adc    (%rax),%al
	...
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	00 01                	add    %al,(%rcx)
  4003fa:	00 00                	add    %al,(%rax)
  4003fc:	12 00                	adc    (%rax),%al
	...
  40040e:	00 00                	add    %al,(%rax)
  400410:	48 00 00             	rex.W add %al,(%rax)
  400413:	00 12                	add    %dl,(%rdx)
	...
  400425:	00 00                	add    %al,(%rax)
  400427:	00 6a 00             	add    %ch,0x0(%rdx)
  40042a:	00 00                	add    %al,(%rax)
  40042c:	12 00                	adc    (%rax),%al
	...
  40043e:	00 00                	add    %al,(%rax)
  400440:	6f                   	outsl  %ds:(%rsi),(%dx)
  400441:	02 00                	add    (%rax),%al
  400443:	00 12                	add    %dl,(%rdx)
	...
  400455:	00 00                	add    %al,(%rax)
  400457:	00 9b 01 00 00 12    	add    %bl,0x12000001(%rbx)
	...
  40046d:	00 00                	add    %al,(%rax)
  40046f:	00 73 01             	add    %dh,0x1(%rbx)
  400472:	00 00                	add    %al,(%rax)
  400474:	12 00                	adc    (%rax),%al
	...
  400486:	00 00                	add    %al,(%rax)
  400488:	33 00                	xor    (%rax),%eax
  40048a:	00 00                	add    %al,(%rax)
  40048c:	20 00                	and    %al,(%rax)
	...
  40049e:	00 00                	add    %al,(%rax)
  4004a0:	8a 01                	mov    (%rcx),%al
  4004a2:	00 00                	add    %al,(%rax)
  4004a4:	12 00                	adc    (%rax),%al
	...
  4004b6:	00 00                	add    %al,(%rax)
  4004b8:	8a 00                	mov    (%rax),%al
  4004ba:	00 00                	add    %al,(%rax)
  4004bc:	12 00                	adc    (%rax),%al
	...
  4004ce:	00 00                	add    %al,(%rax)
  4004d0:	fa                   	cli
  4004d1:	00 00                	add    %al,(%rax)
  4004d3:	00 12                	add    %dl,(%rdx)
	...
  4004e5:	00 00                	add    %al,(%rax)
  4004e7:	00 3d 02 00 00 12    	add    %bh,0x12000002(%rip)        # 124004ef <_end+0x11dfe0ff>
	...
  4004fd:	00 00                	add    %al,(%rax)
  4004ff:	00 7d 00             	add    %bh,0x0(%rbp)
  400502:	00 00                	add    %al,(%rax)
  400504:	12 00                	adc    (%rax),%al
	...
  400516:	00 00                	add    %al,(%rax)
  400518:	74 02                	je     40051c <_init-0x70c>
  40051a:	00 00                	add    %al,(%rax)
  40051c:	12 00                	adc    (%rax),%al
	...
  40052e:	00 00                	add    %al,(%rax)
  400530:	a0 00 00 00 12 00 00 	movabs 0x12000000,%al
  400537:	00 00
	...
  400545:	00 00                	add    %al,(%rax)
  400547:	00 97 00 00 00 11    	add    %dl,0x11000000(%rdi)
  40054d:	00 1b                	add    %bl,(%rbx)
  40054f:	00 e0                	add    %ah,%al
  400551:	20 60 00             	and    %ah,0x0(%rax)
  400554:	00 00                	add    %al,(%rax)
  400556:	00 00                	add    %al,(%rax)
  400558:	18 01                	sbb    %al,(%rcx)
  40055a:	00 00                	add    %al,(%rax)
  40055c:	00 00                	add    %al,(%rax)
  40055e:	00 00                	add    %al,(%rax)
  400560:	ab                   	stos   %eax,%es:(%rdi)
  400561:	00 00                	add    %al,(%rax)
  400563:	00 21                	add    %ah,(%rcx)
  400565:	00 1b                	add    %bl,(%rbx)
  400567:	00 00                	add    %al,(%rax)
  400569:	22 60 00             	and    0x0(%rax),%ah
  40056c:	00 00                	add    %al,(%rax)
  40056e:	00 00                	add    %al,(%rax)
  400570:	58                   	pop    %rax
  400571:	00 00                	add    %al,(%rax)
  400573:	00 00                	add    %al,(%rax)
  400575:	00 00                	add    %al,(%rax)
  400577:	00 e7                	add    %ah,%bh
  400579:	01 00                	add    %eax,(%rax)
  40057b:	00 21                	add    %ah,(%rcx)
  40057d:	00 1b                	add    %bl,(%rbx)
  40057f:	00 80 23 60 00 00    	add    %al,0x6023(%rax)
  400585:	00 00                	add    %al,(%rax)
  400587:	00 58 00             	add    %bl,0x0(%rax)
  40058a:	00 00                	add    %al,(%rax)
  40058c:	00 00                	add    %al,(%rax)
  40058e:	00 00                	add    %al,(%rax)
  400590:	38 01                	cmp    %al,(%rcx)
  400592:	00 00                	add    %al,(%rax)
  400594:	12 00                	adc    (%rax),%al
  400596:	00 00                	add    %al,(%rax)
  400598:	60                   	(bad)
  400599:	0d 40 00 00 00       	or     $0x40,%eax
	...
  4005a6:	00 00                	add    %al,(%rax)
  4005a8:	52                   	push   %rdx
  4005a9:	00 00                	add    %al,(%rax)
  4005ab:	00 12                	add    %dl,(%rdx)
  4005ad:	00 00                	add    %al,(%rax)
  4005af:	00 e0                	add    %ah,%al
  4005b1:	0c 40                	or     $0x40,%al
	...
  4005bf:	00 e6                	add    %ah,%dh
  4005c1:	00 00                	add    %al,(%rax)
  4005c3:	00 11                	add    %dl,(%rcx)
  4005c5:	00 1b                	add    %bl,(%rbx)
  4005c7:	00 60 22             	add    %ah,0x22(%rax)
  4005ca:	60                   	(bad)
  4005cb:	00 00                	add    %al,(%rax)
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 10                	add    %dl,(%rax)
  4005d1:	01 00                	add    %eax,(%rax)
  4005d3:	00 00                	add    %al,(%rax)
  4005d5:	00 00                	add    %al,(%rax)
  4005d7:	00 d1                	add    %dl,%cl
  4005d9:	00 00                	add    %al,(%rax)
  4005db:	00 12                	add    %dl,(%rdx)
  4005dd:	00 00                	add    %al,(%rax)
  4005df:	00 80 0d 40 00 00    	add    %al,0x400d(%rax)
	...

Disassembly of section .dynstr:

00000000004005f0 <.dynstr>:
  4005f0:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4005f4:	73 74                	jae    40066a <_init-0x5be>
  4005f6:	64 63 2b             	movslq %fs:(%rbx),%ebp
  4005f9:	2b 2e                	sub    (%rsi),%ebp
  4005fb:	73 6f                	jae    40066c <_init-0x5bc>
  4005fd:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  400602:	67 6d                	insl   (%dx),%es:(%edi)
  400604:	6f                   	outsl  %ds:(%rsi),(%dx)
  400605:	6e                   	outsb  %ds:(%rsi),(%dx)
  400606:	5f                   	pop    %rdi
  400607:	73 74                	jae    40067d <_init-0x5ab>
  400609:	61                   	(bad)
  40060a:	72 74                	jb     400680 <_init-0x5a8>
  40060c:	5f                   	pop    %rdi
  40060d:	5f                   	pop    %rdi
  40060e:	00 5f 4a             	add    %bl,0x4a(%rdi)
  400611:	76 5f                	jbe    400672 <_init-0x5b6>
  400613:	52                   	push   %rdx
  400614:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
  40061b:	43 6c
  40061d:	61                   	(bad)
  40061e:	73 73                	jae    400693 <_init-0x595>
  400620:	65 73 00             	gs jae 400623 <_init-0x605>
  400623:	70 74                	jo     400699 <_init-0x58f>
  400625:	68 72 65 61 64       	pushq  $0x64616572
  40062a:	5f                   	pop    %rdi
  40062b:	63 61 6e             	movslq 0x6e(%rcx),%esp
  40062e:	63 65 6c             	movslq 0x6c(%rbp),%esp
  400631:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400634:	6e                   	outsb  %ds:(%rsi),(%dx)
  400635:	61                   	(bad)
  400636:	6d                   	insl   (%dx),%es:(%rdi)
  400637:	00 5f 5a             	add    %bl,0x5a(%rdi)
  40063a:	4e 53                	rex.WRX push %rbx
  40063c:	73 44                	jae    400682 <_init-0x5a6>
  40063e:	31 45 76             	xor    %eax,0x76(%rbp)
  400641:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400644:	4e 53                	rex.WRX push %rbx
  400646:	74 38                	je     400680 <_init-0x5a8>
  400648:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  40064f:	65 34 49             	gs xor $0x49,%al
  400652:	6e                   	outsb  %ds:(%rsi),(%dx)
  400653:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
  40065a:	5f
  40065b:	5a                   	pop    %rdx
  40065c:	4e 53                	rex.WRX push %rbx
  40065e:	73 43                	jae    4006a3 <_init-0x585>
  400660:	31 45 50             	xor    %eax,0x50(%rbp)
  400663:	4b 63 52 4b          	rex.WXB movslq 0x4b(%r10),%rdx
  400667:	53                   	push   %rbx
  400668:	61                   	(bad)
  400669:	49 63 45 00          	movslq 0x0(%r13),%rax
  40066d:	5f                   	pop    %rdi
  40066e:	5a                   	pop    %rdx
  40066f:	4e 53                	rex.WRX push %rbx
  400671:	73 61                	jae    4006d4 <_init-0x554>
  400673:	53                   	push   %rbx
  400674:	45 52                	rex.RB push %r10
  400676:	4b 53                	rex.WXB push %r11
  400678:	73 00                	jae    40067a <_init-0x5ae>
  40067a:	5f                   	pop    %rdi
  40067b:	5a                   	pop    %rdx
  40067c:	4e 53                	rex.WRX push %rbx
  40067e:	61                   	(bad)
  40067f:	49 63 45 43          	movslq 0x43(%r13),%rax
  400683:	31 45 76             	xor    %eax,0x76(%rbp)
  400686:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400689:	53                   	push   %rbx
  40068a:	74 33                	je     4006bf <_init-0x569>
  40068c:	63 69 6e             	movslq 0x6e(%rcx),%ebp
  40068f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400692:	4e 53                	rex.WRX push %rbx
  400694:	69 72 73 45 52 6a 00 	imul   $0x6a5245,0x73(%rdx),%esi
  40069b:	5f                   	pop    %rdi
  40069c:	5a                   	pop    %rdx
  40069d:	54                   	push   %rsp
  40069e:	56                   	push   %rsi
  40069f:	4e 31 30             	rex.WRX xor %r14,(%rax)
  4006a2:	5f                   	pop    %rdi
  4006a3:	5f                   	pop    %rdi
  4006a4:	63 78 78             	movslq 0x78(%rax),%edi
  4006a7:	61                   	(bad)
  4006a8:	62                   	(bad)
  4006a9:	69 76 31 31 37 5f 5f 	imul   $0x5f5f3731,0x31(%rsi),%esi
  4006b0:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  4006b4:	73 5f                	jae    400715 <_init-0x513>
  4006b6:	74 79                	je     400731 <_init-0x4f7>
  4006b8:	70 65                	jo     40071f <_init-0x509>
  4006ba:	5f                   	pop    %rdi
  4006bb:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  4006c2:	5f                   	pop    %rdi
  4006c3:	67 78 78             	addr32 js 40073e <_init-0x4ea>
  4006c6:	5f                   	pop    %rdi
  4006c7:	70 65                	jo     40072e <_init-0x4fa>
  4006c9:	72 73                	jb     40073e <_init-0x4ea>
  4006cb:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006cc:	6e                   	outsb  %ds:(%rsi),(%dx)
  4006cd:	61                   	(bad)
  4006ce:	6c                   	insb   (%dx),%es:(%rdi)
  4006cf:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
  4006d6:	5f
  4006d7:	5a                   	pop    %rdx
  4006d8:	53                   	push   %rbx
  4006d9:	74 34                	je     40070f <_init-0x519>
  4006db:	63 6f 75             	movslq 0x75(%rdi),%ebp
  4006de:	74 00                	je     4006e0 <_init-0x548>
  4006e0:	5f                   	pop    %rdi
  4006e1:	5a                   	pop    %rdx
  4006e2:	4e 53                	rex.WRX push %rbx
  4006e4:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006e5:	6c                   	insb   (%dx),%es:(%rdi)
  4006e6:	73 45                	jae    40072d <_init-0x4fb>
  4006e8:	69 00 5f 5a 6e 77    	imul   $0x776e5a5f,(%rax),%eax
  4006ee:	6d                   	insl   (%dx),%es:(%rdi)
  4006ef:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4006f2:	53                   	push   %rbx
  4006f3:	74 6c                	je     400761 <_init-0x4c7>
  4006f5:	73 49                	jae    400740 <_init-0x4e8>
  4006f7:	53                   	push   %rbx
  4006f8:	74 31                	je     40072b <_init-0x4fd>
  4006fa:	31 63 68             	xor    %esp,0x68(%rbx)
  4006fd:	61                   	(bad)
  4006fe:	72 5f                	jb     40075f <_init-0x4c9>
  400700:	74 72                	je     400774 <_init-0x4b4>
  400702:	61                   	(bad)
  400703:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  40070a:	52
  40070b:	53                   	push   %rbx
  40070c:	74 31                	je     40073f <_init-0x4e9>
  40070e:	33 62 61             	xor    0x61(%rdx),%esp
  400711:	73 69                	jae    40077c <_init-0x4ac>
  400713:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400716:	73 74                	jae    40078c <_init-0x49c>
  400718:	72 65                	jb     40077f <_init-0x4a9>
  40071a:	61                   	(bad)
  40071b:	6d                   	insl   (%dx),%es:(%rdi)
  40071c:	49 63 54 5f 45       	movslq 0x45(%r15,%rbx,2),%rdx
  400721:	53                   	push   %rbx
  400722:	35 5f 50 4b 63       	xor    $0x634b505f,%eax
  400727:	00 5f 5a             	add    %bl,0x5a(%rdi)
  40072a:	53                   	push   %rbx
  40072b:	74 34                	je     400761 <_init-0x4c7>
  40072d:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40072f:	64 6c                	fs insb (%dx),%es:(%rdi)
  400731:	49 63 53 74          	movslq 0x74(%r11),%rdx
  400735:	31 31                	xor    %esi,(%rcx)
  400737:	63 68 61             	movslq 0x61(%rax),%ebp
  40073a:	72 5f                	jb     40079b <_init-0x48d>
  40073c:	74 72                	je     4007b0 <_init-0x478>
  40073e:	61                   	(bad)
  40073f:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400746:	52
  400747:	53                   	push   %rbx
  400748:	74 31                	je     40077b <_init-0x4ad>
  40074a:	33 62 61             	xor    0x61(%rdx),%esp
  40074d:	73 69                	jae    4007b8 <_init-0x470>
  40074f:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  400752:	73 74                	jae    4007c8 <_init-0x460>
  400754:	72 65                	jb     4007bb <_init-0x46d>
  400756:	61                   	(bad)
  400757:	6d                   	insl   (%dx),%es:(%rdi)
  400758:	49 54                	rex.WB push %r12
  40075a:	5f                   	pop    %rdi
  40075b:	54                   	push   %rsp
  40075c:	30 5f 45             	xor    %bl,0x45(%rdi)
  40075f:	53                   	push   %rbx
  400760:	36 5f                	ss pop %rdi
  400762:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400765:	4e 53                	rex.WRX push %rbx
  400767:	61                   	(bad)
  400768:	49 63 45 44          	movslq 0x44(%r13),%rax
  40076c:	31 45 76             	xor    %eax,0x76(%rbp)
  40076f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400772:	4e 53                	rex.WRX push %rbx
  400774:	73 43                	jae    4007b9 <_init-0x46f>
  400776:	31 45 76             	xor    %eax,0x76(%rbp)
  400779:	00 5f 5a             	add    %bl,0x5a(%rdi)
  40077c:	4e 53                	rex.WRX push %rbx
  40077e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40077f:	6c                   	insb   (%dx),%es:(%rdi)
  400780:	73 45                	jae    4007c7 <_init-0x461>
  400782:	50                   	push   %rax
  400783:	46 52                	rex.RX push %rdx
  400785:	53                   	push   %rbx
  400786:	6f                   	outsl  %ds:(%rsi),(%dx)
  400787:	53                   	push   %rbx
  400788:	5f                   	pop    %rdi
  400789:	45 00 5f 5a          	add    %r11b,0x5a(%r15)
  40078d:	53                   	push   %rbx
  40078e:	74 6c                	je     4007fc <_init-0x42c>
  400790:	73 49                	jae    4007db <_init-0x44d>
  400792:	63 53 74             	movslq 0x74(%rbx),%edx
  400795:	31 31                	xor    %esi,(%rcx)
  400797:	63 68 61             	movslq 0x61(%rax),%ebp
  40079a:	72 5f                	jb     4007fb <_init-0x42d>
  40079c:	74 72                	je     400810 <_init-0x418>
  40079e:	61                   	(bad)
  40079f:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  4007a6:	61
  4007a7:	49 63 45 45          	movslq 0x45(%r13),%rax
  4007ab:	52                   	push   %rdx
  4007ac:	53                   	push   %rbx
  4007ad:	74 31                	je     4007e0 <_init-0x448>
  4007af:	33 62 61             	xor    0x61(%rdx),%esp
  4007b2:	73 69                	jae    40081d <_init-0x40b>
  4007b4:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  4007b7:	73 74                	jae    40082d <_init-0x3fb>
  4007b9:	72 65                	jb     400820 <_init-0x408>
  4007bb:	61                   	(bad)
  4007bc:	6d                   	insl   (%dx),%es:(%rdi)
  4007bd:	49 54                	rex.WB push %r12
  4007bf:	5f                   	pop    %rdi
  4007c0:	54                   	push   %rsp
  4007c1:	30 5f 45             	xor    %bl,0x45(%rdi)
  4007c4:	53                   	push   %rbx
  4007c5:	37                   	(bad)
  4007c6:	5f                   	pop    %rdi
  4007c7:	52                   	push   %rdx
  4007c8:	4b 53                	rex.WXB push %r11
  4007ca:	62                   	(bad)
  4007cb:	49 53                	rex.WB push %r11
  4007cd:	34 5f                	xor    $0x5f,%al
  4007cf:	53                   	push   %rbx
  4007d0:	35 5f 54 31 5f       	xor    $0x5f31545f,%eax
  4007d5:	45 00 5f 5a          	add    %r11b,0x5a(%r15)
  4007d9:	54                   	push   %rsp
  4007da:	56                   	push   %rsi
  4007db:	4e 31 30             	rex.WRX xor %r14,(%rax)
  4007de:	5f                   	pop    %rdi
  4007df:	5f                   	pop    %rdi
  4007e0:	63 78 78             	movslq 0x78(%rax),%edi
  4007e3:	61                   	(bad)
  4007e4:	62                   	(bad)
  4007e5:	69 76 31 32 30 5f 5f 	imul   $0x5f5f3032,0x31(%rsi),%esi
  4007ec:	73 69                	jae    400857 <_init-0x3d1>
  4007ee:	5f                   	pop    %rdi
  4007ef:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
  4007f3:	73 5f                	jae    400854 <_init-0x3d4>
  4007f5:	74 79                	je     400870 <_init-0x3b8>
  4007f7:	70 65                	jo     40085e <_init-0x3ca>
  4007f9:	5f                   	pop    %rdi
  4007fa:	69 6e 66 6f 45 00 5f 	imul   $0x5f00456f,0x66(%rsi),%ebp
  400801:	5a                   	pop    %rdx
  400802:	4e 53                	rex.WRX push %rbx
  400804:	74 38                	je     40083e <_init-0x3ea>
  400806:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  40080d:	65 34 49             	gs xor $0x49,%al
  400810:	6e                   	outsb  %ds:(%rsi),(%dx)
  400811:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
  400818:	5f
  400819:	5a                   	pop    %rdx
  40081a:	64 6c                	fs insb (%dx),%es:(%rdi)
  40081c:	50                   	push   %rax
  40081d:	76 00                	jbe    40081f <_init-0x409>
  40081f:	6c                   	insb   (%dx),%es:(%rdi)
  400820:	69 62 67 63 63 5f 73 	imul   $0x735f6363,0x67(%rdx),%esp
  400827:	2e 73 6f             	jae,pn 400899 <_init-0x38f>
  40082a:	2e 31 00             	xor    %eax,%cs:(%rax)
  40082d:	5f                   	pop    %rdi
  40082e:	55                   	push   %rbp
  40082f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400830:	77 69                	ja     40089b <_init-0x38d>
  400832:	6e                   	outsb  %ds:(%rsi),(%dx)
  400833:	64 5f                	fs pop %rdi
  400835:	52                   	push   %rdx
  400836:	65 73 75             	gs jae 4008ae <_init-0x37a>
  400839:	6d                   	insl   (%dx),%es:(%rdi)
  40083a:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
  40083f:	63 2e                	movslq (%rsi),%ebp
  400841:	73 6f                	jae    4008b2 <_init-0x376>
  400843:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  400848:	63 78 61             	movslq 0x61(%rax),%edi
  40084b:	5f                   	pop    %rdi
  40084c:	61                   	(bad)
  40084d:	74 65                	je     4008b4 <_init-0x374>
  40084f:	78 69                	js     4008ba <_init-0x36e>
  400851:	74 00                	je     400853 <_init-0x3d5>
  400853:	72 65                	jb     4008ba <_init-0x36e>
  400855:	61                   	(bad)
  400856:	64 00 73 79          	add    %dh,%fs:0x79(%rbx)
  40085a:	73 74                	jae    4008d0 <_init-0x358>
  40085c:	65 6d                	gs insl (%dx),%es:(%rdi)
  40085e:	00 61 74             	add    %ah,0x74(%rcx)
  400861:	6f                   	outsl  %ds:(%rsi),(%dx)
  400862:	69 00 6f 70 65 6e    	imul   $0x6e65706f,(%rax),%eax
  400868:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40086b:	6c                   	insb   (%dx),%es:(%rdi)
  40086c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400873:	72 74                	jb     4008e9 <_init-0x33f>
  400875:	5f                   	pop    %rdi
  400876:	6d                   	insl   (%dx),%es:(%rdi)
  400877:	61                   	(bad)
  400878:	69 6e 00 47 43 43 5f 	imul   $0x5f434347,0x0(%rsi),%ebp
  40087f:	33 2e                	xor    (%rsi),%ebp
  400881:	30 00                	xor    %al,(%rax)
  400883:	47                   	rex.RXB
  400884:	4c                   	rex.WR
  400885:	49                   	rex.WB
  400886:	42                   	rex.X
  400887:	43 5f                	rex.XB pop %r15
  400889:	32 2e                	xor    (%rsi),%ch
  40088b:	32 2e                	xor    (%rsi),%ch
  40088d:	35 00 43 58 58       	xor    $0x58584300,%eax
  400892:	41                   	rex.B
  400893:	42                   	rex.X
  400894:	49 5f                	rex.WB pop %r15
  400896:	31 2e                	xor    %ebp,(%rsi)
  400898:	33 00                	xor    (%rax),%eax
  40089a:	47                   	rex.RXB
  40089b:	4c                   	rex.WR
  40089c:	49                   	rex.WB
  40089d:	42                   	rex.X
  40089e:	43 58                	rex.XB pop %r8
  4008a0:	58                   	pop    %rax
  4008a1:	5f                   	pop    %rdi
  4008a2:	33 2e                	xor    (%rsi),%ebp
  4008a4:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

00000000004008a6 <.gnu.version>:
  4008a6:	00 00                	add    %al,(%rax)
  4008a8:	02 00                	add    (%rax),%al
  4008aa:	02 00                	add    (%rax),%al
  4008ac:	00 00                	add    %al,(%rax)
  4008ae:	00 00                	add    %al,(%rax)
  4008b0:	02 00                	add    (%rax),%al
  4008b2:	02 00                	add    (%rax),%al
  4008b4:	02 00                	add    (%rax),%al
  4008b6:	03 00                	add    (%rax),%eax
  4008b8:	03 00                	add    (%rax),%eax
  4008ba:	03 00                	add    (%rax),%eax
  4008bc:	03 00                	add    (%rax),%eax
  4008be:	02 00                	add    (%rax),%al
  4008c0:	02 00                	add    (%rax),%al
  4008c2:	02 00                	add    (%rax),%al
  4008c4:	03 00                	add    (%rax),%eax
  4008c6:	02 00                	add    (%rax),%al
  4008c8:	02 00                	add    (%rax),%al
  4008ca:	00 00                	add    %al,(%rax)
  4008cc:	02 00                	add    (%rax),%al
  4008ce:	02 00                	add    (%rax),%al
  4008d0:	02 00                	add    (%rax),%al
  4008d2:	05 00 02 00 03       	add    $0x3000200,%eax
  4008d7:	00 02                	add    %al,(%rdx)
  4008d9:	00 02                	add    %al,(%rdx)
  4008db:	00 04 00             	add    %al,(%rax,%rax,1)
  4008de:	04 00                	add    $0x0,%al
  4008e0:	02 00                	add    (%rax),%al
  4008e2:	02 00                	add    (%rax),%al
  4008e4:	02 00                	add    (%rax),%al
  4008e6:	04 00                	add    $0x0,%al

Disassembly of section .gnu.version_r:

00000000004008e8 <.gnu.version_r>:
  4008e8:	01 00                	add    %eax,(%rax)
  4008ea:	01 00                	add    %eax,(%rax)
  4008ec:	2f                   	(bad)
  4008ed:	02 00                	add    (%rax),%al
  4008ef:	00 10                	add    %dl,(%rax)
  4008f1:	00 00                	add    %al,(%rax)
  4008f3:	00 20                	add    %ah,(%rax)
  4008f5:	00 00                	add    %al,(%rax)
  4008f7:	00 50 26             	add    %dl,0x26(%rax)
  4008fa:	79 0b                	jns    400907 <_init-0x321>
  4008fc:	00 00                	add    %al,(%rax)
  4008fe:	05 00 8b 02 00       	add    $0x28b00,%eax
  400903:	00 00                	add    %al,(%rax)
  400905:	00 00                	add    %al,(%rax)
  400907:	00 01                	add    %al,(%rcx)
  400909:	00 01                	add    %al,(%rcx)
  40090b:	00 4c 02 00          	add    %cl,0x0(%rdx,%rax,1)
  40090f:	00 10                	add    %dl,(%rax)
  400911:	00 00                	add    %al,(%rax)
  400913:	00 20                	add    %ah,(%rax)
  400915:	00 00                	add    %al,(%rax)
  400917:	00 75 1a             	add    %dh,0x1a(%rbp)
  40091a:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  400920:	93                   	xchg   %eax,%ebx
  400921:	02 00                	add    (%rax),%al
  400923:	00 00                	add    %al,(%rax)
  400925:	00 00                	add    %al,(%rax)
  400927:	00 01                	add    %al,(%rcx)
  400929:	00 02                	add    %al,(%rdx)
  40092b:	00 01                	add    %al,(%rcx)
  40092d:	00 00                	add    %al,(%rax)
  40092f:	00 10                	add    %dl,(%rax)
  400931:	00 00                	add    %al,(%rax)
  400933:	00 00                	add    %al,(%rax)
  400935:	00 00                	add    %al,(%rax)
  400937:	00 d3                	add    %dl,%bl
  400939:	af                   	scas   %es:(%rdi),%eax
  40093a:	6b 05 00 00 04 00 9f 	imul   $0xffffff9f,0x40000(%rip),%eax        # 440941 <__FRAME_END__+0x3f0a1>
  400941:	02 00                	add    (%rax),%al
  400943:	00 10                	add    %dl,(%rax)
  400945:	00 00                	add    %al,(%rax)
  400947:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
  40094b:	08 00                	or     %al,(%rax)
  40094d:	00 02                	add    %al,(%rdx)
  40094f:	00 aa 02 00 00 00    	add    %ch,0x2(%rdx)
  400955:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400958 <.rela.dyn>:
  400958:	e0 1f                	loopne 400979 <_init-0x2af>
  40095a:	60                   	(bad)
  40095b:	00 00                	add    %al,(%rax)
  40095d:	00 00                	add    %al,(%rax)
  40095f:	00 06                	add    %al,(%rsi)
  400961:	00 00                	add    %al,(%rax)
  400963:	00 03                	add    %al,(%rbx)
	...
  40096d:	00 00                	add    %al,(%rax)
  40096f:	00 e0                	add    %ah,%al
  400971:	20 60 00             	and    %ah,0x0(%rax)
  400974:	00 00                	add    %al,(%rax)
  400976:	00 00                	add    %al,(%rax)
  400978:	05 00 00 00 1a       	add    $0x1a000000,%eax
	...
  400989:	22 60 00             	and    0x0(%rax),%ah
  40098c:	00 00                	add    %al,(%rax)
  40098e:	00 00                	add    %al,(%rax)
  400990:	05 00 00 00 1b       	add    $0x1b000000,%eax
	...
  40099d:	00 00                	add    %al,(%rax)
  40099f:	00 60 22             	add    %ah,0x22(%rax)
  4009a2:	60                   	(bad)
  4009a3:	00 00                	add    %al,(%rax)
  4009a5:	00 00                	add    %al,(%rax)
  4009a7:	00 05 00 00 00 1f    	add    %al,0x1f000000(%rip)        # 1f4009ad <_end+0x1edfe5bd>
	...
  4009b5:	00 00                	add    %al,(%rax)
  4009b7:	00 80 23 60 00 00    	add    %al,0x6023(%rax)
  4009bd:	00 00                	add    %al,(%rax)
  4009bf:	00 05 00 00 00 1c    	add    %al,0x1c000000(%rip)        # 1c4009c5 <_end+0x1bdfe5d5>
	...

Disassembly of section .rela.plt:

00000000004009d0 <.rela.plt>:
  4009d0:	00 20                	add    %ah,(%rax)
  4009d2:	60                   	(bad)
  4009d3:	00 00                	add    %al,(%rax)
  4009d5:	00 00                	add    %al,(%rax)
  4009d7:	00 07                	add    %al,(%rdi)
  4009d9:	00 00                	add    %al,(%rax)
  4009db:	00 01                	add    %al,(%rcx)
	...
  4009e5:	00 00                	add    %al,(%rax)
  4009e7:	00 08                	add    %cl,(%rax)
  4009e9:	20 60 00             	and    %ah,0x0(%rax)
  4009ec:	00 00                	add    %al,(%rax)
  4009ee:	00 00                	add    %al,(%rax)
  4009f0:	07                   	(bad)
  4009f1:	00 00                	add    %al,(%rax)
  4009f3:	00 02                	add    %al,(%rdx)
	...
  4009fd:	00 00                	add    %al,(%rax)
  4009ff:	00 10                	add    %dl,(%rax)
  400a01:	20 60 00             	and    %ah,0x0(%rax)
  400a04:	00 00                	add    %al,(%rax)
  400a06:	00 00                	add    %al,(%rax)
  400a08:	07                   	(bad)
  400a09:	00 00                	add    %al,(%rax)
  400a0b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400a11 <_init-0x217>
  400a11:	00 00                	add    %al,(%rax)
  400a13:	00 00                	add    %al,(%rax)
  400a15:	00 00                	add    %al,(%rax)
  400a17:	00 18                	add    %bl,(%rax)
  400a19:	20 60 00             	and    %ah,0x0(%rax)
  400a1c:	00 00                	add    %al,(%rax)
  400a1e:	00 00                	add    %al,(%rax)
  400a20:	07                   	(bad)
  400a21:	00 00                	add    %al,(%rax)
  400a23:	00 06                	add    %al,(%rsi)
	...
  400a2d:	00 00                	add    %al,(%rax)
  400a2f:	00 20                	add    %ah,(%rax)
  400a31:	20 60 00             	and    %ah,0x0(%rax)
  400a34:	00 00                	add    %al,(%rax)
  400a36:	00 00                	add    %al,(%rax)
  400a38:	07                   	(bad)
  400a39:	00 00                	add    %al,(%rax)
  400a3b:	00 07                	add    %al,(%rdi)
	...
  400a45:	00 00                	add    %al,(%rax)
  400a47:	00 28                	add    %ch,(%rax)
  400a49:	20 60 00             	and    %ah,0x0(%rax)
  400a4c:	00 00                	add    %al,(%rax)
  400a4e:	00 00                	add    %al,(%rax)
  400a50:	07                   	(bad)
  400a51:	00 00                	add    %al,(%rax)
  400a53:	00 08                	add    %cl,(%rax)
	...
  400a5d:	00 00                	add    %al,(%rax)
  400a5f:	00 30                	add    %dh,(%rax)
  400a61:	20 60 00             	and    %ah,0x0(%rax)
  400a64:	00 00                	add    %al,(%rax)
  400a66:	00 00                	add    %al,(%rax)
  400a68:	07                   	(bad)
  400a69:	00 00                	add    %al,(%rax)
  400a6b:	00 09                	add    %cl,(%rcx)
	...
  400a75:	00 00                	add    %al,(%rax)
  400a77:	00 38                	add    %bh,(%rax)
  400a79:	20 60 00             	and    %ah,0x0(%rax)
  400a7c:	00 00                	add    %al,(%rax)
  400a7e:	00 00                	add    %al,(%rax)
  400a80:	07                   	(bad)
  400a81:	00 00                	add    %al,(%rax)
  400a83:	00 0a                	add    %cl,(%rdx)
	...
  400a8d:	00 00                	add    %al,(%rax)
  400a8f:	00 40 20             	add    %al,0x20(%rax)
  400a92:	60                   	(bad)
  400a93:	00 00                	add    %al,(%rax)
  400a95:	00 00                	add    %al,(%rax)
  400a97:	00 07                	add    %al,(%rdi)
  400a99:	00 00                	add    %al,(%rax)
  400a9b:	00 0b                	add    %cl,(%rbx)
	...
  400aa5:	00 00                	add    %al,(%rax)
  400aa7:	00 48 20             	add    %cl,0x20(%rax)
  400aaa:	60                   	(bad)
  400aab:	00 00                	add    %al,(%rax)
  400aad:	00 00                	add    %al,(%rax)
  400aaf:	00 07                	add    %al,(%rdi)
  400ab1:	00 00                	add    %al,(%rax)
  400ab3:	00 1e                	add    %bl,(%rsi)
	...
  400abd:	00 00                	add    %al,(%rax)
  400abf:	00 50 20             	add    %dl,0x20(%rax)
  400ac2:	60                   	(bad)
  400ac3:	00 00                	add    %al,(%rax)
  400ac5:	00 00                	add    %al,(%rax)
  400ac7:	00 07                	add    %al,(%rdi)
  400ac9:	00 00                	add    %al,(%rax)
  400acb:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400ad6:	00 00                	add    %al,(%rax)
  400ad8:	58                   	pop    %rax
  400ad9:	20 60 00             	and    %ah,0x0(%rax)
  400adc:	00 00                	add    %al,(%rax)
  400ade:	00 00                	add    %al,(%rax)
  400ae0:	07                   	(bad)
  400ae1:	00 00                	add    %al,(%rax)
  400ae3:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400ae9 <_init-0x13f>
  400ae9:	00 00                	add    %al,(%rax)
  400aeb:	00 00                	add    %al,(%rax)
  400aed:	00 00                	add    %al,(%rax)
  400aef:	00 60 20             	add    %ah,0x20(%rax)
  400af2:	60                   	(bad)
  400af3:	00 00                	add    %al,(%rax)
  400af5:	00 00                	add    %al,(%rax)
  400af7:	00 07                	add    %al,(%rdi)
  400af9:	00 00                	add    %al,(%rax)
  400afb:	00 0e                	add    %cl,(%rsi)
	...
  400b05:	00 00                	add    %al,(%rax)
  400b07:	00 68 20             	add    %ch,0x20(%rax)
  400b0a:	60                   	(bad)
  400b0b:	00 00                	add    %al,(%rax)
  400b0d:	00 00                	add    %al,(%rax)
  400b0f:	00 07                	add    %al,(%rdi)
  400b11:	00 00                	add    %al,(%rax)
  400b13:	00 0f                	add    %cl,(%rdi)
	...
  400b1d:	00 00                	add    %al,(%rax)
  400b1f:	00 70 20             	add    %dh,0x20(%rax)
  400b22:	60                   	(bad)
  400b23:	00 00                	add    %al,(%rax)
  400b25:	00 00                	add    %al,(%rax)
  400b27:	00 07                	add    %al,(%rdi)
  400b29:	00 00                	add    %al,(%rax)
  400b2b:	00 10                	add    %dl,(%rax)
	...
  400b35:	00 00                	add    %al,(%rax)
  400b37:	00 78 20             	add    %bh,0x20(%rax)
  400b3a:	60                   	(bad)
  400b3b:	00 00                	add    %al,(%rax)
  400b3d:	00 00                	add    %al,(%rax)
  400b3f:	00 07                	add    %al,(%rdi)
  400b41:	00 00                	add    %al,(%rax)
  400b43:	00 11                	add    %dl,(%rcx)
	...
  400b4d:	00 00                	add    %al,(%rax)
  400b4f:	00 80 20 60 00 00    	add    %al,0x6020(%rax)
  400b55:	00 00                	add    %al,(%rax)
  400b57:	00 07                	add    %al,(%rdi)
  400b59:	00 00                	add    %al,(%rax)
  400b5b:	00 13                	add    %dl,(%rbx)
	...
  400b65:	00 00                	add    %al,(%rax)
  400b67:	00 88 20 60 00 00    	add    %cl,0x6020(%rax)
  400b6d:	00 00                	add    %al,(%rax)
  400b6f:	00 07                	add    %al,(%rdi)
  400b71:	00 00                	add    %al,(%rax)
  400b73:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 400b79 <_init-0xaf>
  400b79:	00 00                	add    %al,(%rax)
  400b7b:	00 00                	add    %al,(%rax)
  400b7d:	00 00                	add    %al,(%rax)
  400b7f:	00 90 20 60 00 00    	add    %dl,0x6020(%rax)
  400b85:	00 00                	add    %al,(%rax)
  400b87:	00 07                	add    %al,(%rdi)
  400b89:	00 00                	add    %al,(%rax)
  400b8b:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  400b96:	00 00                	add    %al,(%rax)
  400b98:	98                   	cwtl
  400b99:	20 60 00             	and    %ah,0x0(%rax)
  400b9c:	00 00                	add    %al,(%rax)
  400b9e:	00 00                	add    %al,(%rax)
  400ba0:	07                   	(bad)
  400ba1:	00 00                	add    %al,(%rax)
  400ba3:	00 20                	add    %ah,(%rax)
	...
  400bad:	00 00                	add    %al,(%rax)
  400baf:	00 a0 20 60 00 00    	add    %ah,0x6020(%rax)
  400bb5:	00 00                	add    %al,(%rax)
  400bb7:	00 07                	add    %al,(%rdi)
  400bb9:	00 00                	add    %al,(%rax)
  400bbb:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 400bc1 <_init-0x67>
  400bc1:	00 00                	add    %al,(%rax)
  400bc3:	00 00                	add    %al,(%rax)
  400bc5:	00 00                	add    %al,(%rax)
  400bc7:	00 a8 20 60 00 00    	add    %ch,0x6020(%rax)
  400bcd:	00 00                	add    %al,(%rax)
  400bcf:	00 07                	add    %al,(%rdi)
  400bd1:	00 00                	add    %al,(%rax)
  400bd3:	00 16                	add    %dl,(%rsi)
	...
  400bdd:	00 00                	add    %al,(%rax)
  400bdf:	00 b0 20 60 00 00    	add    %dh,0x6020(%rax)
  400be5:	00 00                	add    %al,(%rax)
  400be7:	00 07                	add    %al,(%rdi)
  400be9:	00 00                	add    %al,(%rax)
  400beb:	00 17                	add    %dl,(%rdi)
	...
  400bf5:	00 00                	add    %al,(%rax)
  400bf7:	00 b8 20 60 00 00    	add    %bh,0x6020(%rax)
  400bfd:	00 00                	add    %al,(%rax)
  400bff:	00 07                	add    %al,(%rdi)
  400c01:	00 00                	add    %al,(%rax)
  400c03:	00 18                	add    %bl,(%rax)
	...
  400c0d:	00 00                	add    %al,(%rax)
  400c0f:	00 c0                	add    %al,%al
  400c11:	20 60 00             	and    %ah,0x0(%rax)
  400c14:	00 00                	add    %al,(%rax)
  400c16:	00 00                	add    %al,(%rax)
  400c18:	07                   	(bad)
  400c19:	00 00                	add    %al,(%rax)
  400c1b:	00 19                	add    %bl,(%rcx)
	...

Disassembly of section .init:

0000000000400c28 <_init>:
  400c28:	48 83 ec 08          	sub    $0x8,%rsp
  400c2c:	e8 db 01 00 00       	callq  400e0c <call_gmon_start>
  400c31:	e8 6a 02 00 00       	callq  400ea0 <frame_dummy>
  400c36:	e8 15 08 00 00       	callq  401450 <__do_global_ctors_aux>
  400c3b:	48 83 c4 08          	add    $0x8,%rsp
  400c3f:	c3                   	retq

Disassembly of section .plt:

0000000000400c40 <.plt>:
  400c40:	ff 35 aa 13 20 00    	pushq  0x2013aa(%rip)        # 601ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c46:	ff 25 ac 13 20 00    	jmpq   *0x2013ac(%rip)        # 601ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c50 <_ZNSsC1Ev@plt>:
  400c50:	ff 25 aa 13 20 00    	jmpq   *0x2013aa(%rip)        # 602000 <_ZNSsC1Ev@GLIBCXX_3.4>
  400c56:	68 00 00 00 00       	pushq  $0x0
  400c5b:	e9 e0 ff ff ff       	jmpq   400c40 <.plt>

0000000000400c60 <_ZNSolsEi@plt>:
  400c60:	ff 25 a2 13 20 00    	jmpq   *0x2013a2(%rip)        # 602008 <_ZNSolsEi@GLIBCXX_3.4>
  400c66:	68 01 00 00 00       	pushq  $0x1
  400c6b:	e9 d0 ff ff ff       	jmpq   400c40 <.plt>

0000000000400c70 <_Znam@plt>:
  400c70:	ff 25 9a 13 20 00    	jmpq   *0x20139a(%rip)        # 602010 <_Znam@GLIBCXX_3.4>
  400c76:	68 02 00 00 00       	pushq  $0x2
  400c7b:	e9 c0 ff ff ff       	jmpq   400c40 <.plt>

0000000000400c80 <_ZdlPv@plt>:
  400c80:	ff 25 92 13 20 00    	jmpq   *0x201392(%rip)        # 602018 <_ZdlPv@GLIBCXX_3.4>
  400c86:	68 03 00 00 00       	pushq  $0x3
  400c8b:	e9 b0 ff ff ff       	jmpq   400c40 <.plt>

0000000000400c90 <_ZNSt8ios_base4InitC1Ev@plt>:
  400c90:	ff 25 8a 13 20 00    	jmpq   *0x20138a(%rip)        # 602020 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  400c96:	68 04 00 00 00       	pushq  $0x4
  400c9b:	e9 a0 ff ff ff       	jmpq   400c40 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 82 13 20 00    	jmpq   *0x201382(%rip)        # 602028 <read@GLIBC_2.2.5>
  400ca6:	68 05 00 00 00       	pushq  $0x5
  400cab:	e9 90 ff ff ff       	jmpq   400c40 <.plt>

0000000000400cb0 <__libc_start_main@plt>:
  400cb0:	ff 25 7a 13 20 00    	jmpq   *0x20137a(%rip)        # 602030 <__libc_start_main@GLIBC_2.2.5>
  400cb6:	68 06 00 00 00       	pushq  $0x6
  400cbb:	e9 80 ff ff ff       	jmpq   400c40 <.plt>

0000000000400cc0 <system@plt>:
  400cc0:	ff 25 72 13 20 00    	jmpq   *0x201372(%rip)        # 602038 <system@GLIBC_2.2.5>
  400cc6:	68 07 00 00 00       	pushq  $0x7
  400ccb:	e9 70 ff ff ff       	jmpq   400c40 <.plt>

0000000000400cd0 <__cxa_atexit@plt>:
  400cd0:	ff 25 6a 13 20 00    	jmpq   *0x20136a(%rip)        # 602040 <__cxa_atexit@GLIBC_2.2.5>
  400cd6:	68 08 00 00 00       	pushq  $0x8
  400cdb:	e9 60 ff ff ff       	jmpq   400c40 <.plt>

0000000000400ce0 <_ZNSt8ios_base4InitD1Ev@plt>:
  400ce0:	ff 25 62 13 20 00    	jmpq   *0x201362(%rip)        # 602048 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  400ce6:	68 09 00 00 00       	pushq  $0x9
  400ceb:	e9 50 ff ff ff       	jmpq   400c40 <.plt>

0000000000400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400cf0:	ff 25 5a 13 20 00    	jmpq   *0x20135a(%rip)        # 602050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  400cf6:	68 0a 00 00 00       	pushq  $0xa
  400cfb:	e9 40 ff ff ff       	jmpq   400c40 <.plt>

0000000000400d00 <_ZNSsD1Ev@plt>:
  400d00:	ff 25 52 13 20 00    	jmpq   *0x201352(%rip)        # 602058 <_ZNSsD1Ev@GLIBCXX_3.4>
  400d06:	68 0b 00 00 00       	pushq  $0xb
  400d0b:	e9 30 ff ff ff       	jmpq   400c40 <.plt>

0000000000400d10 <_ZNSsC1EPKcRKSaIcE@plt>:
  400d10:	ff 25 4a 13 20 00    	jmpq   *0x20134a(%rip)        # 602060 <_ZNSsC1EPKcRKSaIcE@GLIBCXX_3.4>
  400d16:	68 0c 00 00 00       	pushq  $0xc
  400d1b:	e9 20 ff ff ff       	jmpq   400c40 <.plt>

0000000000400d20 <atoi@plt>:
  400d20:	ff 25 42 13 20 00    	jmpq   *0x201342(%rip)        # 602068 <atoi@GLIBC_2.2.5>
  400d26:	68 0d 00 00 00       	pushq  $0xd
  400d2b:	e9 10 ff ff ff       	jmpq   400c40 <.plt>

0000000000400d30 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E@plt>:
  400d30:	ff 25 3a 13 20 00    	jmpq   *0x20133a(%rip)        # 602070 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E@GLIBCXX_3.4>
  400d36:	68 0e 00 00 00       	pushq  $0xe
  400d3b:	e9 00 ff ff ff       	jmpq   400c40 <.plt>

0000000000400d40 <_ZNSaIcED1Ev@plt>:
  400d40:	ff 25 32 13 20 00    	jmpq   *0x201332(%rip)        # 602078 <_ZNSaIcED1Ev@GLIBCXX_3.4>
  400d46:	68 0f 00 00 00       	pushq  $0xf
  400d4b:	e9 f0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400d50 <_ZNSolsEPFRSoS_E@plt>:
  400d50:	ff 25 2a 13 20 00    	jmpq   *0x20132a(%rip)        # 602080 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  400d56:	68 10 00 00 00       	pushq  $0x10
  400d5b:	e9 e0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400d60 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400d60:	ff 25 22 13 20 00    	jmpq   *0x201322(%rip)        # 602088 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  400d66:	68 11 00 00 00       	pushq  $0x11
  400d6b:	e9 d0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400d70 <_ZNSaIcEC1Ev@plt>:
  400d70:	ff 25 1a 13 20 00    	jmpq   *0x20131a(%rip)        # 602090 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
  400d76:	68 12 00 00 00       	pushq  $0x12
  400d7b:	e9 c0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400d80 <__gxx_personality_v0@plt>:
  400d80:	ff 25 12 13 20 00    	jmpq   *0x201312(%rip)        # 602098 <__gxx_personality_v0@CXXABI_1.3>
  400d86:	68 13 00 00 00       	pushq  $0x13
  400d8b:	e9 b0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400d90 <_Znwm@plt>:
  400d90:	ff 25 0a 13 20 00    	jmpq   *0x20130a(%rip)        # 6020a0 <_Znwm@GLIBCXX_3.4>
  400d96:	68 14 00 00 00       	pushq  $0x14
  400d9b:	e9 a0 fe ff ff       	jmpq   400c40 <.plt>

0000000000400da0 <_Unwind_Resume@plt>:
  400da0:	ff 25 02 13 20 00    	jmpq   *0x201302(%rip)        # 6020a8 <_Unwind_Resume@GCC_3.0>
  400da6:	68 15 00 00 00       	pushq  $0x15
  400dab:	e9 90 fe ff ff       	jmpq   400c40 <.plt>

0000000000400db0 <_ZNSsaSERKSs@plt>:
  400db0:	ff 25 fa 12 20 00    	jmpq   *0x2012fa(%rip)        # 6020b0 <_ZNSsaSERKSs@GLIBCXX_3.4>
  400db6:	68 16 00 00 00       	pushq  $0x16
  400dbb:	e9 80 fe ff ff       	jmpq   400c40 <.plt>

0000000000400dc0 <open@plt>:
  400dc0:	ff 25 f2 12 20 00    	jmpq   *0x2012f2(%rip)        # 6020b8 <open@GLIBC_2.2.5>
  400dc6:	68 17 00 00 00       	pushq  $0x17
  400dcb:	e9 70 fe ff ff       	jmpq   400c40 <.plt>

0000000000400dd0 <_ZNSirsERj@plt>:
  400dd0:	ff 25 ea 12 20 00    	jmpq   *0x2012ea(%rip)        # 6020c0 <_ZNSirsERj@GLIBCXX_3.4>
  400dd6:	68 18 00 00 00       	pushq  $0x18
  400ddb:	e9 60 fe ff ff       	jmpq   400c40 <.plt>

Disassembly of section .text:

0000000000400de0 <_start>:
  400de0:	31 ed                	xor    %ebp,%ebp
  400de2:	49 89 d1             	mov    %rdx,%r9
  400de5:	5e                   	pop    %rsi
  400de6:	48 89 e2             	mov    %rsp,%rdx
  400de9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ded:	50                   	push   %rax
  400dee:	54                   	push   %rsp
  400def:	49 c7 c0 40 14 40 00 	mov    $0x401440,%r8
  400df6:	48 c7 c1 b0 13 40 00 	mov    $0x4013b0,%rcx
  400dfd:	48 c7 c7 c4 0e 40 00 	mov    $0x400ec4,%rdi
  400e04:	e8 a7 fe ff ff       	callq  400cb0 <__libc_start_main@plt>
  400e09:	f4                   	hlt
  400e0a:	90                   	nop
  400e0b:	90                   	nop

0000000000400e0c <call_gmon_start>:
  400e0c:	48 83 ec 08          	sub    $0x8,%rsp
  400e10:	48 8b 05 c9 11 20 00 	mov    0x2011c9(%rip),%rax        # 601fe0 <__gmon_start__>
  400e17:	48 85 c0             	test   %rax,%rax
  400e1a:	74 02                	je     400e1e <call_gmon_start+0x12>
  400e1c:	ff d0                	callq  *%rax
  400e1e:	48 83 c4 08          	add    $0x8,%rsp
  400e22:	c3                   	retq
  400e23:	90                   	nop
  400e24:	90                   	nop
  400e25:	90                   	nop
  400e26:	90                   	nop
  400e27:	90                   	nop
  400e28:	90                   	nop
  400e29:	90                   	nop
  400e2a:	90                   	nop
  400e2b:	90                   	nop
  400e2c:	90                   	nop
  400e2d:	90                   	nop
  400e2e:	90                   	nop
  400e2f:	90                   	nop

0000000000400e30 <__do_global_dtors_aux>:
  400e30:	55                   	push   %rbp
  400e31:	48 89 e5             	mov    %rsp,%rbp
  400e34:	53                   	push   %rbx
  400e35:	48 83 ec 08          	sub    $0x8,%rsp
  400e39:	80 3d 98 15 20 00 00 	cmpb   $0x0,0x201598(%rip)        # 6023d8 <completed.6531>
  400e40:	75 4b                	jne    400e8d <__do_global_dtors_aux+0x5d>
  400e42:	bb 00 1e 60 00       	mov    $0x601e00,%ebx
  400e47:	48 8b 05 92 15 20 00 	mov    0x201592(%rip),%rax        # 6023e0 <dtor_idx.6533>
  400e4e:	48 81 eb f8 1d 60 00 	sub    $0x601df8,%rbx
  400e55:	48 c1 fb 03          	sar    $0x3,%rbx
  400e59:	48 83 eb 01          	sub    $0x1,%rbx
  400e5d:	48 39 d8             	cmp    %rbx,%rax
  400e60:	73 24                	jae    400e86 <__do_global_dtors_aux+0x56>
  400e62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e68:	48 83 c0 01          	add    $0x1,%rax
  400e6c:	48 89 05 6d 15 20 00 	mov    %rax,0x20156d(%rip)        # 6023e0 <dtor_idx.6533>
  400e73:	ff 14 c5 f8 1d 60 00 	callq  *0x601df8(,%rax,8)
  400e7a:	48 8b 05 5f 15 20 00 	mov    0x20155f(%rip),%rax        # 6023e0 <dtor_idx.6533>
  400e81:	48 39 d8             	cmp    %rbx,%rax
  400e84:	72 e2                	jb     400e68 <__do_global_dtors_aux+0x38>
  400e86:	c6 05 4b 15 20 00 01 	movb   $0x1,0x20154b(%rip)        # 6023d8 <completed.6531>
  400e8d:	48 83 c4 08          	add    $0x8,%rsp
  400e91:	5b                   	pop    %rbx
  400e92:	5d                   	pop    %rbp
  400e93:	c3                   	retq
  400e94:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400e9b:	00 00 00 00 00

0000000000400ea0 <frame_dummy>:
  400ea0:	48 83 3d 60 0f 20 00 	cmpq   $0x0,0x200f60(%rip)        # 601e08 <__JCR_END__>
  400ea7:	00
  400ea8:	55                   	push   %rbp
  400ea9:	48 89 e5             	mov    %rsp,%rbp
  400eac:	74 12                	je     400ec0 <frame_dummy+0x20>
  400eae:	b8 00 00 00 00       	mov    $0x0,%eax
  400eb3:	48 85 c0             	test   %rax,%rax
  400eb6:	74 08                	je     400ec0 <frame_dummy+0x20>
  400eb8:	5d                   	pop    %rbp
  400eb9:	bf 08 1e 60 00       	mov    $0x601e08,%edi
  400ebe:	ff e0                	jmpq   *%rax
  400ec0:	5d                   	pop    %rbp
  400ec1:	c3                   	retq
  400ec2:	90                   	nop
  400ec3:	90                   	nop

0000000000400ec4 <main>:
  400ec4:	55                   	push   %rbp
  400ec5:	48 89 e5             	mov    %rsp,%rbp
  400ec8:	41 54                	push   %r12
  400eca:	53                   	push   %rbx
  400ecb:	48 83 ec 50          	sub    $0x50,%rsp
  400ecf:	89 7d ac             	mov    %edi,-0x54(%rbp)
  400ed2:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  400ed6:	48 8d 45 ee          	lea    -0x12(%rbp),%rax
  400eda:	48 89 c7             	mov    %rax,%rdi
  400edd:	e8 8e fe ff ff       	callq  400d70 <_ZNSaIcEC1Ev@plt>
  400ee2:	48 8d 55 ee          	lea    -0x12(%rbp),%rdx
  400ee6:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400eea:	be f0 14 40 00       	mov    $0x4014f0,%esi
  400eef:	48 89 c7             	mov    %rax,%rdi
  400ef2:	e8 19 fe ff ff       	callq  400d10 <_ZNSsC1EPKcRKSaIcE@plt>
  400ef7:	4c 8d 65 b0          	lea    -0x50(%rbp),%r12
  400efb:	bf 18 00 00 00       	mov    $0x18,%edi
  400f00:	e8 8b fe ff ff       	callq  400d90 <_Znwm@plt>
  400f05:	48 89 c3             	mov    %rax,%rbx
  400f08:	ba 19 00 00 00       	mov    $0x19,%edx
  400f0d:	4c 89 e6             	mov    %r12,%rsi
  400f10:	48 89 df             	mov    %rbx,%rdi
  400f13:	e8 4c 03 00 00       	callq  401264 <_ZN3ManC1ESsi>
  400f18:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
  400f1c:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400f20:	48 89 c7             	mov    %rax,%rdi
  400f23:	e8 d8 fd ff ff       	callq  400d00 <_ZNSsD1Ev@plt>
  400f28:	48 8d 45 ee          	lea    -0x12(%rbp),%rax
  400f2c:	48 89 c7             	mov    %rax,%rdi
  400f2f:	e8 0c fe ff ff       	callq  400d40 <_ZNSaIcED1Ev@plt>
  400f34:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  400f38:	48 89 c7             	mov    %rax,%rdi
  400f3b:	e8 30 fe ff ff       	callq  400d70 <_ZNSaIcEC1Ev@plt>
  400f40:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
  400f44:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400f48:	be f5 14 40 00       	mov    $0x4014f5,%esi
  400f4d:	48 89 c7             	mov    %rax,%rdi
  400f50:	e8 bb fd ff ff       	callq  400d10 <_ZNSsC1EPKcRKSaIcE@plt>
  400f55:	4c 8d 65 c0          	lea    -0x40(%rbp),%r12
  400f59:	bf 18 00 00 00       	mov    $0x18,%edi
  400f5e:	e8 2d fe ff ff       	callq  400d90 <_Znwm@plt>
  400f63:	48 89 c3             	mov    %rax,%rbx
  400f66:	ba 15 00 00 00       	mov    $0x15,%edx
  400f6b:	4c 89 e6             	mov    %r12,%rsi
  400f6e:	48 89 df             	mov    %rbx,%rdi
  400f71:	e8 92 03 00 00       	callq  401308 <_ZN5WomanC1ESsi>
  400f76:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
  400f7a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400f7e:	48 89 c7             	mov    %rax,%rdi
  400f81:	e8 7a fd ff ff       	callq  400d00 <_ZNSsD1Ev@plt>
  400f86:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  400f8a:	48 89 c7             	mov    %rax,%rdi
  400f8d:	e8 ae fd ff ff       	callq  400d40 <_ZNSaIcED1Ev@plt>
  400f92:	be fa 14 40 00       	mov    $0x4014fa,%esi
  400f97:	bf 60 22 60 00       	mov    $0x602260,%edi
  400f9c:	e8 4f fd ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400fa1:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  400fa5:	48 89 c6             	mov    %rax,%rsi
  400fa8:	bf e0 20 60 00       	mov    $0x6020e0,%edi
  400fad:	e8 1e fe ff ff       	callq  400dd0 <_ZNSirsERj@plt>
  400fb2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400fb5:	83 f8 02             	cmp    $0x2,%eax
  400fb8:	74 46                	je     401000 <main+0x13c>
  400fba:	83 f8 03             	cmp    $0x3,%eax
  400fbd:	0f 84 b3 00 00 00    	je     401076 <main+0x1b2>
  400fc3:	83 f8 01             	cmp    $0x1,%eax
  400fc6:	74 05                	je     400fcd <main+0x109>
  400fc8:	e9 dc 00 00 00       	jmpq   4010a9 <main+0x1e5>
  400fcd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400fd1:	48 8b 00             	mov    (%rax),%rax
  400fd4:	48 83 c0 08          	add    $0x8,%rax
  400fd8:	48 8b 10             	mov    (%rax),%rdx
  400fdb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400fdf:	48 89 c7             	mov    %rax,%rdi
  400fe2:	ff d2                	callq  *%rdx
  400fe4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400fe8:	48 8b 00             	mov    (%rax),%rax
  400feb:	48 83 c0 08          	add    $0x8,%rax
  400fef:	48 8b 10             	mov    (%rax),%rdx
  400ff2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400ff6:	48 89 c7             	mov    %rax,%rdi
  400ff9:	ff d2                	callq  *%rdx
  400ffb:	e9 a9 00 00 00       	jmpq   4010a9 <main+0x1e5>
  401000:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401004:	48 83 c0 08          	add    $0x8,%rax
  401008:	48 8b 00             	mov    (%rax),%rax
  40100b:	48 89 c7             	mov    %rax,%rdi
  40100e:	e8 0d fd ff ff       	callq  400d20 <atoi@plt>
  401013:	48 98                	cltq
  401015:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401019:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40101d:	48 89 c7             	mov    %rax,%rdi
  401020:	e8 4b fc ff ff       	callq  400c70 <_Znam@plt>
  401025:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401029:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  40102d:	48 83 c0 10          	add    $0x10,%rax
  401031:	48 8b 00             	mov    (%rax),%rax
  401034:	be 00 00 00 00       	mov    $0x0,%esi
  401039:	48 89 c7             	mov    %rax,%rdi
  40103c:	b8 00 00 00 00       	mov    $0x0,%eax
  401041:	e8 7a fd ff ff       	callq  400dc0 <open@plt>
  401046:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40104a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40104e:	48 89 ce             	mov    %rcx,%rsi
  401051:	89 c7                	mov    %eax,%edi
  401053:	e8 48 fc ff ff       	callq  400ca0 <read@plt>
  401058:	be 13 15 40 00       	mov    $0x401513,%esi
  40105d:	bf 60 22 60 00       	mov    $0x602260,%edi
  401062:	e8 89 fc ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401067:	be 60 0d 40 00       	mov    $0x400d60,%esi
  40106c:	48 89 c7             	mov    %rax,%rdi
  40106f:	e8 dc fc ff ff       	callq  400d50 <_ZNSolsEPFRSoS_E@plt>
  401074:	eb 33                	jmp    4010a9 <main+0x1e5>
  401076:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  40107a:	48 85 db             	test   %rbx,%rbx
  40107d:	74 10                	je     40108f <main+0x1cb>
  40107f:	48 89 df             	mov    %rbx,%rdi
  401082:	e8 b3 01 00 00       	callq  40123a <_ZN5HumanD1Ev>
  401087:	48 89 df             	mov    %rbx,%rdi
  40108a:	e8 f1 fb ff ff       	callq  400c80 <_ZdlPv@plt>
  40108f:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
  401093:	48 85 db             	test   %rbx,%rbx
  401096:	74 10                	je     4010a8 <main+0x1e4>
  401098:	48 89 df             	mov    %rbx,%rdi
  40109b:	e8 9a 01 00 00       	callq  40123a <_ZN5HumanD1Ev>
  4010a0:	48 89 df             	mov    %rbx,%rdi
  4010a3:	e8 d8 fb ff ff       	callq  400c80 <_ZdlPv@plt>
  4010a8:	90                   	nop
  4010a9:	e9 e4 fe ff ff       	jmpq   400f92 <main+0xce>
  4010ae:	49 89 c4             	mov    %rax,%r12
  4010b1:	48 89 df             	mov    %rbx,%rdi
  4010b4:	e8 c7 fb ff ff       	callq  400c80 <_ZdlPv@plt>
  4010b9:	4c 89 e3             	mov    %r12,%rbx
  4010bc:	eb 03                	jmp    4010c1 <main+0x1fd>
  4010be:	48 89 c3             	mov    %rax,%rbx
  4010c1:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4010c5:	48 89 c7             	mov    %rax,%rdi
  4010c8:	e8 33 fc ff ff       	callq  400d00 <_ZNSsD1Ev@plt>
  4010cd:	eb 03                	jmp    4010d2 <main+0x20e>
  4010cf:	48 89 c3             	mov    %rax,%rbx
  4010d2:	48 8d 45 ee          	lea    -0x12(%rbp),%rax
  4010d6:	48 89 c7             	mov    %rax,%rdi
  4010d9:	e8 62 fc ff ff       	callq  400d40 <_ZNSaIcED1Ev@plt>
  4010de:	48 89 d8             	mov    %rbx,%rax
  4010e1:	48 89 c7             	mov    %rax,%rdi
  4010e4:	e8 b7 fc ff ff       	callq  400da0 <_Unwind_Resume@plt>
  4010e9:	49 89 c4             	mov    %rax,%r12
  4010ec:	48 89 df             	mov    %rbx,%rdi
  4010ef:	e8 8c fb ff ff       	callq  400c80 <_ZdlPv@plt>
  4010f4:	4c 89 e3             	mov    %r12,%rbx
  4010f7:	eb 03                	jmp    4010fc <main+0x238>
  4010f9:	48 89 c3             	mov    %rax,%rbx
  4010fc:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401100:	48 89 c7             	mov    %rax,%rdi
  401103:	e8 f8 fb ff ff       	callq  400d00 <_ZNSsD1Ev@plt>
  401108:	eb 03                	jmp    40110d <main+0x249>
  40110a:	48 89 c3             	mov    %rax,%rbx
  40110d:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  401111:	48 89 c7             	mov    %rax,%rdi
  401114:	e8 27 fc ff ff       	callq  400d40 <_ZNSaIcED1Ev@plt>
  401119:	48 89 d8             	mov    %rbx,%rax
  40111c:	48 89 c7             	mov    %rax,%rdi
  40111f:	e8 7c fc ff ff       	callq  400da0 <_Unwind_Resume@plt>

0000000000401124 <_Z41__static_initialization_and_destruction_0ii>:
  401124:	55                   	push   %rbp
  401125:	48 89 e5             	mov    %rsp,%rbp
  401128:	48 83 ec 10          	sub    $0x10,%rsp
  40112c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40112f:	89 75 f8             	mov    %esi,-0x8(%rbp)
  401132:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  401136:	75 2a                	jne    401162 <_Z41__static_initialization_and_destruction_0ii+0x3e>
  401138:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  40113f:	75 21                	jne    401162 <_Z41__static_initialization_and_destruction_0ii+0x3e>
  401141:	bf e8 23 60 00       	mov    $0x6023e8,%edi
  401146:	e8 45 fb ff ff       	callq  400c90 <_ZNSt8ios_base4InitC1Ev@plt>
  40114b:	b8 e0 0c 40 00       	mov    $0x400ce0,%eax
  401150:	ba d0 20 60 00       	mov    $0x6020d0,%edx
  401155:	be e8 23 60 00       	mov    $0x6023e8,%esi
  40115a:	48 89 c7             	mov    %rax,%rdi
  40115d:	e8 6e fb ff ff       	callq  400cd0 <__cxa_atexit@plt>
  401162:	c9                   	leaveq
  401163:	c3                   	retq

0000000000401164 <_GLOBAL__sub_I_main>:
  401164:	55                   	push   %rbp
  401165:	48 89 e5             	mov    %rsp,%rbp
  401168:	be ff ff 00 00       	mov    $0xffff,%esi
  40116d:	bf 01 00 00 00       	mov    $0x1,%edi
  401172:	e8 ad ff ff ff       	callq  401124 <_Z41__static_initialization_and_destruction_0ii>
  401177:	5d                   	pop    %rbp
  401178:	c3                   	retq
  401179:	90                   	nop

000000000040117a <_ZN5Human10give_shellEv>:
  40117a:	55                   	push   %rbp
  40117b:	48 89 e5             	mov    %rsp,%rbp
  40117e:	48 83 ec 10          	sub    $0x10,%rsp
  401182:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401186:	bf a8 14 40 00       	mov    $0x4014a8,%edi
  40118b:	e8 30 fb ff ff       	callq  400cc0 <system@plt>
  401190:	c9                   	leaveq
  401191:	c3                   	retq

0000000000401192 <_ZN5Human9introduceEv>:
  401192:	55                   	push   %rbp
  401193:	48 89 e5             	mov    %rsp,%rbp
  401196:	53                   	push   %rbx
  401197:	48 83 ec 18          	sub    $0x18,%rsp
  40119b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40119f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011a3:	48 8d 58 10          	lea    0x10(%rax),%rbx
  4011a7:	be b0 14 40 00       	mov    $0x4014b0,%esi
  4011ac:	bf 60 22 60 00       	mov    $0x602260,%edi
  4011b1:	e8 3a fb ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4011b6:	48 89 de             	mov    %rbx,%rsi
  4011b9:	48 89 c7             	mov    %rax,%rdi
  4011bc:	e8 6f fb ff ff       	callq  400d30 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E@plt>
  4011c1:	be 60 0d 40 00       	mov    $0x400d60,%esi
  4011c6:	48 89 c7             	mov    %rax,%rdi
  4011c9:	e8 82 fb ff ff       	callq  400d50 <_ZNSolsEPFRSoS_E@plt>
  4011ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011d2:	8b 58 08             	mov    0x8(%rax),%ebx
  4011d5:	be bc 14 40 00       	mov    $0x4014bc,%esi
  4011da:	bf 60 22 60 00       	mov    $0x602260,%edi
  4011df:	e8 0c fb ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4011e4:	89 de                	mov    %ebx,%esi
  4011e6:	48 89 c7             	mov    %rax,%rdi
  4011e9:	e8 72 fa ff ff       	callq  400c60 <_ZNSolsEi@plt>
  4011ee:	be c2 14 40 00       	mov    $0x4014c2,%esi
  4011f3:	48 89 c7             	mov    %rax,%rdi
  4011f6:	e8 f5 fa ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4011fb:	be 60 0d 40 00       	mov    $0x400d60,%esi
  401200:	48 89 c7             	mov    %rax,%rdi
  401203:	e8 48 fb ff ff       	callq  400d50 <_ZNSolsEPFRSoS_E@plt>
  401208:	48 83 c4 18          	add    $0x18,%rsp
  40120c:	5b                   	pop    %rbx
  40120d:	5d                   	pop    %rbp
  40120e:	c3                   	retq
  40120f:	90                   	nop

0000000000401210 <_ZN5HumanC1Ev>:
  401210:	55                   	push   %rbp
  401211:	48 89 e5             	mov    %rsp,%rbp
  401214:	48 83 ec 10          	sub    $0x10,%rsp
  401218:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40121c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401220:	48 c7 00 90 15 40 00 	movq   $0x401590,(%rax)
  401227:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40122b:	48 83 c0 10          	add    $0x10,%rax
  40122f:	48 89 c7             	mov    %rax,%rdi
  401232:	e8 19 fa ff ff       	callq  400c50 <_ZNSsC1Ev@plt>
  401237:	c9                   	leaveq
  401238:	c3                   	retq
  401239:	90                   	nop

000000000040123a <_ZN5HumanD1Ev>:
  40123a:	55                   	push   %rbp
  40123b:	48 89 e5             	mov    %rsp,%rbp
  40123e:	48 83 ec 10          	sub    $0x10,%rsp
  401242:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401246:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40124a:	48 c7 00 90 15 40 00 	movq   $0x401590,(%rax)
  401251:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401255:	48 83 c0 10          	add    $0x10,%rax
  401259:	48 89 c7             	mov    %rax,%rdi
  40125c:	e8 9f fa ff ff       	callq  400d00 <_ZNSsD1Ev@plt>
  401261:	c9                   	leaveq
  401262:	c3                   	retq
  401263:	90                   	nop

0000000000401264 <_ZN3ManC1ESsi>:
  401264:	55                   	push   %rbp
  401265:	48 89 e5             	mov    %rsp,%rbp
  401268:	53                   	push   %rbx
  401269:	48 83 ec 28          	sub    $0x28,%rsp
  40126d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401271:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401275:	89 55 dc             	mov    %edx,-0x24(%rbp)
  401278:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40127c:	48 89 c7             	mov    %rax,%rdi
  40127f:	e8 8c ff ff ff       	callq  401210 <_ZN5HumanC1Ev>
  401284:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401288:	48 c7 00 70 15 40 00 	movq   $0x401570,(%rax)
  40128f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401293:	48 8d 50 10          	lea    0x10(%rax),%rdx
  401297:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40129b:	48 89 c6             	mov    %rax,%rsi
  40129e:	48 89 d7             	mov    %rdx,%rdi
  4012a1:	e8 0a fb ff ff       	callq  400db0 <_ZNSsaSERKSs@plt>
  4012a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4012aa:	8b 55 dc             	mov    -0x24(%rbp),%edx
  4012ad:	89 50 08             	mov    %edx,0x8(%rax)
  4012b0:	48 83 c4 28          	add    $0x28,%rsp
  4012b4:	5b                   	pop    %rbx
  4012b5:	5d                   	pop    %rbp
  4012b6:	c3                   	retq
  4012b7:	48 89 c3             	mov    %rax,%rbx
  4012ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4012be:	48 89 c7             	mov    %rax,%rdi
  4012c1:	e8 74 ff ff ff       	callq  40123a <_ZN5HumanD1Ev>
  4012c6:	48 89 d8             	mov    %rbx,%rax
  4012c9:	48 89 c7             	mov    %rax,%rdi
  4012cc:	e8 cf fa ff ff       	callq  400da0 <_Unwind_Resume@plt>
  4012d1:	90                   	nop

00000000004012d2 <_ZN3Man9introduceEv>:
  4012d2:	55                   	push   %rbp
  4012d3:	48 89 e5             	mov    %rsp,%rbp
  4012d6:	48 83 ec 10          	sub    $0x10,%rsp
  4012da:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4012de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012e2:	48 89 c7             	mov    %rax,%rdi
  4012e5:	e8 a8 fe ff ff       	callq  401192 <_ZN5Human9introduceEv>
  4012ea:	be cd 14 40 00       	mov    $0x4014cd,%esi
  4012ef:	bf 60 22 60 00       	mov    $0x602260,%edi
  4012f4:	e8 f7 f9 ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4012f9:	be 60 0d 40 00       	mov    $0x400d60,%esi
  4012fe:	48 89 c7             	mov    %rax,%rdi
  401301:	e8 4a fa ff ff       	callq  400d50 <_ZNSolsEPFRSoS_E@plt>
  401306:	c9                   	leaveq
  401307:	c3                   	retq

0000000000401308 <_ZN5WomanC1ESsi>:
  401308:	55                   	push   %rbp
  401309:	48 89 e5             	mov    %rsp,%rbp
  40130c:	53                   	push   %rbx
  40130d:	48 83 ec 28          	sub    $0x28,%rsp
  401311:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401315:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401319:	89 55 dc             	mov    %edx,-0x24(%rbp)
  40131c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401320:	48 89 c7             	mov    %rax,%rdi
  401323:	e8 e8 fe ff ff       	callq  401210 <_ZN5HumanC1Ev>
  401328:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40132c:	48 c7 00 50 15 40 00 	movq   $0x401550,(%rax)
  401333:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401337:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40133b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40133f:	48 89 c6             	mov    %rax,%rsi
  401342:	48 89 d7             	mov    %rdx,%rdi
  401345:	e8 66 fa ff ff       	callq  400db0 <_ZNSsaSERKSs@plt>
  40134a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40134e:	8b 55 dc             	mov    -0x24(%rbp),%edx
  401351:	89 50 08             	mov    %edx,0x8(%rax)
  401354:	48 83 c4 28          	add    $0x28,%rsp
  401358:	5b                   	pop    %rbx
  401359:	5d                   	pop    %rbp
  40135a:	c3                   	retq
  40135b:	48 89 c3             	mov    %rax,%rbx
  40135e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401362:	48 89 c7             	mov    %rax,%rdi
  401365:	e8 d0 fe ff ff       	callq  40123a <_ZN5HumanD1Ev>
  40136a:	48 89 d8             	mov    %rbx,%rax
  40136d:	48 89 c7             	mov    %rax,%rdi
  401370:	e8 2b fa ff ff       	callq  400da0 <_Unwind_Resume@plt>
  401375:	90                   	nop

0000000000401376 <_ZN5Woman9introduceEv>:
  401376:	55                   	push   %rbp
  401377:	48 89 e5             	mov    %rsp,%rbp
  40137a:	48 83 ec 10          	sub    $0x10,%rsp
  40137e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401382:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401386:	48 89 c7             	mov    %rax,%rdi
  401389:	e8 04 fe ff ff       	callq  401192 <_ZN5Human9introduceEv>
  40138e:	be de 14 40 00       	mov    $0x4014de,%esi
  401393:	bf 60 22 60 00       	mov    $0x602260,%edi
  401398:	e8 53 f9 ff ff       	callq  400cf0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40139d:	be 60 0d 40 00       	mov    $0x400d60,%esi
  4013a2:	48 89 c7             	mov    %rax,%rdi
  4013a5:	e8 a6 f9 ff ff       	callq  400d50 <_ZNSolsEPFRSoS_E@plt>
  4013aa:	c9                   	leaveq
  4013ab:	c3                   	retq
  4013ac:	90                   	nop
  4013ad:	90                   	nop
  4013ae:	90                   	nop
  4013af:	90                   	nop

00000000004013b0 <__libc_csu_init>:
  4013b0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4013b5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4013ba:	48 8d 2d 27 0a 20 00 	lea    0x200a27(%rip),%rbp        # 601de8 <__init_array_end>
  4013c1:	4c 8d 25 18 0a 20 00 	lea    0x200a18(%rip),%r12        # 601de0 <__init_array_start>
  4013c8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4013cd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4013d2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4013d7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4013dc:	48 83 ec 38          	sub    $0x38,%rsp
  4013e0:	4c 29 e5             	sub    %r12,%rbp
  4013e3:	41 89 fd             	mov    %edi,%r13d
  4013e6:	49 89 f6             	mov    %rsi,%r14
  4013e9:	48 c1 fd 03          	sar    $0x3,%rbp
  4013ed:	49 89 d7             	mov    %rdx,%r15
  4013f0:	e8 33 f8 ff ff       	callq  400c28 <_init>
  4013f5:	48 85 ed             	test   %rbp,%rbp
  4013f8:	74 1c                	je     401416 <__libc_csu_init+0x66>
  4013fa:	31 db                	xor    %ebx,%ebx
  4013fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401400:	4c 89 fa             	mov    %r15,%rdx
  401403:	4c 89 f6             	mov    %r14,%rsi
  401406:	44 89 ef             	mov    %r13d,%edi
  401409:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40140d:	48 83 c3 01          	add    $0x1,%rbx
  401411:	48 39 eb             	cmp    %rbp,%rbx
  401414:	75 ea                	jne    401400 <__libc_csu_init+0x50>
  401416:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40141b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401420:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401425:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40142a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40142f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401434:	48 83 c4 38          	add    $0x38,%rsp
  401438:	c3                   	retq
  401439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401440 <__libc_csu_fini>:
  401440:	f3 c3                	repz retq
  401442:	90                   	nop
  401443:	90                   	nop
  401444:	90                   	nop
  401445:	90                   	nop
  401446:	90                   	nop
  401447:	90                   	nop
  401448:	90                   	nop
  401449:	90                   	nop
  40144a:	90                   	nop
  40144b:	90                   	nop
  40144c:	90                   	nop
  40144d:	90                   	nop
  40144e:	90                   	nop
  40144f:	90                   	nop

0000000000401450 <__do_global_ctors_aux>:
  401450:	55                   	push   %rbp
  401451:	48 89 e5             	mov    %rsp,%rbp
  401454:	53                   	push   %rbx
  401455:	48 83 ec 08          	sub    $0x8,%rsp
  401459:	48 8b 05 88 09 20 00 	mov    0x200988(%rip),%rax        # 601de8 <__init_array_end>
  401460:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401464:	74 19                	je     40147f <__do_global_ctors_aux+0x2f>
  401466:	bb e8 1d 60 00       	mov    $0x601de8,%ebx
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401470:	48 83 eb 08          	sub    $0x8,%rbx
  401474:	ff d0                	callq  *%rax
  401476:	48 8b 03             	mov    (%rbx),%rax
  401479:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40147d:	75 f1                	jne    401470 <__do_global_ctors_aux+0x20>
  40147f:	48 83 c4 08          	add    $0x8,%rsp
  401483:	5b                   	pop    %rbx
  401484:	5d                   	pop    %rbp
  401485:	c3                   	retq
  401486:	90                   	nop
  401487:	90                   	nop

Disassembly of section .fini:

0000000000401488 <_fini>:
  401488:	48 83 ec 08          	sub    $0x8,%rsp
  40148c:	e8 9f f9 ff ff       	callq  400e30 <__do_global_dtors_aux>
  401491:	48 83 c4 08          	add    $0x8,%rsp
  401495:	c3                   	retq

Disassembly of section .rodata:

00000000004014a0 <_IO_stdin_used>:
  4014a0:	01 00                	add    %eax,(%rax)
  4014a2:	02 00                	add    (%rax),%al
  4014a4:	00 00                	add    %al,(%rax)
  4014a6:	00 00                	add    %al,(%rax)
  4014a8:	2f                   	(bad)
  4014a9:	62                   	(bad)
  4014aa:	69 6e 2f 73 68 00 4d 	imul   $0x4d006873,0x2f(%rsi),%ebp
  4014b1:	79 20                	jns    4014d3 <_IO_stdin_used+0x33>
  4014b3:	6e                   	outsb  %ds:(%rsi),(%dx)
  4014b4:	61                   	(bad)
  4014b5:	6d                   	insl   (%dx),%es:(%rdi)
  4014b6:	65 20 69 73          	and    %ch,%gs:0x73(%rcx)
  4014ba:	20 00                	and    %al,(%rax)
  4014bc:	49 20 61 6d          	rex.WB and %spl,0x6d(%r9)
  4014c0:	20 00                	and    %al,(%rax)
  4014c2:	20 79 65             	and    %bh,0x65(%rcx)
  4014c5:	61                   	(bad)
  4014c6:	72 73                	jb     40153b <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0xb>
  4014c8:	20 6f 6c             	and    %ch,0x6c(%rdi)
  4014cb:	64 00 49 20          	add    %cl,%fs:0x20(%rcx)
  4014cf:	61                   	(bad)
  4014d0:	6d                   	insl   (%dx),%es:(%rdi)
  4014d1:	20 61 20             	and    %ah,0x20(%rcx)
  4014d4:	6e                   	outsb  %ds:(%rsi),(%dx)
  4014d5:	69 63 65 20 67 75 79 	imul   $0x79756720,0x65(%rbx),%esp
  4014dc:	21 00                	and    %eax,(%rax)
  4014de:	49 20 61 6d          	rex.WB and %spl,0x6d(%r9)
  4014e2:	20 61 20             	and    %ah,0x20(%rcx)
  4014e5:	63 75 74             	movslq 0x74(%rbp),%esi
  4014e8:	65 20 67 69          	and    %ah,%gs:0x69(%rdi)
  4014ec:	72 6c                	jb     40155a <_ZTV5Woman+0x1a>
  4014ee:	21 00                	and    %eax,(%rax)
  4014f0:	4a 61                	rex.WX (bad)
  4014f2:	63 6b 00             	movslq 0x0(%rbx),%ebp
  4014f5:	4a 69 6c 6c 00 31 2e 	imul   $0x75202e31,0x0(%rsp,%r13,2),%rbp
  4014fc:	20 75
  4014fe:	73 65                	jae    401565 <_ZTV3Man+0x5>
  401500:	0a 32                	or     (%rdx),%dh
  401502:	2e 20 61 66          	and    %ah,%cs:0x66(%rcx)
  401506:	74 65                	je     40156d <_ZTV3Man+0xd>
  401508:	72 0a                	jb     401514 <_IO_stdin_used+0x74>
  40150a:	33 2e                	xor    (%rsi),%ebp
  40150c:	20 66 72             	and    %ah,0x72(%rsi)
  40150f:	65 65 0a 00          	gs or  %gs:(%rax),%al
  401513:	79 6f                	jns    401584 <_ZTV5Human+0x4>
  401515:	75 72                	jne    401589 <_ZTV5Human+0x9>
  401517:	20 64 61 74          	and    %ah,0x74(%rcx,%riz,2)
  40151b:	61                   	(bad)
  40151c:	20 69 73             	and    %ch,0x73(%rcx)
  40151f:	20 61 6c             	and    %ah,0x6c(%rcx)
  401522:	6c                   	insb   (%dx),%es:(%rdi)
  401523:	6f                   	outsl  %ds:(%rsi),(%dx)
  401524:	63 61 74             	movslq 0x74(%rcx),%esp
  401527:	65 64 00 00          	gs add %al,%fs:(%rax)
  40152b:	00 00                	add    %al,(%rax)
  40152d:	00 00                	add    %al,(%rax)
	...

0000000000401530 <_ZZL18__gthread_active_pvE20__gthread_active_ptr>:
	...

0000000000401540 <_ZTV5Woman>:
	...
  401548:	b0 15                	mov    $0x15,%al
  40154a:	40 00 00             	add    %al,(%rax)
  40154d:	00 00                	add    %al,(%rax)
  40154f:	00 7a 11             	add    %bh,0x11(%rdx)
  401552:	40 00 00             	add    %al,(%rax)
  401555:	00 00                	add    %al,(%rax)
  401557:	00 76 13             	add    %dh,0x13(%rsi)
  40155a:	40 00 00             	add    %al,(%rax)
  40155d:	00 00                	add    %al,(%rax)
	...

0000000000401560 <_ZTV3Man>:
	...
  401568:	d0 15 40 00 00 00    	rclb   0x40(%rip)        # 4015ae <_ZTS5Woman+0xe>
  40156e:	00 00                	add    %al,(%rax)
  401570:	7a 11                	jp     401583 <_ZTV5Human+0x3>
  401572:	40 00 00             	add    %al,(%rax)
  401575:	00 00                	add    %al,(%rax)
  401577:	00 d2                	add    %dl,%dl
  401579:	12 40 00             	adc    0x0(%rax),%al
  40157c:	00 00                	add    %al,(%rax)
	...

0000000000401580 <_ZTV5Human>:
	...
  401588:	f0 15 40 00 00 00    	lock adc $0x40,%eax
  40158e:	00 00                	add    %al,(%rax)
  401590:	7a 11                	jp     4015a3 <_ZTS5Woman+0x3>
  401592:	40 00 00             	add    %al,(%rax)
  401595:	00 00                	add    %al,(%rax)
  401597:	00 92 11 40 00 00    	add    %dl,0x4011(%rdx)
  40159d:	00 00                	add    %al,(%rax)
	...

00000000004015a0 <_ZTS5Woman>:
  4015a0:	35 57 6f 6d 61       	xor    $0x616d6f57,%eax
  4015a5:	6e                   	outsb  %ds:(%rsi),(%dx)
	...

00000000004015b0 <_ZTI5Woman>:
  4015b0:	90                   	nop
  4015b1:	23 60 00             	and    0x0(%rax),%esp
  4015b4:	00 00                	add    %al,(%rax)
  4015b6:	00 00                	add    %al,(%rax)
  4015b8:	a0 15 40 00 00 00 00 	movabs 0xf000000000004015,%al
  4015bf:	00 f0
  4015c1:	15 40 00 00 00       	adc    $0x40,%eax
	...

00000000004015c8 <_ZTS3Man>:
  4015c8:	33 4d 61             	xor    0x61(%rbp),%ecx
  4015cb:	6e                   	outsb  %ds:(%rsi),(%dx)
  4015cc:	00 00                	add    %al,(%rax)
	...

00000000004015d0 <_ZTI3Man>:
  4015d0:	90                   	nop
  4015d1:	23 60 00             	and    0x0(%rax),%esp
  4015d4:	00 00                	add    %al,(%rax)
  4015d6:	00 00                	add    %al,(%rax)
  4015d8:	c8 15 40 00          	enterq $0x4015,$0x0
  4015dc:	00 00                	add    %al,(%rax)
  4015de:	00 00                	add    %al,(%rax)
  4015e0:	f0 15 40 00 00 00    	lock adc $0x40,%eax
	...

00000000004015e8 <_ZTS5Human>:
  4015e8:	35 48 75 6d 61       	xor    $0x616d7548,%eax
  4015ed:	6e                   	outsb  %ds:(%rsi),(%dx)
	...

00000000004015f0 <_ZTI5Human>:
  4015f0:	10 22                	adc    %ah,(%rdx)
  4015f2:	60                   	(bad)
  4015f3:	00 00                	add    %al,(%rax)
  4015f5:	00 00                	add    %al,(%rax)
  4015f7:	00 e8                	add    %ch,%al
  4015f9:	15 40 00 00 00       	adc    $0x40,%eax
	...

Disassembly of section .eh_frame_hdr:

0000000000401600 <.eh_frame_hdr>:
  401600:	01 1b                	add    %ebx,(%rbx)
  401602:	03 3b                	add    (%rbx),%edi
  401604:	7c 00                	jl     401606 <_ZTI5Human+0x16>
  401606:	00 00                	add    %al,(%rax)
  401608:	0e                   	(bad)
  401609:	00 00                	add    %al,(%rax)
  40160b:	00 40 f6             	add    %al,-0xa(%rax)
  40160e:	ff                   	(bad)
  40160f:	ff 98 00 00 00 c4    	lcall  *-0x3c000000(%rax)
  401615:	f8                   	clc
  401616:	ff                   	(bad)
  401617:	ff                   	(bad)
  401618:	f8                   	clc
  401619:	01 00                	add    %eax,(%rax)
  40161b:	00 24 fb             	add    %ah,(%rbx,%rdi,8)
  40161e:	ff                   	(bad)
  40161f:	ff 20                	jmpq   *(%rax)
  401621:	02 00                	add    (%rax),%al
  401623:	00 64 fb ff          	add    %ah,-0x1(%rbx,%rdi,8)
  401627:	ff 40 02             	incl   0x2(%rax)
  40162a:	00 00                	add    %al,(%rax)
  40162c:	7a fb                	jp     401629 <_ZTI5Human+0x39>
  40162e:	ff                   	(bad)
  40162f:	ff c0                	inc    %eax
  401631:	00 00                	add    %al,(%rax)
  401633:	00 92 fb ff ff e0    	add    %dl,-0x1f000005(%rdx)
  401639:	00 00                	add    %al,(%rax)
  40163b:	00 10                	add    %dl,(%rax)
  40163d:	fc                   	cld
  40163e:	ff                   	(bad)
  40163f:	ff 08                	decl   (%rax)
  401641:	01 00                	add    %eax,(%rax)
  401643:	00 3a                	add    %bh,(%rdx)
  401645:	fc                   	cld
  401646:	ff                   	(bad)
  401647:	ff 28                	ljmp   *(%rax)
  401649:	01 00                	add    %eax,(%rax)
  40164b:	00 64 fc ff          	add    %ah,-0x1(%rsp,%rdi,8)
  40164f:	ff 68 01             	ljmp   *0x1(%rax)
  401652:	00 00                	add    %al,(%rax)
  401654:	d2 fc                	sar    %cl,%ah
  401656:	ff                   	(bad)
  401657:	ff 90 01 00 00 08    	callq  *0x8000001(%rax)
  40165d:	fd                   	std
  40165e:	ff                   	(bad)
  40165f:	ff b0 01 00 00 76    	pushq  0x76000001(%rax)
  401665:	fd                   	std
  401666:	ff                   	(bad)
  401667:	ff                   	(bad)
  401668:	d8 01                	fadds  (%rcx)
  40166a:	00 00                	add    %al,(%rax)
  40166c:	b0 fd                	mov    $0xfd,%al
  40166e:	ff                   	(bad)
  40166f:	ff 60 02             	jmpq   *0x2(%rax)
  401672:	00 00                	add    %al,(%rax)
  401674:	40 fe                	rex (bad)
  401676:	ff                   	(bad)
  401677:	ff                   	.byte 0xff
  401678:	88 02                	mov    %al,(%rdx)
	...

Disassembly of section .eh_frame:

0000000000401680 <__FRAME_END__-0x220>:
  401680:	14 00                	adc    $0x0,%al
  401682:	00 00                	add    %al,(%rax)
  401684:	00 00                	add    %al,(%rax)
  401686:	00 00                	add    %al,(%rax)
  401688:	01 7a 52             	add    %edi,0x52(%rdx)
  40168b:	00 01                	add    %al,(%rcx)
  40168d:	78 10                	js     40169f <_ZTI5Human+0xaf>
  40168f:	01 1b                	add    %ebx,(%rbx)
  401691:	0c 07                	or     $0x7,%al
  401693:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  401699:	00 00                	add    %al,(%rax)
  40169b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40169e:	00 00                	add    %al,(%rax)
  4016a0:	a0 f5 ff ff a0 01 00 	movabs 0x1a0fffff5,%al
  4016a7:	00 00
  4016a9:	0e                   	(bad)
  4016aa:	10 46 0e             	adc    %al,0xe(%rsi)
  4016ad:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4016b0:	0b 77 08             	or     0x8(%rdi),%esi
  4016b3:	80 00 3f             	addb   $0x3f,(%rax)
  4016b6:	1a 3b                	sbb    (%rbx),%bh
  4016b8:	2a 33                	sub    (%rbx),%dh
  4016ba:	24 22                	and    $0x22,%al
  4016bc:	00 00                	add    %al,(%rax)
  4016be:	00 00                	add    %al,(%rax)
  4016c0:	1c 00                	sbb    $0x0,%al
  4016c2:	00 00                	add    %al,(%rax)
  4016c4:	44 00 00             	add    %r8b,(%rax)
  4016c7:	00 b2 fa ff ff 18    	add    %dh,0x18fffffa(%rdx)
  4016cd:	00 00                	add    %al,(%rax)
  4016cf:	00 00                	add    %al,(%rax)
  4016d1:	41 0e                	rex.B (bad)
  4016d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4016d9:	53                   	push   %rbx
  4016da:	0c 07                	or     $0x7,%al
  4016dc:	08 00                	or     %al,(%rax)
  4016de:	00 00                	add    %al,(%rax)
  4016e0:	24 00                	and    $0x0,%al
  4016e2:	00 00                	add    %al,(%rax)
  4016e4:	64 00 00             	add    %al,%fs:(%rax)
  4016e7:	00 aa fa ff ff 7d    	add    %ch,0x7dfffffa(%rdx)
  4016ed:	00 00                	add    %al,(%rax)
  4016ef:	00 00                	add    %al,(%rax)
  4016f1:	41 0e                	rex.B (bad)
  4016f3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4016f9:	51                   	push   %rcx
  4016fa:	83 03 02             	addl   $0x2,(%rbx)
  4016fd:	67 0c 07             	addr32 or $0x7,%al
  401700:	08 00                	or     %al,(%rax)
  401702:	00 00                	add    %al,(%rax)
  401704:	00 00                	add    %al,(%rax)
  401706:	00 00                	add    %al,(%rax)
  401708:	1c 00                	sbb    $0x0,%al
  40170a:	00 00                	add    %al,(%rax)
  40170c:	8c 00                	mov    %es,(%rax)
  40170e:	00 00                	add    %al,(%rax)
  401710:	00 fb                	add    %bh,%bl
  401712:	ff                   	(bad)
  401713:	ff 29                	ljmp   *(%rcx)
  401715:	00 00                	add    %al,(%rax)
  401717:	00 00                	add    %al,(%rax)
  401719:	41 0e                	rex.B (bad)
  40171b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401721:	64 0c 07             	fs or  $0x7,%al
  401724:	08 00                	or     %al,(%rax)
  401726:	00 00                	add    %al,(%rax)
  401728:	1c 00                	sbb    $0x0,%al
  40172a:	00 00                	add    %al,(%rax)
  40172c:	ac                   	lods   %ds:(%rsi),%al
  40172d:	00 00                	add    %al,(%rax)
  40172f:	00 0a                	add    %cl,(%rdx)
  401731:	fb                   	sti
  401732:	ff                   	(bad)
  401733:	ff 29                	ljmp   *(%rcx)
  401735:	00 00                	add    %al,(%rax)
  401737:	00 00                	add    %al,(%rax)
  401739:	41 0e                	rex.B (bad)
  40173b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401741:	64 0c 07             	fs or  $0x7,%al
  401744:	08 00                	or     %al,(%rax)
  401746:	00 00                	add    %al,(%rax)
  401748:	1c 00                	sbb    $0x0,%al
  40174a:	00 00                	add    %al,(%rax)
  40174c:	00 00                	add    %al,(%rax)
  40174e:	00 00                	add    %al,(%rax)
  401750:	01 7a 50             	add    %edi,0x50(%rdx)
  401753:	4c 52                	rex.WR push %rdx
  401755:	00 01                	add    %al,(%rcx)
  401757:	78 10                	js     401769 <_ZTI5Human+0x179>
  401759:	07                   	(bad)
  40175a:	03 80 0d 40 00 03    	add    0x300400d(%rax),%eax
  401760:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
  401763:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  401769:	00 00                	add    %al,(%rax)
  40176b:	00 24 00             	add    %ah,(%rax,%rax,1)
  40176e:	00 00                	add    %al,(%rax)
  401770:	f4                   	hlt
  401771:	fa                   	cli
  401772:	ff                   	(bad)
  401773:	ff 6d 00             	ljmp   *0x0(%rbp)
  401776:	00 00                	add    %al,(%rax)
  401778:	04 a4                	add    $0xa4,%al
  40177a:	18 40 00             	sbb    %al,0x0(%rax)
  40177d:	41 0e                	rex.B (bad)
  40177f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401785:	57                   	push   %rdi
  401786:	83 03 77             	addl   $0x77,(%rbx)
  401789:	0a 0c 07             	or     (%rdi,%rax,1),%cl
  40178c:	08 41 0b             	or     %al,0xb(%rcx)
  40178f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401792:	00 00                	add    %al,(%rax)
  401794:	14 01                	adc    $0x1,%al
  401796:	00 00                	add    %al,(%rax)
  401798:	3a fb                	cmp    %bl,%bh
  40179a:	ff                   	(bad)
  40179b:	ff 36                	pushq  (%rsi)
  40179d:	00 00                	add    %al,(%rax)
  40179f:	00 00                	add    %al,(%rax)
  4017a1:	41 0e                	rex.B (bad)
  4017a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4017a9:	71 0c                	jno    4017b7 <_ZTI5Human+0x1c7>
  4017ab:	07                   	(bad)
  4017ac:	08 00                	or     %al,(%rax)
  4017ae:	00 00                	add    %al,(%rax)
  4017b0:	24 00                	and    $0x0,%al
  4017b2:	00 00                	add    %al,(%rax)
  4017b4:	6c                   	insb   (%dx),%es:(%rdi)
  4017b5:	00 00                	add    %al,(%rax)
  4017b7:	00 50 fb             	add    %dl,-0x5(%rax)
  4017ba:	ff                   	(bad)
  4017bb:	ff 6d 00             	ljmp   *0x0(%rbp)
  4017be:	00 00                	add    %al,(%rax)
  4017c0:	04 b4                	add    $0xb4,%al
  4017c2:	18 40 00             	sbb    %al,0x0(%rax)
  4017c5:	41 0e                	rex.B (bad)
  4017c7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4017cd:	57                   	push   %rdi
  4017ce:	83 03 77             	addl   $0x77,(%rbx)
  4017d1:	0a 0c 07             	or     (%rdi,%rax,1),%cl
  4017d4:	08 41 0b             	or     %al,0xb(%rcx)
  4017d7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4017da:	00 00                	add    %al,(%rax)
  4017dc:	5c                   	pop    %rsp
  4017dd:	01 00                	add    %eax,(%rax)
  4017df:	00 96 fb ff ff 36    	add    %dl,0x36fffffb(%rsi)
  4017e5:	00 00                	add    %al,(%rax)
  4017e7:	00 00                	add    %al,(%rax)
  4017e9:	41 0e                	rex.B (bad)
  4017eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4017f1:	71 0c                	jno    4017ff <_ZTI5Human+0x20f>
  4017f3:	07                   	(bad)
  4017f4:	08 00                	or     %al,(%rax)
  4017f6:	00 00                	add    %al,(%rax)
  4017f8:	24 00                	and    $0x0,%al
  4017fa:	00 00                	add    %al,(%rax)
  4017fc:	b4 00                	mov    $0x0,%ah
  4017fe:	00 00                	add    %al,(%rax)
  401800:	c4                   	(bad)
  401801:	f6 ff                	idiv   %bh
  401803:	ff 60 02             	jmpq   *0x2(%rax)
  401806:	00 00                	add    %al,(%rax)
  401808:	04 c4                	add    $0xc4,%al
  40180a:	18 40 00             	sbb    %al,0x0(%rax)
  40180d:	41 0e                	rex.B (bad)
  40180f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401815:	55                   	push   %rbp
  401816:	83 04 8c 03          	addl   $0x3,(%rsp,%rcx,4)
  40181a:	00 00                	add    %al,(%rax)
  40181c:	00 00                	add    %al,(%rax)
  40181e:	00 00                	add    %al,(%rax)
  401820:	1c 00                	sbb    $0x0,%al
  401822:	00 00                	add    %al,(%rax)
  401824:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  401825:	01 00                	add    %eax,(%rax)
  401827:	00 fc                	add    %bh,%ah
  401829:	f8                   	clc
  40182a:	ff                   	(bad)
  40182b:	ff 40 00             	incl   0x0(%rax)
  40182e:	00 00                	add    %al,(%rax)
  401830:	00 41 0e             	add    %al,0xe(%rcx)
  401833:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401839:	7b 0c                	jnp    401847 <_ZTI5Human+0x257>
  40183b:	07                   	(bad)
  40183c:	08 00                	or     %al,(%rax)
  40183e:	00 00                	add    %al,(%rax)
  401840:	1c 00                	sbb    $0x0,%al
  401842:	00 00                	add    %al,(%rax)
  401844:	c4 01 00 00          	(bad)
  401848:	1c f9                	sbb    $0xf9,%al
  40184a:	ff                   	(bad)
  40184b:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 401851 <_ZTI5Human+0x261>
  401851:	41 0e                	rex.B (bad)
  401853:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401859:	50                   	push   %rax
  40185a:	0c 07                	or     $0x7,%al
  40185c:	08 00                	or     %al,(%rax)
  40185e:	00 00                	add    %al,(%rax)
  401860:	24 00                	and    $0x0,%al
  401862:	00 00                	add    %al,(%rax)
  401864:	e4 01                	in     $0x1,%al
  401866:	00 00                	add    %al,(%rax)
  401868:	48 fb                	rex.W sti
  40186a:	ff                   	(bad)
  40186b:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  401871:	51                   	push   %rcx
  401872:	8c 05 86 06 5f 0e    	mov    %es,0xe5f0686(%rip)        # e9f1efe <_end+0xe3efb0e>
  401878:	40 83 07 8f          	rex addl $0xffffff8f,(%rdi)
  40187c:	02 8e 03 8d 04 02    	add    0x2048d03(%rsi),%cl
  401882:	58                   	pop    %rax
  401883:	0e                   	(bad)
  401884:	08 00                	or     %al,(%rax)
  401886:	00 00                	add    %al,(%rax)
  401888:	14 00                	adc    $0x0,%al
  40188a:	00 00                	add    %al,(%rax)
  40188c:	0c 02                	or     $0x2,%al
  40188e:	00 00                	add    %al,(%rax)
  401890:	b0 fb                	mov    $0xfb,%al
  401892:	ff                   	(bad)
  401893:	ff 02                	incl   (%rdx)
	...

00000000004018a0 <__FRAME_END__>:
  4018a0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

00000000004018a4 <.gcc_except_table>:
  4018a4:	ff                   	(bad)
  4018a5:	ff 01                	incl   (%rcx)
  4018a7:	0c 1b                	or     $0x1b,%al
  4018a9:	05 00 00 3d 05       	add    $0x53d0000,%eax
  4018ae:	53                   	push   %rbx
  4018af:	00 68 05             	add    %ch,0x5(%rax)
  4018b2:	00 00                	add    %al,(%rax)
  4018b4:	ff                   	(bad)
  4018b5:	ff 01                	incl   (%rcx)
  4018b7:	0c 1b                	or     $0x1b,%al
  4018b9:	05 00 00 3d 05       	add    $0x53d0000,%eax
  4018be:	53                   	push   %rbx
  4018bf:	00 68 05             	add    %ch,0x5(%rax)
  4018c2:	00 00                	add    %al,(%rax)
  4018c4:	ff                   	(bad)
  4018c5:	ff 01                	incl   (%rcx)
  4018c7:	3c 2e                	cmp    $0x2e,%al
  4018c9:	05 8b 04 00 3c       	add    $0x3c00048b,%eax
  4018ce:	05 fa 03 00 4f       	add    $0x4f0003fa,%eax
  4018d3:	05 ea 03 00 5f       	add    $0x5f0003ea,%eax
  4018d8:	05 8b 04 00 8c       	add    $0x8c00048b,%eax
  4018dd:	01 05 c6 04 00 9a    	add    %eax,-0x65fffb3a(%rip)        # ffffffff9a401da9 <_end+0xffffffff99dff9b9>
  4018e3:	01 05 b5 04 00 ad    	add    %eax,-0x52fffb4b(%rip)        # ffffffffad401d9e <_end+0xffffffffacdff9ae>
  4018e9:	01 05 a5 04 00 bd    	add    %eax,-0x42fffb5b(%rip)        # ffffffffbd401d94 <_end+0xffffffffbcdff9a4>
  4018ef:	01 05 c6 04 00 d8    	add    %eax,-0x27fffb3a(%rip)        # ffffffffd8401dbb <_end+0xffffffffd7dff9cb>
  4018f5:	01 84 02 00 00 a0 04 	add    %eax,0x4a00000(%rdx,%rax,1)
  4018fc:	05 00 00 db 04       	add    $0x4db0000,%eax
  401901:	05                   	.byte 0x5
	...

Disassembly of section .init_array:

0000000000601de0 <__init_array_start>:
  601de0:	64 11 40 00          	adc    %eax,%fs:0x0(%rax)
  601de4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .ctors:

0000000000601de8 <__CTOR_LIST__>:
  601de8:	ff                   	(bad)
  601de9:	ff                   	(bad)
  601dea:	ff                   	(bad)
  601deb:	ff                   	(bad)
  601dec:	ff                   	(bad)
  601ded:	ff                   	(bad)
  601dee:	ff                   	(bad)
  601def:	ff                 	incl   (%rax)

0000000000601df0 <__CTOR_END__>:
	...

Disassembly of section .dtors:

0000000000601df8 <__DTOR_LIST__>:
  601df8:	ff                   	(bad)
  601df9:	ff                   	(bad)
  601dfa:	ff                   	(bad)
  601dfb:	ff                   	(bad)
  601dfc:	ff                   	(bad)
  601dfd:	ff                   	(bad)
  601dfe:	ff                   	(bad)
  601dff:	ff                 	incl   (%rax)

0000000000601e00 <__DTOR_END__>:
	...

Disassembly of section .jcr:

0000000000601e08 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000601e10 <_DYNAMIC>:
  601e10:	01 00                	add    %eax,(%rax)
  601e12:	00 00                	add    %al,(%rax)
  601e14:	00 00                	add    %al,(%rax)
  601e16:	00 00                	add    %al,(%rax)
  601e18:	01 00                	add    %eax,(%rax)
  601e1a:	00 00                	add    %al,(%rax)
  601e1c:	00 00                	add    %al,(%rax)
  601e1e:	00 00                	add    %al,(%rax)
  601e20:	01 00                	add    %eax,(%rax)
  601e22:	00 00                	add    %al,(%rax)
  601e24:	00 00                	add    %al,(%rax)
  601e26:	00 00                	add    %al,(%rax)
  601e28:	2f                   	(bad)
  601e29:	02 00                	add    (%rax),%al
  601e2b:	00 00                	add    %al,(%rax)
  601e2d:	00 00                	add    %al,(%rax)
  601e2f:	00 01                	add    %al,(%rcx)
  601e31:	00 00                	add    %al,(%rax)
  601e33:	00 00                	add    %al,(%rax)
  601e35:	00 00                	add    %al,(%rax)
  601e37:	00 4c 02 00          	add    %cl,0x0(%rdx,%rax,1)
  601e3b:	00 00                	add    %al,(%rax)
  601e3d:	00 00                	add    %al,(%rax)
  601e3f:	00 0c 00             	add    %cl,(%rax,%rax,1)
  601e42:	00 00                	add    %al,(%rax)
  601e44:	00 00                	add    %al,(%rax)
  601e46:	00 00                	add    %al,(%rax)
  601e48:	28 0c 40             	sub    %cl,(%rax,%rax,2)
  601e4b:	00 00                	add    %al,(%rax)
  601e4d:	00 00                	add    %al,(%rax)
  601e4f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 601e55 <_DYNAMIC+0x45>
  601e55:	00 00                	add    %al,(%rax)
  601e57:	00 88 14 40 00 00    	add    %cl,0x4014(%rax)
  601e5d:	00 00                	add    %al,(%rax)
  601e5f:	00 19                	add    %bl,(%rcx)
  601e61:	00 00                	add    %al,(%rax)
  601e63:	00 00                	add    %al,(%rax)
  601e65:	00 00                	add    %al,(%rax)
  601e67:	00 e0                	add    %ah,%al
  601e69:	1d 60 00 00 00       	sbb    $0x60,%eax
  601e6e:	00 00                	add    %al,(%rax)
  601e70:	1b 00                	sbb    (%rax),%eax
  601e72:	00 00                	add    %al,(%rax)
  601e74:	00 00                	add    %al,(%rax)
  601e76:	00 00                	add    %al,(%rax)
  601e78:	08 00                	or     %al,(%rax)
  601e7a:	00 00                	add    %al,(%rax)
  601e7c:	00 00                	add    %al,(%rax)
  601e7e:	00 00                	add    %al,(%rax)
  601e80:	f5                   	cmc
  601e81:	fe                   	(bad)
  601e82:	ff 6f 00             	ljmp   *0x0(%rdi)
  601e85:	00 00                	add    %al,(%rax)
  601e87:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  601e8d:	00 00                	add    %al,(%rax)
  601e8f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 601e95 <_DYNAMIC+0x85>
  601e95:	00 00                	add    %al,(%rax)
  601e97:	00 f0                	add    %dh,%al
  601e99:	05 40 00 00 00       	add    $0x40,%eax
  601e9e:	00 00                	add    %al,(%rax)
  601ea0:	06                   	(bad)
  601ea1:	00 00                	add    %al,(%rax)
  601ea3:	00 00                	add    %al,(%rax)
  601ea5:	00 00                	add    %al,(%rax)
  601ea7:	00 d8                	add    %bl,%al
  601ea9:	02 40 00             	add    0x0(%rax),%al
  601eac:	00 00                	add    %al,(%rax)
  601eae:	00 00                	add    %al,(%rax)
  601eb0:	0a 00                	or     (%rax),%al
  601eb2:	00 00                	add    %al,(%rax)
  601eb4:	00 00                	add    %al,(%rax)
  601eb6:	00 00                	add    %al,(%rax)
  601eb8:	b6 02                	mov    $0x2,%dh
  601eba:	00 00                	add    %al,(%rax)
  601ebc:	00 00                	add    %al,(%rax)
  601ebe:	00 00                	add    %al,(%rax)
  601ec0:	0b 00                	or     (%rax),%eax
  601ec2:	00 00                	add    %al,(%rax)
  601ec4:	00 00                	add    %al,(%rax)
  601ec6:	00 00                	add    %al,(%rax)
  601ec8:	18 00                	sbb    %al,(%rax)
  601eca:	00 00                	add    %al,(%rax)
  601ecc:	00 00                	add    %al,(%rax)
  601ece:	00 00                	add    %al,(%rax)
  601ed0:	15 00 00 00 00       	adc    $0x0,%eax
	...
  601edd:	00 00                	add    %al,(%rax)
  601edf:	00 03                	add    %al,(%rbx)
  601ee1:	00 00                	add    %al,(%rax)
  601ee3:	00 00                	add    %al,(%rax)
  601ee5:	00 00                	add    %al,(%rax)
  601ee7:	00 e8                	add    %ch,%al
  601ee9:	1f                   	(bad)
  601eea:	60                   	(bad)
  601eeb:	00 00                	add    %al,(%rax)
  601eed:	00 00                	add    %al,(%rax)
  601eef:	00 02                	add    %al,(%rdx)
  601ef1:	00 00                	add    %al,(%rax)
  601ef3:	00 00                	add    %al,(%rax)
  601ef5:	00 00                	add    %al,(%rax)
  601ef7:	00 58 02             	add    %bl,0x2(%rax)
  601efa:	00 00                	add    %al,(%rax)
  601efc:	00 00                	add    %al,(%rax)
  601efe:	00 00                	add    %al,(%rax)
  601f00:	14 00                	adc    $0x0,%al
  601f02:	00 00                	add    %al,(%rax)
  601f04:	00 00                	add    %al,(%rax)
  601f06:	00 00                	add    %al,(%rax)
  601f08:	07                   	(bad)
  601f09:	00 00                	add    %al,(%rax)
  601f0b:	00 00                	add    %al,(%rax)
  601f0d:	00 00                	add    %al,(%rax)
  601f0f:	00 17                	add    %dl,(%rdi)
  601f11:	00 00                	add    %al,(%rax)
  601f13:	00 00                	add    %al,(%rax)
  601f15:	00 00                	add    %al,(%rax)
  601f17:	00 d0                	add    %dl,%al
  601f19:	09 40 00             	or     %eax,0x0(%rax)
  601f1c:	00 00                	add    %al,(%rax)
  601f1e:	00 00                	add    %al,(%rax)
  601f20:	07                   	(bad)
  601f21:	00 00                	add    %al,(%rax)
  601f23:	00 00                	add    %al,(%rax)
  601f25:	00 00                	add    %al,(%rax)
  601f27:	00 58 09             	add    %bl,0x9(%rax)
  601f2a:	40 00 00             	add    %al,(%rax)
  601f2d:	00 00                	add    %al,(%rax)
  601f2f:	00 08                	add    %cl,(%rax)
  601f31:	00 00                	add    %al,(%rax)
  601f33:	00 00                	add    %al,(%rax)
  601f35:	00 00                	add    %al,(%rax)
  601f37:	00 78 00             	add    %bh,0x0(%rax)
  601f3a:	00 00                	add    %al,(%rax)
  601f3c:	00 00                	add    %al,(%rax)
  601f3e:	00 00                	add    %al,(%rax)
  601f40:	09 00                	or     %eax,(%rax)
  601f42:	00 00                	add    %al,(%rax)
  601f44:	00 00                	add    %al,(%rax)
  601f46:	00 00                	add    %al,(%rax)
  601f48:	18 00                	sbb    %al,(%rax)
  601f4a:	00 00                	add    %al,(%rax)
  601f4c:	00 00                	add    %al,(%rax)
  601f4e:	00 00                	add    %al,(%rax)
  601f50:	fe                   	(bad)
  601f51:	ff                   	(bad)
  601f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f55:	00 00                	add    %al,(%rax)
  601f57:	00 e8                	add    %ch,%al
  601f59:	08 40 00             	or     %al,0x0(%rax)
  601f5c:	00 00                	add    %al,(%rax)
  601f5e:	00 00                	add    %al,(%rax)
  601f60:	ff                   	(bad)
  601f61:	ff                   	(bad)
  601f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f65:	00 00                	add    %al,(%rax)
  601f67:	00 03                	add    %al,(%rbx)
  601f69:	00 00                	add    %al,(%rax)
  601f6b:	00 00                	add    %al,(%rax)
  601f6d:	00 00                	add    %al,(%rax)
  601f6f:	00 f0                	add    %dh,%al
  601f71:	ff                   	(bad)
  601f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f75:	00 00                	add    %al,(%rax)
  601f77:	00 a6 08 40 00 00    	add    %ah,0x4008(%rsi)
	...

Disassembly of section .got:

0000000000601fe0 <.got>:
	...

Disassembly of section .got.plt:

0000000000601fe8 <_GLOBAL_OFFSET_TABLE_>:
  601fe8:	10 1e                	adc    %bl,(%rsi)
  601fea:	60                   	(bad)
	...
  601fff:	00 56 0c             	add    %dl,0xc(%rsi)
  602002:	40 00 00             	add    %al,(%rax)
  602005:	00 00                	add    %al,(%rax)
  602007:	00 66 0c             	add    %ah,0xc(%rsi)
  60200a:	40 00 00             	add    %al,(%rax)
  60200d:	00 00                	add    %al,(%rax)
  60200f:	00 76 0c             	add    %dh,0xc(%rsi)
  602012:	40 00 00             	add    %al,(%rax)
  602015:	00 00                	add    %al,(%rax)
  602017:	00 86 0c 40 00 00    	add    %al,0x400c(%rsi)
  60201d:	00 00                	add    %al,(%rax)
  60201f:	00 96 0c 40 00 00    	add    %dl,0x400c(%rsi)
  602025:	00 00                	add    %al,(%rax)
  602027:	00 a6 0c 40 00 00    	add    %ah,0x400c(%rsi)
  60202d:	00 00                	add    %al,(%rax)
  60202f:	00 b6 0c 40 00 00    	add    %dh,0x400c(%rsi)
  602035:	00 00                	add    %al,(%rax)
  602037:	00 c6                	add    %al,%dh
  602039:	0c 40                	or     $0x40,%al
  60203b:	00 00                	add    %al,(%rax)
  60203d:	00 00                	add    %al,(%rax)
  60203f:	00 d6                	add    %dl,%dh
  602041:	0c 40                	or     $0x40,%al
  602043:	00 00                	add    %al,(%rax)
  602045:	00 00                	add    %al,(%rax)
  602047:	00 e6                	add    %ah,%dh
  602049:	0c 40                	or     $0x40,%al
  60204b:	00 00                	add    %al,(%rax)
  60204d:	00 00                	add    %al,(%rax)
  60204f:	00 f6                	add    %dh,%dh
  602051:	0c 40                	or     $0x40,%al
  602053:	00 00                	add    %al,(%rax)
  602055:	00 00                	add    %al,(%rax)
  602057:	00 06                	add    %al,(%rsi)
  602059:	0d 40 00 00 00       	or     $0x40,%eax
  60205e:	00 00                	add    %al,(%rax)
  602060:	16                   	(bad)
  602061:	0d 40 00 00 00       	or     $0x40,%eax
  602066:	00 00                	add    %al,(%rax)
  602068:	26 0d 40 00 00 00    	es or  $0x40,%eax
  60206e:	00 00                	add    %al,(%rax)
  602070:	36 0d 40 00 00 00    	ss or  $0x40,%eax
  602076:	00 00                	add    %al,(%rax)
  602078:	46 0d 40 00 00 00    	rex.RX or $0x40,%eax
  60207e:	00 00                	add    %al,(%rax)
  602080:	56                   	push   %rsi
  602081:	0d 40 00 00 00       	or     $0x40,%eax
  602086:	00 00                	add    %al,(%rax)
  602088:	66 0d 40 00          	or     $0x40,%ax
  60208c:	00 00                	add    %al,(%rax)
  60208e:	00 00                	add    %al,(%rax)
  602090:	76 0d                	jbe    60209f <_GLOBAL_OFFSET_TABLE_+0xb7>
  602092:	40 00 00             	add    %al,(%rax)
  602095:	00 00                	add    %al,(%rax)
  602097:	00 86 0d 40 00 00    	add    %al,0x400d(%rsi)
  60209d:	00 00                	add    %al,(%rax)
  60209f:	00 96 0d 40 00 00    	add    %dl,0x400d(%rsi)
  6020a5:	00 00                	add    %al,(%rax)
  6020a7:	00 a6 0d 40 00 00    	add    %ah,0x400d(%rsi)
  6020ad:	00 00                	add    %al,(%rax)
  6020af:	00 b6 0d 40 00 00    	add    %dh,0x400d(%rsi)
  6020b5:	00 00                	add    %al,(%rax)
  6020b7:	00 c6                	add    %al,%dh
  6020b9:	0d 40 00 00 00       	or     $0x40,%eax
  6020be:	00 00                	add    %al,(%rax)
  6020c0:	d6                   	(bad)
  6020c1:	0d 40 00 00 00       	or     $0x40,%eax
	...

Disassembly of section .data:

00000000006020c8 <__data_start>:
	...

00000000006020d0 <__dso_handle>:
	...

Disassembly of section .bss:

00000000006020e0 <_ZSt3cin@@GLIBCXX_3.4>:
	...

0000000000602200 <_ZTVN10__cxxabiv117__class_type_infoE@@CXXABI_1.3>:
	...

0000000000602260 <_ZSt4cout@@GLIBCXX_3.4>:
	...

0000000000602380 <_ZTVN10__cxxabiv120__si_class_type_infoE@@CXXABI_1.3>:
	...

00000000006023d8 <completed.6531>:
	...

00000000006023e0 <dtor_idx.6533>:
	...

00000000006023e8 <_ZStL8__ioinit>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400bb0>
   a:	74 75                	je     81 <_init-0x400ba7>
   c:	2f                   	(bad)
   d:	4c 69 6e 61 72 6f 20 	imul   $0x34206f72,0x61(%rsi),%r13
  14:	34
  15:	2e 36 2e 33 2d 31 75 	cs ss xor %cs:0x75627531(%rip),%ebp        # 7562754f <_end+0x7502515f>
  1c:	62 75
  1e:	6e                   	outsb  %ds:(%rsi),(%dx)
  1f:	74 75                	je     96 <_init-0x400b92>
  21:	35 29 20 34 2e       	xor    $0x2e342029,%eax
  26:	36 2e 33 00          	ss xor %cs:(%rax),%eax
