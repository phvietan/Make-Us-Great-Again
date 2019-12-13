
kamikaze:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x3cb>
  400248:	78 38                	js     400282 <_init-0x3be>
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
  400267:	00 03                	add    %al,(%rbx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 02                	add    %al,(%rdx)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 00                	add    %al,(%rax)
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
  400283:	00 0e                	add    %cl,(%rsi)
  400285:	64 7f 48             	fs jg  4002d0 <_init-0x370>
  400288:	bd 36 f1 5e 86       	mov    $0x865ef136,%ebp
  40028d:	61                   	(bad)
  40028e:	66 91                	xchg   %ax,%cx
  400290:	0d 10 dd 17 3f       	or     $0x3f17dd10,%eax
  400295:	b0 fc                	mov    $0xfc,%al
  400297:	f6                   	.byte 0xf6

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	02 00                	add    (%rax),%al
  40029a:	00 00                	add    %al,(%rax)
  40029c:	0e                   	(bad)
  40029d:	00 00                	add    %al,(%rax)
  40029f:	00 01                	add    %al,(%rcx)
  4002a1:	00 00                	add    %al,(%rax)
  4002a3:	00 06                	add    %al,(%rsi)
	...
  4002ad:	01 10                	add    %edx,(%rax)
  4002af:	00 0e                	add    %cl,(%rsi)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 00                	add    %al,(%rax)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 29                	add    %ch,(%rcx)
  4002b9:	1d                   	.byte 0x1d
  4002ba:	8c                   	.byte 0x8c
  4002bb:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000004002c0 <.dynsym>:
	...
  4002d8:	2e 00 00             	add    %al,%cs:(%rax)
  4002db:	00 12                	add    %dl,(%rdx)
	...
  4002ed:	00 00                	add    %al,(%rax)
  4002ef:	00 29                	add    %ch,(%rcx)
  4002f1:	00 00                	add    %al,(%rax)
  4002f3:	00 12                	add    %dl,(%rdx)
	...
  400305:	00 00                	add    %al,(%rax)
  400307:	00 4a 00             	add    %cl,0x0(%rdx)
  40030a:	00 00                	add    %al,(%rax)
  40030c:	12 00                	adc    (%rax),%al
	...
  40031e:	00 00                	add    %al,(%rax)
  400320:	36 00 00             	add    %al,%ss:(%rax)
  400323:	00 12                	add    %dl,(%rdx)
	...
  400335:	00 00                	add    %al,(%rax)
  400337:	00 3d 00 00 00 12    	add    %bh,0x12000000(%rip)        # 1240033d <_end+0x11dff2ad>
	...
  40034d:	00 00                	add    %al,(%rax)
  40034f:	00 51 00             	add    %dl,0x0(%rcx)
  400352:	00 00                	add    %al,(%rax)
  400354:	12 00                	adc    (%rax),%al
	...
  400366:	00 00                	add    %al,(%rax)
  400368:	57                   	push   %rdi
  400369:	00 00                	add    %al,(%rax)
  40036b:	00 12                	add    %dl,(%rdx)
	...
  40037d:	00 00                	add    %al,(%rax)
  40037f:	00 22                	add    %ah,(%rdx)
  400381:	00 00                	add    %al,(%rax)
  400383:	00 12                	add    %dl,(%rdx)
	...
  400395:	00 00                	add    %al,(%rax)
  400397:	00 75 00             	add    %dh,0x0(%rbp)
  40039a:	00 00                	add    %al,(%rax)
  40039c:	20 00                	and    %al,(%rax)
	...
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	0b 00                	or     (%rax),%eax
  4003b2:	00 00                	add    %al,(%rax)
  4003b4:	12 00                	adc    (%rax),%al
	...
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	10 00                	adc    %al,(%rax)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	12 00                	adc    (%rax),%al
	...
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	1c 00                	sbb    $0x0,%al
  4003e2:	00 00                	add    %al,(%rax)
  4003e4:	12 00                	adc    (%rax),%al
	...
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	17                   	(bad)
  4003f9:	00 00                	add    %al,(%rax)
  4003fb:	00 12                	add    %dl,(%rdx)
	...
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 43 00             	add    %al,0x0(%rbx)
  400412:	00 00                	add    %al,(%rax)
  400414:	11 00                	adc    %eax,(%rax)
  400416:	18 00                	sbb    %al,(%rax)
  400418:	80 10 60             	adcb   $0x60,(%rax)
  40041b:	00 00                	add    %al,(%rax)
  40041d:	00 00                	add    %al,(%rax)
  40041f:	00 08                	add    %cl,(%rax)
  400421:	00 00                	add    %al,(%rax)
  400423:	00 00                	add    %al,(%rax)
  400425:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400428 <.dynstr>:
  400428:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40042c:	63 2e                	movslq (%rsi),%ebp
  40042e:	73 6f                	jae    40049f <_init-0x1a1>
  400430:	2e 36 00 67 65       	cs add %ah,%ss:0x65(%rdi)
  400435:	74 73                	je     4004aa <_init-0x196>
  400437:	00 66 66             	add    %ah,0x66(%rsi)
  40043a:	6c                   	insb   (%dx),%es:(%rdi)
  40043b:	75 73                	jne    4004b0 <_init-0x190>
  40043d:	68 00 65 78 69       	pushq  $0x69786500
  400442:	74 00                	je     400444 <_init-0x1fc>
  400444:	66 6f                	outsw  %ds:(%rsi),(%dx)
  400446:	70 65                	jo     4004ad <_init-0x193>
  400448:	6e                   	outsb  %ds:(%rsi),(%dx)
  400449:	00 73 69             	add    %dh,0x69(%rbx)
  40044c:	67 6e                	outsb  %ds:(%esi),(%dx)
  40044e:	61                   	(bad)
  40044f:	6c                   	insb   (%dx),%es:(%rdi)
  400450:	00 70 75             	add    %dh,0x75(%rax)
  400453:	74 73                	je     4004c8 <_init-0x178>
  400455:	00 70 75             	add    %dh,0x75(%rax)
  400458:	74 63                	je     4004bd <_init-0x183>
  40045a:	68 61 72 00 70       	pushq  $0x70007261
  40045f:	72 69                	jb     4004ca <_init-0x176>
  400461:	6e                   	outsb  %ds:(%rsi),(%dx)
  400462:	74 66                	je     4004ca <_init-0x176>
  400464:	00 66 67             	add    %ah,0x67(%rsi)
  400467:	65 74 63             	gs je  4004cd <_init-0x173>
  40046a:	00 73 74             	add    %dh,0x74(%rbx)
  40046d:	64 6f                	outsl  %fs:(%rsi),(%dx)
  40046f:	75 74                	jne    4004e5 <_init-0x15b>
  400471:	00 66 63             	add    %ah,0x63(%rsi)
  400474:	6c                   	insb   (%dx),%es:(%rdi)
  400475:	6f                   	outsl  %ds:(%rsi),(%dx)
  400476:	73 65                	jae    4004dd <_init-0x163>
  400478:	00 61 6c             	add    %ah,0x6c(%rcx)
  40047b:	61                   	(bad)
  40047c:	72 6d                	jb     4004eb <_init-0x155>
  40047e:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400481:	6c                   	insb   (%dx),%es:(%rdi)
  400482:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400489:	72 74                	jb     4004ff <_init-0x141>
  40048b:	5f                   	pop    %rdi
  40048c:	6d                   	insl   (%dx),%es:(%rdi)
  40048d:	61                   	(bad)
  40048e:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  400495:	43 5f                	rex.XB pop %r15
  400497:	32 2e                	xor    (%rsi),%ch
  400499:	32 2e                	xor    (%rsi),%ch
  40049b:	35 00 5f 5f 67       	xor    $0x675f5f00,%eax
  4004a0:	6d                   	insl   (%dx),%es:(%rdi)
  4004a1:	6f                   	outsl  %ds:(%rsi),(%dx)
  4004a2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4004a3:	5f                   	pop    %rdi
  4004a4:	73 74                	jae    40051a <_init-0x126>
  4004a6:	61                   	(bad)
  4004a7:	72 74                	jb     40051d <_init-0x123>
  4004a9:	5f                   	pop    %rdi
  4004aa:	5f                   	pop    %rdi
	...

Disassembly of section .gnu.version:

00000000004004ac <.gnu.version>:
  4004ac:	00 00                	add    %al,(%rax)
  4004ae:	02 00                	add    (%rax),%al
  4004b0:	02 00                	add    (%rax),%al
  4004b2:	02 00                	add    (%rax),%al
  4004b4:	02 00                	add    (%rax),%al
  4004b6:	02 00                	add    (%rax),%al
  4004b8:	02 00                	add    (%rax),%al
  4004ba:	02 00                	add    (%rax),%al
  4004bc:	02 00                	add    (%rax),%al
  4004be:	00 00                	add    %al,(%rax)
  4004c0:	02 00                	add    (%rax),%al
  4004c2:	02 00                	add    (%rax),%al
  4004c4:	02 00                	add    (%rax),%al
  4004c6:	02 00                	add    (%rax),%al
  4004c8:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000004004d0 <.gnu.version_r>:
  4004d0:	01 00                	add    %eax,(%rax)
  4004d2:	01 00                	add    %eax,(%rax)
  4004d4:	01 00                	add    %eax,(%rax)
  4004d6:	00 00                	add    %al,(%rax)
  4004d8:	10 00                	adc    %al,(%rax)
  4004da:	00 00                	add    %al,(%rax)
  4004dc:	00 00                	add    %al,(%rax)
  4004de:	00 00                	add    %al,(%rax)
  4004e0:	75 1a                	jne    4004fc <_init-0x144>
  4004e2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4004e8:	69 00 00 00 00 00    	imul   $0x0,(%rax),%eax
	...

Disassembly of section .rela.dyn:

00000000004004f0 <.rela.dyn>:
  4004f0:	f0 0f 60 00          	lock punpcklbw (%rax),%mm0
  4004f4:	00 00                	add    %al,(%rax)
  4004f6:	00 00                	add    %al,(%rax)
  4004f8:	06                   	(bad)
  4004f9:	00 00                	add    %al,(%rax)
  4004fb:	00 07                	add    %al,(%rdi)
	...
  400505:	00 00                	add    %al,(%rax)
  400507:	00 f8                	add    %bh,%al
  400509:	0f 60 00             	punpcklbw (%rax),%mm0
  40050c:	00 00                	add    %al,(%rax)
  40050e:	00 00                	add    %al,(%rax)
  400510:	06                   	(bad)
  400511:	00 00                	add    %al,(%rax)
  400513:	00 09                	add    %cl,(%rcx)
	...
  40051d:	00 00                	add    %al,(%rax)
  40051f:	00 80 10 60 00 00    	add    %al,0x6010(%rax)
  400525:	00 00                	add    %al,(%rax)
  400527:	00 05 00 00 00 0e    	add    %al,0xe000000(%rip)        # e40052d <_end+0xddff49d>
	...

Disassembly of section .rela.plt:

0000000000400538 <.rela.plt>:
  400538:	18 10                	sbb    %dl,(%rax)
  40053a:	60                   	(bad)
  40053b:	00 00                	add    %al,(%rax)
  40053d:	00 00                	add    %al,(%rax)
  40053f:	00 07                	add    %al,(%rdi)
  400541:	00 00                	add    %al,(%rax)
  400543:	00 01                	add    %al,(%rcx)
	...
  40054d:	00 00                	add    %al,(%rax)
  40054f:	00 20                	add    %ah,(%rax)
  400551:	10 60 00             	adc    %ah,0x0(%rax)
  400554:	00 00                	add    %al,(%rax)
  400556:	00 00                	add    %al,(%rax)
  400558:	07                   	(bad)
  400559:	00 00                	add    %al,(%rax)
  40055b:	00 02                	add    %al,(%rdx)
	...
  400565:	00 00                	add    %al,(%rax)
  400567:	00 28                	add    %ch,(%rax)
  400569:	10 60 00             	adc    %ah,0x0(%rax)
  40056c:	00 00                	add    %al,(%rax)
  40056e:	00 00                	add    %al,(%rax)
  400570:	07                   	(bad)
  400571:	00 00                	add    %al,(%rax)
  400573:	00 03                	add    %al,(%rbx)
	...
  40057d:	00 00                	add    %al,(%rax)
  40057f:	00 30                	add    %dh,(%rax)
  400581:	10 60 00             	adc    %ah,0x0(%rax)
  400584:	00 00                	add    %al,(%rax)
  400586:	00 00                	add    %al,(%rax)
  400588:	07                   	(bad)
  400589:	00 00                	add    %al,(%rax)
  40058b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400596:	00 00                	add    %al,(%rax)
  400598:	38 10                	cmp    %dl,(%rax)
  40059a:	60                   	(bad)
  40059b:	00 00                	add    %al,(%rax)
  40059d:	00 00                	add    %al,(%rax)
  40059f:	00 07                	add    %al,(%rdi)
  4005a1:	00 00                	add    %al,(%rax)
  4005a3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4005a9 <_init-0x97>
  4005a9:	00 00                	add    %al,(%rax)
  4005ab:	00 00                	add    %al,(%rax)
  4005ad:	00 00                	add    %al,(%rax)
  4005af:	00 40 10             	add    %al,0x10(%rax)
  4005b2:	60                   	(bad)
  4005b3:	00 00                	add    %al,(%rax)
  4005b5:	00 00                	add    %al,(%rax)
  4005b7:	00 07                	add    %al,(%rdi)
  4005b9:	00 00                	add    %al,(%rax)
  4005bb:	00 06                	add    %al,(%rsi)
	...
  4005c5:	00 00                	add    %al,(%rax)
  4005c7:	00 48 10             	add    %cl,0x10(%rax)
  4005ca:	60                   	(bad)
  4005cb:	00 00                	add    %al,(%rax)
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 07                	add    %al,(%rdi)
  4005d1:	00 00                	add    %al,(%rax)
  4005d3:	00 08                	add    %cl,(%rax)
	...
  4005dd:	00 00                	add    %al,(%rax)
  4005df:	00 50 10             	add    %dl,0x10(%rax)
  4005e2:	60                   	(bad)
  4005e3:	00 00                	add    %al,(%rax)
  4005e5:	00 00                	add    %al,(%rax)
  4005e7:	00 07                	add    %al,(%rdi)
  4005e9:	00 00                	add    %al,(%rax)
  4005eb:	00 0a                	add    %cl,(%rdx)
	...
  4005f5:	00 00                	add    %al,(%rax)
  4005f7:	00 58 10             	add    %bl,0x10(%rax)
  4005fa:	60                   	(bad)
  4005fb:	00 00                	add    %al,(%rax)
  4005fd:	00 00                	add    %al,(%rax)
  4005ff:	00 07                	add    %al,(%rdi)
  400601:	00 00                	add    %al,(%rax)
  400603:	00 0b                	add    %cl,(%rbx)
	...
  40060d:	00 00                	add    %al,(%rax)
  40060f:	00 60 10             	add    %ah,0x10(%rax)
  400612:	60                   	(bad)
  400613:	00 00                	add    %al,(%rax)
  400615:	00 00                	add    %al,(%rax)
  400617:	00 07                	add    %al,(%rdi)
  400619:	00 00                	add    %al,(%rax)
  40061b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400626:	00 00                	add    %al,(%rax)
  400628:	68 10 60 00 00       	pushq  $0x6010
  40062d:	00 00                	add    %al,(%rax)
  40062f:	00 07                	add    %al,(%rdi)
  400631:	00 00                	add    %al,(%rax)
  400633:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400639 <_init-0x7>
  400639:	00 00                	add    %al,(%rax)
  40063b:	00 00                	add    %al,(%rax)
  40063d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

0000000000400640 <_init>:
  400640:	48 83 ec 08          	sub    $0x8,%rsp
  400644:	48 8b 05 ad 09 20 00 	mov    0x2009ad(%rip),%rax        # 600ff8 <__gmon_start__>
  40064b:	48 85 c0             	test   %rax,%rax
  40064e:	74 02                	je     400652 <_init+0x12>
  400650:	ff d0                	callq  *%rax
  400652:	48 83 c4 08          	add    $0x8,%rsp
  400656:	c3                   	retq

Disassembly of section .plt:

0000000000400660 <.plt>:
  400660:	ff 35 a2 09 20 00    	pushq  0x2009a2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400666:	ff 25 a4 09 20 00    	jmpq   *0x2009a4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40066c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400670 <putchar@plt>:
  400670:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 601018 <putchar@GLIBC_2.2.5>
  400676:	68 00 00 00 00       	pushq  $0x0
  40067b:	e9 e0 ff ff ff       	jmpq   400660 <.plt>

0000000000400680 <puts@plt>:
  400680:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400686:	68 01 00 00 00       	pushq  $0x1
  40068b:	e9 d0 ff ff ff       	jmpq   400660 <.plt>

0000000000400690 <fclose@plt>:
  400690:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 601028 <fclose@GLIBC_2.2.5>
  400696:	68 02 00 00 00       	pushq  $0x2
  40069b:	e9 c0 ff ff ff       	jmpq   400660 <.plt>

00000000004006a0 <printf@plt>:
  4006a0:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 601030 <printf@GLIBC_2.2.5>
  4006a6:	68 03 00 00 00       	pushq  $0x3
  4006ab:	e9 b0 ff ff ff       	jmpq   400660 <.plt>

00000000004006b0 <fgetc@plt>:
  4006b0:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601038 <fgetc@GLIBC_2.2.5>
  4006b6:	68 04 00 00 00       	pushq  $0x4
  4006bb:	e9 a0 ff ff ff       	jmpq   400660 <.plt>

00000000004006c0 <alarm@plt>:
  4006c0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601040 <alarm@GLIBC_2.2.5>
  4006c6:	68 05 00 00 00       	pushq  $0x5
  4006cb:	e9 90 ff ff ff       	jmpq   400660 <.plt>

00000000004006d0 <signal@plt>:
  4006d0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601048 <signal@GLIBC_2.2.5>
  4006d6:	68 06 00 00 00       	pushq  $0x6
  4006db:	e9 80 ff ff ff       	jmpq   400660 <.plt>

00000000004006e0 <gets@plt>:
  4006e0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601050 <gets@GLIBC_2.2.5>
  4006e6:	68 07 00 00 00       	pushq  $0x7
  4006eb:	e9 70 ff ff ff       	jmpq   400660 <.plt>

00000000004006f0 <fflush@plt>:
  4006f0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601058 <fflush@GLIBC_2.2.5>
  4006f6:	68 08 00 00 00       	pushq  $0x8
  4006fb:	e9 60 ff ff ff       	jmpq   400660 <.plt>

0000000000400700 <fopen@plt>:
  400700:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601060 <fopen@GLIBC_2.2.5>
  400706:	68 09 00 00 00       	pushq  $0x9
  40070b:	e9 50 ff ff ff       	jmpq   400660 <.plt>

0000000000400710 <exit@plt>:
  400710:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601068 <exit@GLIBC_2.2.5>
  400716:	68 0a 00 00 00       	pushq  $0xa
  40071b:	e9 40 ff ff ff       	jmpq   400660 <.plt>

Disassembly of section .text:

0000000000400720 <_start>:
  400720:	31 ed                	xor    %ebp,%ebp
  400722:	49 89 d1             	mov    %rdx,%r9
  400725:	5e                   	pop    %rsi
  400726:	48 89 e2             	mov    %rsp,%rdx
  400729:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40072d:	50                   	push   %rax
  40072e:	54                   	push   %rsp
  40072f:	49 c7 c0 c0 09 40 00 	mov    $0x4009c0,%r8
  400736:	48 c7 c1 50 09 40 00 	mov    $0x400950,%rcx
  40073d:	48 c7 c7 9f 08 40 00 	mov    $0x40089f,%rdi
  400744:	ff 15 a6 08 20 00    	callq  *0x2008a6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40074a:	f4                   	hlt
  40074b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400750 <_dl_relocate_static_pie>:
  400750:	f3 c3                	repz retq
  400752:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400759:	00 00 00
  40075c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400760 <deregister_tm_clones>:
  400760:	55                   	push   %rbp
  400761:	b8 80 10 60 00       	mov    $0x601080,%eax
  400766:	48 3d 80 10 60 00    	cmp    $0x601080,%rax
  40076c:	48 89 e5             	mov    %rsp,%rbp
  40076f:	74 17                	je     400788 <deregister_tm_clones+0x28>
  400771:	b8 00 00 00 00       	mov    $0x0,%eax
  400776:	48 85 c0             	test   %rax,%rax
  400779:	74 0d                	je     400788 <deregister_tm_clones+0x28>
  40077b:	5d                   	pop    %rbp
  40077c:	bf 80 10 60 00       	mov    $0x601080,%edi
  400781:	ff e0                	jmpq   *%rax
  400783:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400788:	5d                   	pop    %rbp
  400789:	c3                   	retq
  40078a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400790 <register_tm_clones>:
  400790:	be 80 10 60 00       	mov    $0x601080,%esi
  400795:	55                   	push   %rbp
  400796:	48 81 ee 80 10 60 00 	sub    $0x601080,%rsi
  40079d:	48 89 e5             	mov    %rsp,%rbp
  4007a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4007a4:	48 89 f0             	mov    %rsi,%rax
  4007a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007ab:	48 01 c6             	add    %rax,%rsi
  4007ae:	48 d1 fe             	sar    %rsi
  4007b1:	74 15                	je     4007c8 <register_tm_clones+0x38>
  4007b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b8:	48 85 c0             	test   %rax,%rax
  4007bb:	74 0b                	je     4007c8 <register_tm_clones+0x38>
  4007bd:	5d                   	pop    %rbp
  4007be:	bf 80 10 60 00       	mov    $0x601080,%edi
  4007c3:	ff e0                	jmpq   *%rax
  4007c5:	0f 1f 00             	nopl   (%rax)
  4007c8:	5d                   	pop    %rbp
  4007c9:	c3                   	retq
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007d0 <__do_global_dtors_aux>:
  4007d0:	80 3d b1 08 20 00 00 	cmpb   $0x0,0x2008b1(%rip)        # 601088 <completed.7697>
  4007d7:	75 17                	jne    4007f0 <__do_global_dtors_aux+0x20>
  4007d9:	55                   	push   %rbp
  4007da:	48 89 e5             	mov    %rsp,%rbp
  4007dd:	e8 7e ff ff ff       	callq  400760 <deregister_tm_clones>
  4007e2:	c6 05 9f 08 20 00 01 	movb   $0x1,0x20089f(%rip)        # 601088 <completed.7697>
  4007e9:	5d                   	pop    %rbp
  4007ea:	c3                   	retq
  4007eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007f0:	f3 c3                	repz retq
  4007f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4007f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007fd:	00 00 00

0000000000400800 <frame_dummy>:
  400800:	55                   	push   %rbp
  400801:	48 89 e5             	mov    %rsp,%rbp
  400804:	5d                   	pop    %rbp
  400805:	eb 89                	jmp    400790 <register_tm_clones>

0000000000400807 <super_secret_function>:
  400807:	55                   	push   %rbp
  400808:	48 89 e5             	mov    %rsp,%rbp
  40080b:	48 83 ec 10          	sub    $0x10,%rsp
  40080f:	48 8d 35 c2 01 00 00 	lea    0x1c2(%rip),%rsi        # 4009d8 <_IO_stdin_used+0x8>
  400816:	48 8d 3d bd 01 00 00 	lea    0x1bd(%rip),%rdi        # 4009da <_IO_stdin_used+0xa>
  40081d:	e8 de fe ff ff       	callq  400700 <fopen@plt>
  400822:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400826:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40082b:	75 16                	jne    400843 <super_secret_function+0x3c>
  40082d:	48 8d 3d b9 01 00 00 	lea    0x1b9(%rip),%rdi        # 4009ed <_IO_stdin_used+0x1d>
  400834:	e8 47 fe ff ff       	callq  400680 <puts@plt>
  400839:	bf 01 00 00 00       	mov    $0x1,%edi
  40083e:	e8 cd fe ff ff       	callq  400710 <exit@plt>
  400843:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400847:	48 89 c7             	mov    %rax,%rdi
  40084a:	e8 61 fe ff ff       	callq  4006b0 <fgetc@plt>
  40084f:	88 45 ff             	mov    %al,-0x1(%rbp)
  400852:	eb 1a                	jmp    40086e <super_secret_function+0x67>
  400854:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  400858:	89 c7                	mov    %eax,%edi
  40085a:	e8 11 fe ff ff       	callq  400670 <putchar@plt>
  40085f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400863:	48 89 c7             	mov    %rax,%rdi
  400866:	e8 45 fe ff ff       	callq  4006b0 <fgetc@plt>
  40086b:	88 45 ff             	mov    %al,-0x1(%rbp)
  40086e:	80 7d ff ff          	cmpb   $0xff,-0x1(%rbp)
  400872:	75 e0                	jne    400854 <super_secret_function+0x4d>
  400874:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400878:	48 89 c7             	mov    %rax,%rdi
  40087b:	e8 10 fe ff ff       	callq  400690 <fclose@plt>
  400880:	bf 00 00 00 00       	mov    $0x0,%edi
  400885:	e8 86 fe ff ff       	callq  400710 <exit@plt>

000000000040088a <sig>:
  40088a:	55                   	push   %rbp
  40088b:	48 89 e5             	mov    %rsp,%rbp
  40088e:	48 83 ec 10          	sub    $0x10,%rsp
  400892:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400895:	bf 00 00 00 00       	mov    $0x0,%edi
  40089a:	e8 71 fe ff ff       	callq  400710 <exit@plt>

000000000040089f <main>:
  40089f:	55                   	push   %rbp
  4008a0:	48 89 e5             	mov    %rsp,%rbp
  4008a3:	48 83 ec 10          	sub    $0x10,%rsp
  4008a7:	48 8d 35 dc ff ff ff 	lea    -0x24(%rip),%rsi        # 40088a <sig>
  4008ae:	bf 0e 00 00 00       	mov    $0xe,%edi
  4008b3:	e8 18 fe ff ff       	callq  4006d0 <signal@plt>
  4008b8:	bf 28 00 00 00       	mov    $0x28,%edi
  4008bd:	e8 fe fd ff ff       	callq  4006c0 <alarm@plt>
  4008c2:	48 8d 3d 3f 01 00 00 	lea    0x13f(%rip),%rdi        # 400a08 <_IO_stdin_used+0x38>
  4008c9:	e8 b2 fd ff ff       	callq  400680 <puts@plt>
  4008ce:	48 8d 3d 6b 01 00 00 	lea    0x16b(%rip),%rdi        # 400a40 <_IO_stdin_used+0x70>
  4008d5:	e8 a6 fd ff ff       	callq  400680 <puts@plt>
  4008da:	48 8d 3d 94 01 00 00 	lea    0x194(%rip),%rdi        # 400a75 <_IO_stdin_used+0xa5>
  4008e1:	e8 9a fd ff ff       	callq  400680 <puts@plt>
  4008e6:	48 8d 3d 9b 01 00 00 	lea    0x19b(%rip),%rdi        # 400a88 <_IO_stdin_used+0xb8>
  4008ed:	e8 8e fd ff ff       	callq  400680 <puts@plt>
  4008f2:	48 8d 3d e7 01 00 00 	lea    0x1e7(%rip),%rdi        # 400ae0 <_IO_stdin_used+0x110>
  4008f9:	e8 82 fd ff ff       	callq  400680 <puts@plt>
  4008fe:	48 8d 3d e3 01 00 00 	lea    0x1e3(%rip),%rdi        # 400ae8 <_IO_stdin_used+0x118>
  400905:	b8 00 00 00 00       	mov    $0x0,%eax
  40090a:	e8 91 fd ff ff       	callq  4006a0 <printf@plt>
  40090f:	48 8b 05 6a 07 20 00 	mov    0x20076a(%rip),%rax        # 601080 <stdout@@GLIBC_2.2.5>
  400916:	48 89 c7             	mov    %rax,%rdi
  400919:	e8 d2 fd ff ff       	callq  4006f0 <fflush@plt>
  40091e:	48 8d 45 fe          	lea    -0x2(%rbp),%rax
  400922:	48 89 c7             	mov    %rax,%rdi
  400925:	b8 00 00 00 00       	mov    $0x0,%eax
  40092a:	e8 b1 fd ff ff       	callq  4006e0 <gets@plt>
  40092f:	48 8d 3d b9 01 00 00 	lea    0x1b9(%rip),%rdi        # 400aef <_IO_stdin_used+0x11f>
  400936:	e8 45 fd ff ff       	callq  400680 <puts@plt>
  40093b:	b8 00 00 00 00       	mov    $0x0,%eax
  400940:	c9                   	leaveq
  400941:	c3                   	retq
  400942:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400949:	00 00 00
  40094c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400950 <__libc_csu_init>:
  400950:	41 57                	push   %r15
  400952:	41 56                	push   %r14
  400954:	49 89 d7             	mov    %rdx,%r15
  400957:	41 55                	push   %r13
  400959:	41 54                	push   %r12
  40095b:	4c 8d 25 ae 04 20 00 	lea    0x2004ae(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400962:	55                   	push   %rbp
  400963:	48 8d 2d ae 04 20 00 	lea    0x2004ae(%rip),%rbp        # 600e18 <__init_array_end>
  40096a:	53                   	push   %rbx
  40096b:	41 89 fd             	mov    %edi,%r13d
  40096e:	49 89 f6             	mov    %rsi,%r14
  400971:	4c 29 e5             	sub    %r12,%rbp
  400974:	48 83 ec 08          	sub    $0x8,%rsp
  400978:	48 c1 fd 03          	sar    $0x3,%rbp
  40097c:	e8 bf fc ff ff       	callq  400640 <_init>
  400981:	48 85 ed             	test   %rbp,%rbp
  400984:	74 20                	je     4009a6 <__libc_csu_init+0x56>
  400986:	31 db                	xor    %ebx,%ebx
  400988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40098f:	00
  400990:	4c 89 fa             	mov    %r15,%rdx
  400993:	4c 89 f6             	mov    %r14,%rsi
  400996:	44 89 ef             	mov    %r13d,%edi
  400999:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40099d:	48 83 c3 01          	add    $0x1,%rbx
  4009a1:	48 39 dd             	cmp    %rbx,%rbp
  4009a4:	75 ea                	jne    400990 <__libc_csu_init+0x40>
  4009a6:	48 83 c4 08          	add    $0x8,%rsp
  4009aa:	5b                   	pop    %rbx
  4009ab:	5d                   	pop    %rbp
  4009ac:	41 5c                	pop    %r12
  4009ae:	41 5d                	pop    %r13
  4009b0:	41 5e                	pop    %r14
  4009b2:	41 5f                	pop    %r15
  4009b4:	c3                   	retq
  4009b5:	90                   	nop
  4009b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009bd:	00 00 00

00000000004009c0 <__libc_csu_fini>:
  4009c0:	f3 c3                	repz retq

Disassembly of section .fini:

00000000004009c4 <_fini>:
  4009c4:	48 83 ec 08          	sub    $0x8,%rsp
  4009c8:	48 83 c4 08          	add    $0x8,%rsp
  4009cc:	c3                   	retq

Disassembly of section .rodata:

00000000004009d0 <_IO_stdin_used>:
  4009d0:	01 00                	add    %eax,(%rax)
  4009d2:	02 00                	add    (%rax),%al
  4009d4:	00 00                	add    %al,(%rax)
  4009d6:	00 00                	add    %al,(%rax)
  4009d8:	72 00                	jb     4009da <_IO_stdin_used+0xa>
  4009da:	2f                   	(bad)
  4009db:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  4009e0:	63 74 66 2f          	movslq 0x2f(%rsi,%riz,2),%esi
  4009e4:	66 6c                	data16 insb (%dx),%es:(%rdi)
  4009e6:	61                   	(bad)
  4009e7:	67 2e 74 78          	addr32 je,pn 400a63 <_IO_stdin_used+0x93>
  4009eb:	74 00                	je     4009ed <_IO_stdin_used+0x1d>
  4009ed:	43 61                	rex.XB (bad)
  4009ef:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009f0:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009f1:	6f                   	outsl  %ds:(%rsi),(%dx)
  4009f2:	74 20                	je     400a14 <_IO_stdin_used+0x44>
  4009f4:	6f                   	outsl  %ds:(%rsi),(%dx)
  4009f5:	70 65                	jo     400a5c <_IO_stdin_used+0x8c>
  4009f7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4009f8:	20 66 6c             	and    %ah,0x6c(%rsi)
  4009fb:	61                   	(bad)
  4009fc:	67 2e 74 78          	addr32 je,pn 400a78 <_IO_stdin_used+0xa8>
  400a00:	74 00                	je     400a02 <_IO_stdin_used+0x32>
  400a02:	00 00                	add    %al,(%rax)
  400a04:	00 00                	add    %al,(%rax)
  400a06:	00 00                	add    %al,(%rax)
  400a08:	48                   	rex.W
  400a09:	65 6c                	gs insb (%dx),%es:(%rdi)
  400a0b:	6c                   	insb   (%dx),%es:(%rdi)
  400a0c:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a0d:	20 61 6e             	and    %ah,0x6e(%rcx)
  400a10:	64 20 77 65          	and    %dh,%fs:0x65(%rdi)
  400a14:	6c                   	insb   (%dx),%es:(%rdi)
  400a15:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
  400a18:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
  400a1d:	1b 5b 33             	sbb    0x33(%rbx),%ebx
  400a20:	6d                   	insl   (%dx),%es:(%rdi)
  400a21:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a22:	75 72                	jne    400a96 <_IO_stdin_used+0xc6>
  400a24:	1b 5b 32             	sbb    0x32(%rbx),%ebx
  400a27:	33 6d 20             	xor    0x20(%rbp),%ebp
  400a2a:	76 6f                	jbe    400a9b <_IO_stdin_used+0xcb>
  400a2c:	74 69                	je     400a97 <_IO_stdin_used+0xc7>
  400a2e:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a2f:	67 20 61 70          	and    %ah,0x70(%ecx)
  400a33:	70 6c                	jo     400aa1 <_IO_stdin_used+0xd1>
  400a35:	69 63 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rbx),%esp
  400a3c:	21 00                	and    %eax,(%rax)
  400a3e:	00 00                	add    %al,(%rax)
  400a40:	54                   	push   %rsp
  400a41:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a42:	64 61                	fs (bad)
  400a44:	79 27                	jns    400a6d <_IO_stdin_used+0x9d>
  400a46:	73 20                	jae    400a68 <_IO_stdin_used+0x98>
  400a48:	76 6f                	jbe    400ab9 <_IO_stdin_used+0xe9>
  400a4a:	74 65                	je     400ab1 <_IO_stdin_used+0xe1>
  400a4c:	20 77 69             	and    %dh,0x69(%rdi)
  400a4f:	6c                   	insb   (%dx),%es:(%rdi)
  400a50:	6c                   	insb   (%dx),%es:(%rdi)
  400a51:	20 62 65             	and    %ah,0x65(%rdx)
  400a54:	20 72 65             	and    %dh,0x65(%rdx)
  400a57:	67 61                	addr32 (bad)
  400a59:	72 64                	jb     400abf <_IO_stdin_used+0xef>
  400a5b:	69 6e 67 20 74 68 65 	imul   $0x65687420,0x67(%rsi),%ebp
  400a62:	20 61 64             	and    %ah,0x64(%rcx)
  400a65:	6d                   	insl   (%dx),%es:(%rdi)
  400a66:	69 6e 69 73 74 72 61 	imul   $0x61727473,0x69(%rsi),%ebp
  400a6d:	74 69                	je     400ad8 <_IO_stdin_used+0x108>
  400a6f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400a70:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a71:	20 6f 66             	and    %ch,0x66(%rdi)
  400a74:	00 77 61             	add    %dh,0x61(%rdi)
  400a77:	74 65                	je     400ade <_IO_stdin_used+0x10e>
  400a79:	76 72                	jbe    400aed <_IO_stdin_used+0x11d>
  400a7b:	20 43 54             	and    %al,0x54(%rbx)
  400a7e:	46                   	rex.RX
  400a7f:	2e 00 00             	add    %al,%cs:(%rax)
  400a82:	00 00                	add    %al,(%rax)
  400a84:	00 00                	add    %al,(%rax)
  400a86:	00 00                	add    %al,(%rax)
  400a88:	74 68                	je     400af2 <_IO_stdin_used+0x122>
  400a8a:	65 20 76 6f          	and    %dh,%gs:0x6f(%rsi)
  400a8e:	74 69                	je     400af9 <_IO_stdin_used+0x129>
  400a90:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a91:	67 20 72 61          	and    %dh,0x61(%edx)
  400a95:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a96:	67 65 20 69 73       	and    %ch,%gs:0x73(%ecx)
  400a9b:	20 30                	and    %dh,(%rax)
  400a9d:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  400aa1:	31 30                	xor    %esi,(%rax)
  400aa3:	2e 20 30             	and    %dh,%cs:(%rax)
  400aa6:	20 62 65             	and    %ah,0x65(%rdx)
  400aa9:	69 6e 67 20 74 68 65 	imul   $0x65687420,0x67(%rsi),%ebp
  400ab0:	20 77 6f             	and    %dh,0x6f(%rdi)
  400ab3:	72 73                	jb     400b28 <__GNU_EH_FRAME_HDR+0x24>
  400ab5:	74 20                	je     400ad7 <_IO_stdin_used+0x107>
  400ab7:	70 6f                	jo     400b28 <__GNU_EH_FRAME_HDR+0x24>
  400ab9:	73 73                	jae    400b2e <__GNU_EH_FRAME_HDR+0x2a>
  400abb:	69 62 6c 65 20 61 6e 	imul   $0x6e612065,0x6c(%rdx),%esp
  400ac2:	64 20 31             	and    %dh,%fs:(%rcx)
  400ac5:	30 20                	xor    %ah,(%rax)
  400ac7:	62                   	(bad)
  400ac8:	65 69 6e 67 20 74 68 	imul   $0x65687420,%gs:0x67(%rsi),%ebp
  400acf:	65
  400ad0:	20 62 65             	and    %ah,0x65(%rdx)
  400ad3:	73 74                	jae    400b49 <__GNU_EH_FRAME_HDR+0x45>
  400ad5:	20 70 6f             	and    %dh,0x6f(%rax)
  400ad8:	73 73                	jae    400b4d <__GNU_EH_FRAME_HDR+0x49>
  400ada:	69 62 6c 65 2e 00 54 	imul   $0x54002e65,0x6c(%rdx),%esp
  400ae1:	68 61 6e 6b 73       	pushq  $0x736b6e61
  400ae6:	21 00                	and    %eax,(%rax)
  400ae8:	56                   	push   %rsi
  400ae9:	6f                   	outsl  %ds:(%rsi),(%dx)
  400aea:	74 65                	je     400b51 <__GNU_EH_FRAME_HDR+0x4d>
  400aec:	3a 20                	cmp    (%rax),%ah
  400aee:	00 54 68 61          	add    %dl,0x61(%rax,%rbp,2)
  400af2:	6e                   	outsb  %ds:(%rsi),(%dx)
  400af3:	6b 73 20 66          	imul   $0x66,0x20(%rbx),%esi
  400af7:	6f                   	outsl  %ds:(%rsi),(%dx)
  400af8:	72 20                	jb     400b1a <__GNU_EH_FRAME_HDR+0x16>
  400afa:	76 6f                	jbe    400b6b <__GNU_EH_FRAME_HDR+0x67>
  400afc:	74 69                	je     400b67 <__GNU_EH_FRAME_HDR+0x63>
  400afe:	6e                   	outsb  %ds:(%rsi),(%dx)
  400aff:	67 21 00             	and    %eax,(%eax)

Disassembly of section .eh_frame_hdr:

0000000000400b04 <__GNU_EH_FRAME_HDR>:
  400b04:	01 1b                	add    %ebx,(%rbx)
  400b06:	03 3b                	add    (%rbx),%edi
  400b08:	48 00 00             	rex.W add %al,(%rax)
  400b0b:	00 08                	add    %cl,(%rax)
  400b0d:	00 00                	add    %al,(%rax)
  400b0f:	00 5c fb ff          	add    %bl,-0x1(%rbx,%rdi,8)
  400b13:	ff a4 00 00 00 1c fc 	jmpq   *-0x3e40000(%rax,%rax,1)
  400b1a:	ff                   	(bad)
  400b1b:	ff 64 00 00          	jmpq   *0x0(%rax,%rax,1)
  400b1f:	00 4c fc ff          	add    %cl,-0x1(%rsp,%rdi,8)
  400b23:	ff 90 00 00 00 03    	callq  *0x3000000(%rax)
  400b29:	fd                   	std
  400b2a:	ff                   	(bad)
  400b2b:	ff cc                	dec    %esp
  400b2d:	00 00                	add    %al,(%rax)
  400b2f:	00 86 fd ff ff e8    	add    %al,-0x17000003(%rsi)
  400b35:	00 00                	add    %al,(%rax)
  400b37:	00 9b fd ff ff 04    	add    %bl,0x4fffffd(%rbx)
  400b3d:	01 00                	add    %eax,(%rax)
  400b3f:	00 4c fe ff          	add    %cl,-0x1(%rsi,%rdi,8)
  400b43:	ff 24 01             	jmpq   *(%rcx,%rax,1)
  400b46:	00 00                	add    %al,(%rax)
  400b48:	bc fe ff ff 6c       	mov    $0x6cfffffe,%esp
  400b4d:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400b50 <__FRAME_END__-0x134>:
  400b50:	14 00                	adc    $0x0,%al
  400b52:	00 00                	add    %al,(%rax)
  400b54:	00 00                	add    %al,(%rax)
  400b56:	00 00                	add    %al,(%rax)
  400b58:	01 7a 52             	add    %edi,0x52(%rdx)
  400b5b:	00 01                	add    %al,(%rcx)
  400b5d:	78 10                	js     400b6f <__GNU_EH_FRAME_HDR+0x6b>
  400b5f:	01 1b                	add    %ebx,(%rbx)
  400b61:	0c 07                	or     $0x7,%al
  400b63:	08 90 01 07 10 10    	or     %dl,0x10100701(%rax)
  400b69:	00 00                	add    %al,(%rax)
  400b6b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b6e:	00 00                	add    %al,(%rax)
  400b70:	b0 fb                	mov    $0xfb,%al
  400b72:	ff                   	(bad)
  400b73:	ff 2b                	ljmp   *(%rbx)
  400b75:	00 00                	add    %al,(%rax)
  400b77:	00 00                	add    %al,(%rax)
  400b79:	00 00                	add    %al,(%rax)
  400b7b:	00 14 00             	add    %dl,(%rax,%rax,1)
  400b7e:	00 00                	add    %al,(%rax)
  400b80:	00 00                	add    %al,(%rax)
  400b82:	00 00                	add    %al,(%rax)
  400b84:	01 7a 52             	add    %edi,0x52(%rdx)
  400b87:	00 01                	add    %al,(%rcx)
  400b89:	78 10                	js     400b9b <__GNU_EH_FRAME_HDR+0x97>
  400b8b:	01 1b                	add    %ebx,(%rbx)
  400b8d:	0c 07                	or     $0x7,%al
  400b8f:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  400b95:	00 00                	add    %al,(%rax)
  400b97:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b9a:	00 00                	add    %al,(%rax)
  400b9c:	b4 fb                	mov    $0xfb,%ah
  400b9e:	ff                   	(bad)
  400b9f:	ff 02                	incl   (%rdx)
  400ba1:	00 00                	add    %al,(%rax)
  400ba3:	00 00                	add    %al,(%rax)
  400ba5:	00 00                	add    %al,(%rax)
  400ba7:	00 24 00             	add    %ah,(%rax,%rax,1)
  400baa:	00 00                	add    %al,(%rax)
  400bac:	30 00                	xor    %al,(%rax)
  400bae:	00 00                	add    %al,(%rax)
  400bb0:	b0 fa                	mov    $0xfa,%al
  400bb2:	ff                   	(bad)
  400bb3:	ff c0                	inc    %eax
  400bb5:	00 00                	add    %al,(%rax)
  400bb7:	00 00                	add    %al,(%rax)
  400bb9:	0e                   	(bad)
  400bba:	10 46 0e             	adc    %al,0xe(%rsi)
  400bbd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400bc0:	0b 77 08             	or     0x8(%rdi),%esi
  400bc3:	80 00 3f             	addb   $0x3f,(%rax)
  400bc6:	1a 3b                	sbb    (%rbx),%bh
  400bc8:	2a 33                	sub    (%rbx),%dh
  400bca:	24 22                	and    $0x22,%al
  400bcc:	00 00                	add    %al,(%rax)
  400bce:	00 00                	add    %al,(%rax)
  400bd0:	18 00                	sbb    %al,(%rax)
  400bd2:	00 00                	add    %al,(%rax)
  400bd4:	58                   	pop    %rax
  400bd5:	00 00                	add    %al,(%rax)
  400bd7:	00 2f                	add    %ch,(%rdi)
  400bd9:	fc                   	cld
  400bda:	ff                   	(bad)
  400bdb:	ff 83 00 00 00 00    	incl   0x0(%rbx)
  400be1:	41 0e                	rex.B (bad)
  400be3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400be9:	00 00                	add    %al,(%rax)
  400beb:	00 18                	add    %bl,(%rax)
  400bed:	00 00                	add    %al,(%rax)
  400bef:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
  400bf3:	00 96 fc ff ff 15    	add    %dl,0x15fffffc(%rsi)
  400bf9:	00 00                	add    %al,(%rax)
  400bfb:	00 00                	add    %al,(%rax)
  400bfd:	41 0e                	rex.B (bad)
  400bff:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c05:	00 00                	add    %al,(%rax)
  400c07:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400c0a:	00 00                	add    %al,(%rax)
  400c0c:	90                   	nop
  400c0d:	00 00                	add    %al,(%rax)
  400c0f:	00 8f fc ff ff a3    	add    %cl,-0x5c000004(%rdi)
  400c15:	00 00                	add    %al,(%rax)
  400c17:	00 00                	add    %al,(%rax)
  400c19:	41 0e                	rex.B (bad)
  400c1b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c21:	02 9e 0c 07 08 00    	add    0x8070c(%rsi),%bl
  400c27:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  400c2b:	00 b0 00 00 00 20    	add    %dh,0x20000000(%rax)
  400c31:	fd                   	std
  400c32:	ff                   	(bad)
  400c33:	ff 65 00             	jmpq   *0x0(%rbp)
  400c36:	00 00                	add    %al,(%rax)
  400c38:	00 42 0e             	add    %al,0xe(%rdx)
  400c3b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400c41:	8e 03                	mov    (%rbx),%es
  400c43:	45 0e                	rex.RB (bad)
  400c45:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400c4b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701a99 <_end+0xffffffff86100a09>
  400c51:	06                   	(bad)
  400c52:	48 0e                	rex.W (bad)
  400c54:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400c5a:	72 0e                	jb     400c6a <__GNU_EH_FRAME_HDR+0x166>
  400c5c:	38 41 0e             	cmp    %al,0xe(%rcx)
  400c5f:	30 41 0e             	xor    %al,0xe(%rcx)
  400c62:	28 42 0e             	sub    %al,0xe(%rdx)
  400c65:	20 42 0e             	and    %al,0xe(%rdx)
  400c68:	18 42 0e             	sbb    %al,0xe(%rdx)
  400c6b:	10 42 0e             	adc    %al,0xe(%rdx)
  400c6e:	08 00                	or     %al,(%rax)
  400c70:	10 00                	adc    %al,(%rax)
  400c72:	00 00                	add    %al,(%rax)
  400c74:	f8                   	clc
  400c75:	00 00                	add    %al,(%rax)
  400c77:	00 48 fd             	add    %cl,-0x3(%rax)
  400c7a:	ff                   	(bad)
  400c7b:	ff 02                	incl   (%rdx)
  400c7d:	00 00                	add    %al,(%rax)
  400c7f:	00 00                	add    %al,(%rax)
  400c81:	00 00                	add    %al,(%rax)
	...

0000000000400c84 <__FRAME_END__>:
  400c84:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	00 08                	add    %cl,(%rax)
  600e12:	40 00 00             	add    %al,(%rax)
  600e15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	d0 07                	rolb   (%rdi)
  600e1a:	40 00 00             	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000600e20 <_DYNAMIC>:
  600e20:	01 00                	add    %eax,(%rax)
  600e22:	00 00                	add    %al,(%rax)
  600e24:	00 00                	add    %al,(%rax)
  600e26:	00 00                	add    %al,(%rax)
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	0c 00                	or     $0x0,%al
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	40 06                	rex (bad)
  600e3a:	40 00 00             	add    %al,(%rax)
  600e3d:	00 00                	add    %al,(%rax)
  600e3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e45 <_DYNAMIC+0x25>
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 c4                	add    %al,%ah
  600e49:	09 40 00             	or     %eax,0x0(%rax)
  600e4c:	00 00                	add    %al,(%rax)
  600e4e:	00 00                	add    %al,(%rax)
  600e50:	19 00                	sbb    %eax,(%rax)
  600e52:	00 00                	add    %al,(%rax)
  600e54:	00 00                	add    %al,(%rax)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	10 0e                	adc    %cl,(%rsi)
  600e5a:	60                   	(bad)
  600e5b:	00 00                	add    %al,(%rax)
  600e5d:	00 00                	add    %al,(%rax)
  600e5f:	00 1b                	add    %bl,(%rbx)
  600e61:	00 00                	add    %al,(%rax)
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 08                	add    %cl,(%rax)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 1a                	add    %bl,(%rdx)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 18                	add    %bl,(%rax)
  600e79:	0e                   	(bad)
  600e7a:	60                   	(bad)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e82:	00 00                	add    %al,(%rax)
  600e84:	00 00                	add    %al,(%rax)
  600e86:	00 00                	add    %al,(%rax)
  600e88:	08 00                	or     %al,(%rax)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	f5                   	cmc
  600e91:	fe                   	(bad)
  600e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e95:	00 00                	add    %al,(%rax)
  600e97:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ea5 <_DYNAMIC+0x85>
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 28                	add    %ch,(%rax)
  600ea9:	04 40                	add    $0x40,%al
  600eab:	00 00                	add    %al,(%rax)
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 06                	add    %al,(%rsi)
  600eb1:	00 00                	add    %al,(%rax)
  600eb3:	00 00                	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 c0                	add    %al,%al
  600eb9:	02 40 00             	add    0x0(%rax),%al
  600ebc:	00 00                	add    %al,(%rax)
  600ebe:	00 00                	add    %al,(%rax)
  600ec0:	0a 00                	or     (%rax),%al
  600ec2:	00 00                	add    %al,(%rax)
  600ec4:	00 00                	add    %al,(%rax)
  600ec6:	00 00                	add    %al,(%rax)
  600ec8:	84 00                	test   %al,(%rax)
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	0b 00                	or     (%rax),%eax
  600ed2:	00 00                	add    %al,(%rax)
  600ed4:	00 00                	add    %al,(%rax)
  600ed6:	00 00                	add    %al,(%rax)
  600ed8:	18 00                	sbb    %al,(%rax)
  600eda:	00 00                	add    %al,(%rax)
  600edc:	00 00                	add    %al,(%rax)
  600ede:	00 00                	add    %al,(%rax)
  600ee0:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600eed:	00 00                	add    %al,(%rax)
  600eef:	00 03                	add    %al,(%rbx)
	...
  600ef9:	10 60 00             	adc    %ah,0x0(%rax)
  600efc:	00 00                	add    %al,(%rax)
  600efe:	00 00                	add    %al,(%rax)
  600f00:	02 00                	add    (%rax),%al
  600f02:	00 00                	add    %al,(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	08 01                	or     %al,(%rcx)
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	14 00                	adc    $0x0,%al
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	07                   	(bad)
  600f19:	00 00                	add    %al,(%rax)
  600f1b:	00 00                	add    %al,(%rax)
  600f1d:	00 00                	add    %al,(%rax)
  600f1f:	00 17                	add    %dl,(%rdi)
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 38                	add    %bh,(%rax)
  600f29:	05 40 00 00 00       	add    $0x40,%eax
  600f2e:	00 00                	add    %al,(%rax)
  600f30:	07                   	(bad)
  600f31:	00 00                	add    %al,(%rax)
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 f0                	add    %dh,%al
  600f39:	04 40                	add    $0x40,%al
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 08                	add    %cl,(%rax)
  600f41:	00 00                	add    %al,(%rax)
  600f43:	00 00                	add    %al,(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 48 00             	add    %cl,0x0(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	09 00                	or     %eax,(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	18 00                	sbb    %al,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	fe                   	(bad)
  600f61:	ff                   	(bad)
  600f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 d0                	add    %dl,%al
  600f69:	04 40                	add    $0x40,%al
  600f6b:	00 00                	add    %al,(%rax)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 ff                	add    %bh,%bh
  600f71:	ff                   	(bad)
  600f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 01                	add    %al,(%rcx)
  600f79:	00 00                	add    %al,(%rax)
  600f7b:	00 00                	add    %al,(%rax)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 f0                	add    %dh,%al
  600f81:	ff                   	(bad)
  600f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 ac 04 40 00 00 00 	add    %ch,0x40(%rsp,%rax,1)
	...

Disassembly of section .got:

0000000000600ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	20 0e                	and    %cl,(%rsi)
  601002:	60                   	(bad)
	...
  601017:	00 76 06             	add    %dh,0x6(%rsi)
  60101a:	40 00 00             	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 86 06 40 00 00    	add    %al,0x4006(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 96 06 40 00 00    	add    %dl,0x4006(%rsi)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 a6 06 40 00 00    	add    %ah,0x4006(%rsi)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 b6 06 40 00 00    	add    %dh,0x4006(%rsi)
  60103d:	00 00                	add    %al,(%rax)
  60103f:	00 c6                	add    %al,%dh
  601041:	06                   	(bad)
  601042:	40 00 00             	add    %al,(%rax)
  601045:	00 00                	add    %al,(%rax)
  601047:	00 d6                	add    %dl,%dh
  601049:	06                   	(bad)
  60104a:	40 00 00             	add    %al,(%rax)
  60104d:	00 00                	add    %al,(%rax)
  60104f:	00 e6                	add    %ah,%dh
  601051:	06                   	(bad)
  601052:	40 00 00             	add    %al,(%rax)
  601055:	00 00                	add    %al,(%rax)
  601057:	00 f6                	add    %dh,%dh
  601059:	06                   	(bad)
  60105a:	40 00 00             	add    %al,(%rax)
  60105d:	00 00                	add    %al,(%rax)
  60105f:	00 06                	add    %al,(%rsi)
  601061:	07                   	(bad)
  601062:	40 00 00             	add    %al,(%rax)
  601065:	00 00                	add    %al,(%rax)
  601067:	00 16                	add    %dl,(%rsi)
  601069:	07                   	(bad)
  60106a:	40 00 00             	add    %al,(%rax)
  60106d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601070 <__data_start>:
	...

0000000000601078 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601080 <stdout@@GLIBC_2.2.5>:
	...

0000000000601088 <completed.7697>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x4005c8>
   a:	74 75                	je     81 <_init-0x4005bf>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <_end+0x750264b8>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x4005b1>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	31 29                	xor    %ebp,(%rcx)
  24:	20 37                	and    %dh,(%rdi)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
