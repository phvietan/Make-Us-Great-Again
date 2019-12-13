
vodka:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <puts@plt-0x50b>
 248:	78 38                	js     282 <puts@plt-0x4fe>
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
 283:	00 35 24 c0 e9 c3    	add    %dh,-0x3c163fdc(%rip)        # ffffffffc3e9c2ad <stdin@@GLIBC_2.2.5+0xffffffffc3c9a28d>
 289:	e3 bb                	jrcxz  246 <puts@plt-0x53a>
 28b:	31 6b 2e             	xor    %ebp,0x2e(%rbx)
 28e:	ae                   	scas   %es:(%rdi),%al
 28f:	de 6b 3f             	fisubrs 0x3f(%rbx)
 292:	97                   	xchg   %eax,%edi
 293:	3d 03 59 67 6c       	cmp    $0x6c675903,%eax

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	02 00                	add    (%rax),%al
 29a:	00 00                	add    %al,(%rax)
 29c:	0f 00 00             	sldt   (%rax)
 29f:	00 01                	add    %al,(%rcx)
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 06                	add    %al,(%rsi)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 20                	add    %ah,(%rax)
 2ab:	00 80 01 10 00 0f    	add    %al,0xf001001(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 10                	add    %dl,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 29                	add    %ch,(%rcx)
 2b9:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
 2be:	61                   	(bad)  
 2bf:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000002c0 <.dynsym>:
	...
 2d8:	93                   	xchg   %eax,%ebx
 2d9:	00 00                	add    %al,(%rax)
 2db:	00 20                	add    %ah,(%rax)
	...
 2ed:	00 00                	add    %al,(%rax)
 2ef:	00 17                	add    %dl,(%rdi)
 2f1:	00 00                	add    %al,(%rax)
 2f3:	00 12                	add    %dl,(%rdx)
	...
 305:	00 00                	add    %al,(%rax)
 307:	00 1c 00             	add    %bl,(%rax,%rax,1)
 30a:	00 00                	add    %al,(%rax)
 30c:	12 00                	adc    (%rax),%al
	...
 31e:	00 00                	add    %al,(%rax)
 320:	33 00                	xor    (%rax),%eax
 322:	00 00                	add    %al,(%rax)
 324:	12 00                	adc    (%rax),%al
	...
 336:	00 00                	add    %al,(%rax)
 338:	6b 00 00             	imul   $0x0,(%rax),%eax
 33b:	00 12                	add    %dl,(%rdx)
	...
 34d:	00 00                	add    %al,(%rax)
 34f:	00 41 00             	add    %al,0x0(%rcx)
 352:	00 00                	add    %al,(%rax)
 354:	12 00                	adc    (%rax),%al
	...
 366:	00 00                	add    %al,(%rax)
 368:	64 00 00             	add    %al,%fs:(%rax)
 36b:	00 12                	add    %dl,(%rdx)
	...
 37d:	00 00                	add    %al,(%rax)
 37f:	00 af 00 00 00 20    	add    %ch,0x20000000(%rdi)
	...
 395:	00 00                	add    %al,(%rax)
 397:	00 0b                	add    %cl,(%rbx)
 399:	00 00                	add    %al,(%rax)
 39b:	00 12                	add    %dl,(%rdx)
	...
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 4e 00             	add    %cl,0x0(%rsi)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	12 00                	adc    (%rax),%al
	...
 3c6:	00 00                	add    %al,(%rax)
 3c8:	3a 00                	cmp    (%rax),%al
 3ca:	00 00                	add    %al,(%rax)
 3cc:	12 00                	adc    (%rax),%al
	...
 3de:	00 00                	add    %al,(%rax)
 3e0:	12 00                	adc    (%rax),%al
 3e2:	00 00                	add    %al,(%rax)
 3e4:	12 00                	adc    (%rax),%al
	...
 3f6:	00 00                	add    %al,(%rax)
 3f8:	be 00 00 00 20       	mov    $0x20000000,%esi
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 55 00             	add    %dl,0x0(%rbp)
 412:	00 00                	add    %al,(%rax)
 414:	22 00                	and    (%rax),%al
	...
 426:	00 00                	add    %al,(%rax)
 428:	47 00 00             	rex.RXB add %r8b,(%r8)
 42b:	00 11                	add    %dl,(%rcx)
 42d:	00 18                	add    %bl,(%rax)
 42f:	00 10                	add    %dl,(%rax)
 431:	20 20                	and    %ah,(%rax)
 433:	00 00                	add    %al,(%rax)
 435:	00 00                	add    %al,(%rax)
 437:	00 08                	add    %cl,(%rax)
 439:	00 00                	add    %al,(%rax)
 43b:	00 00                	add    %al,(%rax)
 43d:	00 00                	add    %al,(%rax)
 43f:	00 2d 00 00 00 11    	add    %ch,0x11000000(%rip)        # 11000445 <stdin@@GLIBC_2.2.5+0x10dfe425>
 445:	00 18                	add    %bl,(%rax)
 447:	00 20                	add    %ah,(%rax)
 449:	20 20                	and    %ah,(%rax)
 44b:	00 00                	add    %al,(%rax)
 44d:	00 00                	add    %al,(%rax)
 44f:	00 08                	add    %cl,(%rax)
 451:	00 00                	add    %al,(%rax)
 453:	00 00                	add    %al,(%rax)
 455:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000458 <.dynstr>:
 458:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 45c:	63 2e                	movslq (%rsi),%ebp
 45e:	73 6f                	jae    4cf <puts@plt-0x2b1>
 460:	2e 36 00 66 66       	cs add %ah,%ss:0x66(%rsi)
 465:	6c                   	insb   (%dx),%es:(%rdi)
 466:	75 73                	jne    4db <puts@plt-0x2a5>
 468:	68 00 65 78 69       	pushq  $0x69786500
 46d:	74 00                	je     46f <puts@plt-0x311>
 46f:	70 75                	jo     4e6 <puts@plt-0x29a>
 471:	74 73                	je     4e6 <puts@plt-0x29a>
 473:	00 5f 5f             	add    %bl,0x5f(%rdi)
 476:	73 74                	jae    4ec <puts@plt-0x294>
 478:	61                   	(bad)  
 479:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 47c:	63 68 6b             	movslq 0x6b(%rax),%ebp
 47f:	5f                   	pop    %rdi
 480:	66 61                	data16 (bad) 
 482:	69 6c 00 73 74 64 69 	imul   $0x6e696474,0x73(%rax,%rax,1),%ebp
 489:	6e 
 48a:	00 70 72             	add    %dh,0x72(%rax)
 48d:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 494:	72 74                	jb     50a <puts@plt-0x276>
 496:	6f                   	outsl  %ds:(%rsi),(%dx)
 497:	6b 00 66             	imul   $0x66,(%rax),%eax
 49a:	67 65 74 73          	addr32 gs je 511 <puts@plt-0x26f>
 49e:	00 73 74             	add    %dh,0x74(%rbx)
 4a1:	64 6f                	outsl  %fs:(%rsi),(%dx)
 4a3:	75 74                	jne    519 <puts@plt-0x267>
 4a5:	00 70 74             	add    %dh,0x74(%rax)
 4a8:	72 61                	jb     50b <puts@plt-0x275>
 4aa:	63 65 00             	movslq 0x0(%rbp),%esp
 4ad:	5f                   	pop    %rdi
 4ae:	5f                   	pop    %rdi
 4af:	63 78 61             	movslq 0x61(%rax),%edi
 4b2:	5f                   	pop    %rdi
 4b3:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 4b9:	7a 65                	jp     520 <puts@plt-0x260>
 4bb:	00 73 74             	add    %dh,0x74(%rbx)
 4be:	72 63                	jb     523 <puts@plt-0x25d>
 4c0:	6d                   	insl   (%dx),%es:(%rdi)
 4c1:	70 00                	jo     4c3 <puts@plt-0x2bd>
 4c3:	5f                   	pop    %rdi
 4c4:	5f                   	pop    %rdi
 4c5:	6c                   	insb   (%dx),%es:(%rdi)
 4c6:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 4cd:	72 74                	jb     543 <puts@plt-0x23d>
 4cf:	5f                   	pop    %rdi
 4d0:	6d                   	insl   (%dx),%es:(%rdi)
 4d1:	61                   	(bad)  
 4d2:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 4d9:	43 5f                	rex.XB pop %r15
 4db:	32 2e                	xor    (%rsi),%ch
 4dd:	34 00                	xor    $0x0,%al
 4df:	47                   	rex.RXB
 4e0:	4c                   	rex.WR
 4e1:	49                   	rex.WB
 4e2:	42                   	rex.X
 4e3:	43 5f                	rex.XB pop %r15
 4e5:	32 2e                	xor    (%rsi),%ch
 4e7:	32 2e                	xor    (%rsi),%ch
 4e9:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 4ee:	4d 5f                	rex.WRB pop %r15
 4f0:	64 65 72 65          	fs gs jb 559 <puts@plt-0x227>
 4f4:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4fb:	4d 
 4fc:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4fe:	6f                   	outsl  %ds:(%rsi),(%dx)
 4ff:	6e                   	outsb  %ds:(%rsi),(%dx)
 500:	65 54                	gs push %rsp
 502:	61                   	(bad)  
 503:	62                   	(bad)  
 504:	6c                   	insb   (%dx),%es:(%rdi)
 505:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 509:	67 6d                	insl   (%dx),%es:(%edi)
 50b:	6f                   	outsl  %ds:(%rsi),(%dx)
 50c:	6e                   	outsb  %ds:(%rsi),(%dx)
 50d:	5f                   	pop    %rdi
 50e:	73 74                	jae    584 <puts@plt-0x1fc>
 510:	61                   	(bad)  
 511:	72 74                	jb     587 <puts@plt-0x1f9>
 513:	5f                   	pop    %rdi
 514:	5f                   	pop    %rdi
 515:	00 5f 49             	add    %bl,0x49(%rdi)
 518:	54                   	push   %rsp
 519:	4d 5f                	rex.WRB pop %r15
 51b:	72 65                	jb     582 <puts@plt-0x1fe>
 51d:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 524:	4d 
 525:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 527:	6f                   	outsl  %ds:(%rsi),(%dx)
 528:	6e                   	outsb  %ds:(%rsi),(%dx)
 529:	65 54                	gs push %rsp
 52b:	61                   	(bad)  
 52c:	62                   	.byte 0x62
 52d:	6c                   	insb   (%dx),%es:(%rdi)
 52e:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000530 <.gnu.version>:
 530:	00 00                	add    %al,(%rax)
 532:	00 00                	add    %al,(%rax)
 534:	02 00                	add    (%rax),%al
 536:	03 00                	add    (%rax),%eax
 538:	02 00                	add    (%rax),%al
 53a:	02 00                	add    (%rax),%al
 53c:	02 00                	add    (%rax),%al
 53e:	02 00                	add    (%rax),%al
 540:	00 00                	add    %al,(%rax)
 542:	02 00                	add    (%rax),%al
 544:	02 00                	add    (%rax),%al
 546:	02 00                	add    (%rax),%al
 548:	02 00                	add    (%rax),%al
 54a:	00 00                	add    %al,(%rax)
 54c:	02 00                	add    (%rax),%al
 54e:	02 00                	add    (%rax),%al
 550:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000558 <.gnu.version_r>:
 558:	01 00                	add    %eax,(%rax)
 55a:	02 00                	add    (%rax),%al
 55c:	01 00                	add    %eax,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	10 00                	adc    %al,(%rax)
 562:	00 00                	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	14 69                	adc    $0x69,%al
 56a:	69 0d 00 00 03 00 7d 	imul   $0x7d,0x30000(%rip),%ecx        # 30574 <__cxa_finalize@plt+0x2fd64>
 571:	00 00 00 
 574:	10 00                	adc    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	75 1a                	jne    594 <puts@plt-0x1ec>
 57a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 580:	87 00                	xchg   %eax,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000588 <.rela.dyn>:
 588:	78 1d                	js     5a7 <puts@plt-0x1d9>
 58a:	20 00                	and    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	08 00                	or     %al,(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	20 09                	and    %cl,(%rcx)
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	80 1d 20 00 00 00 00 	sbbb   $0x0,0x20(%rip)        # 5c7 <puts@plt-0x1b9>
 5a7:	00 08                	add    %cl,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 00                	add    %al,(%rax)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 e0                	add    %ah,%al
 5b1:	08 00                	or     %al,(%rax)
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 08                	add    %cl,(%rax)
 5b9:	20 20                	and    %ah,(%rax)
 5bb:	00 00                	add    %al,(%rax)
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 08                	add    %cl,(%rax)
 5c1:	00 00                	add    %al,(%rax)
 5c3:	00 00                	add    %al,(%rax)
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 08                	add    %cl,(%rax)
 5c9:	20 20                	and    %ah,(%rax)
 5cb:	00 00                	add    %al,(%rax)
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 d8                	add    %bl,%al
 5d1:	1f                   	(bad)  
 5d2:	20 00                	and    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	00 00                	add    %al,(%rax)
 5d8:	06                   	(bad)  
 5d9:	00 00                	add    %al,(%rax)
 5db:	00 01                	add    %al,(%rcx)
	...
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 e0                	add    %ah,%al
 5e9:	1f                   	(bad)  
 5ea:	20 00                	and    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	06                   	(bad)  
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 5f9 <puts@plt-0x187>
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 e8                	add    %ch,%al
 601:	1f                   	(bad)  
 602:	20 00                	and    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	06                   	(bad)  
 609:	00 00                	add    %al,(%rax)
 60b:	00 08                	add    %cl,(%rax)
	...
 615:	00 00                	add    %al,(%rax)
 617:	00 f0                	add    %dh,%al
 619:	1f                   	(bad)  
 61a:	20 00                	and    %al,(%rax)
 61c:	00 00                	add    %al,(%rax)
 61e:	00 00                	add    %al,(%rax)
 620:	06                   	(bad)  
 621:	00 00                	add    %al,(%rax)
 623:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 629 <puts@plt-0x157>
 629:	00 00                	add    %al,(%rax)
 62b:	00 00                	add    %al,(%rax)
 62d:	00 00                	add    %al,(%rax)
 62f:	00 f8                	add    %bh,%al
 631:	1f                   	(bad)  
 632:	20 00                	and    %al,(%rax)
 634:	00 00                	add    %al,(%rax)
 636:	00 00                	add    %al,(%rax)
 638:	06                   	(bad)  
 639:	00 00                	add    %al,(%rax)
 63b:	00 0e                	add    %cl,(%rsi)
	...
 645:	00 00                	add    %al,(%rax)
 647:	00 10                	add    %dl,(%rax)
 649:	20 20                	and    %ah,(%rax)
 64b:	00 00                	add    %al,(%rax)
 64d:	00 00                	add    %al,(%rax)
 64f:	00 05 00 00 00 0f    	add    %al,0xf000000(%rip)        # f000655 <stdin@@GLIBC_2.2.5+0xedfe635>
	...
 65d:	00 00                	add    %al,(%rax)
 65f:	00 20                	add    %ah,(%rax)
 661:	20 20                	and    %ah,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	00 00                	add    %al,(%rax)
 667:	00 05 00 00 00 10    	add    %al,0x10000000(%rip)        # 1000066d <stdin@@GLIBC_2.2.5+0xfdfe64d>
	...

Disassembly of section .rela.plt:

0000000000000678 <.rela.plt>:
 678:	90                   	nop
 679:	1f                   	(bad)  
 67a:	20 00                	and    %al,(%rax)
 67c:	00 00                	add    %al,(%rax)
 67e:	00 00                	add    %al,(%rax)
 680:	07                   	(bad)  
 681:	00 00                	add    %al,(%rax)
 683:	00 02                	add    %al,(%rdx)
	...
 68d:	00 00                	add    %al,(%rax)
 68f:	00 98 1f 20 00 00    	add    %bl,0x201f(%rax)
 695:	00 00                	add    %al,(%rax)
 697:	00 07                	add    %al,(%rdi)
 699:	00 00                	add    %al,(%rax)
 69b:	00 03                	add    %al,(%rbx)
	...
 6a5:	00 00                	add    %al,(%rax)
 6a7:	00 a0 1f 20 00 00    	add    %ah,0x201f(%rax)
 6ad:	00 00                	add    %al,(%rax)
 6af:	00 07                	add    %al,(%rdi)
 6b1:	00 00                	add    %al,(%rax)
 6b3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 6be:	00 00                	add    %al,(%rax)
 6c0:	a8 1f                	test   $0x1f,%al
 6c2:	20 00                	and    %al,(%rax)
 6c4:	00 00                	add    %al,(%rax)
 6c6:	00 00                	add    %al,(%rax)
 6c8:	07                   	(bad)  
 6c9:	00 00                	add    %al,(%rax)
 6cb:	00 06                	add    %al,(%rsi)
	...
 6d5:	00 00                	add    %al,(%rax)
 6d7:	00 b0 1f 20 00 00    	add    %dh,0x201f(%rax)
 6dd:	00 00                	add    %al,(%rax)
 6df:	00 07                	add    %al,(%rdi)
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 07                	add    %al,(%rdi)
	...
 6ed:	00 00                	add    %al,(%rax)
 6ef:	00 b8 1f 20 00 00    	add    %bh,0x201f(%rax)
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 07                	add    %al,(%rdi)
 6f9:	00 00                	add    %al,(%rax)
 6fb:	00 09                	add    %cl,(%rcx)
	...
 705:	00 00                	add    %al,(%rax)
 707:	00 c0                	add    %al,%al
 709:	1f                   	(bad)  
 70a:	20 00                	and    %al,(%rax)
 70c:	00 00                	add    %al,(%rax)
 70e:	00 00                	add    %al,(%rax)
 710:	07                   	(bad)  
 711:	00 00                	add    %al,(%rax)
 713:	00 0a                	add    %cl,(%rdx)
	...
 71d:	00 00                	add    %al,(%rax)
 71f:	00 c8                	add    %cl,%al
 721:	1f                   	(bad)  
 722:	20 00                	and    %al,(%rax)
 724:	00 00                	add    %al,(%rax)
 726:	00 00                	add    %al,(%rax)
 728:	07                   	(bad)  
 729:	00 00                	add    %al,(%rax)
 72b:	00 0b                	add    %cl,(%rbx)
	...
 735:	00 00                	add    %al,(%rax)
 737:	00 d0                	add    %dl,%al
 739:	1f                   	(bad)  
 73a:	20 00                	and    %al,(%rax)
 73c:	00 00                	add    %al,(%rax)
 73e:	00 00                	add    %al,(%rax)
 740:	07                   	(bad)  
 741:	00 00                	add    %al,(%rax)
 743:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000000750 <.init>:
 750:	48 83 ec 08          	sub    $0x8,%rsp
 754:	48 8b 05 8d 18 20 00 	mov    0x20188d(%rip),%rax        # 201fe8 <__cxa_finalize@plt+0x2017d8>
 75b:	48 85 c0             	test   %rax,%rax
 75e:	74 02                	je     762 <puts@plt-0x1e>
 760:	ff d0                	callq  *%rax
 762:	48 83 c4 08          	add    $0x8,%rsp
 766:	c3                   	retq   

Disassembly of section .plt:

0000000000000770 <puts@plt-0x10>:
 770:	ff 35 0a 18 20 00    	pushq  0x20180a(%rip)        # 201f80 <__cxa_finalize@plt+0x201770>
 776:	ff 25 0c 18 20 00    	jmpq   *0x20180c(%rip)        # 201f88 <__cxa_finalize@plt+0x201778>
 77c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000780 <puts@plt>:
 780:	ff 25 0a 18 20 00    	jmpq   *0x20180a(%rip)        # 201f90 <__cxa_finalize@plt+0x201780>
 786:	68 00 00 00 00       	pushq  $0x0
 78b:	e9 e0 ff ff ff       	jmpq   770 <puts@plt-0x10>

0000000000000790 <__stack_chk_fail@plt>:
 790:	ff 25 02 18 20 00    	jmpq   *0x201802(%rip)        # 201f98 <__cxa_finalize@plt+0x201788>
 796:	68 01 00 00 00       	pushq  $0x1
 79b:	e9 d0 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007a0 <printf@plt>:
 7a0:	ff 25 fa 17 20 00    	jmpq   *0x2017fa(%rip)        # 201fa0 <__cxa_finalize@plt+0x201790>
 7a6:	68 02 00 00 00       	pushq  $0x2
 7ab:	e9 c0 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007b0 <fgets@plt>:
 7b0:	ff 25 f2 17 20 00    	jmpq   *0x2017f2(%rip)        # 201fa8 <__cxa_finalize@plt+0x201798>
 7b6:	68 03 00 00 00       	pushq  $0x3
 7bb:	e9 b0 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007c0 <strcmp@plt>:
 7c0:	ff 25 ea 17 20 00    	jmpq   *0x2017ea(%rip)        # 201fb0 <__cxa_finalize@plt+0x2017a0>
 7c6:	68 04 00 00 00       	pushq  $0x4
 7cb:	e9 a0 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007d0 <fflush@plt>:
 7d0:	ff 25 e2 17 20 00    	jmpq   *0x2017e2(%rip)        # 201fb8 <__cxa_finalize@plt+0x2017a8>
 7d6:	68 05 00 00 00       	pushq  $0x5
 7db:	e9 90 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007e0 <ptrace@plt>:
 7e0:	ff 25 da 17 20 00    	jmpq   *0x2017da(%rip)        # 201fc0 <__cxa_finalize@plt+0x2017b0>
 7e6:	68 06 00 00 00       	pushq  $0x6
 7eb:	e9 80 ff ff ff       	jmpq   770 <puts@plt-0x10>

00000000000007f0 <strtok@plt>:
 7f0:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 201fc8 <__cxa_finalize@plt+0x2017b8>
 7f6:	68 07 00 00 00       	pushq  $0x7
 7fb:	e9 70 ff ff ff       	jmpq   770 <puts@plt-0x10>

0000000000000800 <exit@plt>:
 800:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 201fd0 <__cxa_finalize@plt+0x2017c0>
 806:	68 08 00 00 00       	pushq  $0x8
 80b:	e9 60 ff ff ff       	jmpq   770 <puts@plt-0x10>

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
     82f:	4c 8d 05 6a 0b 00 00 	lea    0xb6a(%rip),%r8        # 13a0 <__cxa_finalize@plt+0xb90>
     836:	48 8d 0d f3 0a 00 00 	lea    0xaf3(%rip),%rcx        # 1330 <__cxa_finalize@plt+0xb20>
     83d:	48 8d 3d 9b 0a 00 00 	lea    0xa9b(%rip),%rdi        # 12df <__cxa_finalize@plt+0xacf>
     844:	ff 15 96 17 20 00    	callq  *0x201796(%rip)        # 201fe0 <__cxa_finalize@plt+0x2017d0>
     84a:	f4                   	hlt    
     84b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     850:	48 8d 3d b9 17 20 00 	lea    0x2017b9(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
     857:	55                   	push   %rbp
     858:	48 8d 05 b1 17 20 00 	lea    0x2017b1(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
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
     890:	48 8d 3d 79 17 20 00 	lea    0x201779(%rip),%rdi        # 202010 <stdout@@GLIBC_2.2.5>
     897:	48 8d 35 72 17 20 00 	lea    0x201772(%rip),%rsi        # 202010 <stdout@@GLIBC_2.2.5>
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
     8e0:	80 3d 41 17 20 00 00 	cmpb   $0x0,0x201741(%rip)        # 202028 <stdin@@GLIBC_2.2.5+0x8>
     8e7:	75 2f                	jne    918 <__cxa_finalize@plt+0x108>
     8e9:	48 83 3d 07 17 20 00 	cmpq   $0x0,0x201707(%rip)        # 201ff8 <__cxa_finalize@plt+0x2017e8>
     8f0:	00 
     8f1:	55                   	push   %rbp
     8f2:	48 89 e5             	mov    %rsp,%rbp
     8f5:	74 0c                	je     903 <__cxa_finalize@plt+0xf3>
     8f7:	48 8b 3d 0a 17 20 00 	mov    0x20170a(%rip),%rdi        # 202008 <__cxa_finalize@plt+0x2017f8>
     8fe:	e8 0d ff ff ff       	callq  810 <__cxa_finalize@plt>
     903:	e8 48 ff ff ff       	callq  850 <__cxa_finalize@plt+0x40>
     908:	c6 05 19 17 20 00 01 	movb   $0x1,0x201719(%rip)        # 202028 <stdin@@GLIBC_2.2.5+0x8>
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
     92e:	53                   	push   %rbx
     92f:	48 83 ec 78          	sub    $0x78,%rsp
     933:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
     937:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
     93b:	89 55 8c             	mov    %edx,-0x74(%rbp)
     93e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     945:	00 00 
     947:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     94b:	31 c0                	xor    %eax,%eax
     94d:	48 89 e0             	mov    %rsp,%rax
     950:	48 89 c3             	mov    %rax,%rbx
     953:	48 8d 05 5e 0a 00 00 	lea    0xa5e(%rip),%rax        # 13b8 <__cxa_finalize@plt+0xba8>
     95a:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     95e:	8b 45 8c             	mov    -0x74(%rbp),%eax
     961:	83 c0 01             	add    $0x1,%eax
     964:	48 63 d0             	movslq %eax,%rdx
     967:	48 83 ea 01          	sub    $0x1,%rdx
     96b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     96f:	48 63 d0             	movslq %eax,%rdx
     972:	49 89 d2             	mov    %rdx,%r10
     975:	41 bb 00 00 00 00    	mov    $0x0,%r11d
     97b:	48 63 d0             	movslq %eax,%rdx
     97e:	49 89 d0             	mov    %rdx,%r8
     981:	41 b9 00 00 00 00    	mov    $0x0,%r9d
     987:	48 98                	cltq   
     989:	ba 10 00 00 00       	mov    $0x10,%edx
     98e:	48 83 ea 01          	sub    $0x1,%rdx
     992:	48 01 d0             	add    %rdx,%rax
     995:	b9 10 00 00 00       	mov    $0x10,%ecx
     99a:	ba 00 00 00 00       	mov    $0x0,%edx
     99f:	48 f7 f1             	div    %rcx
     9a2:	48 6b c0 10          	imul   $0x10,%rax,%rax
     9a6:	48 29 c4             	sub    %rax,%rsp
     9a9:	48 89 e0             	mov    %rsp,%rax
     9ac:	48 83 c0 00          	add    $0x0,%rax
     9b0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
     9b4:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     9bb:	00 
     9bc:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     9c3:	00 
     9c4:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
     9cb:	00 
     9cc:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     9d3:	00 
     9d4:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     9db:	00 
     9dc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     9e0:	0f b6 40 16          	movzbl 0x16(%rax),%eax
     9e4:	88 45 c0             	mov    %al,-0x40(%rbp)
     9e7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     9eb:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     9ef:	88 45 c1             	mov    %al,-0x3f(%rbp)
     9f2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     9f6:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     9fa:	88 45 c2             	mov    %al,-0x3e(%rbp)
     9fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a01:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a05:	88 45 c3             	mov    %al,-0x3d(%rbp)
     a08:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a0c:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a10:	88 45 c4             	mov    %al,-0x3c(%rbp)
     a13:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a17:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a1b:	88 45 c5             	mov    %al,-0x3b(%rbp)
     a1e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a22:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a26:	88 45 c6             	mov    %al,-0x3a(%rbp)
     a29:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a2d:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a31:	88 45 c7             	mov    %al,-0x39(%rbp)
     a34:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a38:	0f b6 40 16          	movzbl 0x16(%rax),%eax
     a3c:	88 45 c8             	mov    %al,-0x38(%rbp)
     a3f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a43:	0f b6 40 16          	movzbl 0x16(%rax),%eax
     a47:	88 45 c9             	mov    %al,-0x37(%rbp)
     a4a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a4e:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a52:	88 45 ca             	mov    %al,-0x36(%rbp)
     a55:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a59:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a5d:	88 45 cb             	mov    %al,-0x35(%rbp)
     a60:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a64:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a68:	88 45 cc             	mov    %al,-0x34(%rbp)
     a6b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a6f:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a73:	88 45 cd             	mov    %al,-0x33(%rbp)
     a76:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a7a:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a7e:	88 45 ce             	mov    %al,-0x32(%rbp)
     a81:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a85:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a89:	88 45 cf             	mov    %al,-0x31(%rbp)
     a8c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a90:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     a94:	88 45 d0             	mov    %al,-0x30(%rbp)
     a97:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     a9b:	0f b6 40 16          	movzbl 0x16(%rax),%eax
     a9f:	88 45 d1             	mov    %al,-0x2f(%rbp)
     aa2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     aa6:	0f b6 40 1c          	movzbl 0x1c(%rax),%eax
     aaa:	88 45 d2             	mov    %al,-0x2e(%rbp)
     aad:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ab1:	0f b6 40 02          	movzbl 0x2(%rax),%eax
     ab5:	88 45 d3             	mov    %al,-0x2d(%rbp)
     ab8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     abc:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     ac0:	88 45 d4             	mov    %al,-0x2c(%rbp)
     ac3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ac7:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
     acb:	88 45 d5             	mov    %al,-0x2b(%rbp)
     ace:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ad2:	0f b6 40 06          	movzbl 0x6(%rax),%eax
     ad6:	88 45 d6             	mov    %al,-0x2a(%rbp)
     ad9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     add:	0f b6 40 11          	movzbl 0x11(%rax),%eax
     ae1:	88 45 d7             	mov    %al,-0x29(%rbp)
     ae4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ae8:	0f b6 00             	movzbl (%rax),%eax
     aeb:	88 45 d8             	mov    %al,-0x28(%rbp)
     aee:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     af2:	0f b6 40 13          	movzbl 0x13(%rax),%eax
     af6:	88 45 d9             	mov    %al,-0x27(%rbp)
     af9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     afd:	0f b6 40 14          	movzbl 0x14(%rax),%eax
     b01:	88 45 da             	mov    %al,-0x26(%rbp)
     b04:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b08:	0f b6 40 0b          	movzbl 0xb(%rax),%eax
     b0c:	88 45 db             	mov    %al,-0x25(%rbp)
     b0f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b13:	0f b6 00             	movzbl (%rax),%eax
     b16:	88 45 dc             	mov    %al,-0x24(%rbp)
     b19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b1d:	0f b6 40 13          	movzbl 0x13(%rax),%eax
     b21:	88 45 dd             	mov    %al,-0x23(%rbp)
     b24:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b28:	0f b6 40 08          	movzbl 0x8(%rax),%eax
     b2c:	88 45 de             	mov    %al,-0x22(%rbp)
     b2f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b33:	0f b6 40 0e          	movzbl 0xe(%rax),%eax
     b37:	88 45 df             	mov    %al,-0x21(%rbp)
     b3a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b3e:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
     b42:	88 45 e0             	mov    %al,-0x20(%rbp)
     b45:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b49:	0f b6 40 12          	movzbl 0x12(%rax),%eax
     b4d:	88 45 e1             	mov    %al,-0x1f(%rbp)
     b50:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b54:	0f b6 40 1b          	movzbl 0x1b(%rax),%eax
     b58:	88 45 e2             	mov    %al,-0x1e(%rbp)
     b5b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b5f:	0f b6 40 1c          	movzbl 0x1c(%rax),%eax
     b63:	88 45 e3             	mov    %al,-0x1d(%rbp)
     b66:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b6a:	0f b6 40 17          	movzbl 0x17(%rax),%eax
     b6e:	88 45 e4             	mov    %al,-0x1c(%rbp)
     b71:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b75:	0f b6 40 03          	movzbl 0x3(%rax),%eax
     b79:	88 45 e5             	mov    %al,-0x1b(%rbp)
     b7c:	48 8d 35 53 08 00 00 	lea    0x853(%rip),%rsi        # 13d6 <__cxa_finalize@plt+0xbc6>
     b83:	48 8d 3d 5d 08 00 00 	lea    0x85d(%rip),%rdi        # 13e7 <__cxa_finalize@plt+0xbd7>
     b8a:	b8 00 00 00 00       	mov    $0x0,%eax
     b8f:	e8 0c fc ff ff       	callq  7a0 <printf@plt>
     b94:	48 8b 05 75 14 20 00 	mov    0x201475(%rip),%rax        # 202010 <stdout@@GLIBC_2.2.5>
     b9b:	48 89 c7             	mov    %rax,%rdi
     b9e:	e8 2d fc ff ff       	callq  7d0 <fflush@plt>
     ba3:	48 8b 15 76 14 20 00 	mov    0x201476(%rip),%rdx        # 202020 <stdin@@GLIBC_2.2.5>
     baa:	8b 45 8c             	mov    -0x74(%rbp),%eax
     bad:	8d 48 01             	lea    0x1(%rax),%ecx
     bb0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     bb4:	89 ce                	mov    %ecx,%esi
     bb6:	48 89 c7             	mov    %rax,%rdi
     bb9:	e8 f2 fb ff ff       	callq  7b0 <fgets@plt>
     bbe:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     bc2:	48 8d 35 21 08 00 00 	lea    0x821(%rip),%rsi        # 13ea <__cxa_finalize@plt+0xbda>
     bc9:	48 89 c7             	mov    %rax,%rdi
     bcc:	e8 1f fc ff ff       	callq  7f0 <strtok@plt>
     bd1:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
     bd8:	eb 61                	jmp    c3b <__cxa_finalize@plt+0x42b>
     bda:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     bde:	8b 45 a4             	mov    -0x5c(%rbp),%eax
     be1:	48 98                	cltq   
     be3:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     be7:	88 45 bc             	mov    %al,-0x44(%rbp)
     bea:	c6 45 bd 00          	movb   $0x0,-0x43(%rbp)
     bee:	8b 45 a4             	mov    -0x5c(%rbp),%eax
     bf1:	48 63 d0             	movslq %eax,%rdx
     bf4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bf8:	48 01 d0             	add    %rdx,%rax
     bfb:	0f b6 10             	movzbl (%rax),%edx
     bfe:	8b 45 a4             	mov    -0x5c(%rbp),%eax
     c01:	31 d0                	xor    %edx,%eax
     c03:	88 45 be             	mov    %al,-0x42(%rbp)
     c06:	c6 45 bf 00          	movb   $0x0,-0x41(%rbp)
     c0a:	48 8d 55 be          	lea    -0x42(%rbp),%rdx
     c0e:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
     c12:	48 89 d6             	mov    %rdx,%rsi
     c15:	48 89 c7             	mov    %rax,%rdi
     c18:	e8 a3 fb ff ff       	callq  7c0 <strcmp@plt>
     c1d:	85 c0                	test   %eax,%eax
     c1f:	74 16                	je     c37 <__cxa_finalize@plt+0x427>
     c21:	48 8d 3d c4 07 00 00 	lea    0x7c4(%rip),%rdi        # 13ec <__cxa_finalize@plt+0xbdc>
     c28:	e8 53 fb ff ff       	callq  780 <puts@plt>
     c2d:	bf 00 00 00 00       	mov    $0x0,%edi
     c32:	e8 c9 fb ff ff       	callq  800 <exit@plt>
     c37:	83 45 a4 01          	addl   $0x1,-0x5c(%rbp)
     c3b:	8b 45 a4             	mov    -0x5c(%rbp),%eax
     c3e:	3b 45 8c             	cmp    -0x74(%rbp),%eax
     c41:	7c 97                	jl     bda <__cxa_finalize@plt+0x3ca>
     c43:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
     c47:	48 89 c7             	mov    %rax,%rdi
     c4a:	e8 31 fb ff ff       	callq  780 <puts@plt>
     c4f:	48 89 dc             	mov    %rbx,%rsp
     c52:	90                   	nop
     c53:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c57:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     c5e:	00 00 
     c60:	74 05                	je     c67 <__cxa_finalize@plt+0x457>
     c62:	e8 29 fb ff ff       	callq  790 <__stack_chk_fail@plt>
     c67:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     c6b:	c9                   	leaveq 
     c6c:	c3                   	retq   
     c6d:	55                   	push   %rbp
     c6e:	48 89 e5             	mov    %rsp,%rbp
     c71:	48 83 ec 60          	sub    $0x60,%rsp
     c75:	89 7d ac             	mov    %edi,-0x54(%rbp)
     c78:	89 75 a8             	mov    %esi,-0x58(%rbp)
     c7b:	89 55 a4             	mov    %edx,-0x5c(%rbp)
     c7e:	89 4d a0             	mov    %ecx,-0x60(%rbp)
     c81:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     c88:	00 00 
     c8a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     c8e:	31 c0                	xor    %eax,%eax
     c90:	48 8d 05 71 07 00 00 	lea    0x771(%rip),%rax        # 1408 <__cxa_finalize@plt+0xbf8>
     c97:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
     c9b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     c9f:	0f b6 00             	movzbl (%rax),%eax
     ca2:	88 45 c0             	mov    %al,-0x40(%rbp)
     ca5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ca9:	48 83 c0 15          	add    $0x15,%rax
     cad:	0f b6 00             	movzbl (%rax),%eax
     cb0:	83 f0 02             	xor    $0x2,%eax
     cb3:	88 45 c2             	mov    %al,-0x3e(%rbp)
     cb6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     cba:	48 83 c0 05          	add    $0x5,%rax
     cbe:	0f b6 00             	movzbl (%rax),%eax
     cc1:	83 f0 03             	xor    $0x3,%eax
     cc4:	88 45 c3             	mov    %al,-0x3d(%rbp)
     cc7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ccb:	48 83 c0 1c          	add    $0x1c,%rax
     ccf:	0f b6 00             	movzbl (%rax),%eax
     cd2:	83 f0 06             	xor    $0x6,%eax
     cd5:	88 45 c6             	mov    %al,-0x3a(%rbp)
     cd8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     cdc:	48 83 c0 1a          	add    $0x1a,%rax
     ce0:	0f b6 00             	movzbl (%rax),%eax
     ce3:	83 f0 0d             	xor    $0xd,%eax
     ce6:	88 45 cd             	mov    %al,-0x33(%rbp)
     ce9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ced:	48 83 c0 09          	add    $0x9,%rax
     cf1:	0f b6 00             	movzbl (%rax),%eax
     cf4:	83 f0 08             	xor    $0x8,%eax
     cf7:	88 45 c8             	mov    %al,-0x38(%rbp)
     cfa:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     cfe:	48 83 c0 12          	add    $0x12,%rax
     d02:	0f b6 00             	movzbl (%rax),%eax
     d05:	83 f0 05             	xor    $0x5,%eax
     d08:	88 45 c5             	mov    %al,-0x3b(%rbp)
     d0b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d0f:	48 83 c0 0c          	add    $0xc,%rax
     d13:	0f b6 00             	movzbl (%rax),%eax
     d16:	83 f0 0b             	xor    $0xb,%eax
     d19:	88 45 cb             	mov    %al,-0x35(%rbp)
     d1c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d20:	48 83 c0 01          	add    $0x1,%rax
     d24:	0f b6 00             	movzbl (%rax),%eax
     d27:	83 f0 01             	xor    $0x1,%eax
     d2a:	88 45 c1             	mov    %al,-0x3f(%rbp)
     d2d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d31:	48 83 c0 0f          	add    $0xf,%rax
     d35:	0f b6 00             	movzbl (%rax),%eax
     d38:	83 f0 0a             	xor    $0xa,%eax
     d3b:	88 45 ca             	mov    %al,-0x36(%rbp)
     d3e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d42:	48 83 c0 22          	add    $0x22,%rax
     d46:	0f b6 00             	movzbl (%rax),%eax
     d49:	83 f0 09             	xor    $0x9,%eax
     d4c:	88 45 c9             	mov    %al,-0x37(%rbp)
     d4f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d53:	48 83 c0 23          	add    $0x23,%rax
     d57:	0f b6 00             	movzbl (%rax),%eax
     d5a:	83 f0 0c             	xor    $0xc,%eax
     d5d:	88 45 cc             	mov    %al,-0x34(%rbp)
     d60:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d64:	48 83 c0 05          	add    $0x5,%rax
     d68:	0f b6 00             	movzbl (%rax),%eax
     d6b:	83 f0 2f             	xor    $0x2f,%eax
     d6e:	88 45 ef             	mov    %al,-0x11(%rbp)
     d71:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d75:	48 83 c0 03          	add    $0x3,%rax
     d79:	0f b6 00             	movzbl (%rax),%eax
     d7c:	83 f0 10             	xor    $0x10,%eax
     d7f:	88 45 d0             	mov    %al,-0x30(%rbp)
     d82:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d86:	48 83 c0 22          	add    $0x22,%rax
     d8a:	0f b6 00             	movzbl (%rax),%eax
     d8d:	83 f0 0f             	xor    $0xf,%eax
     d90:	88 45 cf             	mov    %al,-0x31(%rbp)
     d93:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d97:	48 83 c0 13          	add    $0x13,%rax
     d9b:	0f b6 00             	movzbl (%rax),%eax
     d9e:	83 f0 04             	xor    $0x4,%eax
     da1:	88 45 c4             	mov    %al,-0x3c(%rbp)
     da4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     da8:	48 83 c0 07          	add    $0x7,%rax
     dac:	0f b6 00             	movzbl (%rax),%eax
     daf:	83 f0 14             	xor    $0x14,%eax
     db2:	88 45 d4             	mov    %al,-0x2c(%rbp)
     db5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     db9:	48 83 c0 10          	add    $0x10,%rax
     dbd:	0f b6 00             	movzbl (%rax),%eax
     dc0:	83 f0 17             	xor    $0x17,%eax
     dc3:	88 45 d7             	mov    %al,-0x29(%rbp)
     dc6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     dca:	48 83 c0 01          	add    $0x1,%rax
     dce:	0f b6 00             	movzbl (%rax),%eax
     dd1:	83 f0 20             	xor    $0x20,%eax
     dd4:	88 45 e0             	mov    %al,-0x20(%rbp)
     dd7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ddb:	48 83 c0 12          	add    $0x12,%rax
     ddf:	0f b6 00             	movzbl (%rax),%eax
     de2:	83 f0 18             	xor    $0x18,%eax
     de5:	88 45 d8             	mov    %al,-0x28(%rbp)
     de8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     dec:	48 83 c0 09          	add    $0x9,%rax
     df0:	0f b6 00             	movzbl (%rax),%eax
     df3:	83 f0 0e             	xor    $0xe,%eax
     df6:	88 45 ce             	mov    %al,-0x32(%rbp)
     df9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     dfd:	48 83 c0 1f          	add    $0x1f,%rax
     e01:	0f b6 00             	movzbl (%rax),%eax
     e04:	83 f0 12             	xor    $0x12,%eax
     e07:	88 45 d2             	mov    %al,-0x2e(%rbp)
     e0a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e0e:	48 83 c0 1a          	add    $0x1a,%rax
     e12:	0f b6 00             	movzbl (%rax),%eax
     e15:	83 f0 15             	xor    $0x15,%eax
     e18:	88 45 d5             	mov    %al,-0x2b(%rbp)
     e1b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e1f:	48 83 c0 09          	add    $0x9,%rax
     e23:	0f b6 00             	movzbl (%rax),%eax
     e26:	83 f0 1f             	xor    $0x1f,%eax
     e29:	88 45 df             	mov    %al,-0x21(%rbp)
     e2c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e30:	48 83 c0 06          	add    $0x6,%rax
     e34:	0f b6 00             	movzbl (%rax),%eax
     e37:	83 f0 16             	xor    $0x16,%eax
     e3a:	88 45 d6             	mov    %al,-0x2a(%rbp)
     e3d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e41:	48 83 c0 15          	add    $0x15,%rax
     e45:	0f b6 00             	movzbl (%rax),%eax
     e48:	83 f0 07             	xor    $0x7,%eax
     e4b:	88 45 c7             	mov    %al,-0x39(%rbp)
     e4e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e52:	48 83 c0 0c          	add    $0xc,%rax
     e56:	0f b6 00             	movzbl (%rax),%eax
     e59:	83 f0 22             	xor    $0x22,%eax
     e5c:	88 45 e2             	mov    %al,-0x1e(%rbp)
     e5f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e63:	48 83 c0 0c          	add    $0xc,%rax
     e67:	0f b6 00             	movzbl (%rax),%eax
     e6a:	83 f0 11             	xor    $0x11,%eax
     e6d:	88 45 d1             	mov    %al,-0x2f(%rbp)
     e70:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e74:	48 83 c0 0f          	add    $0xf,%rax
     e78:	0f b6 00             	movzbl (%rax),%eax
     e7b:	83 f0 13             	xor    $0x13,%eax
     e7e:	88 45 d3             	mov    %al,-0x2d(%rbp)
     e81:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e85:	48 83 c0 12          	add    $0x12,%rax
     e89:	0f b6 00             	movzbl (%rax),%eax
     e8c:	83 f0 28             	xor    $0x28,%eax
     e8f:	88 45 e8             	mov    %al,-0x18(%rbp)
     e92:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     e96:	48 83 c0 14          	add    $0x14,%rax
     e9a:	0f b6 00             	movzbl (%rax),%eax
     e9d:	83 f0 1a             	xor    $0x1a,%eax
     ea0:	88 45 da             	mov    %al,-0x26(%rbp)
     ea3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ea7:	48 83 c0 03          	add    $0x3,%rax
     eab:	0f b6 00             	movzbl (%rax),%eax
     eae:	83 f0 21             	xor    $0x21,%eax
     eb1:	88 45 e1             	mov    %al,-0x1f(%rbp)
     eb4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     eb8:	48 83 c0 1a          	add    $0x1a,%rax
     ebc:	0f b6 00             	movzbl (%rax),%eax
     ebf:	83 f0 19             	xor    $0x19,%eax
     ec2:	88 45 d9             	mov    %al,-0x27(%rbp)
     ec5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     ec9:	48 83 c0 16          	add    $0x16,%rax
     ecd:	0f b6 00             	movzbl (%rax),%eax
     ed0:	83 f0 1d             	xor    $0x1d,%eax
     ed3:	88 45 dd             	mov    %al,-0x23(%rbp)
     ed6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     eda:	48 83 c0 28          	add    $0x28,%rax
     ede:	0f b6 00             	movzbl (%rax),%eax
     ee1:	83 f0 1b             	xor    $0x1b,%eax
     ee4:	88 45 db             	mov    %al,-0x25(%rbp)
     ee7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     eeb:	48 83 c0 10          	add    $0x10,%rax
     eef:	0f b6 00             	movzbl (%rax),%eax
     ef2:	83 f0 2a             	xor    $0x2a,%eax
     ef5:	88 45 ea             	mov    %al,-0x16(%rbp)
     ef8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     efc:	48 83 c0 07          	add    $0x7,%rax
     f00:	0f b6 00             	movzbl (%rax),%eax
     f03:	83 f0 25             	xor    $0x25,%eax
     f06:	88 45 e5             	mov    %al,-0x1b(%rbp)
     f09:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f0d:	48 83 c0 0b          	add    $0xb,%rax
     f11:	0f b6 00             	movzbl (%rax),%eax
     f14:	83 f0 1c             	xor    $0x1c,%eax
     f17:	88 45 dc             	mov    %al,-0x24(%rbp)
     f1a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f1e:	48 83 c0 10          	add    $0x10,%rax
     f22:	0f b6 00             	movzbl (%rax),%eax
     f25:	83 f0 27             	xor    $0x27,%eax
     f28:	88 45 e7             	mov    %al,-0x19(%rbp)
     f2b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f2f:	48 83 c0 0a          	add    $0xa,%rax
     f33:	0f b6 00             	movzbl (%rax),%eax
     f36:	83 f0 23             	xor    $0x23,%eax
     f39:	88 45 e3             	mov    %al,-0x1d(%rbp)
     f3c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f40:	48 83 c0 0f          	add    $0xf,%rax
     f44:	0f b6 00             	movzbl (%rax),%eax
     f47:	83 f0 24             	xor    $0x24,%eax
     f4a:	88 45 e4             	mov    %al,-0x1c(%rbp)
     f4d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f51:	48 83 c0 01          	add    $0x1,%rax
     f55:	0f b6 00             	movzbl (%rax),%eax
     f58:	83 f0 30             	xor    $0x30,%eax
     f5b:	88 45 f0             	mov    %al,-0x10(%rbp)
     f5e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f62:	48 83 c0 1a          	add    $0x1a,%rax
     f66:	0f b6 00             	movzbl (%rax),%eax
     f69:	83 f0 1e             	xor    $0x1e,%eax
     f6c:	88 45 de             	mov    %al,-0x22(%rbp)
     f6f:	c6 45 f3 00          	movb   $0x0,-0xd(%rbp)
     f73:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f77:	48 83 c0 0b          	add    $0xb,%rax
     f7b:	0f b6 00             	movzbl (%rax),%eax
     f7e:	83 f0 2b             	xor    $0x2b,%eax
     f81:	88 45 eb             	mov    %al,-0x15(%rbp)
     f84:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f88:	48 83 c0 16          	add    $0x16,%rax
     f8c:	0f b6 00             	movzbl (%rax),%eax
     f8f:	83 f0 2c             	xor    $0x2c,%eax
     f92:	88 45 ec             	mov    %al,-0x14(%rbp)
     f95:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f99:	48 83 c0 1e          	add    $0x1e,%rax
     f9d:	0f b6 00             	movzbl (%rax),%eax
     fa0:	83 f0 2d             	xor    $0x2d,%eax
     fa3:	88 45 ed             	mov    %al,-0x13(%rbp)
     fa6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     faa:	48 83 c0 06          	add    $0x6,%rax
     fae:	0f b6 00             	movzbl (%rax),%eax
     fb1:	83 f0 26             	xor    $0x26,%eax
     fb4:	88 45 e6             	mov    %al,-0x1a(%rbp)
     fb7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     fbb:	48 83 c0 1d          	add    $0x1d,%rax
     fbf:	0f b6 00             	movzbl (%rax),%eax
     fc2:	83 f0 32             	xor    $0x32,%eax
     fc5:	88 45 f2             	mov    %al,-0xe(%rbp)
     fc8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     fcc:	48 83 c0 0d          	add    $0xd,%rax
     fd0:	0f b6 00             	movzbl (%rax),%eax
     fd3:	83 f0 31             	xor    $0x31,%eax
     fd6:	88 45 f1             	mov    %al,-0xf(%rbp)
     fd9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     fdd:	48 83 c0 14          	add    $0x14,%rax
     fe1:	0f b6 00             	movzbl (%rax),%eax
     fe4:	83 f0 29             	xor    $0x29,%eax
     fe7:	88 45 e9             	mov    %al,-0x17(%rbp)
     fea:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     fee:	48 83 c0 15          	add    $0x15,%rax
     ff2:	0f b6 00             	movzbl (%rax),%eax
     ff5:	83 f0 2e             	xor    $0x2e,%eax
     ff8:	88 45 ee             	mov    %al,-0x12(%rbp)
     ffb:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
     fff:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1003:	ba 33 00 00 00       	mov    $0x33,%edx
    1008:	48 89 ce             	mov    %rcx,%rsi
    100b:	48 89 c7             	mov    %rax,%rdi
    100e:	e8 17 f9 ff ff       	callq  92a <__cxa_finalize@plt+0x11a>
    1013:	b8 01 00 00 00       	mov    $0x1,%eax
    1018:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    101c:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    1023:	00 00 
    1025:	74 05                	je     102c <__cxa_finalize@plt+0x81c>
    1027:	e8 64 f7 ff ff       	callq  790 <__stack_chk_fail@plt>
    102c:	c9                   	leaveq 
    102d:	c3                   	retq   
    102e:	55                   	push   %rbp
    102f:	48 89 e5             	mov    %rsp,%rbp
    1032:	48 83 ec 40          	sub    $0x40,%rsp
    1036:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    103d:	00 00 
    103f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1043:	31 c0                	xor    %eax,%eax
    1045:	48 8d 05 ec 03 00 00 	lea    0x3ec(%rip),%rax        # 1438 <__cxa_finalize@plt+0xc28>
    104c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1050:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1054:	48 83 c0 1a          	add    $0x1a,%rax
    1058:	0f b6 00             	movzbl (%rax),%eax
    105b:	83 f0 07             	xor    $0x7,%eax
    105e:	88 45 d7             	mov    %al,-0x29(%rbp)
    1061:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1065:	48 83 c0 0b          	add    $0xb,%rax
    1069:	0f b6 00             	movzbl (%rax),%eax
    106c:	83 f0 02             	xor    $0x2,%eax
    106f:	88 45 d2             	mov    %al,-0x2e(%rbp)
    1072:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1076:	48 83 c0 0e          	add    $0xe,%rax
    107a:	0f b6 00             	movzbl (%rax),%eax
    107d:	83 f0 01             	xor    $0x1,%eax
    1080:	88 45 d1             	mov    %al,-0x2f(%rbp)
    1083:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1087:	0f b6 40 0b          	movzbl 0xb(%rax),%eax
    108b:	88 45 d0             	mov    %al,-0x30(%rbp)
    108e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1092:	48 83 c0 07          	add    $0x7,%rax
    1096:	0f b6 00             	movzbl (%rax),%eax
    1099:	83 f0 09             	xor    $0x9,%eax
    109c:	88 45 d9             	mov    %al,-0x27(%rbp)
    109f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10a3:	48 83 c0 18          	add    $0x18,%rax
    10a7:	0f b6 00             	movzbl (%rax),%eax
    10aa:	83 f0 04             	xor    $0x4,%eax
    10ad:	88 45 d4             	mov    %al,-0x2c(%rbp)
    10b0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10b4:	48 83 c0 13          	add    $0x13,%rax
    10b8:	0f b6 00             	movzbl (%rax),%eax
    10bb:	83 f0 08             	xor    $0x8,%eax
    10be:	88 45 d8             	mov    %al,-0x28(%rbp)
    10c1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10c5:	48 83 c0 1a          	add    $0x1a,%rax
    10c9:	0f b6 00             	movzbl (%rax),%eax
    10cc:	83 f0 03             	xor    $0x3,%eax
    10cf:	88 45 d3             	mov    %al,-0x2d(%rbp)
    10d2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10d6:	48 83 c0 08          	add    $0x8,%rax
    10da:	0f b6 00             	movzbl (%rax),%eax
    10dd:	83 f0 10             	xor    $0x10,%eax
    10e0:	88 45 e0             	mov    %al,-0x20(%rbp)
    10e3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10e7:	48 83 c0 0e          	add    $0xe,%rax
    10eb:	0f b6 00             	movzbl (%rax),%eax
    10ee:	83 f0 0a             	xor    $0xa,%eax
    10f1:	88 45 da             	mov    %al,-0x26(%rbp)
    10f4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    10f8:	48 83 c0 0e          	add    $0xe,%rax
    10fc:	0f b6 00             	movzbl (%rax),%eax
    10ff:	83 f0 05             	xor    $0x5,%eax
    1102:	88 45 d5             	mov    %al,-0x2b(%rbp)
    1105:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1109:	48 83 c0 14          	add    $0x14,%rax
    110d:	0f b6 00             	movzbl (%rax),%eax
    1110:	83 f0 06             	xor    $0x6,%eax
    1113:	88 45 d6             	mov    %al,-0x2a(%rbp)
    1116:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    111a:	48 83 c0 16          	add    $0x16,%rax
    111e:	0f b6 00             	movzbl (%rax),%eax
    1121:	83 f0 13             	xor    $0x13,%eax
    1124:	88 45 e3             	mov    %al,-0x1d(%rbp)
    1127:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    112b:	48 83 c0 14          	add    $0x14,%rax
    112f:	0f b6 00             	movzbl (%rax),%eax
    1132:	83 f0 0b             	xor    $0xb,%eax
    1135:	88 45 db             	mov    %al,-0x25(%rbp)
    1138:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    113c:	48 83 c0 1a          	add    $0x1a,%rax
    1140:	0f b6 00             	movzbl (%rax),%eax
    1143:	83 f0 16             	xor    $0x16,%eax
    1146:	88 45 e6             	mov    %al,-0x1a(%rbp)
    1149:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    114d:	48 83 c0 1a          	add    $0x1a,%rax
    1151:	0f b6 00             	movzbl (%rax),%eax
    1154:	83 f0 0f             	xor    $0xf,%eax
    1157:	88 45 df             	mov    %al,-0x21(%rbp)
    115a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    115e:	48 83 c0 06          	add    $0x6,%rax
    1162:	0f b6 00             	movzbl (%rax),%eax
    1165:	83 f0 0c             	xor    $0xc,%eax
    1168:	88 45 dc             	mov    %al,-0x24(%rbp)
    116b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    116f:	0f b6 00             	movzbl (%rax),%eax
    1172:	83 f0 14             	xor    $0x14,%eax
    1175:	88 45 e4             	mov    %al,-0x1c(%rbp)
    1178:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    117c:	48 83 c0 07          	add    $0x7,%rax
    1180:	0f b6 00             	movzbl (%rax),%eax
    1183:	83 f0 0d             	xor    $0xd,%eax
    1186:	88 45 dd             	mov    %al,-0x23(%rbp)
    1189:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    118d:	48 83 c0 1a          	add    $0x1a,%rax
    1191:	0f b6 00             	movzbl (%rax),%eax
    1194:	83 f0 12             	xor    $0x12,%eax
    1197:	88 45 e2             	mov    %al,-0x1e(%rbp)
    119a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    119e:	48 83 c0 13          	add    $0x13,%rax
    11a2:	0f b6 00             	movzbl (%rax),%eax
    11a5:	83 f0 0e             	xor    $0xe,%eax
    11a8:	88 45 de             	mov    %al,-0x22(%rbp)
    11ab:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    11af:	48 83 c0 1c          	add    $0x1c,%rax
    11b3:	0f b6 00             	movzbl (%rax),%eax
    11b6:	83 f0 22             	xor    $0x22,%eax
    11b9:	88 45 f2             	mov    %al,-0xe(%rbp)
    11bc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    11c0:	48 83 c0 07          	add    $0x7,%rax
    11c4:	0f b6 00             	movzbl (%rax),%eax
    11c7:	83 f0 18             	xor    $0x18,%eax
    11ca:	88 45 e8             	mov    %al,-0x18(%rbp)
    11cd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    11d1:	0f b6 00             	movzbl (%rax),%eax
    11d4:	83 f0 1d             	xor    $0x1d,%eax
    11d7:	88 45 ed             	mov    %al,-0x13(%rbp)
    11da:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    11de:	48 83 c0 1d          	add    $0x1d,%rax
    11e2:	0f b6 00             	movzbl (%rax),%eax
    11e5:	83 f0 23             	xor    $0x23,%eax
    11e8:	88 45 f3             	mov    %al,-0xd(%rbp)
    11eb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    11ef:	48 83 c0 12          	add    $0x12,%rax
    11f3:	0f b6 00             	movzbl (%rax),%eax
    11f6:	83 f0 15             	xor    $0x15,%eax
    11f9:	88 45 e5             	mov    %al,-0x1b(%rbp)
    11fc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1200:	48 83 c0 1a          	add    $0x1a,%rax
    1204:	0f b6 00             	movzbl (%rax),%eax
    1207:	83 f0 1b             	xor    $0x1b,%eax
    120a:	88 45 eb             	mov    %al,-0x15(%rbp)
    120d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1211:	48 83 c0 13          	add    $0x13,%rax
    1215:	0f b6 00             	movzbl (%rax),%eax
    1218:	83 f0 17             	xor    $0x17,%eax
    121b:	88 45 e7             	mov    %al,-0x19(%rbp)
    121e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1222:	0f b6 00             	movzbl (%rax),%eax
    1225:	83 f0 19             	xor    $0x19,%eax
    1228:	88 45 e9             	mov    %al,-0x17(%rbp)
    122b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    122f:	48 83 c0 12          	add    $0x12,%rax
    1233:	0f b6 00             	movzbl (%rax),%eax
    1236:	83 f0 1e             	xor    $0x1e,%eax
    1239:	88 45 ee             	mov    %al,-0x12(%rbp)
    123c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1240:	48 83 c0 13          	add    $0x13,%rax
    1244:	0f b6 00             	movzbl (%rax),%eax
    1247:	83 f0 11             	xor    $0x11,%eax
    124a:	88 45 e1             	mov    %al,-0x1f(%rbp)
    124d:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
    1251:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1255:	48 83 c0 13          	add    $0x13,%rax
    1259:	0f b6 00             	movzbl (%rax),%eax
    125c:	83 f0 1a             	xor    $0x1a,%eax
    125f:	88 45 ea             	mov    %al,-0x16(%rbp)
    1262:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1266:	48 83 c0 18          	add    $0x18,%rax
    126a:	0f b6 00             	movzbl (%rax),%eax
    126d:	83 f0 1f             	xor    $0x1f,%eax
    1270:	88 45 ef             	mov    %al,-0x11(%rbp)
    1273:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1277:	48 83 c0 04          	add    $0x4,%rax
    127b:	0f b6 00             	movzbl (%rax),%eax
    127e:	83 f0 1c             	xor    $0x1c,%eax
    1281:	88 45 ec             	mov    %al,-0x14(%rbp)
    1284:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1288:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    128c:	ba 20 00 00 00       	mov    $0x20,%edx
    1291:	48 89 ce             	mov    %rcx,%rsi
    1294:	48 89 c7             	mov    %rax,%rdi
    1297:	e8 8e f6 ff ff       	callq  92a <__cxa_finalize@plt+0x11a>
    129c:	b9 01 00 00 00       	mov    $0x1,%ecx
    12a1:	ba 00 00 00 00       	mov    $0x0,%edx
    12a6:	be 00 00 00 00       	mov    $0x0,%esi
    12ab:	bf 01 00 00 00       	mov    $0x1,%edi
    12b0:	e8 b8 f9 ff ff       	callq  c6d <__cxa_finalize@plt+0x45d>
    12b5:	bf 00 00 00 00       	mov    $0x0,%edi
    12ba:	e8 41 f5 ff ff       	callq  800 <exit@plt>
    12bf:	55                   	push   %rbp
    12c0:	48 89 e5             	mov    %rsp,%rbp
    12c3:	b9 00 00 00 00       	mov    $0x0,%ecx
    12c8:	ba 01 00 00 00       	mov    $0x1,%edx
    12cd:	be 01 00 00 00       	mov    $0x1,%esi
    12d2:	bf 00 00 00 00       	mov    $0x0,%edi
    12d7:	e8 91 f9 ff ff       	callq  c6d <__cxa_finalize@plt+0x45d>
    12dc:	90                   	nop
    12dd:	5d                   	pop    %rbp
    12de:	c3                   	retq   
    12df:	55                   	push   %rbp
    12e0:	48 89 e5             	mov    %rsp,%rbp
    12e3:	b9 00 00 00 00       	mov    $0x0,%ecx
    12e8:	ba 01 00 00 00       	mov    $0x1,%edx
    12ed:	be 00 00 00 00       	mov    $0x0,%esi
    12f2:	bf 00 00 00 00       	mov    $0x0,%edi
    12f7:	b8 00 00 00 00       	mov    $0x0,%eax
    12fc:	e8 df f4 ff ff       	callq  7e0 <ptrace@plt>
    1301:	48 85 c0             	test   %rax,%rax
    1304:	79 0c                	jns    1312 <__cxa_finalize@plt+0xb02>
    1306:	b8 00 00 00 00       	mov    $0x0,%eax
    130b:	e8 1e fd ff ff       	callq  102e <__cxa_finalize@plt+0x81e>
    1310:	eb 0a                	jmp    131c <__cxa_finalize@plt+0xb0c>
    1312:	b8 00 00 00 00       	mov    $0x0,%eax
    1317:	e8 a3 ff ff ff       	callq  12bf <__cxa_finalize@plt+0xaaf>
    131c:	bf 00 00 00 00       	mov    $0x0,%edi
    1321:	e8 da f4 ff ff       	callq  800 <exit@plt>
    1326:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    132d:	00 00 00 
    1330:	41 57                	push   %r15
    1332:	41 56                	push   %r14
    1334:	49 89 d7             	mov    %rdx,%r15
    1337:	41 55                	push   %r13
    1339:	41 54                	push   %r12
    133b:	4c 8d 25 36 0a 20 00 	lea    0x200a36(%rip),%r12        # 201d78 <__cxa_finalize@plt+0x201568>
    1342:	55                   	push   %rbp
    1343:	48 8d 2d 36 0a 20 00 	lea    0x200a36(%rip),%rbp        # 201d80 <__cxa_finalize@plt+0x201570>
    134a:	53                   	push   %rbx
    134b:	41 89 fd             	mov    %edi,%r13d
    134e:	49 89 f6             	mov    %rsi,%r14
    1351:	4c 29 e5             	sub    %r12,%rbp
    1354:	48 83 ec 08          	sub    $0x8,%rsp
    1358:	48 c1 fd 03          	sar    $0x3,%rbp
    135c:	e8 ef f3 ff ff       	callq  750 <puts@plt-0x30>
    1361:	48 85 ed             	test   %rbp,%rbp
    1364:	74 20                	je     1386 <__cxa_finalize@plt+0xb76>
    1366:	31 db                	xor    %ebx,%ebx
    1368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    136f:	00 
    1370:	4c 89 fa             	mov    %r15,%rdx
    1373:	4c 89 f6             	mov    %r14,%rsi
    1376:	44 89 ef             	mov    %r13d,%edi
    1379:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    137d:	48 83 c3 01          	add    $0x1,%rbx
    1381:	48 39 dd             	cmp    %rbx,%rbp
    1384:	75 ea                	jne    1370 <__cxa_finalize@plt+0xb60>
    1386:	48 83 c4 08          	add    $0x8,%rsp
    138a:	5b                   	pop    %rbx
    138b:	5d                   	pop    %rbp
    138c:	41 5c                	pop    %r12
    138e:	41 5d                	pop    %r13
    1390:	41 5e                	pop    %r14
    1392:	41 5f                	pop    %r15
    1394:	c3                   	retq   
    1395:	90                   	nop
    1396:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139d:	00 00 00 
    13a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000013a4 <.fini>:
    13a4:	48 83 ec 08          	sub    $0x8,%rsp
    13a8:	48 83 c4 08          	add    $0x8,%rsp
    13ac:	c3                   	retq   

Disassembly of section .rodata:

00000000000013b0 <.rodata>:
    13b0:	01 00                	add    %eax,(%rax)
    13b2:	02 00                	add    (%rax),%al
    13b4:	00 00                	add    %al,(%rax)
    13b6:	00 00                	add    %al,(%rax)
    13b8:	61                   	(bad)  
    13b9:	62 63 64 65 66       	(bad)
    13be:	67 68 69 6a 6b 6c    	addr32 pushq $0x6c6b6a69
    13c4:	6d                   	insl   (%dx),%es:(%rdi)
    13c5:	6e                   	outsb  %ds:(%rsi),(%dx)
    13c6:	6f                   	outsl  %ds:(%rsi),(%dx)
    13c7:	70 71                	jo     143a <__cxa_finalize@plt+0xc2a>
    13c9:	72 73                	jb     143e <__cxa_finalize@plt+0xc2e>
    13cb:	74 75                	je     1442 <__cxa_finalize@plt+0xc32>
    13cd:	76 77                	jbe    1446 <__cxa_finalize@plt+0xc36>
    13cf:	78 79                	js     144a <__cxa_finalize@plt+0xc3a>
    13d1:	7a 5f                	jp     1432 <__cxa_finalize@plt+0xc22>
    13d3:	21 20                	and    %esp,(%rax)
    13d5:	00 49 6e             	add    %cl,0x6e(%rcx)
    13d8:	70 75                	jo     144f <__cxa_finalize@plt+0xc3f>
    13da:	74 20                	je     13fc <__cxa_finalize@plt+0xbec>
    13dc:	70 61                	jo     143f <__cxa_finalize@plt+0xc2f>
    13de:	73 73                	jae    1453 <__cxa_finalize@plt+0xc43>
    13e0:	77 6f                	ja     1451 <__cxa_finalize@plt+0xc41>
    13e2:	72 64                	jb     1448 <__cxa_finalize@plt+0xc38>
    13e4:	3a 20                	cmp    (%rax),%ah
    13e6:	00 25 73 00 0a 00    	add    %ah,0xa0073(%rip)        # a145f <__cxa_finalize@plt+0xa0c4f>
    13ec:	53                   	push   %rbx
    13ed:	6f                   	outsl  %ds:(%rsi),(%dx)
    13ee:	72 72                	jb     1462 <__cxa_finalize@plt+0xc52>
    13f0:	79 2c                	jns    141e <__cxa_finalize@plt+0xc0e>
    13f2:	20 69 6e             	and    %ch,0x6e(%rcx)
    13f5:	63 6f 72             	movslq 0x72(%rdi),%ebp
    13f8:	72 65                	jb     145f <__cxa_finalize@plt+0xc4f>
    13fa:	63 74 20 70          	movslq 0x70(%rax,%riz,1),%esi
    13fe:	61                   	(bad)  
    13ff:	73 73                	jae    1474 <__cxa_finalize@plt+0xc64>
    1401:	77 6f                	ja     1472 <__cxa_finalize@plt+0xc62>
    1403:	72 64                	jb     1469 <__cxa_finalize@plt+0xc59>
    1405:	21 00                	and    %eax,(%rax)
    1407:	00 77 61             	add    %dh,0x61(%rdi)
    140a:	62 63 64 65 66       	(bad)
    140f:	67 6c                	insb   (%dx),%es:(%edi)
    1411:	68 69 6a 6b 6d       	pushq  $0x6d6b6a69
    1416:	71 6e                	jno    1486 <__cxa_finalize@plt+0xc76>
    1418:	6f                   	outsl  %ds:(%rsi),(%dx)
    1419:	70 72                	jo     148d <__cxa_finalize@plt+0xc7d>
    141b:	76 73                	jbe    1490 <__cxa_finalize@plt+0xc80>
    141d:	74 75                	je     1494 <__cxa_finalize@plt+0xc84>
    141f:	7a 78                	jp     1499 <__cxa_finalize@plt+0xc89>
    1421:	79 5f                	jns    1482 <__cxa_finalize@plt+0xc72>
    1423:	21 7b 7d             	and    %edi,0x7d(%rbx)
    1426:	2e 31 32             	xor    %esi,%cs:(%rdx)
    1429:	33 34 35 36 37 38 39 	xor    0x39383736(,%rsi,1),%esi
    1430:	30 20                	xor    %ah,(%rax)
    1432:	00 00                	add    %al,(%rax)
    1434:	00 00                	add    %al,(%rax)
    1436:	00 00                	add    %al,(%rax)
    1438:	61                   	(bad)  
    1439:	62 63 64 65 66       	(bad)
    143e:	67 68 69 6a 6b 6c    	addr32 pushq $0x6c6b6a69
    1444:	6d                   	insl   (%dx),%es:(%rdi)
    1445:	6e                   	outsb  %ds:(%rsi),(%dx)
    1446:	6f                   	outsl  %ds:(%rsi),(%dx)
    1447:	70 71                	jo     14ba <__cxa_finalize@plt+0xcaa>
    1449:	72 73                	jb     14be <__cxa_finalize@plt+0xcae>
    144b:	74 75                	je     14c2 <__cxa_finalize@plt+0xcb2>
    144d:	76 77                	jbe    14c6 <__cxa_finalize@plt+0xcb6>
    144f:	78 79                	js     14ca <__cxa_finalize@plt+0xcba>
    1451:	7a 5f                	jp     14b2 <__cxa_finalize@plt+0xca2>
    1453:	21 7b 7d             	and    %edi,0x7d(%rbx)
    1456:	20 00                	and    %al,(%rax)

Disassembly of section .eh_frame_hdr:

0000000000001458 <.eh_frame_hdr>:
    1458:	01 1b                	add    %ebx,(%rbx)
    145a:	03 3b                	add    (%rbx),%edi
    145c:	5c                   	pop    %rsp
    145d:	00 00                	add    %al,(%rax)
    145f:	00 0a                	add    %cl,(%rdx)
    1461:	00 00                	add    %al,(%rax)
    1463:	00 18                	add    %bl,(%rax)
    1465:	f3 ff                	repz (bad) 
    1467:	ff a8 00 00 00 b8    	ljmp   *-0x48000000(%rax)
    146d:	f3 ff                	repz (bad) 
    146f:	ff d0                	callq  *%rax
    1471:	00 00                	add    %al,(%rax)
    1473:	00 c8                	add    %cl,%al
    1475:	f3 ff                	repz (bad) 
    1477:	ff                   	(bad)  
    1478:	78 00                	js     147a <__cxa_finalize@plt+0xc6a>
    147a:	00 00                	add    %al,(%rax)
    147c:	d2 f4                	shl    %cl,%ah
    147e:	ff                   	(bad)  
    147f:	ff                   	(bad)  
    1480:	e8 00 00 00 15       	callq  15001485 <stdin@@GLIBC_2.2.5+0x14dff465>
    1485:	f8                   	clc    
    1486:	ff                   	(bad)  
    1487:	ff 0c 01             	decl   (%rcx,%rax,1)
    148a:	00 00                	add    %al,(%rax)
    148c:	d6                   	(bad)  
    148d:	fb                   	sti    
    148e:	ff                   	(bad)  
    148f:	ff 2c 01             	ljmp   *(%rcx,%rax,1)
    1492:	00 00                	add    %al,(%rax)
    1494:	67 fe                	addr32 (bad) 
    1496:	ff                   	(bad)  
    1497:	ff 48 01             	decl   0x1(%rax)
    149a:	00 00                	add    %al,(%rax)
    149c:	87 fe                	xchg   %edi,%esi
    149e:	ff                   	(bad)  
    149f:	ff 68 01             	ljmp   *0x1(%rax)
    14a2:	00 00                	add    %al,(%rax)
    14a4:	d8 fe                	fdivr  %st(6),%st
    14a6:	ff                   	(bad)  
    14a7:	ff 88 01 00 00 48    	decl   0x48000001(%rax)
    14ad:	ff                   	(bad)  
    14ae:	ff                   	(bad)  
    14af:	ff d0                	callq  *%rax
    14b1:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

00000000000014b8 <.eh_frame>:
    14b8:	14 00                	adc    $0x0,%al
    14ba:	00 00                	add    %al,(%rax)
    14bc:	00 00                	add    %al,(%rax)
    14be:	00 00                	add    %al,(%rax)
    14c0:	01 7a 52             	add    %edi,0x52(%rdx)
    14c3:	00 01                	add    %al,(%rcx)
    14c5:	78 10                	js     14d7 <__cxa_finalize@plt+0xcc7>
    14c7:	01 1b                	add    %ebx,(%rbx)
    14c9:	0c 07                	or     $0x7,%al
    14cb:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    14d1:	00 00                	add    %al,(%rax)
    14d3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    14d6:	00 00                	add    %al,(%rax)
    14d8:	48                   	rex.W
    14d9:	f3 ff                	repz (bad) 
    14db:	ff 2b                	ljmp   *(%rbx)
	...
    14e5:	00 00                	add    %al,(%rax)
    14e7:	00 14 00             	add    %dl,(%rax,%rax,1)
    14ea:	00 00                	add    %al,(%rax)
    14ec:	00 00                	add    %al,(%rax)
    14ee:	00 00                	add    %al,(%rax)
    14f0:	01 7a 52             	add    %edi,0x52(%rdx)
    14f3:	00 01                	add    %al,(%rcx)
    14f5:	78 10                	js     1507 <__cxa_finalize@plt+0xcf7>
    14f7:	01 1b                	add    %ebx,(%rbx)
    14f9:	0c 07                	or     $0x7,%al
    14fb:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    1501:	00 00                	add    %al,(%rax)
    1503:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1506:	00 00                	add    %al,(%rax)
    1508:	68 f2 ff ff a0       	pushq  $0xffffffffa0fffff2
    150d:	00 00                	add    %al,(%rax)
    150f:	00 00                	add    %al,(%rax)
    1511:	0e                   	(bad)  
    1512:	10 46 0e             	adc    %al,0xe(%rsi)
    1515:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    1518:	0b 77 08             	or     0x8(%rdi),%esi
    151b:	80 00 3f             	addb   $0x3f,(%rax)
    151e:	1a 3b                	sbb    (%rbx),%bh
    1520:	2a 33                	sub    (%rbx),%dh
    1522:	24 22                	and    $0x22,%al
    1524:	00 00                	add    %al,(%rax)
    1526:	00 00                	add    %al,(%rax)
    1528:	14 00                	adc    $0x0,%al
    152a:	00 00                	add    %al,(%rax)
    152c:	44 00 00             	add    %r8b,(%rax)
    152f:	00 e0                	add    %ah,%al
    1531:	f2 ff                	repnz (bad) 
    1533:	ff 08                	decl   (%rax)
	...
    153d:	00 00                	add    %al,(%rax)
    153f:	00 20                	add    %ah,(%rax)
    1541:	00 00                	add    %al,(%rax)
    1543:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    1547:	00 e2                	add    %ah,%dl
    1549:	f3 ff                	repz (bad) 
    154b:	ff 43 03             	incl   0x3(%rbx)
    154e:	00 00                	add    %al,(%rax)
    1550:	00 41 0e             	add    %al,0xe(%rcx)
    1553:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    1559:	45 83 03 03          	rex.RB addl $0x3,(%r11)
    155d:	39 03                	cmp    %eax,(%rbx)
    155f:	0c 07                	or     $0x7,%al
    1561:	08 00                	or     %al,(%rax)
    1563:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1566:	00 00                	add    %al,(%rax)
    1568:	80 00 00             	addb   $0x0,(%rax)
    156b:	00 01                	add    %al,(%rcx)
    156d:	f7 ff                	idiv   %edi
    156f:	ff c1                	inc    %ecx
    1571:	03 00                	add    (%rax),%eax
    1573:	00 00                	add    %al,(%rax)
    1575:	41 0e                	rex.B (bad) 
    1577:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    157d:	03 bc 03 0c 07 08 00 	add    0x8070c(%rbx,%rax,1),%edi
    1584:	18 00                	sbb    %al,(%rax)
    1586:	00 00                	add    %al,(%rax)
    1588:	a0 00 00 00 a2 fa ff 	movabs 0x91fffffaa2000000,%al
    158f:	ff 91 
    1591:	02 00                	add    (%rax),%al
    1593:	00 00                	add    %al,(%rax)
    1595:	41 0e                	rex.B (bad) 
    1597:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    159d:	00 00                	add    %al,(%rax)
    159f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    15a2:	00 00                	add    %al,(%rax)
    15a4:	bc 00 00 00 17       	mov    $0x17000000,%esp
    15a9:	fd                   	std    
    15aa:	ff                   	(bad)  
    15ab:	ff 20                	jmpq   *(%rax)
    15ad:	00 00                	add    %al,(%rax)
    15af:	00 00                	add    %al,(%rax)
    15b1:	41 0e                	rex.B (bad) 
    15b3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    15b9:	5b                   	pop    %rbx
    15ba:	0c 07                	or     $0x7,%al
    15bc:	08 00                	or     %al,(%rax)
    15be:	00 00                	add    %al,(%rax)
    15c0:	1c 00                	sbb    $0x0,%al
    15c2:	00 00                	add    %al,(%rax)
    15c4:	dc 00                	faddl  (%rax)
    15c6:	00 00                	add    %al,(%rax)
    15c8:	17                   	(bad)  
    15c9:	fd                   	std    
    15ca:	ff                   	(bad)  
    15cb:	ff 47 00             	incl   0x0(%rdi)
    15ce:	00 00                	add    %al,(%rax)
    15d0:	00 41 0e             	add    %al,0xe(%rcx)
    15d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    15d9:	00 00                	add    %al,(%rax)
    15db:	00 00                	add    %al,(%rax)
    15dd:	00 00                	add    %al,(%rax)
    15df:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    15e3:	00 fc                	add    %bh,%ah
    15e5:	00 00                	add    %al,(%rax)
    15e7:	00 48 fd             	add    %cl,-0x3(%rax)
    15ea:	ff                   	(bad)  
    15eb:	ff 65 00             	jmpq   *0x0(%rbp)
    15ee:	00 00                	add    %al,(%rax)
    15f0:	00 42 0e             	add    %al,0xe(%rdx)
    15f3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    15f9:	8e 03                	mov    (%rbx),%es
    15fb:	45 0e                	rex.RB (bad) 
    15fd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    1603:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86302451 <stdin@@GLIBC_2.2.5+0xffffffff86100431>
    1609:	06                   	(bad)  
    160a:	48 0e                	rex.W (bad) 
    160c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
    1612:	72 0e                	jb     1622 <__cxa_finalize@plt+0xe12>
    1614:	38 41 0e             	cmp    %al,0xe(%rcx)
    1617:	30 41 0e             	xor    %al,0xe(%rcx)
    161a:	28 42 0e             	sub    %al,0xe(%rdx)
    161d:	20 42 0e             	and    %al,0xe(%rdx)
    1620:	18 42 0e             	sbb    %al,0xe(%rdx)
    1623:	10 42 0e             	adc    %al,0xe(%rdx)
    1626:	08 00                	or     %al,(%rax)
    1628:	10 00                	adc    %al,(%rax)
    162a:	00 00                	add    %al,(%rax)
    162c:	44 01 00             	add    %r8d,(%rax)
    162f:	00 70 fd             	add    %dh,-0x3(%rax)
    1632:	ff                   	(bad)  
    1633:	ff 02                	incl   (%rdx)
	...

Disassembly of section .init_array:

0000000000201d78 <.init_array>:
  201d78:	20 09                	and    %cl,(%rcx)
  201d7a:	00 00                	add    %al,(%rax)
  201d7c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000201d80 <.fini_array>:
  201d80:	e0 08                	loopne 201d8a <__cxa_finalize@plt+0x20157a>
  201d82:	00 00                	add    %al,(%rax)
  201d84:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000201d88 <.dynamic>:
  201d88:	01 00                	add    %eax,(%rax)
  201d8a:	00 00                	add    %al,(%rax)
  201d8c:	00 00                	add    %al,(%rax)
  201d8e:	00 00                	add    %al,(%rax)
  201d90:	01 00                	add    %eax,(%rax)
  201d92:	00 00                	add    %al,(%rax)
  201d94:	00 00                	add    %al,(%rax)
  201d96:	00 00                	add    %al,(%rax)
  201d98:	0c 00                	or     $0x0,%al
  201d9a:	00 00                	add    %al,(%rax)
  201d9c:	00 00                	add    %al,(%rax)
  201d9e:	00 00                	add    %al,(%rax)
  201da0:	50                   	push   %rax
  201da1:	07                   	(bad)  
  201da2:	00 00                	add    %al,(%rax)
  201da4:	00 00                	add    %al,(%rax)
  201da6:	00 00                	add    %al,(%rax)
  201da8:	0d 00 00 00 00       	or     $0x0,%eax
  201dad:	00 00                	add    %al,(%rax)
  201daf:	00 a4 13 00 00 00 00 	add    %ah,0x0(%rbx,%rdx,1)
  201db6:	00 00                	add    %al,(%rax)
  201db8:	19 00                	sbb    %eax,(%rax)
  201dba:	00 00                	add    %al,(%rax)
  201dbc:	00 00                	add    %al,(%rax)
  201dbe:	00 00                	add    %al,(%rax)
  201dc0:	78 1d                	js     201ddf <__cxa_finalize@plt+0x2015cf>
  201dc2:	20 00                	and    %al,(%rax)
  201dc4:	00 00                	add    %al,(%rax)
  201dc6:	00 00                	add    %al,(%rax)
  201dc8:	1b 00                	sbb    (%rax),%eax
  201dca:	00 00                	add    %al,(%rax)
  201dcc:	00 00                	add    %al,(%rax)
  201dce:	00 00                	add    %al,(%rax)
  201dd0:	08 00                	or     %al,(%rax)
  201dd2:	00 00                	add    %al,(%rax)
  201dd4:	00 00                	add    %al,(%rax)
  201dd6:	00 00                	add    %al,(%rax)
  201dd8:	1a 00                	sbb    (%rax),%al
  201dda:	00 00                	add    %al,(%rax)
  201ddc:	00 00                	add    %al,(%rax)
  201dde:	00 00                	add    %al,(%rax)
  201de0:	80 1d 20 00 00 00 00 	sbbb   $0x0,0x20(%rip)        # 201e07 <__cxa_finalize@plt+0x2015f7>
  201de7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  201dea:	00 00                	add    %al,(%rax)
  201dec:	00 00                	add    %al,(%rax)
  201dee:	00 00                	add    %al,(%rax)
  201df0:	08 00                	or     %al,(%rax)
  201df2:	00 00                	add    %al,(%rax)
  201df4:	00 00                	add    %al,(%rax)
  201df6:	00 00                	add    %al,(%rax)
  201df8:	f5                   	cmc    
  201df9:	fe                   	(bad)  
  201dfa:	ff 6f 00             	ljmp   *0x0(%rdi)
  201dfd:	00 00                	add    %al,(%rax)
  201dff:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  201e05:	00 00                	add    %al,(%rax)
  201e07:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 201e0d <__cxa_finalize@plt+0x2015fd>
  201e0d:	00 00                	add    %al,(%rax)
  201e0f:	00 58 04             	add    %bl,0x4(%rax)
  201e12:	00 00                	add    %al,(%rax)
  201e14:	00 00                	add    %al,(%rax)
  201e16:	00 00                	add    %al,(%rax)
  201e18:	06                   	(bad)  
  201e19:	00 00                	add    %al,(%rax)
  201e1b:	00 00                	add    %al,(%rax)
  201e1d:	00 00                	add    %al,(%rax)
  201e1f:	00 c0                	add    %al,%al
  201e21:	02 00                	add    (%rax),%al
  201e23:	00 00                	add    %al,(%rax)
  201e25:	00 00                	add    %al,(%rax)
  201e27:	00 0a                	add    %cl,(%rdx)
  201e29:	00 00                	add    %al,(%rax)
  201e2b:	00 00                	add    %al,(%rax)
  201e2d:	00 00                	add    %al,(%rax)
  201e2f:	00 d8                	add    %bl,%al
  201e31:	00 00                	add    %al,(%rax)
  201e33:	00 00                	add    %al,(%rax)
  201e35:	00 00                	add    %al,(%rax)
  201e37:	00 0b                	add    %cl,(%rbx)
  201e39:	00 00                	add    %al,(%rax)
  201e3b:	00 00                	add    %al,(%rax)
  201e3d:	00 00                	add    %al,(%rax)
  201e3f:	00 18                	add    %bl,(%rax)
  201e41:	00 00                	add    %al,(%rax)
  201e43:	00 00                	add    %al,(%rax)
  201e45:	00 00                	add    %al,(%rax)
  201e47:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 201e4d <__cxa_finalize@plt+0x20163d>
	...
  201e55:	00 00                	add    %al,(%rax)
  201e57:	00 03                	add    %al,(%rbx)
  201e59:	00 00                	add    %al,(%rax)
  201e5b:	00 00                	add    %al,(%rax)
  201e5d:	00 00                	add    %al,(%rax)
  201e5f:	00 78 1f             	add    %bh,0x1f(%rax)
  201e62:	20 00                	and    %al,(%rax)
  201e64:	00 00                	add    %al,(%rax)
  201e66:	00 00                	add    %al,(%rax)
  201e68:	02 00                	add    (%rax),%al
  201e6a:	00 00                	add    %al,(%rax)
  201e6c:	00 00                	add    %al,(%rax)
  201e6e:	00 00                	add    %al,(%rax)
  201e70:	d8 00                	fadds  (%rax)
  201e72:	00 00                	add    %al,(%rax)
  201e74:	00 00                	add    %al,(%rax)
  201e76:	00 00                	add    %al,(%rax)
  201e78:	14 00                	adc    $0x0,%al
  201e7a:	00 00                	add    %al,(%rax)
  201e7c:	00 00                	add    %al,(%rax)
  201e7e:	00 00                	add    %al,(%rax)
  201e80:	07                   	(bad)  
  201e81:	00 00                	add    %al,(%rax)
  201e83:	00 00                	add    %al,(%rax)
  201e85:	00 00                	add    %al,(%rax)
  201e87:	00 17                	add    %dl,(%rdi)
  201e89:	00 00                	add    %al,(%rax)
  201e8b:	00 00                	add    %al,(%rax)
  201e8d:	00 00                	add    %al,(%rax)
  201e8f:	00 78 06             	add    %bh,0x6(%rax)
  201e92:	00 00                	add    %al,(%rax)
  201e94:	00 00                	add    %al,(%rax)
  201e96:	00 00                	add    %al,(%rax)
  201e98:	07                   	(bad)  
  201e99:	00 00                	add    %al,(%rax)
  201e9b:	00 00                	add    %al,(%rax)
  201e9d:	00 00                	add    %al,(%rax)
  201e9f:	00 88 05 00 00 00    	add    %cl,0x5(%rax)
  201ea5:	00 00                	add    %al,(%rax)
  201ea7:	00 08                	add    %cl,(%rax)
  201ea9:	00 00                	add    %al,(%rax)
  201eab:	00 00                	add    %al,(%rax)
  201ead:	00 00                	add    %al,(%rax)
  201eaf:	00 f0                	add    %dh,%al
  201eb1:	00 00                	add    %al,(%rax)
  201eb3:	00 00                	add    %al,(%rax)
  201eb5:	00 00                	add    %al,(%rax)
  201eb7:	00 09                	add    %cl,(%rcx)
  201eb9:	00 00                	add    %al,(%rax)
  201ebb:	00 00                	add    %al,(%rax)
  201ebd:	00 00                	add    %al,(%rax)
  201ebf:	00 18                	add    %bl,(%rax)
  201ec1:	00 00                	add    %al,(%rax)
  201ec3:	00 00                	add    %al,(%rax)
  201ec5:	00 00                	add    %al,(%rax)
  201ec7:	00 1e                	add    %bl,(%rsi)
  201ec9:	00 00                	add    %al,(%rax)
  201ecb:	00 00                	add    %al,(%rax)
  201ecd:	00 00                	add    %al,(%rax)
  201ecf:	00 08                	add    %cl,(%rax)
  201ed1:	00 00                	add    %al,(%rax)
  201ed3:	00 00                	add    %al,(%rax)
  201ed5:	00 00                	add    %al,(%rax)
  201ed7:	00 fb                	add    %bh,%bl
  201ed9:	ff                   	(bad)  
  201eda:	ff 6f 00             	ljmp   *0x0(%rdi)
  201edd:	00 00                	add    %al,(%rax)
  201edf:	00 01                	add    %al,(%rcx)
  201ee1:	00 00                	add    %al,(%rax)
  201ee3:	08 00                	or     %al,(%rax)
  201ee5:	00 00                	add    %al,(%rax)
  201ee7:	00 fe                	add    %bh,%dh
  201ee9:	ff                   	(bad)  
  201eea:	ff 6f 00             	ljmp   *0x0(%rdi)
  201eed:	00 00                	add    %al,(%rax)
  201eef:	00 58 05             	add    %bl,0x5(%rax)
  201ef2:	00 00                	add    %al,(%rax)
  201ef4:	00 00                	add    %al,(%rax)
  201ef6:	00 00                	add    %al,(%rax)
  201ef8:	ff                   	(bad)  
  201ef9:	ff                   	(bad)  
  201efa:	ff 6f 00             	ljmp   *0x0(%rdi)
  201efd:	00 00                	add    %al,(%rax)
  201eff:	00 01                	add    %al,(%rcx)
  201f01:	00 00                	add    %al,(%rax)
  201f03:	00 00                	add    %al,(%rax)
  201f05:	00 00                	add    %al,(%rax)
  201f07:	00 f0                	add    %dh,%al
  201f09:	ff                   	(bad)  
  201f0a:	ff 6f 00             	ljmp   *0x0(%rdi)
  201f0d:	00 00                	add    %al,(%rax)
  201f0f:	00 30                	add    %dh,(%rax)
  201f11:	05 00 00 00 00       	add    $0x0,%eax
  201f16:	00 00                	add    %al,(%rax)
  201f18:	f9                   	stc    
  201f19:	ff                   	(bad)  
  201f1a:	ff 6f 00             	ljmp   *0x0(%rdi)
  201f1d:	00 00                	add    %al,(%rax)
  201f1f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000201f78 <.got>:
  201f78:	88 1d 20 00 00 00    	mov    %bl,0x20(%rip)        # 201f9e <__cxa_finalize@plt+0x20178e>
	...
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

0000000000202010 <stdout@@GLIBC_2.2.5>:
	...

0000000000202020 <stdin@@GLIBC_2.2.5>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <puts@plt-0x708>
   a:	74 75                	je     81 <puts@plt-0x6ff>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <stdin@@GLIBC_2.2.5+0x75425528>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <puts@plt-0x6f1>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	31 29                	xor    %ebp,(%rcx)
  24:	20 37                	and    %dh,(%rdi)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
