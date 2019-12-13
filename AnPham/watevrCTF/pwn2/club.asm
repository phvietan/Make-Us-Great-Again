
Club_Mate:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <putchar@plt-0x4fb>
 248:	78 38                	js     282 <putchar@plt-0x4ee>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 96 fb f8 0a 11    	add    %dl,0x110af8fb(%rsi)
 289:	40 d8 e1             	rex fsub %st(1),%st
 28c:	0c a5                	or     $0xa5,%al
 28e:	bd b9 7b 34 8f       	mov    $0x8f347bb9,%ebp
 293:	7c 07                	jl     29c <putchar@plt-0x4d4>
 295:	12 eb                	adc    %bl,%ch
 297:	99                   	cltd   

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	02 00                	add    (%rax),%al
 29a:	00 00                	add    %al,(%rax)
 29c:	10 00                	adc    %al,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
 2a2:	00 00                	add    %al,(%rax)
 2a4:	06                   	(bad)  
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 20                	add    %ah,(%rax)
 2ab:	00 80 00 00 00 00    	add    %al,0x0(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 10                	add    %dl,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 67 55             	add    %ah,0x55(%rdi)
 2ba:	61                   	(bad)  
 2bb:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000002c0 <.dynsym>:
	...
 2d8:	32 00                	xor    (%rax),%al
 2da:	00 00                	add    %al,(%rax)
 2dc:	12 00                	adc    (%rax),%al
	...
 2ee:	00 00                	add    %al,(%rax)
 2f0:	90                   	nop
 2f1:	00 00                	add    %al,(%rax)
 2f3:	00 20                	add    %ah,(%rax)
	...
 305:	00 00                	add    %al,(%rax)
 307:	00 2d 00 00 00 12    	add    %ch,0x12000000(%rip)        # 1200030d <stdin@@GLIBC_2.2.5+0x11dfe2fd>
	...
 31d:	00 00                	add    %al,(%rax)
 31f:	00 40 00             	add    %al,0x0(%rax)
 322:	00 00                	add    %al,(%rax)
 324:	12 00                	adc    (%rax),%al
	...
 336:	00 00                	add    %al,(%rax)
 338:	47 00 00             	rex.RXB add %r8b,(%r8)
 33b:	00 12                	add    %dl,(%rdx)
	...
 34d:	00 00                	add    %al,(%rax)
 34f:	00 68 00             	add    %ch,0x0(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	12 00                	adc    (%rax),%al
	...
 366:	00 00                	add    %al,(%rax)
 368:	61                   	(bad)  
 369:	00 00                	add    %al,(%rax)
 36b:	00 12                	add    %dl,(%rdx)
	...
 37d:	00 00                	add    %al,(%rax)
 37f:	00 26                	add    %ah,(%rsi)
 381:	00 00                	add    %al,(%rax)
 383:	00 12                	add    %dl,(%rdx)
	...
 395:	00 00                	add    %al,(%rax)
 397:	00 ac 00 00 00 20 00 	add    %ch,0x200000(%rax,%rax,1)
	...
 3ae:	00 00                	add    %al,(%rax)
 3b0:	0b 00                	or     (%rax),%eax
 3b2:	00 00                	add    %al,(%rax)
 3b4:	12 00                	adc    (%rax),%al
	...
 3c6:	00 00                	add    %al,(%rax)
 3c8:	4d 00 00             	rex.WRB add %r8b,(%r8)
 3cb:	00 12                	add    %dl,(%rdx)
	...
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 17                	add    %dl,(%rdi)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 12                	add    %dl,(%rdx)
	...
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 12                	add    %dl,(%rdx)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 12                	add    %dl,(%rdx)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 bb 00 00 00 20    	add    %bh,0x20000000(%rbx)
	...
 425:	00 00                	add    %al,(%rax)
 427:	00 52 00             	add    %dl,0x0(%rdx)
 42a:	00 00                	add    %al,(%rax)
 42c:	22 00                	and    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	3a 00                	cmp    (%rax),%al
 442:	00 00                	add    %al,(%rax)
 444:	11 00                	adc    %eax,(%rax)
 446:	18 00                	sbb    %al,(%rax)
 448:	10 20                	adc    %ah,(%rax)
 44a:	20 00                	and    %al,(%rax)
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	08 00                	or     %al,(%rax)
 452:	00 00                	add    %al,(%rax)
 454:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000458 <.dynstr>:
 458:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 45c:	63 2e                	movslq (%rsi),%ebp
 45e:	73 6f                	jae    4cf <putchar@plt-0x2a1>
 460:	2e 36 00 66 66       	cs add %ah,%ss:0x66(%rsi)
 465:	6c                   	insb   (%dx),%es:(%rdi)
 466:	75 73                	jne    4db <putchar@plt-0x295>
 468:	68 00 65 78 69       	pushq  $0x69786500
 46d:	74 00                	je     46f <putchar@plt-0x301>
 46f:	5f                   	pop    %rdi
 470:	5f                   	pop    %rdi
 471:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
 478:	73 63                	jae    4dd <putchar@plt-0x293>
 47a:	61                   	(bad)  
 47b:	6e                   	outsb  %ds:(%rsi),(%dx)
 47c:	66 00 73 69          	data16 add %dh,0x69(%rbx)
 480:	67 6e                	outsb  %ds:(%esi),(%dx)
 482:	61                   	(bad)  
 483:	6c                   	insb   (%dx),%es:(%rdi)
 484:	00 70 75             	add    %dh,0x75(%rax)
 487:	74 73                	je     4fc <putchar@plt-0x274>
 489:	00 70 75             	add    %dh,0x75(%rax)
 48c:	74 63                	je     4f1 <putchar@plt-0x27f>
 48e:	68 61 72 00 73       	pushq  $0x73007261
 493:	74 64                	je     4f9 <putchar@plt-0x277>
 495:	69 6e 00 70 72 69 6e 	imul   $0x6e697270,0x0(%rsi),%ebp
 49c:	74 66                	je     504 <putchar@plt-0x26c>
 49e:	00 61 6c             	add    %ah,0x6c(%rcx)
 4a1:	61                   	(bad)  
 4a2:	72 6d                	jb     511 <putchar@plt-0x25f>
 4a4:	00 61 74             	add    %ah,0x74(%rcx)
 4a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 4a8:	69 00 5f 5f 63 78    	imul   $0x78635f5f,(%rax),%eax
 4ae:	61                   	(bad)  
 4af:	5f                   	pop    %rdi
 4b0:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 4b6:	7a 65                	jp     51d <putchar@plt-0x253>
 4b8:	00 73 74             	add    %dh,0x74(%rbx)
 4bb:	72 63                	jb     520 <putchar@plt-0x250>
 4bd:	6d                   	insl   (%dx),%es:(%rdi)
 4be:	70 00                	jo     4c0 <putchar@plt-0x2b0>
 4c0:	5f                   	pop    %rdi
 4c1:	5f                   	pop    %rdi
 4c2:	6c                   	insb   (%dx),%es:(%rdi)
 4c3:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 4ca:	72 74                	jb     540 <putchar@plt-0x230>
 4cc:	5f                   	pop    %rdi
 4cd:	6d                   	insl   (%dx),%es:(%rdi)
 4ce:	61                   	(bad)  
 4cf:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 4d6:	43 5f                	rex.XB pop %r15
 4d8:	32 2e                	xor    (%rsi),%ch
 4da:	37                   	(bad)  
 4db:	00 47 4c             	add    %al,0x4c(%rdi)
 4de:	49                   	rex.WB
 4df:	42                   	rex.X
 4e0:	43 5f                	rex.XB pop %r15
 4e2:	32 2e                	xor    (%rsi),%ch
 4e4:	32 2e                	xor    (%rsi),%ch
 4e6:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 4eb:	4d 5f                	rex.WRB pop %r15
 4ed:	64 65 72 65          	fs gs jb 556 <putchar@plt-0x21a>
 4f1:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4f8:	4d 
 4f9:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4fb:	6f                   	outsl  %ds:(%rsi),(%dx)
 4fc:	6e                   	outsb  %ds:(%rsi),(%dx)
 4fd:	65 54                	gs push %rsp
 4ff:	61                   	(bad)  
 500:	62                   	(bad)  
 501:	6c                   	insb   (%dx),%es:(%rdi)
 502:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 506:	67 6d                	insl   (%dx),%es:(%edi)
 508:	6f                   	outsl  %ds:(%rsi),(%dx)
 509:	6e                   	outsb  %ds:(%rsi),(%dx)
 50a:	5f                   	pop    %rdi
 50b:	73 74                	jae    581 <putchar@plt-0x1ef>
 50d:	61                   	(bad)  
 50e:	72 74                	jb     584 <putchar@plt-0x1ec>
 510:	5f                   	pop    %rdi
 511:	5f                   	pop    %rdi
 512:	00 5f 49             	add    %bl,0x49(%rdi)
 515:	54                   	push   %rsp
 516:	4d 5f                	rex.WRB pop %r15
 518:	72 65                	jb     57f <putchar@plt-0x1f1>
 51a:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 521:	4d 
 522:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 524:	6f                   	outsl  %ds:(%rsi),(%dx)
 525:	6e                   	outsb  %ds:(%rsi),(%dx)
 526:	65 54                	gs push %rsp
 528:	61                   	(bad)  
 529:	62                   	.byte 0x62
 52a:	6c                   	insb   (%dx),%es:(%rdi)
 52b:	65                   	gs
	...

Disassembly of section .gnu.version:

000000000000052e <.gnu.version>:
 52e:	00 00                	add    %al,(%rax)
 530:	02 00                	add    (%rax),%al
 532:	00 00                	add    %al,(%rax)
 534:	02 00                	add    (%rax),%al
 536:	02 00                	add    (%rax),%al
 538:	02 00                	add    (%rax),%al
 53a:	02 00                	add    (%rax),%al
 53c:	02 00                	add    (%rax),%al
 53e:	02 00                	add    (%rax),%al
 540:	00 00                	add    %al,(%rax)
 542:	02 00                	add    (%rax),%al
 544:	02 00                	add    (%rax),%al
 546:	03 00                	add    (%rax),%eax
 548:	02 00                	add    (%rax),%al
 54a:	00 00                	add    %al,(%rax)
 54c:	02 00                	add    (%rax),%al
 54e:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000550 <.gnu.version_r>:
 550:	01 00                	add    %eax,(%rax)
 552:	02 00                	add    (%rax),%al
 554:	01 00                	add    %eax,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	10 00                	adc    %al,(%rax)
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	17                   	(bad)  
 561:	69 69 0d 00 00 03 00 	imul   $0x30000,0xd(%rcx),%ebp
 568:	7a 00                	jp     56a <putchar@plt-0x206>
 56a:	00 00                	add    %al,(%rax)
 56c:	10 00                	adc    %al,(%rax)
 56e:	00 00                	add    %al,(%rax)
 570:	75 1a                	jne    58c <putchar@plt-0x1e4>
 572:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 578:	84 00                	test   %al,(%rax)
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000580 <.rela.dyn>:
 580:	70 1d                	jo     59f <putchar@plt-0x1d1>
 582:	20 00                	and    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	08 00                	or     %al,(%rax)
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	20 09                	and    %cl,(%rcx)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	78 1d                	js     5b7 <putchar@plt-0x1b9>
 59a:	20 00                	and    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	08 00                	or     %al,(%rax)
 5a2:	00 00                	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	e0 08                	loopne 5b2 <putchar@plt-0x1be>
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	08 20                	or     %ah,(%rax)
 5b2:	20 00                	and    %al,(%rax)
 5b4:	00 00                	add    %al,(%rax)
 5b6:	00 00                	add    %al,(%rax)
 5b8:	08 00                	or     %al,(%rax)
 5ba:	00 00                	add    %al,(%rax)
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	08 20                	or     %ah,(%rax)
 5c2:	20 00                	and    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	d8 1f                	fcomps (%rdi)
 5ca:	20 00                	and    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 00                	add    %al,(%rax)
 5d0:	06                   	(bad)  
 5d1:	00 00                	add    %al,(%rax)
 5d3:	00 02                	add    %al,(%rdx)
	...
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 e0                	add    %ah,%al
 5e1:	1f                   	(bad)  
 5e2:	20 00                	and    %al,(%rax)
 5e4:	00 00                	add    %al,(%rax)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	06                   	(bad)  
 5e9:	00 00                	add    %al,(%rax)
 5eb:	00 06                	add    %al,(%rsi)
	...
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 e8                	add    %ch,%al
 5f9:	1f                   	(bad)  
 5fa:	20 00                	and    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	00 00                	add    %al,(%rax)
 600:	06                   	(bad)  
 601:	00 00                	add    %al,(%rax)
 603:	00 09                	add    %cl,(%rcx)
	...
 60d:	00 00                	add    %al,(%rax)
 60f:	00 f0                	add    %dh,%al
 611:	1f                   	(bad)  
 612:	20 00                	and    %al,(%rax)
 614:	00 00                	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	06                   	(bad)  
 619:	00 00                	add    %al,(%rax)
 61b:	00 0e                	add    %cl,(%rsi)
	...
 625:	00 00                	add    %al,(%rax)
 627:	00 f8                	add    %bh,%al
 629:	1f                   	(bad)  
 62a:	20 00                	and    %al,(%rax)
 62c:	00 00                	add    %al,(%rax)
 62e:	00 00                	add    %al,(%rax)
 630:	06                   	(bad)  
 631:	00 00                	add    %al,(%rax)
 633:	00 0f                	add    %cl,(%rdi)
	...
 63d:	00 00                	add    %al,(%rax)
 63f:	00 10                	add    %dl,(%rax)
 641:	20 20                	and    %ah,(%rax)
 643:	00 00                	add    %al,(%rax)
 645:	00 00                	add    %al,(%rax)
 647:	00 05 00 00 00 10    	add    %al,0x10000000(%rip)        # 1000064d <stdin@@GLIBC_2.2.5+0xfdfe63d>
	...

Disassembly of section .rela.plt:

0000000000000658 <.rela.plt>:
 658:	88 1f                	mov    %bl,(%rdi)
 65a:	20 00                	and    %al,(%rax)
 65c:	00 00                	add    %al,(%rax)
 65e:	00 00                	add    %al,(%rax)
 660:	07                   	(bad)  
 661:	00 00                	add    %al,(%rax)
 663:	00 01                	add    %al,(%rcx)
	...
 66d:	00 00                	add    %al,(%rax)
 66f:	00 90 1f 20 00 00    	add    %dl,0x201f(%rax)
 675:	00 00                	add    %al,(%rax)
 677:	00 07                	add    %al,(%rdi)
 679:	00 00                	add    %al,(%rax)
 67b:	00 03                	add    %al,(%rbx)
	...
 685:	00 00                	add    %al,(%rax)
 687:	00 98 1f 20 00 00    	add    %bl,0x201f(%rax)
 68d:	00 00                	add    %al,(%rax)
 68f:	00 07                	add    %al,(%rdi)
 691:	00 00                	add    %al,(%rax)
 693:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 69e:	00 00                	add    %al,(%rax)
 6a0:	a0 1f 20 00 00 00 00 	movabs 0x70000000000201f,%al
 6a7:	00 07 
 6a9:	00 00                	add    %al,(%rax)
 6ab:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 6b1 <putchar@plt-0xbf>
 6b1:	00 00                	add    %al,(%rax)
 6b3:	00 00                	add    %al,(%rax)
 6b5:	00 00                	add    %al,(%rax)
 6b7:	00 a8 1f 20 00 00    	add    %ch,0x201f(%rax)
 6bd:	00 00                	add    %al,(%rax)
 6bf:	00 07                	add    %al,(%rdi)
 6c1:	00 00                	add    %al,(%rax)
 6c3:	00 07                	add    %al,(%rdi)
	...
 6cd:	00 00                	add    %al,(%rax)
 6cf:	00 b0 1f 20 00 00    	add    %dh,0x201f(%rax)
 6d5:	00 00                	add    %al,(%rax)
 6d7:	00 07                	add    %al,(%rdi)
 6d9:	00 00                	add    %al,(%rax)
 6db:	00 08                	add    %cl,(%rax)
	...
 6e5:	00 00                	add    %al,(%rax)
 6e7:	00 b8 1f 20 00 00    	add    %bh,0x201f(%rax)
 6ed:	00 00                	add    %al,(%rax)
 6ef:	00 07                	add    %al,(%rdi)
 6f1:	00 00                	add    %al,(%rax)
 6f3:	00 0a                	add    %cl,(%rdx)
	...
 6fd:	00 00                	add    %al,(%rax)
 6ff:	00 c0                	add    %al,%al
 701:	1f                   	(bad)  
 702:	20 00                	and    %al,(%rax)
 704:	00 00                	add    %al,(%rax)
 706:	00 00                	add    %al,(%rax)
 708:	07                   	(bad)  
 709:	00 00                	add    %al,(%rax)
 70b:	00 0b                	add    %cl,(%rbx)
	...
 715:	00 00                	add    %al,(%rax)
 717:	00 c8                	add    %cl,%al
 719:	1f                   	(bad)  
 71a:	20 00                	and    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	07                   	(bad)  
 721:	00 00                	add    %al,(%rax)
 723:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 72e:	00 00                	add    %al,(%rax)
 730:	d0 1f                	rcrb   (%rdi)
 732:	20 00                	and    %al,(%rax)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	07                   	(bad)  
 739:	00 00                	add    %al,(%rax)
 73b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 741 <putchar@plt-0x2f>
 741:	00 00                	add    %al,(%rax)
 743:	00 00                	add    %al,(%rax)
 745:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

0000000000000748 <.init>:
 748:	48 83 ec 08          	sub    $0x8,%rsp
 74c:	48 8b 05 95 18 20 00 	mov    0x201895(%rip),%rax        # 201fe8 <__cxa_finalize@plt+0x2017d8>
 753:	48 85 c0             	test   %rax,%rax
 756:	74 02                	je     75a <putchar@plt-0x16>
 758:	ff d0                	callq  *%rax
 75a:	48 83 c4 08          	add    $0x8,%rsp
 75e:	c3                   	retq   

Disassembly of section .plt:

0000000000000760 <putchar@plt-0x10>:
 760:	ff 35 12 18 20 00    	pushq  0x201812(%rip)        # 201f78 <__cxa_finalize@plt+0x201768>
 766:	ff 25 14 18 20 00    	jmpq   *0x201814(%rip)        # 201f80 <__cxa_finalize@plt+0x201770>
 76c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000770 <putchar@plt>:
 770:	ff 25 12 18 20 00    	jmpq   *0x201812(%rip)        # 201f88 <__cxa_finalize@plt+0x201778>
 776:	68 00 00 00 00       	pushq  $0x0
 77b:	e9 e0 ff ff ff       	jmpq   760 <putchar@plt-0x10>

0000000000000780 <puts@plt>:
 780:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 201f90 <__cxa_finalize@plt+0x201780>
 786:	68 01 00 00 00       	pushq  $0x1
 78b:	e9 d0 ff ff ff       	jmpq   760 <putchar@plt-0x10>

0000000000000790 <printf@plt>:
 790:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 201f98 <__cxa_finalize@plt+0x201788>
 796:	68 02 00 00 00       	pushq  $0x2
 79b:	e9 c0 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007a0 <alarm@plt>:
 7a0:	ff 25 fa 17 20 00    	jmpq   *0x2017fa(%rip)        # 201fa0 <__cxa_finalize@plt+0x201790>
 7a6:	68 03 00 00 00       	pushq  $0x3
 7ab:	e9 b0 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007b0 <strcmp@plt>:
 7b0:	ff 25 f2 17 20 00    	jmpq   *0x2017f2(%rip)        # 201fa8 <__cxa_finalize@plt+0x201798>
 7b6:	68 04 00 00 00       	pushq  $0x4
 7bb:	e9 a0 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007c0 <signal@plt>:
 7c0:	ff 25 ea 17 20 00    	jmpq   *0x2017ea(%rip)        # 201fb0 <__cxa_finalize@plt+0x2017a0>
 7c6:	68 05 00 00 00       	pushq  $0x5
 7cb:	e9 90 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007d0 <fflush@plt>:
 7d0:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201fb8 <__cxa_finalize@plt+0x2017a8>
 7d6:	68 06 00 00 00       	pushq  $0x6
 7db:	e9 80 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007e0 <atoi@plt>:
 7e0:	ff 25 da 17 20 00    	jmpq   *0x2017da(%rip)        # 201fc0 <__cxa_finalize@plt+0x2017b0>
 7e6:	68 07 00 00 00       	pushq  $0x7
 7eb:	e9 70 ff ff ff       	jmpq   760 <putchar@plt-0x10>

00000000000007f0 <__isoc99_scanf@plt>:
 7f0:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 201fc8 <__cxa_finalize@plt+0x2017b8>
 7f6:	68 08 00 00 00       	pushq  $0x8
 7fb:	e9 60 ff ff ff       	jmpq   760 <putchar@plt-0x10>

0000000000000800 <exit@plt>:
 800:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 201fd0 <__cxa_finalize@plt+0x2017c0>
 806:	68 09 00 00 00       	pushq  $0x9
 80b:	e9 50 ff ff ff       	jmpq   760 <putchar@plt-0x10>

Disassembly of section .plt.got:

0000000000000810 <__cxa_finalize@plt>:
 810:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201ff8 <__cxa_finalize@plt+0x2017e8>
 816:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000820 <.text>:
     820:	31 ed                	xor    %ebp,%ebp
     822:	49 89 d1             	mov    %rdx,%r9
     825:	5e                   	pop    %rsi
     826:	48 89 e2             	mov    %rsp,%rdx
     829:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     82d:	50                   	push   %rax
     82e:	54                   	push   %rsp
     82f:	4c 8d 05 9a 0e 00 00 	lea    0xe9a(%rip),%r8        # 16d0 <__cxa_finalize@plt+0xec0>
     836:	48 8d 0d 23 0e 00 00 	lea    0xe23(%rip),%rcx        # 1660 <__cxa_finalize@plt+0xe50>
     83d:	48 8d 3d 69 01 00 00 	lea    0x169(%rip),%rdi        # 9ad <__cxa_finalize@plt+0x19d>
     844:	ff 15 96 17 20 00    	callq  *0x201796(%rip)        # 201fe0 <__cxa_finalize@plt+0x2017d0>
     84a:	f4                   	hlt    
     84b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     850:	48 8d 3d b9 17 20 00 	lea    0x2017b9(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
     857:	55                   	push   %rbp
     858:	48 8d 05 b1 17 20 00 	lea    0x2017b1(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
     85f:	48 39 f8             	cmp    %rdi,%rax
     862:	48 89 e5             	mov    %rsp,%rbp
     865:	74 19                	je     880 <__cxa_finalize@plt+0x70>
     867:	48 8b 05 6a 17 20 00 	mov    0x20176a(%rip),%rax        # 201fd8 <__cxa_finalize@plt+0x2017c8>
     86e:	48 85 c0             	test   %rax,%rax
     871:	74 0d                	je     880 <__cxa_finalize@plt+0x70>
     873:	5d                   	pop    %rbp
     874:	ff e0                	jmpq   *%rax
     876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     87d:	00 00 00 
     880:	5d                   	pop    %rbp
     881:	c3                   	retq   
     882:	0f 1f 40 00          	nopl   0x0(%rax)
     886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     88d:	00 00 00 
     890:	48 8d 3d 79 17 20 00 	lea    0x201779(%rip),%rdi        # 202010 <stdin@@GLIBC_2.2.5>
     897:	48 8d 35 72 17 20 00 	lea    0x201772(%rip),%rsi        # 202010 <stdin@@GLIBC_2.2.5>
     89e:	55                   	push   %rbp
     89f:	48 29 fe             	sub    %rdi,%rsi
     8a2:	48 89 e5             	mov    %rsp,%rbp
     8a5:	48 c1 fe 03          	sar    $0x3,%rsi
     8a9:	48 89 f0             	mov    %rsi,%rax
     8ac:	48 c1 e8 3f          	shr    $0x3f,%rax
     8b0:	48 01 c6             	add    %rax,%rsi
     8b3:	48 d1 fe             	sar    %rsi
     8b6:	74 18                	je     8d0 <__cxa_finalize@plt+0xc0>
     8b8:	48 8b 05 31 17 20 00 	mov    0x201731(%rip),%rax        # 201ff0 <__cxa_finalize@plt+0x2017e0>
     8bf:	48 85 c0             	test   %rax,%rax
     8c2:	74 0c                	je     8d0 <__cxa_finalize@plt+0xc0>
     8c4:	5d                   	pop    %rbp
     8c5:	ff e0                	jmpq   *%rax
     8c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     8ce:	00 00 
     8d0:	5d                   	pop    %rbp
     8d1:	c3                   	retq   
     8d2:	0f 1f 40 00          	nopl   0x0(%rax)
     8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     8dd:	00 00 00 
     8e0:	80 3d 31 17 20 00 00 	cmpb   $0x0,0x201731(%rip)        # 202018 <stdin@@GLIBC_2.2.5+0x8>
     8e7:	75 2f                	jne    918 <__cxa_finalize@plt+0x108>
     8e9:	48 83 3d 07 17 20 00 	cmpq   $0x0,0x201707(%rip)        # 201ff8 <__cxa_finalize@plt+0x2017e8>
     8f0:	00 
     8f1:	55                   	push   %rbp
     8f2:	48 89 e5             	mov    %rsp,%rbp
     8f5:	74 0c                	je     903 <__cxa_finalize@plt+0xf3>
     8f7:	48 8b 3d 0a 17 20 00 	mov    0x20170a(%rip),%rdi        # 202008 <__cxa_finalize@plt+0x2017f8>
     8fe:	e8 0d ff ff ff       	callq  810 <__cxa_finalize@plt>
     903:	e8 48 ff ff ff       	callq  850 <__cxa_finalize@plt+0x40>
     908:	c6 05 09 17 20 00 01 	movb   $0x1,0x201709(%rip)        # 202018 <stdin@@GLIBC_2.2.5+0x8>
     90f:	5d                   	pop    %rbp
     910:	c3                   	retq   
     911:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     918:	f3 c3                	repz retq 
     91a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     920:	55                   	push   %rbp
     921:	48 89 e5             	mov    %rsp,%rbp
     924:	5d                   	pop    %rbp
     925:	e9 66 ff ff ff       	jmpq   890 <__cxa_finalize@plt+0x80>
     92a:	55                   	push   %rbp
     92b:	48 89 e5             	mov    %rsp,%rbp
     92e:	48 8d 3d b3 0d 00 00 	lea    0xdb3(%rip),%rdi        # 16e8 <__cxa_finalize@plt+0xed8>
     935:	e8 46 fe ff ff       	callq  780 <puts@plt>
     93a:	48 8d 3d a7 0d 00 00 	lea    0xda7(%rip),%rdi        # 16e8 <__cxa_finalize@plt+0xed8>
     941:	e8 3a fe ff ff       	callq  780 <puts@plt>
     946:	90                   	nop
     947:	5d                   	pop    %rbp
     948:	c3                   	retq   
     949:	55                   	push   %rbp
     94a:	48 89 e5             	mov    %rsp,%rbp
     94d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     951:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     958:	eb 31                	jmp    98b <__cxa_finalize@plt+0x17b>
     95a:	8b 45 fc             	mov    -0x4(%rbp),%eax
     95d:	48 63 d0             	movslq %eax,%rdx
     960:	48 89 d0             	mov    %rdx,%rax
     963:	48 c1 e0 04          	shl    $0x4,%rax
     967:	48 29 d0             	sub    %rdx,%rax
     96a:	48 c1 e0 02          	shl    $0x2,%rax
     96e:	48 01 c2             	add    %rax,%rdx
     971:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     975:	48 01 d0             	add    %rdx,%rax
     978:	0f b6 40 3c          	movzbl 0x3c(%rax),%eax
     97c:	84 c0                	test   %al,%al
     97e:	74 07                	je     987 <__cxa_finalize@plt+0x177>
     980:	b8 01 00 00 00       	mov    $0x1,%eax
     985:	eb 0f                	jmp    996 <__cxa_finalize@plt+0x186>
     987:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     98b:	83 7d fc 0e          	cmpl   $0xe,-0x4(%rbp)
     98f:	7e c9                	jle    95a <__cxa_finalize@plt+0x14a>
     991:	b8 00 00 00 00       	mov    $0x0,%eax
     996:	5d                   	pop    %rbp
     997:	c3                   	retq   
     998:	55                   	push   %rbp
     999:	48 89 e5             	mov    %rsp,%rbp
     99c:	48 83 ec 10          	sub    $0x10,%rsp
     9a0:	89 7d fc             	mov    %edi,-0x4(%rbp)
     9a3:	bf 00 00 00 00       	mov    $0x0,%edi
     9a8:	e8 53 fe ff ff       	callq  800 <exit@plt>
     9ad:	55                   	push   %rbp
     9ae:	48 89 e5             	mov    %rsp,%rbp
     9b1:	48 81 ec e0 03 00 00 	sub    $0x3e0,%rsp
     9b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     9bf:	00 00 
     9c1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     9c5:	31 c0                	xor    %eax,%eax
     9c7:	48 8d 35 ca ff ff ff 	lea    -0x36(%rip),%rsi        # 998 <__cxa_finalize@plt+0x188>
     9ce:	bf 0e 00 00 00       	mov    $0xe,%edi
     9d3:	e8 e8 fd ff ff       	callq  7c0 <signal@plt>
     9d8:	bf 28 00 00 00       	mov    $0x28,%edi
     9dd:	e8 be fd ff ff       	callq  7a0 <alarm@plt>
     9e2:	c6 85 2b fc ff ff ff 	movb   $0xff,-0x3d5(%rbp)
     9e9:	c7 85 2c fc ff ff 00 	movl   $0x0,-0x3d4(%rbp)
     9f0:	00 00 00 
     9f3:	c7 85 30 fc ff ff 12 	movl   $0x12,-0x3d0(%rbp)
     9fa:	00 00 00 
     9fd:	8b 85 30 fc ff ff    	mov    -0x3d0(%rbp),%eax
     a03:	8d 90 fa 00 00 00    	lea    0xfa(%rax),%edx
     a09:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
     a10:	39 c2                	cmp    %eax,%edx
     a12:	0f 8d 10 01 00 00    	jge    b28 <__cxa_finalize@plt+0x318>
     a18:	b8 00 00 00 00       	mov    $0x0,%eax
     a1d:	e8 08 ff ff ff       	callq  92a <__cxa_finalize@plt+0x11a>
     a22:	e9 01 01 00 00       	jmpq   b28 <__cxa_finalize@plt+0x318>
     a27:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
     a2e:	8b 85 2c fc ff ff    	mov    -0x3d4(%rbp),%eax
     a34:	48 63 d0             	movslq %eax,%rdx
     a37:	48 89 d0             	mov    %rdx,%rax
     a3a:	48 c1 e0 04          	shl    $0x4,%rax
     a3e:	48 29 d0             	sub    %rdx,%rax
     a41:	48 c1 e0 02          	shl    $0x2,%rax
     a45:	48 01 d0             	add    %rdx,%rax
     a48:	48 01 c8             	add    %rcx,%rax
     a4b:	48 be 1b 5b 30 3b 33 	movabs $0x206d33333b305b1b,%rsi
     a52:	33 6d 20 
     a55:	48 89 30             	mov    %rsi,(%rax)
     a58:	c7 40 08 2f 5c 1b 5b 	movl   $0x5b1b5c2f,0x8(%rax)
     a5f:	66 c7 40 0c 30 6d    	movw   $0x6d30,0xc(%rax)
     a65:	c6 40 0e 00          	movb   $0x0,0xe(%rax)
     a69:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
     a70:	8b 85 2c fc ff ff    	mov    -0x3d4(%rbp),%eax
     a76:	48 63 d0             	movslq %eax,%rdx
     a79:	48 89 d0             	mov    %rdx,%rax
     a7c:	48 c1 e0 04          	shl    $0x4,%rax
     a80:	48 29 d0             	sub    %rdx,%rax
     a83:	48 c1 e0 02          	shl    $0x2,%rax
     a87:	48 01 d0             	add    %rdx,%rax
     a8a:	48 83 c0 10          	add    $0x10,%rax
     a8e:	48 01 c8             	add    %rcx,%rax
     a91:	48 83 c0 04          	add    $0x4,%rax
     a95:	48 89 30             	mov    %rsi,(%rax)
     a98:	c7 40 08 7c 7c 1b 5b 	movl   $0x5b1b7c7c,0x8(%rax)
     a9f:	66 c7 40 0c 30 6d    	movw   $0x6d30,0xc(%rax)
     aa5:	c6 40 0e 00          	movb   $0x0,0xe(%rax)
     aa9:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
     ab0:	8b 85 2c fc ff ff    	mov    -0x3d4(%rbp),%eax
     ab6:	48 63 d0             	movslq %eax,%rdx
     ab9:	48 89 d0             	mov    %rdx,%rax
     abc:	48 c1 e0 04          	shl    $0x4,%rax
     ac0:	48 29 d0             	sub    %rdx,%rax
     ac3:	48 c1 e0 02          	shl    $0x2,%rax
     ac7:	48 01 d0             	add    %rdx,%rax
     aca:	48 83 c0 20          	add    $0x20,%rax
     ace:	48 01 c8             	add    %rcx,%rax
     ad1:	48 83 c0 08          	add    $0x8,%rax
     ad5:	48 be 1b 5b 30 3b 33 	movabs $0x206d33333b305b1b,%rsi
     adc:	33 6d 20 
     adf:	48 bf c2 af c2 af 1b 	movabs $0x6d305b1bafc2afc2,%rdi
     ae6:	5b 30 6d 
     ae9:	48 89 30             	mov    %rsi,(%rax)
     aec:	48 89 78 08          	mov    %rdi,0x8(%rax)
     af0:	c6 40 10 00          	movb   $0x0,0x10(%rax)
     af4:	8b 85 2c fc ff ff    	mov    -0x3d4(%rbp),%eax
     afa:	48 63 d0             	movslq %eax,%rdx
     afd:	48 89 d0             	mov    %rdx,%rax
     b00:	48 c1 e0 04          	shl    $0x4,%rax
     b04:	48 29 d0             	sub    %rdx,%rax
     b07:	48 c1 e0 02          	shl    $0x2,%rax
     b0b:	48 01 d0             	add    %rdx,%rax
     b0e:	48 01 e8             	add    %rbp,%rax
     b11:	48 2d 84 03 00 00    	sub    $0x384,%rax
     b17:	c6 00 01             	movb   $0x1,(%rax)
     b1a:	83 ad 30 fc ff ff 01 	subl   $0x1,-0x3d0(%rbp)
     b21:	83 85 2c fc ff ff 01 	addl   $0x1,-0x3d4(%rbp)
     b28:	83 bd 2c fc ff ff 0e 	cmpl   $0xe,-0x3d4(%rbp)
     b2f:	0f 8e f2 fe ff ff    	jle    a27 <__cxa_finalize@plt+0x217>
     b35:	e9 fe 0a 00 00       	jmpq   1638 <__cxa_finalize@plt+0xe28>
     b3a:	c6 45 d8 00          	movb   $0x0,-0x28(%rbp)
     b3e:	c6 45 e0 00          	movb   $0x0,-0x20(%rbp)
     b42:	48 8d 3d af 0b 00 00 	lea    0xbaf(%rip),%rdi        # 16f8 <__cxa_finalize@plt+0xee8>
     b49:	e8 32 fc ff ff       	callq  780 <puts@plt>
     b4e:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
     b55:	89 c6                	mov    %eax,%esi
     b57:	48 8d 3d 1f 0c 00 00 	lea    0xc1f(%rip),%rdi        # 177d <__cxa_finalize@plt+0xf6d>
     b5e:	b8 00 00 00 00       	mov    $0x0,%eax
     b63:	e8 28 fc ff ff       	callq  790 <printf@plt>
     b68:	48 8d 3d 1b 0c 00 00 	lea    0xc1b(%rip),%rdi        # 178a <__cxa_finalize@plt+0xf7a>
     b6f:	e8 0c fc ff ff       	callq  780 <puts@plt>
     b74:	bf 7c 00 00 00       	mov    $0x7c,%edi
     b79:	e8 f2 fb ff ff       	callq  770 <putchar@plt>
     b7e:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     b85:	48 89 c6             	mov    %rax,%rsi
     b88:	48 8d 3d 0d 0c 00 00 	lea    0xc0d(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     b8f:	b8 00 00 00 00       	mov    $0x0,%eax
     b94:	e8 f7 fb ff ff       	callq  790 <printf@plt>
     b99:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     ba0:	48 83 c0 3d          	add    $0x3d,%rax
     ba4:	48 89 c6             	mov    %rax,%rsi
     ba7:	48 8d 3d ee 0b 00 00 	lea    0xbee(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     bae:	b8 00 00 00 00       	mov    $0x0,%eax
     bb3:	e8 d8 fb ff ff       	callq  790 <printf@plt>
     bb8:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     bbf:	48 83 c0 7a          	add    $0x7a,%rax
     bc3:	48 89 c6             	mov    %rax,%rsi
     bc6:	48 8d 3d cf 0b 00 00 	lea    0xbcf(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     bcd:	b8 00 00 00 00       	mov    $0x0,%eax
     bd2:	e8 b9 fb ff ff       	callq  790 <printf@plt>
     bd7:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     bde:	48 05 b7 00 00 00    	add    $0xb7,%rax
     be4:	48 89 c6             	mov    %rax,%rsi
     be7:	48 8d 3d ae 0b 00 00 	lea    0xbae(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     bee:	b8 00 00 00 00       	mov    $0x0,%eax
     bf3:	e8 98 fb ff ff       	callq  790 <printf@plt>
     bf8:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     bff:	48 05 f4 00 00 00    	add    $0xf4,%rax
     c05:	48 89 c6             	mov    %rax,%rsi
     c08:	48 8d 3d 8d 0b 00 00 	lea    0xb8d(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     c0f:	b8 00 00 00 00       	mov    $0x0,%eax
     c14:	e8 77 fb ff ff       	callq  790 <printf@plt>
     c19:	48 8d 3d 7f 0b 00 00 	lea    0xb7f(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     c20:	e8 5b fb ff ff       	callq  780 <puts@plt>
     c25:	bf 7c 00 00 00       	mov    $0x7c,%edi
     c2a:	e8 41 fb ff ff       	callq  770 <putchar@plt>
     c2f:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     c36:	48 83 c0 14          	add    $0x14,%rax
     c3a:	48 89 c6             	mov    %rax,%rsi
     c3d:	48 8d 3d 58 0b 00 00 	lea    0xb58(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     c44:	b8 00 00 00 00       	mov    $0x0,%eax
     c49:	e8 42 fb ff ff       	callq  790 <printf@plt>
     c4e:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     c55:	48 83 c0 51          	add    $0x51,%rax
     c59:	48 89 c6             	mov    %rax,%rsi
     c5c:	48 8d 3d 39 0b 00 00 	lea    0xb39(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     c63:	b8 00 00 00 00       	mov    $0x0,%eax
     c68:	e8 23 fb ff ff       	callq  790 <printf@plt>
     c6d:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     c74:	48 05 8e 00 00 00    	add    $0x8e,%rax
     c7a:	48 89 c6             	mov    %rax,%rsi
     c7d:	48 8d 3d 18 0b 00 00 	lea    0xb18(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     c84:	b8 00 00 00 00       	mov    $0x0,%eax
     c89:	e8 02 fb ff ff       	callq  790 <printf@plt>
     c8e:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     c95:	48 05 cb 00 00 00    	add    $0xcb,%rax
     c9b:	48 89 c6             	mov    %rax,%rsi
     c9e:	48 8d 3d f7 0a 00 00 	lea    0xaf7(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     ca5:	b8 00 00 00 00       	mov    $0x0,%eax
     caa:	e8 e1 fa ff ff       	callq  790 <printf@plt>
     caf:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     cb6:	48 05 08 01 00 00    	add    $0x108,%rax
     cbc:	48 89 c6             	mov    %rax,%rsi
     cbf:	48 8d 3d d6 0a 00 00 	lea    0xad6(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     cc6:	b8 00 00 00 00       	mov    $0x0,%eax
     ccb:	e8 c0 fa ff ff       	callq  790 <printf@plt>
     cd0:	48 8d 3d c8 0a 00 00 	lea    0xac8(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     cd7:	e8 a4 fa ff ff       	callq  780 <puts@plt>
     cdc:	bf 7c 00 00 00       	mov    $0x7c,%edi
     ce1:	e8 8a fa ff ff       	callq  770 <putchar@plt>
     ce6:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     ced:	48 83 c0 28          	add    $0x28,%rax
     cf1:	48 89 c6             	mov    %rax,%rsi
     cf4:	48 8d 3d a1 0a 00 00 	lea    0xaa1(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     cfb:	b8 00 00 00 00       	mov    $0x0,%eax
     d00:	e8 8b fa ff ff       	callq  790 <printf@plt>
     d05:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     d0c:	48 83 c0 65          	add    $0x65,%rax
     d10:	48 89 c6             	mov    %rax,%rsi
     d13:	48 8d 3d 82 0a 00 00 	lea    0xa82(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     d1a:	b8 00 00 00 00       	mov    $0x0,%eax
     d1f:	e8 6c fa ff ff       	callq  790 <printf@plt>
     d24:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     d2b:	48 05 a2 00 00 00    	add    $0xa2,%rax
     d31:	48 89 c6             	mov    %rax,%rsi
     d34:	48 8d 3d 61 0a 00 00 	lea    0xa61(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     d3b:	b8 00 00 00 00       	mov    $0x0,%eax
     d40:	e8 4b fa ff ff       	callq  790 <printf@plt>
     d45:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     d4c:	48 05 df 00 00 00    	add    $0xdf,%rax
     d52:	48 89 c6             	mov    %rax,%rsi
     d55:	48 8d 3d 40 0a 00 00 	lea    0xa40(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     d5c:	b8 00 00 00 00       	mov    $0x0,%eax
     d61:	e8 2a fa ff ff       	callq  790 <printf@plt>
     d66:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     d6d:	48 05 1c 01 00 00    	add    $0x11c,%rax
     d73:	48 89 c6             	mov    %rax,%rsi
     d76:	48 8d 3d 1f 0a 00 00 	lea    0xa1f(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     d7d:	b8 00 00 00 00       	mov    $0x0,%eax
     d82:	e8 09 fa ff ff       	callq  790 <printf@plt>
     d87:	48 8d 3d 11 0a 00 00 	lea    0xa11(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     d8e:	e8 ed f9 ff ff       	callq  780 <puts@plt>
     d93:	48 8d 3d 07 0a 00 00 	lea    0xa07(%rip),%rdi        # 17a1 <__cxa_finalize@plt+0xf91>
     d9a:	e8 e1 f9 ff ff       	callq  780 <puts@plt>
     d9f:	bf 7c 00 00 00       	mov    $0x7c,%edi
     da4:	e8 c7 f9 ff ff       	callq  770 <putchar@plt>
     da9:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     db0:	48 05 31 01 00 00    	add    $0x131,%rax
     db6:	48 89 c6             	mov    %rax,%rsi
     db9:	48 8d 3d dc 09 00 00 	lea    0x9dc(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     dc0:	b8 00 00 00 00       	mov    $0x0,%eax
     dc5:	e8 c6 f9 ff ff       	callq  790 <printf@plt>
     dca:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     dd1:	48 05 6e 01 00 00    	add    $0x16e,%rax
     dd7:	48 89 c6             	mov    %rax,%rsi
     dda:	48 8d 3d bb 09 00 00 	lea    0x9bb(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     de1:	b8 00 00 00 00       	mov    $0x0,%eax
     de6:	e8 a5 f9 ff ff       	callq  790 <printf@plt>
     deb:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     df2:	48 05 ab 01 00 00    	add    $0x1ab,%rax
     df8:	48 89 c6             	mov    %rax,%rsi
     dfb:	48 8d 3d 9a 09 00 00 	lea    0x99a(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     e02:	b8 00 00 00 00       	mov    $0x0,%eax
     e07:	e8 84 f9 ff ff       	callq  790 <printf@plt>
     e0c:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     e13:	48 05 e8 01 00 00    	add    $0x1e8,%rax
     e19:	48 89 c6             	mov    %rax,%rsi
     e1c:	48 8d 3d 79 09 00 00 	lea    0x979(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     e23:	b8 00 00 00 00       	mov    $0x0,%eax
     e28:	e8 63 f9 ff ff       	callq  790 <printf@plt>
     e2d:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     e34:	48 05 25 02 00 00    	add    $0x225,%rax
     e3a:	48 89 c6             	mov    %rax,%rsi
     e3d:	48 8d 3d 58 09 00 00 	lea    0x958(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     e44:	b8 00 00 00 00       	mov    $0x0,%eax
     e49:	e8 42 f9 ff ff       	callq  790 <printf@plt>
     e4e:	48 8d 3d 4a 09 00 00 	lea    0x94a(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     e55:	e8 26 f9 ff ff       	callq  780 <puts@plt>
     e5a:	bf 7c 00 00 00       	mov    $0x7c,%edi
     e5f:	e8 0c f9 ff ff       	callq  770 <putchar@plt>
     e64:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     e6b:	48 05 45 01 00 00    	add    $0x145,%rax
     e71:	48 89 c6             	mov    %rax,%rsi
     e74:	48 8d 3d 21 09 00 00 	lea    0x921(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     e7b:	b8 00 00 00 00       	mov    $0x0,%eax
     e80:	e8 0b f9 ff ff       	callq  790 <printf@plt>
     e85:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     e8c:	48 05 82 01 00 00    	add    $0x182,%rax
     e92:	48 89 c6             	mov    %rax,%rsi
     e95:	48 8d 3d 00 09 00 00 	lea    0x900(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     e9c:	b8 00 00 00 00       	mov    $0x0,%eax
     ea1:	e8 ea f8 ff ff       	callq  790 <printf@plt>
     ea6:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     ead:	48 05 bf 01 00 00    	add    $0x1bf,%rax
     eb3:	48 89 c6             	mov    %rax,%rsi
     eb6:	48 8d 3d df 08 00 00 	lea    0x8df(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     ebd:	b8 00 00 00 00       	mov    $0x0,%eax
     ec2:	e8 c9 f8 ff ff       	callq  790 <printf@plt>
     ec7:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     ece:	48 05 fc 01 00 00    	add    $0x1fc,%rax
     ed4:	48 89 c6             	mov    %rax,%rsi
     ed7:	48 8d 3d be 08 00 00 	lea    0x8be(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     ede:	b8 00 00 00 00       	mov    $0x0,%eax
     ee3:	e8 a8 f8 ff ff       	callq  790 <printf@plt>
     ee8:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     eef:	48 05 39 02 00 00    	add    $0x239,%rax
     ef5:	48 89 c6             	mov    %rax,%rsi
     ef8:	48 8d 3d 9d 08 00 00 	lea    0x89d(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     eff:	b8 00 00 00 00       	mov    $0x0,%eax
     f04:	e8 87 f8 ff ff       	callq  790 <printf@plt>
     f09:	48 8d 3d 8f 08 00 00 	lea    0x88f(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     f10:	e8 6b f8 ff ff       	callq  780 <puts@plt>
     f15:	bf 7c 00 00 00       	mov    $0x7c,%edi
     f1a:	e8 51 f8 ff ff       	callq  770 <putchar@plt>
     f1f:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     f26:	48 05 59 01 00 00    	add    $0x159,%rax
     f2c:	48 89 c6             	mov    %rax,%rsi
     f2f:	48 8d 3d 66 08 00 00 	lea    0x866(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     f36:	b8 00 00 00 00       	mov    $0x0,%eax
     f3b:	e8 50 f8 ff ff       	callq  790 <printf@plt>
     f40:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     f47:	48 05 96 01 00 00    	add    $0x196,%rax
     f4d:	48 89 c6             	mov    %rax,%rsi
     f50:	48 8d 3d 45 08 00 00 	lea    0x845(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     f57:	b8 00 00 00 00       	mov    $0x0,%eax
     f5c:	e8 2f f8 ff ff       	callq  790 <printf@plt>
     f61:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     f68:	48 05 d3 01 00 00    	add    $0x1d3,%rax
     f6e:	48 89 c6             	mov    %rax,%rsi
     f71:	48 8d 3d 24 08 00 00 	lea    0x824(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     f78:	b8 00 00 00 00       	mov    $0x0,%eax
     f7d:	e8 0e f8 ff ff       	callq  790 <printf@plt>
     f82:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     f89:	48 05 10 02 00 00    	add    $0x210,%rax
     f8f:	48 89 c6             	mov    %rax,%rsi
     f92:	48 8d 3d 03 08 00 00 	lea    0x803(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     f99:	b8 00 00 00 00       	mov    $0x0,%eax
     f9e:	e8 ed f7 ff ff       	callq  790 <printf@plt>
     fa3:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     faa:	48 05 4d 02 00 00    	add    $0x24d,%rax
     fb0:	48 89 c6             	mov    %rax,%rsi
     fb3:	48 8d 3d e2 07 00 00 	lea    0x7e2(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     fba:	b8 00 00 00 00       	mov    $0x0,%eax
     fbf:	e8 cc f7 ff ff       	callq  790 <printf@plt>
     fc4:	48 8d 3d d4 07 00 00 	lea    0x7d4(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
     fcb:	e8 b0 f7 ff ff       	callq  780 <puts@plt>
     fd0:	48 8d 3d ca 07 00 00 	lea    0x7ca(%rip),%rdi        # 17a1 <__cxa_finalize@plt+0xf91>
     fd7:	e8 a4 f7 ff ff       	callq  780 <puts@plt>
     fdc:	bf 7c 00 00 00       	mov    $0x7c,%edi
     fe1:	e8 8a f7 ff ff       	callq  770 <putchar@plt>
     fe6:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
     fed:	48 05 62 02 00 00    	add    $0x262,%rax
     ff3:	48 89 c6             	mov    %rax,%rsi
     ff6:	48 8d 3d 9f 07 00 00 	lea    0x79f(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
     ffd:	b8 00 00 00 00       	mov    $0x0,%eax
    1002:	e8 89 f7 ff ff       	callq  790 <printf@plt>
    1007:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    100e:	48 05 9f 02 00 00    	add    $0x29f,%rax
    1014:	48 89 c6             	mov    %rax,%rsi
    1017:	48 8d 3d 7e 07 00 00 	lea    0x77e(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    101e:	b8 00 00 00 00       	mov    $0x0,%eax
    1023:	e8 68 f7 ff ff       	callq  790 <printf@plt>
    1028:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    102f:	48 05 dc 02 00 00    	add    $0x2dc,%rax
    1035:	48 89 c6             	mov    %rax,%rsi
    1038:	48 8d 3d 5d 07 00 00 	lea    0x75d(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    103f:	b8 00 00 00 00       	mov    $0x0,%eax
    1044:	e8 47 f7 ff ff       	callq  790 <printf@plt>
    1049:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    1050:	48 05 19 03 00 00    	add    $0x319,%rax
    1056:	48 89 c6             	mov    %rax,%rsi
    1059:	48 8d 3d 3c 07 00 00 	lea    0x73c(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1060:	b8 00 00 00 00       	mov    $0x0,%eax
    1065:	e8 26 f7 ff ff       	callq  790 <printf@plt>
    106a:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    1071:	48 05 56 03 00 00    	add    $0x356,%rax
    1077:	48 89 c6             	mov    %rax,%rsi
    107a:	48 8d 3d 1b 07 00 00 	lea    0x71b(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1081:	b8 00 00 00 00       	mov    $0x0,%eax
    1086:	e8 05 f7 ff ff       	callq  790 <printf@plt>
    108b:	48 8d 3d 0d 07 00 00 	lea    0x70d(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
    1092:	e8 e9 f6 ff ff       	callq  780 <puts@plt>
    1097:	bf 7c 00 00 00       	mov    $0x7c,%edi
    109c:	e8 cf f6 ff ff       	callq  770 <putchar@plt>
    10a1:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    10a8:	48 05 76 02 00 00    	add    $0x276,%rax
    10ae:	48 89 c6             	mov    %rax,%rsi
    10b1:	48 8d 3d e4 06 00 00 	lea    0x6e4(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    10b8:	b8 00 00 00 00       	mov    $0x0,%eax
    10bd:	e8 ce f6 ff ff       	callq  790 <printf@plt>
    10c2:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    10c9:	48 05 b3 02 00 00    	add    $0x2b3,%rax
    10cf:	48 89 c6             	mov    %rax,%rsi
    10d2:	48 8d 3d c3 06 00 00 	lea    0x6c3(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    10d9:	b8 00 00 00 00       	mov    $0x0,%eax
    10de:	e8 ad f6 ff ff       	callq  790 <printf@plt>
    10e3:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    10ea:	48 05 f0 02 00 00    	add    $0x2f0,%rax
    10f0:	48 89 c6             	mov    %rax,%rsi
    10f3:	48 8d 3d a2 06 00 00 	lea    0x6a2(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    10fa:	b8 00 00 00 00       	mov    $0x0,%eax
    10ff:	e8 8c f6 ff ff       	callq  790 <printf@plt>
    1104:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    110b:	48 05 2d 03 00 00    	add    $0x32d,%rax
    1111:	48 89 c6             	mov    %rax,%rsi
    1114:	48 8d 3d 81 06 00 00 	lea    0x681(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    111b:	b8 00 00 00 00       	mov    $0x0,%eax
    1120:	e8 6b f6 ff ff       	callq  790 <printf@plt>
    1125:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    112c:	48 05 6a 03 00 00    	add    $0x36a,%rax
    1132:	48 89 c6             	mov    %rax,%rsi
    1135:	48 8d 3d 60 06 00 00 	lea    0x660(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    113c:	b8 00 00 00 00       	mov    $0x0,%eax
    1141:	e8 4a f6 ff ff       	callq  790 <printf@plt>
    1146:	48 8d 3d 52 06 00 00 	lea    0x652(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
    114d:	e8 2e f6 ff ff       	callq  780 <puts@plt>
    1152:	bf 7c 00 00 00       	mov    $0x7c,%edi
    1157:	e8 14 f6 ff ff       	callq  770 <putchar@plt>
    115c:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    1163:	48 05 8a 02 00 00    	add    $0x28a,%rax
    1169:	48 89 c6             	mov    %rax,%rsi
    116c:	48 8d 3d 29 06 00 00 	lea    0x629(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1173:	b8 00 00 00 00       	mov    $0x0,%eax
    1178:	e8 13 f6 ff ff       	callq  790 <printf@plt>
    117d:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    1184:	48 05 c7 02 00 00    	add    $0x2c7,%rax
    118a:	48 89 c6             	mov    %rax,%rsi
    118d:	48 8d 3d 08 06 00 00 	lea    0x608(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1194:	b8 00 00 00 00       	mov    $0x0,%eax
    1199:	e8 f2 f5 ff ff       	callq  790 <printf@plt>
    119e:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    11a5:	48 05 04 03 00 00    	add    $0x304,%rax
    11ab:	48 89 c6             	mov    %rax,%rsi
    11ae:	48 8d 3d e7 05 00 00 	lea    0x5e7(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    11b5:	b8 00 00 00 00       	mov    $0x0,%eax
    11ba:	e8 d1 f5 ff ff       	callq  790 <printf@plt>
    11bf:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    11c6:	48 05 41 03 00 00    	add    $0x341,%rax
    11cc:	48 89 c6             	mov    %rax,%rsi
    11cf:	48 8d 3d c6 05 00 00 	lea    0x5c6(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    11d6:	b8 00 00 00 00       	mov    $0x0,%eax
    11db:	e8 b0 f5 ff ff       	callq  790 <printf@plt>
    11e0:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    11e7:	48 05 7e 03 00 00    	add    $0x37e,%rax
    11ed:	48 89 c6             	mov    %rax,%rsi
    11f0:	48 8d 3d a5 05 00 00 	lea    0x5a5(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    11f7:	b8 00 00 00 00       	mov    $0x0,%eax
    11fc:	e8 8f f5 ff ff       	callq  790 <printf@plt>
    1201:	48 8d 3d 97 05 00 00 	lea    0x597(%rip),%rdi        # 179f <__cxa_finalize@plt+0xf8f>
    1208:	e8 73 f5 ff ff       	callq  780 <puts@plt>
    120d:	48 8d 3d 8d 05 00 00 	lea    0x58d(%rip),%rdi        # 17a1 <__cxa_finalize@plt+0xf91>
    1214:	e8 67 f5 ff ff       	callq  780 <puts@plt>
    1219:	48 8d 3d 98 05 00 00 	lea    0x598(%rip),%rdi        # 17b8 <__cxa_finalize@plt+0xfa8>
    1220:	e8 5b f5 ff ff       	callq  780 <puts@plt>
    1225:	48 8d 3d b4 05 00 00 	lea    0x5b4(%rip),%rdi        # 17e0 <__cxa_finalize@plt+0xfd0>
    122c:	e8 4f f5 ff ff       	callq  780 <puts@plt>
    1231:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    1235:	48 89 c6             	mov    %rax,%rsi
    1238:	48 8d 3d d0 05 00 00 	lea    0x5d0(%rip),%rdi        # 180f <__cxa_finalize@plt+0xfff>
    123f:	b8 00 00 00 00       	mov    $0x0,%eax
    1244:	e8 a7 f5 ff ff       	callq  7f0 <__isoc99_scanf@plt>
    1249:	48 8b 05 c0 0d 20 00 	mov    0x200dc0(%rip),%rax        # 202010 <stdin@@GLIBC_2.2.5>
    1250:	48 89 c7             	mov    %rax,%rdi
    1253:	e8 78 f5 ff ff       	callq  7d0 <fflush@plt>
    1258:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    125c:	48 89 c7             	mov    %rax,%rdi
    125f:	e8 7c f5 ff ff       	callq  7e0 <atoi@plt>
    1264:	89 85 34 fc ff ff    	mov    %eax,-0x3cc(%rbp)
    126a:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
    1271:	89 85 38 fc ff ff    	mov    %eax,-0x3c8(%rbp)
    1277:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    127b:	48 89 c7             	mov    %rax,%rdi
    127e:	e8 5d f5 ff ff       	callq  7e0 <atoi@plt>
    1283:	48 63 d0             	movslq %eax,%rdx
    1286:	48 89 d0             	mov    %rdx,%rax
    1289:	48 c1 e0 04          	shl    $0x4,%rax
    128d:	48 29 d0             	sub    %rdx,%rax
    1290:	48 c1 e0 02          	shl    $0x2,%rax
    1294:	48 01 d0             	add    %rdx,%rax
    1297:	48 01 e8             	add    %rbp,%rax
    129a:	48 2d 84 03 00 00    	sub    $0x384,%rax
    12a0:	0f b6 00             	movzbl (%rax),%eax
    12a3:	84 c0                	test   %al,%al
    12a5:	0f 84 47 01 00 00    	je     13f2 <__cxa_finalize@plt+0xbe2>
    12ab:	48 8d 35 61 05 00 00 	lea    0x561(%rip),%rsi        # 1813 <__cxa_finalize@plt+0x1003>
    12b2:	48 8d 3d e3 04 00 00 	lea    0x4e3(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    12b9:	b8 00 00 00 00       	mov    $0x0,%eax
    12be:	e8 cd f4 ff ff       	callq  790 <printf@plt>
    12c3:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    12c7:	48 89 c6             	mov    %rax,%rsi
    12ca:	48 8d 3d cb 04 00 00 	lea    0x4cb(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    12d1:	b8 00 00 00 00       	mov    $0x0,%eax
    12d6:	e8 b5 f4 ff ff       	callq  790 <printf@plt>
    12db:	48 8d 3d 36 05 00 00 	lea    0x536(%rip),%rdi        # 1818 <__cxa_finalize@plt+0x1008>
    12e2:	e8 99 f4 ff ff       	callq  780 <puts@plt>
    12e7:	48 8d 3d 32 05 00 00 	lea    0x532(%rip),%rdi        # 1820 <__cxa_finalize@plt+0x1010>
    12ee:	e8 8d f4 ff ff       	callq  780 <puts@plt>
    12f3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    12f7:	48 89 c6             	mov    %rax,%rsi
    12fa:	48 8d 3d 2f 05 00 00 	lea    0x52f(%rip),%rdi        # 1830 <__cxa_finalize@plt+0x1020>
    1301:	b8 00 00 00 00       	mov    $0x0,%eax
    1306:	e8 e5 f4 ff ff       	callq  7f0 <__isoc99_scanf@plt>
    130b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    130f:	48 89 c6             	mov    %rax,%rsi
    1312:	48 8d 3d 1c 05 00 00 	lea    0x51c(%rip),%rdi        # 1835 <__cxa_finalize@plt+0x1025>
    1319:	e8 92 f4 ff ff       	callq  7b0 <strcmp@plt>
    131e:	85 c0                	test   %eax,%eax
    1320:	0f 85 12 03 00 00    	jne    1638 <__cxa_finalize@plt+0xe28>
    1326:	48 8d 3d 0b 05 00 00 	lea    0x50b(%rip),%rdi        # 1838 <__cxa_finalize@plt+0x1028>
    132d:	e8 4e f4 ff ff       	callq  780 <puts@plt>
    1332:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    1339:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    133f:	48 63 d0             	movslq %eax,%rdx
    1342:	48 89 d0             	mov    %rdx,%rax
    1345:	48 c1 e0 04          	shl    $0x4,%rax
    1349:	48 29 d0             	sub    %rdx,%rax
    134c:	48 c1 e0 02          	shl    $0x2,%rax
    1350:	48 01 d0             	add    %rdx,%rax
    1353:	48 01 c8             	add    %rcx,%rax
    1356:	c7 00 20 20 20 00    	movl   $0x202020,(%rax)
    135c:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    1363:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    1369:	48 63 d0             	movslq %eax,%rdx
    136c:	48 89 d0             	mov    %rdx,%rax
    136f:	48 c1 e0 04          	shl    $0x4,%rax
    1373:	48 29 d0             	sub    %rdx,%rax
    1376:	48 c1 e0 02          	shl    $0x2,%rax
    137a:	48 01 d0             	add    %rdx,%rax
    137d:	48 83 c0 10          	add    $0x10,%rax
    1381:	48 01 c8             	add    %rcx,%rax
    1384:	48 83 c0 04          	add    $0x4,%rax
    1388:	c7 00 20 20 20 00    	movl   $0x202020,(%rax)
    138e:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    1395:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    139b:	48 63 d0             	movslq %eax,%rdx
    139e:	48 89 d0             	mov    %rdx,%rax
    13a1:	48 c1 e0 04          	shl    $0x4,%rax
    13a5:	48 29 d0             	sub    %rdx,%rax
    13a8:	48 c1 e0 02          	shl    $0x2,%rax
    13ac:	48 01 d0             	add    %rdx,%rax
    13af:	48 83 c0 20          	add    $0x20,%rax
    13b3:	48 01 c8             	add    %rcx,%rax
    13b6:	48 83 c0 08          	add    $0x8,%rax
    13ba:	c7 00 20 20 20 00    	movl   $0x202020,(%rax)
    13c0:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    13c6:	48 63 d0             	movslq %eax,%rdx
    13c9:	48 89 d0             	mov    %rdx,%rax
    13cc:	48 c1 e0 04          	shl    $0x4,%rax
    13d0:	48 29 d0             	sub    %rdx,%rax
    13d3:	48 c1 e0 02          	shl    $0x2,%rax
    13d7:	48 01 d0             	add    %rdx,%rax
    13da:	48 01 e8             	add    %rbp,%rax
    13dd:	48 2d 84 03 00 00    	sub    $0x384,%rax
    13e3:	c6 00 00             	movb   $0x0,(%rax)
    13e6:	80 ad 2b fc ff ff 04 	subb   $0x4,-0x3d5(%rbp)
    13ed:	e9 46 02 00 00       	jmpq   1638 <__cxa_finalize@plt+0xe28>
    13f2:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    13f6:	48 89 c7             	mov    %rax,%rdi
    13f9:	e8 e2 f3 ff ff       	callq  7e0 <atoi@plt>
    13fe:	48 63 d0             	movslq %eax,%rdx
    1401:	48 89 d0             	mov    %rdx,%rax
    1404:	48 c1 e0 04          	shl    $0x4,%rax
    1408:	48 29 d0             	sub    %rdx,%rax
    140b:	48 c1 e0 02          	shl    $0x2,%rax
    140f:	48 01 d0             	add    %rdx,%rax
    1412:	48 01 e8             	add    %rbp,%rax
    1415:	48 2d 84 03 00 00    	sub    $0x384,%rax
    141b:	0f b6 00             	movzbl (%rax),%eax
    141e:	84 c0                	test   %al,%al
    1420:	74 3f                	je     1461 <__cxa_finalize@plt+0xc51>
    1422:	48 8d 35 2f 04 00 00 	lea    0x42f(%rip),%rsi        # 1858 <__cxa_finalize@plt+0x1048>
    1429:	48 8d 3d 6c 03 00 00 	lea    0x36c(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1430:	b8 00 00 00 00       	mov    $0x0,%eax
    1435:	e8 56 f3 ff ff       	callq  790 <printf@plt>
    143a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    143e:	48 89 c6             	mov    %rax,%rsi
    1441:	48 8d 3d 54 03 00 00 	lea    0x354(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1448:	b8 00 00 00 00       	mov    $0x0,%eax
    144d:	e8 3e f3 ff ff       	callq  790 <printf@plt>
    1452:	bf 0a 00 00 00       	mov    $0xa,%edi
    1457:	e8 14 f3 ff ff       	callq  770 <putchar@plt>
    145c:	e9 d7 01 00 00       	jmpq   1638 <__cxa_finalize@plt+0xe28>
    1461:	48 8d 3d 08 04 00 00 	lea    0x408(%rip),%rdi        # 1870 <__cxa_finalize@plt+0x1060>
    1468:	b8 00 00 00 00       	mov    $0x0,%eax
    146d:	e8 1e f3 ff ff       	callq  790 <printf@plt>
    1472:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    1476:	48 89 c6             	mov    %rax,%rsi
    1479:	48 8d 3d 1c 03 00 00 	lea    0x31c(%rip),%rdi        # 179c <__cxa_finalize@plt+0xf8c>
    1480:	b8 00 00 00 00       	mov    $0x0,%eax
    1485:	e8 06 f3 ff ff       	callq  790 <printf@plt>
    148a:	48 8d 3d 04 04 00 00 	lea    0x404(%rip),%rdi        # 1895 <__cxa_finalize@plt+0x1085>
    1491:	e8 ea f2 ff ff       	callq  780 <puts@plt>
    1496:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    149a:	48 89 c6             	mov    %rax,%rsi
    149d:	48 8d 3d f3 03 00 00 	lea    0x3f3(%rip),%rdi        # 1897 <__cxa_finalize@plt+0x1087>
    14a4:	b8 00 00 00 00       	mov    $0x0,%eax
    14a9:	e8 42 f3 ff ff       	callq  7f0 <__isoc99_scanf@plt>
    14ae:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    14b2:	48 8d 35 e2 03 00 00 	lea    0x3e2(%rip),%rsi        # 189b <__cxa_finalize@plt+0x108b>
    14b9:	48 89 c7             	mov    %rax,%rdi
    14bc:	e8 ef f2 ff ff       	callq  7b0 <strcmp@plt>
    14c1:	85 c0                	test   %eax,%eax
    14c3:	74 1b                	je     14e0 <__cxa_finalize@plt+0xcd0>
    14c5:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    14c9:	48 8d 35 cf 03 00 00 	lea    0x3cf(%rip),%rsi        # 189f <__cxa_finalize@plt+0x108f>
    14d0:	48 89 c7             	mov    %rax,%rdi
    14d3:	e8 d8 f2 ff ff       	callq  7b0 <strcmp@plt>
    14d8:	85 c0                	test   %eax,%eax
    14da:	0f 85 58 01 00 00    	jne    1638 <__cxa_finalize@plt+0xe28>
    14e0:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    14e6:	48 63 d0             	movslq %eax,%rdx
    14e9:	48 89 d0             	mov    %rdx,%rax
    14ec:	48 c1 e0 04          	shl    $0x4,%rax
    14f0:	48 29 d0             	sub    %rdx,%rax
    14f3:	48 c1 e0 02          	shl    $0x2,%rax
    14f7:	48 01 d0             	add    %rdx,%rax
    14fa:	48 01 e8             	add    %rbp,%rax
    14fd:	48 2d 84 03 00 00    	sub    $0x384,%rax
    1503:	c6 00 01             	movb   $0x1,(%rax)
    1506:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    150d:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    1513:	48 63 d0             	movslq %eax,%rdx
    1516:	48 89 d0             	mov    %rdx,%rax
    1519:	48 c1 e0 04          	shl    $0x4,%rax
    151d:	48 29 d0             	sub    %rdx,%rax
    1520:	48 c1 e0 02          	shl    $0x2,%rax
    1524:	48 01 d0             	add    %rdx,%rax
    1527:	48 01 c8             	add    %rcx,%rax
    152a:	48 be 1b 5b 30 3b 33 	movabs $0x206d33333b305b1b,%rsi
    1531:	33 6d 20 
    1534:	48 89 30             	mov    %rsi,(%rax)
    1537:	c7 40 08 2f 5c 1b 5b 	movl   $0x5b1b5c2f,0x8(%rax)
    153e:	66 c7 40 0c 30 6d    	movw   $0x6d30,0xc(%rax)
    1544:	c6 40 0e 00          	movb   $0x0,0xe(%rax)
    1548:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    154f:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    1555:	48 63 d0             	movslq %eax,%rdx
    1558:	48 89 d0             	mov    %rdx,%rax
    155b:	48 c1 e0 04          	shl    $0x4,%rax
    155f:	48 29 d0             	sub    %rdx,%rax
    1562:	48 c1 e0 02          	shl    $0x2,%rax
    1566:	48 01 d0             	add    %rdx,%rax
    1569:	48 83 c0 10          	add    $0x10,%rax
    156d:	48 01 c8             	add    %rcx,%rax
    1570:	48 83 c0 04          	add    $0x4,%rax
    1574:	48 89 30             	mov    %rsi,(%rax)
    1577:	c7 40 08 7c 7c 1b 5b 	movl   $0x5b1b7c7c,0x8(%rax)
    157e:	66 c7 40 0c 30 6d    	movw   $0x6d30,0xc(%rax)
    1584:	c6 40 0e 00          	movb   $0x0,0xe(%rax)
    1588:	48 8d 8d 40 fc ff ff 	lea    -0x3c0(%rbp),%rcx
    158f:	8b 85 34 fc ff ff    	mov    -0x3cc(%rbp),%eax
    1595:	48 63 d0             	movslq %eax,%rdx
    1598:	48 89 d0             	mov    %rdx,%rax
    159b:	48 c1 e0 04          	shl    $0x4,%rax
    159f:	48 29 d0             	sub    %rdx,%rax
    15a2:	48 c1 e0 02          	shl    $0x2,%rax
    15a6:	48 01 d0             	add    %rdx,%rax
    15a9:	48 83 c0 20          	add    $0x20,%rax
    15ad:	48 01 c8             	add    %rcx,%rax
    15b0:	48 83 c0 08          	add    $0x8,%rax
    15b4:	48 be 1b 5b 30 3b 33 	movabs $0x206d33333b305b1b,%rsi
    15bb:	33 6d 20 
    15be:	48 bf c2 af c2 af 1b 	movabs $0x6d305b1bafc2afc2,%rdi
    15c5:	5b 30 6d 
    15c8:	48 89 30             	mov    %rsi,(%rax)
    15cb:	48 89 78 08          	mov    %rdi,0x8(%rax)
    15cf:	c6 40 10 00          	movb   $0x0,0x10(%rax)
    15d3:	eb 38                	jmp    160d <__cxa_finalize@plt+0xdfd>
    15d5:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
    15dc:	23 85 30 fc ff ff    	and    -0x3d0(%rbp),%eax
    15e2:	89 85 3c fc ff ff    	mov    %eax,-0x3c4(%rbp)
    15e8:	8b 85 30 fc ff ff    	mov    -0x3d0(%rbp),%eax
    15ee:	89 c2                	mov    %eax,%edx
    15f0:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
    15f7:	31 d0                	xor    %edx,%eax
    15f9:	88 85 2b fc ff ff    	mov    %al,-0x3d5(%rbp)
    15ff:	8b 85 3c fc ff ff    	mov    -0x3c4(%rbp),%eax
    1605:	01 c0                	add    %eax,%eax
    1607:	89 85 30 fc ff ff    	mov    %eax,-0x3d0(%rbp)
    160d:	83 bd 30 fc ff ff 00 	cmpl   $0x0,-0x3d0(%rbp)
    1614:	75 bf                	jne    15d5 <__cxa_finalize@plt+0xdc5>
    1616:	0f b6 85 2b fc ff ff 	movzbl -0x3d5(%rbp),%eax
    161d:	8b 95 38 fc ff ff    	mov    -0x3c8(%rbp),%edx
    1623:	29 c2                	sub    %eax,%edx
    1625:	89 d0                	mov    %edx,%eax
    1627:	c1 f8 1f             	sar    $0x1f,%eax
    162a:	31 c2                	xor    %eax,%edx
    162c:	89 95 30 fc ff ff    	mov    %edx,-0x3d0(%rbp)
    1632:	29 85 30 fc ff ff    	sub    %eax,-0x3d0(%rbp)
    1638:	48 8d 85 40 fc ff ff 	lea    -0x3c0(%rbp),%rax
    163f:	48 89 c7             	mov    %rax,%rdi
    1642:	e8 02 f3 ff ff       	callq  949 <__cxa_finalize@plt+0x139>
    1647:	84 c0                	test   %al,%al
    1649:	0f 85 eb f4 ff ff    	jne    b3a <__cxa_finalize@plt+0x32a>
    164f:	e9 a9 f3 ff ff       	jmpq   9fd <__cxa_finalize@plt+0x1ed>
    1654:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    165b:	00 00 00 
    165e:	66 90                	xchg   %ax,%ax
    1660:	41 57                	push   %r15
    1662:	41 56                	push   %r14
    1664:	49 89 d7             	mov    %rdx,%r15
    1667:	41 55                	push   %r13
    1669:	41 54                	push   %r12
    166b:	4c 8d 25 fe 06 20 00 	lea    0x2006fe(%rip),%r12        # 201d70 <__cxa_finalize@plt+0x201560>
    1672:	55                   	push   %rbp
    1673:	48 8d 2d fe 06 20 00 	lea    0x2006fe(%rip),%rbp        # 201d78 <__cxa_finalize@plt+0x201568>
    167a:	53                   	push   %rbx
    167b:	41 89 fd             	mov    %edi,%r13d
    167e:	49 89 f6             	mov    %rsi,%r14
    1681:	4c 29 e5             	sub    %r12,%rbp
    1684:	48 83 ec 08          	sub    $0x8,%rsp
    1688:	48 c1 fd 03          	sar    $0x3,%rbp
    168c:	e8 b7 f0 ff ff       	callq  748 <putchar@plt-0x28>
    1691:	48 85 ed             	test   %rbp,%rbp
    1694:	74 20                	je     16b6 <__cxa_finalize@plt+0xea6>
    1696:	31 db                	xor    %ebx,%ebx
    1698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    169f:	00 
    16a0:	4c 89 fa             	mov    %r15,%rdx
    16a3:	4c 89 f6             	mov    %r14,%rsi
    16a6:	44 89 ef             	mov    %r13d,%edi
    16a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    16ad:	48 83 c3 01          	add    $0x1,%rbx
    16b1:	48 39 dd             	cmp    %rbx,%rbp
    16b4:	75 ea                	jne    16a0 <__cxa_finalize@plt+0xe90>
    16b6:	48 83 c4 08          	add    $0x8,%rsp
    16ba:	5b                   	pop    %rbx
    16bb:	5d                   	pop    %rbp
    16bc:	41 5c                	pop    %r12
    16be:	41 5d                	pop    %r13
    16c0:	41 5e                	pop    %r14
    16c2:	41 5f                	pop    %r15
    16c4:	c3                   	retq   
    16c5:	90                   	nop
    16c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16cd:	00 00 00 
    16d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000016d4 <.fini>:
    16d4:	48 83 ec 08          	sub    $0x8,%rsp
    16d8:	48 83 c4 08          	add    $0x8,%rsp
    16dc:	c3                   	retq   

Disassembly of section .rodata:

00000000000016e0 <.rodata>:
    16e0:	01 00                	add    %eax,(%rax)
    16e2:	02 00                	add    (%rax),%al
    16e4:	00 00                	add    %al,(%rax)
    16e6:	00 00                	add    %al,(%rax)
    16e8:	5b                   	pop    %rbx
    16e9:	52                   	push   %rdx
    16ea:	45                   	rex.RB
    16eb:	44                   	rex.R
    16ec:	41                   	rex.B
    16ed:	43 54                	rex.XB push %r12
    16ef:	45                   	rex.RB
    16f0:	44 5d                	rex.R pop %rbp
    16f2:	00 00                	add    %al,(%rax)
    16f4:	00 00                	add    %al,(%rax)
    16f6:	00 00                	add    %al,(%rax)
    16f8:	59                   	pop    %rcx
    16f9:	6f                   	outsl  %ds:(%rsi),(%dx)
    16fa:	75 20                	jne    171c <__cxa_finalize@plt+0xf0c>
    16fc:	68 61 76 65 20       	pushq  $0x20657661
    1701:	62                   	(bad)  
    1702:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    1705:	20 70 77             	and    %dh,0x77(%rax)
    1708:	6e                   	outsb  %ds:(%rsi),(%dx)
    1709:	69 6e 67 20 61 6c 6c 	imul   $0x6c6c6120,0x67(%rsi),%ebp
    1710:	20 64 61 79          	and    %ah,0x79(%rcx,%riz,2)
    1714:	20 61 6e             	and    %ah,0x6e(%rcx)
    1717:	64 20 69 74          	and    %ch,%fs:0x74(%rcx)
    171b:	20 68 61             	and    %ch,0x61(%rax)
    171e:	73 20                	jae    1740 <__cxa_finalize@plt+0xf30>
    1720:	6d                   	insl   (%dx),%es:(%rdi)
    1721:	61                   	(bad)  
    1722:	64 65 20 79 6f       	fs and %bh,%gs:0x6f(%rcx)
    1727:	75 20                	jne    1749 <__cxa_finalize@plt+0xf39>
    1729:	72 65                	jb     1790 <__cxa_finalize@plt+0xf80>
    172b:	61                   	(bad)  
    172c:	6c                   	insb   (%dx),%es:(%rdi)
    172d:	6c                   	insb   (%dx),%es:(%rdi)
    172e:	79 20                	jns    1750 <__cxa_finalize@plt+0xf40>
    1730:	74 68                	je     179a <__cxa_finalize@plt+0xf8a>
    1732:	69 72 73 74 79 21 0a 	imul   $0xa217974,0x73(%rdx),%esi
    1739:	4c 75 63             	rex.WR jne 179f <__cxa_finalize@plt+0xf8f>
    173c:	6b 79 20 66          	imul   $0x66,0x20(%rcx),%edi
    1740:	6f                   	outsl  %ds:(%rsi),(%dx)
    1741:	72 20                	jb     1763 <__cxa_finalize@plt+0xf53>
    1743:	79 6f                	jns    17b4 <__cxa_finalize@plt+0xfa4>
    1745:	75 20                	jne    1767 <__cxa_finalize@plt+0xf57>
    1747:	69 20 6a 75 73 74    	imul   $0x7473756a,(%rax),%esp
    174d:	20 66 69             	and    %ah,0x69(%rsi)
    1750:	6e                   	outsb  %ds:(%rsi),(%dx)
    1751:	69 73 68 65 64 20 62 	imul   $0x62206465,0x68(%rbx),%esi
    1758:	75 69                	jne    17c3 <__cxa_finalize@plt+0xfb3>
    175a:	6c                   	insb   (%dx),%es:(%rdi)
    175b:	64 69 6e 67 20 61 20 	imul   $0x63206120,%fs:0x67(%rsi),%ebp
    1762:	63 
    1763:	6c                   	insb   (%dx),%es:(%rdi)
    1764:	75 62                	jne    17c8 <__cxa_finalize@plt+0xfb8>
    1766:	2d 6d 61 74 65       	sub    $0x6574616d,%eax
    176b:	20 76 65             	and    %dh,0x65(%rsi)
    176e:	6e                   	outsb  %ds:(%rsi),(%dx)
    176f:	64 69 6e 67 20 6d 61 	imul   $0x63616d20,%fs:0x67(%rsi),%ebp
    1776:	63 
    1777:	68 69 6e 65 21       	pushq  $0x21656e69
    177c:	00 62 61             	add    %ah,0x61(%rdx)
    177f:	6c                   	insb   (%dx),%es:(%rdi)
    1780:	61                   	(bad)  
    1781:	6e                   	outsb  %ds:(%rsi),(%dx)
    1782:	63 65 3a             	movslq 0x3a(%rbp),%esp
    1785:	20 25 69 0a 00 2e    	and    %ah,0x2e000a69(%rip)        # 2e0021f4 <stdin@@GLIBC_2.2.5+0x2de001e4>
    178b:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
    1790:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
    1795:	2d 2d 2d 2d 2d       	sub    $0x2d2d2d2d,%eax
    179a:	2e 00 25 73 00 7c 00 	add    %ah,%cs:0x7c0073(%rip)        # 7c1814 <stdin@@GLIBC_2.2.5+0x5bf804>
    17a1:	7c 20                	jl     17c3 <__cxa_finalize@plt+0xfb3>
    17a3:	20 20                	and    %ah,(%rax)
    17a5:	20 20                	and    %ah,(%rax)
    17a7:	20 20                	and    %ah,(%rax)
    17a9:	20 20                	and    %ah,(%rax)
    17ab:	20 20                	and    %ah,(%rax)
    17ad:	20 20                	and    %ah,(%rax)
    17af:	20 20                	and    %ah,(%rax)
    17b1:	7c 00                	jl     17b3 <__cxa_finalize@plt+0xfa3>
    17b3:	00 00                	add    %al,(%rax)
    17b5:	00 00                	add    %al,(%rax)
    17b7:	00 c2                	add    %al,%dl
    17b9:	af                   	scas   %es:(%rdi),%eax
    17ba:	c2 af c2             	retq   $0xc2af
    17bd:	af                   	scas   %es:(%rdi),%eax
    17be:	c2 af c2             	retq   $0xc2af
    17c1:	af                   	scas   %es:(%rdi),%eax
    17c2:	c2 af c2             	retq   $0xc2af
    17c5:	af                   	scas   %es:(%rdi),%eax
    17c6:	c2 af c2             	retq   $0xc2af
    17c9:	af                   	scas   %es:(%rdi),%eax
    17ca:	c2 af c2             	retq   $0xc2af
    17cd:	af                   	scas   %es:(%rdi),%eax
    17ce:	c2 af c2             	retq   $0xc2af
    17d1:	af                   	scas   %es:(%rdi),%eax
    17d2:	c2 af c2             	retq   $0xc2af
    17d5:	af                   	scas   %es:(%rdi),%eax
    17d6:	c2 af c2             	retq   $0xc2af
    17d9:	af                   	scas   %es:(%rdi),%eax
    17da:	00 00                	add    %al,(%rax)
    17dc:	00 00                	add    %al,(%rax)
    17de:	00 00                	add    %al,(%rax)
    17e0:	45 6e                	rex.RB outsb %ds:(%rsi),(%dx)
    17e2:	74 65                	je     1849 <__cxa_finalize@plt+0x1039>
    17e4:	72 20                	jb     1806 <__cxa_finalize@plt+0xff6>
    17e6:	77 68                	ja     1850 <__cxa_finalize@plt+0x1040>
    17e8:	69 63 68 20 63 6c 75 	imul   $0x756c6320,0x68(%rbx),%esp
    17ef:	62                   	(bad)  
    17f0:	2d 6d 61 74 65       	sub    $0x6574616d,%eax
    17f5:	20 79 6f             	and    %bh,0x6f(%rcx)
    17f8:	75 20                	jne    181a <__cxa_finalize@plt+0x100a>
    17fa:	77 61                	ja     185d <__cxa_finalize@plt+0x104d>
    17fc:	6e                   	outsb  %ds:(%rsi),(%dx)
    17fd:	74 20                	je     181f <__cxa_finalize@plt+0x100f>
    17ff:	74 6f                	je     1870 <__cxa_finalize@plt+0x1060>
    1801:	20 62 75             	and    %ah,0x75(%rdx)
    1804:	79 2f                	jns    1835 <__cxa_finalize@plt+0x1025>
    1806:	72 65                	jb     186d <__cxa_finalize@plt+0x105d>
    1808:	74 75                	je     187f <__cxa_finalize@plt+0x106f>
    180a:	72 6e                	jb     187a <__cxa_finalize@plt+0x106a>
    180c:	3a 20                	cmp    (%rax),%ah
    180e:	00 25 32 73 00 74    	add    %ah,0x74007332(%rip)        # 74008b46 <stdin@@GLIBC_2.2.5+0x73e06b36>
    1814:	68 65 20 00 20       	pushq  $0x20002065
    1819:	69 74 20 69 73 21 00 	imul   $0x54002173,0x69(%rax,%riz,1),%esi
    1820:	54 
    1821:	68 61 74 20 77       	pushq  $0x77207461
    1826:	69 6c 6c 20 62 65 20 	imul   $0x24206562,0x20(%rsp,%rbp,2),%ebp
    182d:	24 
    182e:	34 00                	xor    $0x0,%al
    1830:	25 31 36 73 00       	and    $0x733631,%eax
    1835:	24 34                	and    $0x34,%al
    1837:	00 54 68 61          	add    %dl,0x61(%rax,%rbp,2)
    183b:	6e                   	outsb  %ds:(%rsi),(%dx)
    183c:	6b 73 2c 20          	imul   $0x20,0x2c(%rbx),%esi
    1840:	68 65 72 65 20       	pushq  $0x20657265
    1845:	69 73 20 79 6f 75 72 	imul   $0x72756f79,0x20(%rbx),%esi
    184c:	20 63 6c             	and    %ah,0x6c(%rbx)
    184f:	75 62                	jne    18b3 <__cxa_finalize@plt+0x10a3>
    1851:	2d 6d 61 74 65       	sub    $0x6574616d,%eax
    1856:	21 00                	and    %eax,(%rax)
    1858:	49 20 61 73          	rex.WB and %spl,0x73(%r9)
    185c:	6b 65 64 20          	imul   $0x20,0x64(%rbp),%esp
    1860:	66 6f                	outsw  %ds:(%rsi),(%dx)
    1862:	72 20                	jb     1884 <__cxa_finalize@plt+0x1074>
    1864:	24 34                	and    $0x34,%al
    1866:	20 6e 6f             	and    %ch,0x6f(%rsi)
    1869:	74 20                	je     188b <__cxa_finalize@plt+0x107b>
    186b:	00 00                	add    %al,(%rax)
    186d:	00 00                	add    %al,(%rax)
    186f:	00 57 6f             	add    %dl,0x6f(%rdi)
    1872:	75 6c                	jne    18e0 <__cxa_finalize@plt+0x10d0>
    1874:	64 20 79 6f          	and    %bh,%fs:0x6f(%rcx)
    1878:	75 20                	jne    189a <__cxa_finalize@plt+0x108a>
    187a:	6c                   	insb   (%dx),%es:(%rdi)
    187b:	69 6b 65 20 74 6f 20 	imul   $0x206f7420,0x65(%rbx),%ebp
    1882:	72 65                	jb     18e9 <__cxa_finalize@plt+0x10d9>
    1884:	74 75                	je     18fb <__cxa_finalize@plt+0x10eb>
    1886:	72 6e                	jb     18f6 <__cxa_finalize@plt+0x10e6>
    1888:	20 63 61             	and    %ah,0x61(%rbx)
    188b:	6e                   	outsb  %ds:(%rsi),(%dx)
    188c:	20 6e 75             	and    %ch,0x75(%rsi)
    188f:	6d                   	insl   (%dx),%es:(%rdi)
    1890:	62                   	(bad)  
    1891:	65 72 20             	gs jb  18b4 <__cxa_finalize@plt+0x10a4>
    1894:	00 3f                	add    %bh,(%rdi)
    1896:	00 25 33 73 00 79    	add    %ah,0x79007333(%rip)        # 79008bcf <stdin@@GLIBC_2.2.5+0x78e06bbf>
    189c:	65 73 00             	gs jae 189f <__cxa_finalize@plt+0x108f>
    189f:	59                   	pop    %rcx
    18a0:	65 73 00             	gs jae 18a3 <__cxa_finalize@plt+0x1093>

Disassembly of section .eh_frame_hdr:

00000000000018a4 <.eh_frame_hdr>:
    18a4:	01 1b                	add    %ebx,(%rbx)
    18a6:	03 3b                	add    (%rbx),%edi
    18a8:	50                   	push   %rax
    18a9:	00 00                	add    %al,(%rax)
    18ab:	00 09                	add    %cl,(%rcx)
    18ad:	00 00                	add    %al,(%rax)
    18af:	00 bc ee ff ff 9c 00 	add    %bh,0x9cffff(%rsi,%rbp,8)
    18b6:	00 00                	add    %al,(%rax)
    18b8:	6c                   	insb   (%dx),%es:(%rdi)
    18b9:	ef                   	out    %eax,(%dx)
    18ba:	ff                   	(bad)  
    18bb:	ff c4                	inc    %esp
    18bd:	00 00                	add    %al,(%rax)
    18bf:	00 7c ef ff          	add    %bh,-0x1(%rdi,%rbp,8)
    18c3:	ff 6c 00 00          	ljmp   *0x0(%rax,%rax,1)
    18c7:	00 86 f0 ff ff dc    	add    %al,-0x23000010(%rsi)
    18cd:	00 00                	add    %al,(%rax)
    18cf:	00 a5 f0 ff ff fc    	add    %ah,-0x3000010(%rbp)
    18d5:	00 00                	add    %al,(%rax)
    18d7:	00 f4                	add    %dh,%ah
    18d9:	f0 ff                	lock (bad) 
    18db:	ff 1c 01             	lcall  *(%rcx,%rax,1)
    18de:	00 00                	add    %al,(%rax)
    18e0:	09 f1                	or     %esi,%ecx
    18e2:	ff                   	(bad)  
    18e3:	ff                   	(bad)  
    18e4:	38 01                	cmp    %al,(%rcx)
    18e6:	00 00                	add    %al,(%rax)
    18e8:	bc fd ff ff 54       	mov    $0x54fffffd,%esp
    18ed:	01 00                	add    %eax,(%rax)
    18ef:	00 2c fe             	add    %ch,(%rsi,%rdi,8)
    18f2:	ff                   	(bad)  
    18f3:	ff                   	.byte 0xff
    18f4:	9c                   	pushfq 
    18f5:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

00000000000018f8 <.eh_frame>:
    18f8:	14 00                	adc    $0x0,%al
    18fa:	00 00                	add    %al,(%rax)
    18fc:	00 00                	add    %al,(%rax)
    18fe:	00 00                	add    %al,(%rax)
    1900:	01 7a 52             	add    %edi,0x52(%rdx)
    1903:	00 01                	add    %al,(%rcx)
    1905:	78 10                	js     1917 <__cxa_finalize@plt+0x1107>
    1907:	01 1b                	add    %ebx,(%rbx)
    1909:	0c 07                	or     $0x7,%al
    190b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    1911:	00 00                	add    %al,(%rax)
    1913:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1916:	00 00                	add    %al,(%rax)
    1918:	08 ef                	or     %ch,%bh
    191a:	ff                   	(bad)  
    191b:	ff 2b                	ljmp   *(%rbx)
	...
    1925:	00 00                	add    %al,(%rax)
    1927:	00 14 00             	add    %dl,(%rax,%rax,1)
    192a:	00 00                	add    %al,(%rax)
    192c:	00 00                	add    %al,(%rax)
    192e:	00 00                	add    %al,(%rax)
    1930:	01 7a 52             	add    %edi,0x52(%rdx)
    1933:	00 01                	add    %al,(%rcx)
    1935:	78 10                	js     1947 <__cxa_finalize@plt+0x1137>
    1937:	01 1b                	add    %ebx,(%rbx)
    1939:	0c 07                	or     $0x7,%al
    193b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    1941:	00 00                	add    %al,(%rax)
    1943:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1946:	00 00                	add    %al,(%rax)
    1948:	18 ee                	sbb    %ch,%dh
    194a:	ff                   	(bad)  
    194b:	ff b0 00 00 00 00    	pushq  0x0(%rax)
    1951:	0e                   	(bad)  
    1952:	10 46 0e             	adc    %al,0xe(%rsi)
    1955:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    1958:	0b 77 08             	or     0x8(%rdi),%esi
    195b:	80 00 3f             	addb   $0x3f,(%rax)
    195e:	1a 3b                	sbb    (%rbx),%bh
    1960:	2a 33                	sub    (%rbx),%dh
    1962:	24 22                	and    $0x22,%al
    1964:	00 00                	add    %al,(%rax)
    1966:	00 00                	add    %al,(%rax)
    1968:	14 00                	adc    $0x0,%al
    196a:	00 00                	add    %al,(%rax)
    196c:	44 00 00             	add    %r8b,(%rax)
    196f:	00 a0 ee ff ff 08    	add    %ah,0x8ffffee(%rax)
	...
    197d:	00 00                	add    %al,(%rax)
    197f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1982:	00 00                	add    %al,(%rax)
    1984:	5c                   	pop    %rsp
    1985:	00 00                	add    %al,(%rax)
    1987:	00 a2 ef ff ff 1f    	add    %ah,0x1fffffef(%rdx)
    198d:	00 00                	add    %al,(%rax)
    198f:	00 00                	add    %al,(%rax)
    1991:	41 0e                	rex.B (bad) 
    1993:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    1999:	5a                   	pop    %rdx
    199a:	0c 07                	or     $0x7,%al
    199c:	08 00                	or     %al,(%rax)
    199e:	00 00                	add    %al,(%rax)
    19a0:	1c 00                	sbb    $0x0,%al
    19a2:	00 00                	add    %al,(%rax)
    19a4:	7c 00                	jl     19a6 <__cxa_finalize@plt+0x1196>
    19a6:	00 00                	add    %al,(%rax)
    19a8:	a1 ef ff ff 4f 00 00 	movabs 0x4fffffef,%eax
    19af:	00 00 
    19b1:	41 0e                	rex.B (bad) 
    19b3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    19b9:	02 4a 0c             	add    0xc(%rdx),%cl
    19bc:	07                   	(bad)  
    19bd:	08 00                	or     %al,(%rax)
    19bf:	00 18                	add    %bl,(%rax)
    19c1:	00 00                	add    %al,(%rax)
    19c3:	00 9c 00 00 00 d0 ef 	add    %bl,-0x10300000(%rax,%rax,1)
    19ca:	ff                   	(bad)  
    19cb:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 19d1 <__cxa_finalize@plt+0x11c1>
    19d1:	41 0e                	rex.B (bad) 
    19d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    19d9:	00 00                	add    %al,(%rax)
    19db:	00 18                	add    %bl,(%rax)
    19dd:	00 00                	add    %al,(%rax)
    19df:	00 b8 00 00 00 c9    	add    %bh,-0x37000000(%rax)
    19e5:	ef                   	out    %eax,(%dx)
    19e6:	ff                   	(bad)  
    19e7:	ff a7 0c 00 00 00    	jmpq   *0xc(%rdi)
    19ed:	41 0e                	rex.B (bad) 
    19ef:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    19f5:	00 00                	add    %al,(%rax)
    19f7:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    19fb:	00 d4                	add    %dl,%ah
    19fd:	00 00                	add    %al,(%rax)
    19ff:	00 60 fc             	add    %ah,-0x4(%rax)
    1a02:	ff                   	(bad)  
    1a03:	ff 65 00             	jmpq   *0x0(%rbp)
    1a06:	00 00                	add    %al,(%rax)
    1a08:	00 42 0e             	add    %al,0xe(%rdx)
    1a0b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    1a11:	8e 03                	mov    (%rbx),%es
    1a13:	45 0e                	rex.RB (bad) 
    1a15:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    1a1b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86302869 <stdin@@GLIBC_2.2.5+0xffffffff86100859>
    1a21:	06                   	(bad)  
    1a22:	48 0e                	rex.W (bad) 
    1a24:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
    1a2a:	72 0e                	jb     1a3a <__cxa_finalize@plt+0x122a>
    1a2c:	38 41 0e             	cmp    %al,0xe(%rcx)
    1a2f:	30 41 0e             	xor    %al,0xe(%rcx)
    1a32:	28 42 0e             	sub    %al,0xe(%rdx)
    1a35:	20 42 0e             	and    %al,0xe(%rdx)
    1a38:	18 42 0e             	sbb    %al,0xe(%rdx)
    1a3b:	10 42 0e             	adc    %al,0xe(%rdx)
    1a3e:	08 00                	or     %al,(%rax)
    1a40:	10 00                	adc    %al,(%rax)
    1a42:	00 00                	add    %al,(%rax)
    1a44:	1c 01                	sbb    $0x1,%al
    1a46:	00 00                	add    %al,(%rax)
    1a48:	88 fc                	mov    %bh,%ah
    1a4a:	ff                   	(bad)  
    1a4b:	ff 02                	incl   (%rdx)
	...

Disassembly of section .init_array:

0000000000201d70 <.init_array>:
  201d70:	20 09                	and    %cl,(%rcx)
  201d72:	00 00                	add    %al,(%rax)
  201d74:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000201d78 <.fini_array>:
  201d78:	e0 08                	loopne 201d82 <__cxa_finalize@plt+0x201572>
  201d7a:	00 00                	add    %al,(%rax)
  201d7c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000201d80 <.dynamic>:
  201d80:	01 00                	add    %eax,(%rax)
  201d82:	00 00                	add    %al,(%rax)
  201d84:	00 00                	add    %al,(%rax)
  201d86:	00 00                	add    %al,(%rax)
  201d88:	01 00                	add    %eax,(%rax)
  201d8a:	00 00                	add    %al,(%rax)
  201d8c:	00 00                	add    %al,(%rax)
  201d8e:	00 00                	add    %al,(%rax)
  201d90:	0c 00                	or     $0x0,%al
  201d92:	00 00                	add    %al,(%rax)
  201d94:	00 00                	add    %al,(%rax)
  201d96:	00 00                	add    %al,(%rax)
  201d98:	48 07                	rex.W (bad) 
  201d9a:	00 00                	add    %al,(%rax)
  201d9c:	00 00                	add    %al,(%rax)
  201d9e:	00 00                	add    %al,(%rax)
  201da0:	0d 00 00 00 00       	or     $0x0,%eax
  201da5:	00 00                	add    %al,(%rax)
  201da7:	00 d4                	add    %dl,%ah
  201da9:	16                   	(bad)  
  201daa:	00 00                	add    %al,(%rax)
  201dac:	00 00                	add    %al,(%rax)
  201dae:	00 00                	add    %al,(%rax)
  201db0:	19 00                	sbb    %eax,(%rax)
  201db2:	00 00                	add    %al,(%rax)
  201db4:	00 00                	add    %al,(%rax)
  201db6:	00 00                	add    %al,(%rax)
  201db8:	70 1d                	jo     201dd7 <__cxa_finalize@plt+0x2015c7>
  201dba:	20 00                	and    %al,(%rax)
  201dbc:	00 00                	add    %al,(%rax)
  201dbe:	00 00                	add    %al,(%rax)
  201dc0:	1b 00                	sbb    (%rax),%eax
  201dc2:	00 00                	add    %al,(%rax)
  201dc4:	00 00                	add    %al,(%rax)
  201dc6:	00 00                	add    %al,(%rax)
  201dc8:	08 00                	or     %al,(%rax)
  201dca:	00 00                	add    %al,(%rax)
  201dcc:	00 00                	add    %al,(%rax)
  201dce:	00 00                	add    %al,(%rax)
  201dd0:	1a 00                	sbb    (%rax),%al
  201dd2:	00 00                	add    %al,(%rax)
  201dd4:	00 00                	add    %al,(%rax)
  201dd6:	00 00                	add    %al,(%rax)
  201dd8:	78 1d                	js     201df7 <__cxa_finalize@plt+0x2015e7>
  201dda:	20 00                	and    %al,(%rax)
  201ddc:	00 00                	add    %al,(%rax)
  201dde:	00 00                	add    %al,(%rax)
  201de0:	1c 00                	sbb    $0x0,%al
  201de2:	00 00                	add    %al,(%rax)
  201de4:	00 00                	add    %al,(%rax)
  201de6:	00 00                	add    %al,(%rax)
  201de8:	08 00                	or     %al,(%rax)
  201dea:	00 00                	add    %al,(%rax)
  201dec:	00 00                	add    %al,(%rax)
  201dee:	00 00                	add    %al,(%rax)
  201df0:	f5                   	cmc    
  201df1:	fe                   	(bad)  
  201df2:	ff 6f 00             	ljmp   *0x0(%rdi)
  201df5:	00 00                	add    %al,(%rax)
  201df7:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  201dfd:	00 00                	add    %al,(%rax)
  201dff:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 201e05 <__cxa_finalize@plt+0x2015f5>
  201e05:	00 00                	add    %al,(%rax)
  201e07:	00 58 04             	add    %bl,0x4(%rax)
  201e0a:	00 00                	add    %al,(%rax)
  201e0c:	00 00                	add    %al,(%rax)
  201e0e:	00 00                	add    %al,(%rax)
  201e10:	06                   	(bad)  
  201e11:	00 00                	add    %al,(%rax)
  201e13:	00 00                	add    %al,(%rax)
  201e15:	00 00                	add    %al,(%rax)
  201e17:	00 c0                	add    %al,%al
  201e19:	02 00                	add    (%rax),%al
  201e1b:	00 00                	add    %al,(%rax)
  201e1d:	00 00                	add    %al,(%rax)
  201e1f:	00 0a                	add    %cl,(%rdx)
  201e21:	00 00                	add    %al,(%rax)
  201e23:	00 00                	add    %al,(%rax)
  201e25:	00 00                	add    %al,(%rax)
  201e27:	00 d5                	add    %dl,%ch
  201e29:	00 00                	add    %al,(%rax)
  201e2b:	00 00                	add    %al,(%rax)
  201e2d:	00 00                	add    %al,(%rax)
  201e2f:	00 0b                	add    %cl,(%rbx)
  201e31:	00 00                	add    %al,(%rax)
  201e33:	00 00                	add    %al,(%rax)
  201e35:	00 00                	add    %al,(%rax)
  201e37:	00 18                	add    %bl,(%rax)
  201e39:	00 00                	add    %al,(%rax)
  201e3b:	00 00                	add    %al,(%rax)
  201e3d:	00 00                	add    %al,(%rax)
  201e3f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 201e45 <__cxa_finalize@plt+0x201635>
	...
  201e4d:	00 00                	add    %al,(%rax)
  201e4f:	00 03                	add    %al,(%rbx)
  201e51:	00 00                	add    %al,(%rax)
  201e53:	00 00                	add    %al,(%rax)
  201e55:	00 00                	add    %al,(%rax)
  201e57:	00 70 1f             	add    %dh,0x1f(%rax)
  201e5a:	20 00                	and    %al,(%rax)
  201e5c:	00 00                	add    %al,(%rax)
  201e5e:	00 00                	add    %al,(%rax)
  201e60:	02 00                	add    (%rax),%al
  201e62:	00 00                	add    %al,(%rax)
  201e64:	00 00                	add    %al,(%rax)
  201e66:	00 00                	add    %al,(%rax)
  201e68:	f0 00 00             	lock add %al,(%rax)
  201e6b:	00 00                	add    %al,(%rax)
  201e6d:	00 00                	add    %al,(%rax)
  201e6f:	00 14 00             	add    %dl,(%rax,%rax,1)
  201e72:	00 00                	add    %al,(%rax)
  201e74:	00 00                	add    %al,(%rax)
  201e76:	00 00                	add    %al,(%rax)
  201e78:	07                   	(bad)  
  201e79:	00 00                	add    %al,(%rax)
  201e7b:	00 00                	add    %al,(%rax)
  201e7d:	00 00                	add    %al,(%rax)
  201e7f:	00 17                	add    %dl,(%rdi)
  201e81:	00 00                	add    %al,(%rax)
  201e83:	00 00                	add    %al,(%rax)
  201e85:	00 00                	add    %al,(%rax)
  201e87:	00 58 06             	add    %bl,0x6(%rax)
  201e8a:	00 00                	add    %al,(%rax)
  201e8c:	00 00                	add    %al,(%rax)
  201e8e:	00 00                	add    %al,(%rax)
  201e90:	07                   	(bad)  
  201e91:	00 00                	add    %al,(%rax)
  201e93:	00 00                	add    %al,(%rax)
  201e95:	00 00                	add    %al,(%rax)
  201e97:	00 80 05 00 00 00    	add    %al,0x5(%rax)
  201e9d:	00 00                	add    %al,(%rax)
  201e9f:	00 08                	add    %cl,(%rax)
  201ea1:	00 00                	add    %al,(%rax)
  201ea3:	00 00                	add    %al,(%rax)
  201ea5:	00 00                	add    %al,(%rax)
  201ea7:	00 d8                	add    %bl,%al
  201ea9:	00 00                	add    %al,(%rax)
  201eab:	00 00                	add    %al,(%rax)
  201ead:	00 00                	add    %al,(%rax)
  201eaf:	00 09                	add    %cl,(%rcx)
  201eb1:	00 00                	add    %al,(%rax)
  201eb3:	00 00                	add    %al,(%rax)
  201eb5:	00 00                	add    %al,(%rax)
  201eb7:	00 18                	add    %bl,(%rax)
  201eb9:	00 00                	add    %al,(%rax)
  201ebb:	00 00                	add    %al,(%rax)
  201ebd:	00 00                	add    %al,(%rax)
  201ebf:	00 1e                	add    %bl,(%rsi)
  201ec1:	00 00                	add    %al,(%rax)
  201ec3:	00 00                	add    %al,(%rax)
  201ec5:	00 00                	add    %al,(%rax)
  201ec7:	00 08                	add    %cl,(%rax)
  201ec9:	00 00                	add    %al,(%rax)
  201ecb:	00 00                	add    %al,(%rax)
  201ecd:	00 00                	add    %al,(%rax)
  201ecf:	00 fb                	add    %bh,%bl
  201ed1:	ff                   	(bad)  
  201ed2:	ff 6f 00             	ljmp   *0x0(%rdi)
  201ed5:	00 00                	add    %al,(%rax)
  201ed7:	00 01                	add    %al,(%rcx)
  201ed9:	00 00                	add    %al,(%rax)
  201edb:	08 00                	or     %al,(%rax)
  201edd:	00 00                	add    %al,(%rax)
  201edf:	00 fe                	add    %bh,%dh
  201ee1:	ff                   	(bad)  
  201ee2:	ff 6f 00             	ljmp   *0x0(%rdi)
  201ee5:	00 00                	add    %al,(%rax)
  201ee7:	00 50 05             	add    %dl,0x5(%rax)
  201eea:	00 00                	add    %al,(%rax)
  201eec:	00 00                	add    %al,(%rax)
  201eee:	00 00                	add    %al,(%rax)
  201ef0:	ff                   	(bad)  
  201ef1:	ff                   	(bad)  
  201ef2:	ff 6f 00             	ljmp   *0x0(%rdi)
  201ef5:	00 00                	add    %al,(%rax)
  201ef7:	00 01                	add    %al,(%rcx)
  201ef9:	00 00                	add    %al,(%rax)
  201efb:	00 00                	add    %al,(%rax)
  201efd:	00 00                	add    %al,(%rax)
  201eff:	00 f0                	add    %dh,%al
  201f01:	ff                   	(bad)  
  201f02:	ff 6f 00             	ljmp   *0x0(%rdi)
  201f05:	00 00                	add    %al,(%rax)
  201f07:	00 2e                	add    %ch,(%rsi)
  201f09:	05 00 00 00 00       	add    $0x0,%eax
  201f0e:	00 00                	add    %al,(%rax)
  201f10:	f9                   	stc    
  201f11:	ff                   	(bad)  
  201f12:	ff 6f 00             	ljmp   *0x0(%rdi)
  201f15:	00 00                	add    %al,(%rax)
  201f17:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000201f70 <.got>:
  201f70:	80 1d 20 00 00 00 00 	sbbb   $0x0,0x20(%rip)        # 201f97 <__cxa_finalize@plt+0x201787>
	...
  201f87:	00 76 07             	add    %dh,0x7(%rsi)
  201f8a:	00 00                	add    %al,(%rax)
  201f8c:	00 00                	add    %al,(%rax)
  201f8e:	00 00                	add    %al,(%rax)
  201f90:	86 07                	xchg   %al,(%rdi)
  201f92:	00 00                	add    %al,(%rax)
  201f94:	00 00                	add    %al,(%rax)
  201f96:	00 00                	add    %al,(%rax)
  201f98:	96                   	xchg   %eax,%esi
  201f99:	07                   	(bad)  
  201f9a:	00 00                	add    %al,(%rax)
  201f9c:	00 00                	add    %al,(%rax)
  201f9e:	00 00                	add    %al,(%rax)
  201fa0:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  201fa1:	07                   	(bad)  
  201fa2:	00 00                	add    %al,(%rax)
  201fa4:	00 00                	add    %al,(%rax)
  201fa6:	00 00                	add    %al,(%rax)
  201fa8:	b6 07                	mov    $0x7,%dh
  201faa:	00 00                	add    %al,(%rax)
  201fac:	00 00                	add    %al,(%rax)
  201fae:	00 00                	add    %al,(%rax)
  201fb0:	c6 07 00             	movb   $0x0,(%rdi)
  201fb3:	00 00                	add    %al,(%rax)
  201fb5:	00 00                	add    %al,(%rax)
  201fb7:	00 d6                	add    %dl,%dh
  201fb9:	07                   	(bad)  
  201fba:	00 00                	add    %al,(%rax)
  201fbc:	00 00                	add    %al,(%rax)
  201fbe:	00 00                	add    %al,(%rax)
  201fc0:	e6 07                	out    %al,$0x7
  201fc2:	00 00                	add    %al,(%rax)
  201fc4:	00 00                	add    %al,(%rax)
  201fc6:	00 00                	add    %al,(%rax)
  201fc8:	f6 07 00             	testb  $0x0,(%rdi)
  201fcb:	00 00                	add    %al,(%rax)
  201fcd:	00 00                	add    %al,(%rax)
  201fcf:	00 06                	add    %al,(%rsi)
  201fd1:	08 00                	or     %al,(%rax)
	...

Disassembly of section .data:

0000000000202000 <.data>:
	...
  202008:	08 20                	or     %ah,(%rax)
  20200a:	20 00                	and    %al,(%rax)
  20200c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000202010 <stdin@@GLIBC_2.2.5>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <putchar@plt-0x6f8>
   a:	74 75                	je     81 <putchar@plt-0x6ef>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <stdin@@GLIBC_2.2.5+0x75425538>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <putchar@plt-0x6e1>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	31 29                	xor    %ebp,(%rcx)
  24:	20 37                	and    %dh,(%rdi)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
