
split:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x32b>
  400248:	78 38                	js     400282 <_init-0x31e>
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
  40026f:	00 20                	add    %ah,(%rax)
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
  400283:	00 8c bc 19 d1 11 4b 	add    %cl,0x4b11d119(%rsp,%rdi,4)
  40028a:	70 bc                	jo     400248 <_init-0x358>
  40028c:	e2 30                	loop   4002be <_init-0x2e2>
  40028e:	5f                   	pop    %rdi
  40028f:	7d ed                	jge    40027e <_init-0x322>
  400291:	9e                   	sahf   
  400292:	7d d4                	jge    400268 <_init-0x338>
  400294:	d2 e2                	shl    %cl,%dl
  400296:	80                   	.byte 0x80
  400297:	69                   	.byte 0x69

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    (%rax),%eax
  40029a:	00 00                	add    %al,(%rax)
  40029c:	09 00                	or     %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
  4002a2:	00 00                	add    %al,(%rax)
  4002a4:	06                   	(bad)  
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 00                	add    %al,(%rax)
  4002a9:	01 20                	add    %esp,(%rax)
  4002ab:	00 80 01 10 02 09    	add    %al,0x9021001(%rax)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 0a                	add    %cl,(%rdx)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 00                	add    %al,(%rax)
  4002b9:	00 00                	add    %al,(%rax)
  4002bb:	00 29                	add    %ch,(%rcx)
  4002bd:	1d 8c 1c 66 55       	sbb    $0x55661c8c,%eax
  4002c2:	61                   	(bad)  
  4002c3:	10 39                	adc    %bh,(%rcx)
  4002c5:	f2                   	repnz
  4002c6:	8b                   	.byte 0x8b
  4002c7:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000004002c8 <.dynsym>:
	...
  4002e0:	0b 00                	or     (%rax),%eax
  4002e2:	00 00                	add    %al,(%rax)
  4002e4:	12 00                	adc    (%rax),%al
	...
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	38 00                	cmp    %al,(%rax)
  4002fa:	00 00                	add    %al,(%rax)
  4002fc:	12 00                	adc    (%rax),%al
	...
  40030e:	00 00                	add    %al,(%rax)
  400310:	16                   	(bad)  
  400311:	00 00                	add    %al,(%rax)
  400313:	00 12                	add    %dl,(%rdx)
	...
  400325:	00 00                	add    %al,(%rax)
  400327:	00 23                	add    %ah,(%rbx)
  400329:	00 00                	add    %al,(%rax)
  40032b:	00 12                	add    %dl,(%rdx)
	...
  40033d:	00 00                	add    %al,(%rax)
  40033f:	00 47 00             	add    %al,0x0(%rdi)
  400342:	00 00                	add    %al,(%rax)
  400344:	12 00                	adc    (%rax),%al
	...
  400356:	00 00                	add    %al,(%rax)
  400358:	1d 00 00 00 12       	sbb    $0x12000000,%eax
	...
  40036d:	00 00                	add    %al,(%rax)
  40036f:	00 59 00             	add    %bl,0x0(%rcx)
  400372:	00 00                	add    %al,(%rax)
  400374:	20 00                	and    %al,(%rax)
	...
  400386:	00 00                	add    %al,(%rax)
  400388:	3f                   	(bad)  
  400389:	00 00                	add    %al,(%rax)
  40038b:	00 12                	add    %dl,(%rdx)
	...
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 2a                	add    %ch,(%rdx)
  4003a1:	00 00                	add    %al,(%rax)
  4003a3:	00 11                	add    %dl,(%rcx)
  4003a5:	00 1a                	add    %bl,(%rdx)
  4003a7:	00 80 10 60 00 00    	add    %al,0x6010(%rax)
  4003ad:	00 00                	add    %al,(%rax)
  4003af:	00 08                	add    %cl,(%rax)
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 00                	add    %al,(%rax)
  4003b5:	00 00                	add    %al,(%rax)
  4003b7:	00 10                	add    %dl,(%rax)
  4003b9:	00 00                	add    %al,(%rax)
  4003bb:	00 11                	add    %dl,(%rcx)
  4003bd:	00 1a                	add    %bl,(%rdx)
  4003bf:	00 90 10 60 00 00    	add    %dl,0x6010(%rax)
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 08                	add    %cl,(%rax)
  4003c9:	00 00                	add    %al,(%rax)
  4003cb:	00 00                	add    %al,(%rax)
  4003cd:	00 00                	add    %al,(%rax)
  4003cf:	00 31                	add    %dh,(%rcx)
  4003d1:	00 00                	add    %al,(%rax)
  4003d3:	00 11                	add    %dl,(%rcx)
  4003d5:	00 1a                	add    %bl,(%rdx)
  4003d7:	00 a0 10 60 00 00    	add    %ah,0x6010(%rax)
  4003dd:	00 00                	add    %al,(%rax)
  4003df:	00 08                	add    %cl,(%rax)
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 00                	add    %al,(%rax)
  4003e5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000004003e8 <.dynstr>:
  4003e8:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4003ec:	63 2e                	movslq (%rsi),%ebp
  4003ee:	73 6f                	jae    40045f <_init-0x141>
  4003f0:	2e 36 00 70 75       	cs add %dh,%ss:0x75(%rax)
  4003f5:	74 73                	je     40046a <_init-0x136>
  4003f7:	00 73 74             	add    %dh,0x74(%rbx)
  4003fa:	64 69 6e 00 70 72 69 	imul   $0x6e697270,%fs:0x0(%rsi),%ebp
  400401:	6e 
  400402:	74 66                	je     40046a <_init-0x136>
  400404:	00 66 67             	add    %ah,0x67(%rsi)
  400407:	65 74 73             	gs je  40047d <_init-0x123>
  40040a:	00 6d 65             	add    %ch,0x65(%rbp)
  40040d:	6d                   	insl   (%dx),%es:(%rdi)
  40040e:	73 65                	jae    400475 <_init-0x12b>
  400410:	74 00                	je     400412 <_init-0x18e>
  400412:	73 74                	jae    400488 <_init-0x118>
  400414:	64 6f                	outsl  %fs:(%rsi),(%dx)
  400416:	75 74                	jne    40048c <_init-0x114>
  400418:	00 73 74             	add    %dh,0x74(%rbx)
  40041b:	64 65 72 72          	fs gs jb 400491 <_init-0x10f>
  40041f:	00 73 79             	add    %dh,0x79(%rbx)
  400422:	73 74                	jae    400498 <_init-0x108>
  400424:	65 6d                	gs insl (%dx),%es:(%rdi)
  400426:	00 73 65             	add    %dh,0x65(%rbx)
  400429:	74 76                	je     4004a1 <_init-0xff>
  40042b:	62                   	(bad)  
  40042c:	75 66                	jne    400494 <_init-0x10c>
  40042e:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400431:	6c                   	insb   (%dx),%es:(%rdi)
  400432:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400439:	72 74                	jb     4004af <_init-0xf1>
  40043b:	5f                   	pop    %rdi
  40043c:	6d                   	insl   (%dx),%es:(%rdi)
  40043d:	61                   	(bad)  
  40043e:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  400445:	6f                   	outsl  %ds:(%rsi),(%dx)
  400446:	6e                   	outsb  %ds:(%rsi),(%dx)
  400447:	5f                   	pop    %rdi
  400448:	73 74                	jae    4004be <_init-0xe2>
  40044a:	61                   	(bad)  
  40044b:	72 74                	jb     4004c1 <_init-0xdf>
  40044d:	5f                   	pop    %rdi
  40044e:	5f                   	pop    %rdi
  40044f:	00 47 4c             	add    %al,0x4c(%rdi)
  400452:	49                   	rex.WB
  400453:	42                   	rex.X
  400454:	43 5f                	rex.XB pop %r15
  400456:	32 2e                	xor    (%rsi),%ch
  400458:	32 2e                	xor    (%rsi),%ch
  40045a:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040045c <.gnu.version>:
  40045c:	00 00                	add    %al,(%rax)
  40045e:	02 00                	add    (%rax),%al
  400460:	02 00                	add    (%rax),%al
  400462:	02 00                	add    (%rax),%al
  400464:	02 00                	add    (%rax),%al
  400466:	02 00                	add    (%rax),%al
  400468:	02 00                	add    (%rax),%al
  40046a:	00 00                	add    %al,(%rax)
  40046c:	02 00                	add    (%rax),%al
  40046e:	02 00                	add    (%rax),%al
  400470:	02 00                	add    (%rax),%al
  400472:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400478 <.gnu.version_r>:
  400478:	01 00                	add    %eax,(%rax)
  40047a:	01 00                	add    %eax,(%rax)
  40047c:	01 00                	add    %eax,(%rax)
  40047e:	00 00                	add    %al,(%rax)
  400480:	10 00                	adc    %al,(%rax)
  400482:	00 00                	add    %al,(%rax)
  400484:	00 00                	add    %al,(%rax)
  400486:	00 00                	add    %al,(%rax)
  400488:	75 1a                	jne    4004a4 <_init-0xfc>
  40048a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400490:	68 00 00 00 00       	pushq  $0x0
  400495:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400498 <.rela.dyn>:
  400498:	f8                   	clc    
  400499:	0f 60 00             	punpcklbw (%rax),%mm0
  40049c:	00 00                	add    %al,(%rax)
  40049e:	00 00                	add    %al,(%rax)
  4004a0:	06                   	(bad)  
  4004a1:	00 00                	add    %al,(%rax)
  4004a3:	00 07                	add    %al,(%rdi)
	...
  4004ad:	00 00                	add    %al,(%rax)
  4004af:	00 80 10 60 00 00    	add    %al,0x6010(%rax)
  4004b5:	00 00                	add    %al,(%rax)
  4004b7:	00 05 00 00 00 09    	add    %al,0x9000000(%rip)        # 94004bd <_end+0x8dff40d>
	...
  4004c5:	00 00                	add    %al,(%rax)
  4004c7:	00 90 10 60 00 00    	add    %dl,0x6010(%rax)
  4004cd:	00 00                	add    %al,(%rax)
  4004cf:	00 05 00 00 00 0a    	add    %al,0xa000000(%rip)        # a4004d5 <_end+0x9dff425>
	...
  4004dd:	00 00                	add    %al,(%rax)
  4004df:	00 a0 10 60 00 00    	add    %ah,0x6010(%rax)
  4004e5:	00 00                	add    %al,(%rax)
  4004e7:	00 05 00 00 00 0b    	add    %al,0xb000000(%rip)        # b4004ed <_end+0xadff43d>
	...

Disassembly of section .rela.plt:

00000000004004f8 <.rela.plt>:
  4004f8:	18 10                	sbb    %dl,(%rax)
  4004fa:	60                   	(bad)  
  4004fb:	00 00                	add    %al,(%rax)
  4004fd:	00 00                	add    %al,(%rax)
  4004ff:	00 07                	add    %al,(%rdi)
  400501:	00 00                	add    %al,(%rax)
  400503:	00 01                	add    %al,(%rcx)
	...
  40050d:	00 00                	add    %al,(%rax)
  40050f:	00 20                	add    %ah,(%rax)
  400511:	10 60 00             	adc    %ah,0x0(%rax)
  400514:	00 00                	add    %al,(%rax)
  400516:	00 00                	add    %al,(%rax)
  400518:	07                   	(bad)  
  400519:	00 00                	add    %al,(%rax)
  40051b:	00 02                	add    %al,(%rdx)
	...
  400525:	00 00                	add    %al,(%rax)
  400527:	00 28                	add    %ch,(%rax)
  400529:	10 60 00             	adc    %ah,0x0(%rax)
  40052c:	00 00                	add    %al,(%rax)
  40052e:	00 00                	add    %al,(%rax)
  400530:	07                   	(bad)  
  400531:	00 00                	add    %al,(%rax)
  400533:	00 03                	add    %al,(%rbx)
	...
  40053d:	00 00                	add    %al,(%rax)
  40053f:	00 30                	add    %dh,(%rax)
  400541:	10 60 00             	adc    %ah,0x0(%rax)
  400544:	00 00                	add    %al,(%rax)
  400546:	00 00                	add    %al,(%rax)
  400548:	07                   	(bad)  
  400549:	00 00                	add    %al,(%rax)
  40054b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400556:	00 00                	add    %al,(%rax)
  400558:	38 10                	cmp    %dl,(%rax)
  40055a:	60                   	(bad)  
  40055b:	00 00                	add    %al,(%rax)
  40055d:	00 00                	add    %al,(%rax)
  40055f:	00 07                	add    %al,(%rdi)
  400561:	00 00                	add    %al,(%rax)
  400563:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400569 <_init-0x37>
  400569:	00 00                	add    %al,(%rax)
  40056b:	00 00                	add    %al,(%rax)
  40056d:	00 00                	add    %al,(%rax)
  40056f:	00 40 10             	add    %al,0x10(%rax)
  400572:	60                   	(bad)  
  400573:	00 00                	add    %al,(%rax)
  400575:	00 00                	add    %al,(%rax)
  400577:	00 07                	add    %al,(%rdi)
  400579:	00 00                	add    %al,(%rax)
  40057b:	00 06                	add    %al,(%rsi)
	...
  400585:	00 00                	add    %al,(%rax)
  400587:	00 48 10             	add    %cl,0x10(%rax)
  40058a:	60                   	(bad)  
  40058b:	00 00                	add    %al,(%rax)
  40058d:	00 00                	add    %al,(%rax)
  40058f:	00 07                	add    %al,(%rdi)
  400591:	00 00                	add    %al,(%rax)
  400593:	00 08                	add    %cl,(%rax)
	...

Disassembly of section .init:

00000000004005a0 <_init>:
  4005a0:	48 83 ec 08          	sub    $0x8,%rsp
  4005a4:	48 8b 05 4d 0a 20 00 	mov    0x200a4d(%rip),%rax        # 600ff8 <__gmon_start__>
  4005ab:	48 85 c0             	test   %rax,%rax
  4005ae:	74 05                	je     4005b5 <_init+0x15>
  4005b0:	e8 8b 00 00 00       	callq  400640 <__gmon_start__@plt>
  4005b5:	48 83 c4 08          	add    $0x8,%rsp
  4005b9:	c3                   	retq   

Disassembly of section .plt:

00000000004005c0 <.plt>:
  4005c0:	ff 35 42 0a 20 00    	pushq  0x200a42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 0a 20 00    	jmpq   *0x200a44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <puts@plt>:
  4005d0:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005d6:	68 00 00 00 00       	pushq  $0x0
  4005db:	e9 e0 ff ff ff       	jmpq   4005c0 <.plt>

00000000004005e0 <system@plt>:
  4005e0:	ff 25 3a 0a 20 00    	jmpq   *0x200a3a(%rip)        # 601020 <system@GLIBC_2.2.5>
  4005e6:	68 01 00 00 00       	pushq  $0x1
  4005eb:	e9 d0 ff ff ff       	jmpq   4005c0 <.plt>

00000000004005f0 <printf@plt>:
  4005f0:	ff 25 32 0a 20 00    	jmpq   *0x200a32(%rip)        # 601028 <printf@GLIBC_2.2.5>
  4005f6:	68 02 00 00 00       	pushq  $0x2
  4005fb:	e9 c0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400600 <memset@plt>:
  400600:	ff 25 2a 0a 20 00    	jmpq   *0x200a2a(%rip)        # 601030 <memset@GLIBC_2.2.5>
  400606:	68 03 00 00 00       	pushq  $0x3
  40060b:	e9 b0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400610 <__libc_start_main@plt>:
  400610:	ff 25 22 0a 20 00    	jmpq   *0x200a22(%rip)        # 601038 <__libc_start_main@GLIBC_2.2.5>
  400616:	68 04 00 00 00       	pushq  $0x4
  40061b:	e9 a0 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400620 <fgets@plt>:
  400620:	ff 25 1a 0a 20 00    	jmpq   *0x200a1a(%rip)        # 601040 <fgets@GLIBC_2.2.5>
  400626:	68 05 00 00 00       	pushq  $0x5
  40062b:	e9 90 ff ff ff       	jmpq   4005c0 <.plt>

0000000000400630 <setvbuf@plt>:
  400630:	ff 25 12 0a 20 00    	jmpq   *0x200a12(%rip)        # 601048 <setvbuf@GLIBC_2.2.5>
  400636:	68 06 00 00 00       	pushq  $0x6
  40063b:	e9 80 ff ff ff       	jmpq   4005c0 <.plt>

Disassembly of section .plt.got:

0000000000400640 <__gmon_start__@plt>:
  400640:	ff 25 b2 09 20 00    	jmpq   *0x2009b2(%rip)        # 600ff8 <__gmon_start__>
  400646:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400650 <_start>:
  400650:	31 ed                	xor    %ebp,%ebp
  400652:	49 89 d1             	mov    %rdx,%r9
  400655:	5e                   	pop    %rsi
  400656:	48 89 e2             	mov    %rsp,%rdx
  400659:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40065d:	50                   	push   %rax
  40065e:	54                   	push   %rsp
  40065f:	49 c7 c0 90 08 40 00 	mov    $0x400890,%r8
  400666:	48 c7 c1 20 08 40 00 	mov    $0x400820,%rcx
  40066d:	48 c7 c7 46 07 40 00 	mov    $0x400746,%rdi
  400674:	e8 97 ff ff ff       	callq  400610 <__libc_start_main@plt>
  400679:	f4                   	hlt    
  40067a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400680 <deregister_tm_clones>:
  400680:	b8 87 10 60 00       	mov    $0x601087,%eax
  400685:	55                   	push   %rbp
  400686:	48 2d 80 10 60 00    	sub    $0x601080,%rax
  40068c:	48 83 f8 0e          	cmp    $0xe,%rax
  400690:	48 89 e5             	mov    %rsp,%rbp
  400693:	76 1b                	jbe    4006b0 <deregister_tm_clones+0x30>
  400695:	b8 00 00 00 00       	mov    $0x0,%eax
  40069a:	48 85 c0             	test   %rax,%rax
  40069d:	74 11                	je     4006b0 <deregister_tm_clones+0x30>
  40069f:	5d                   	pop    %rbp
  4006a0:	bf 80 10 60 00       	mov    $0x601080,%edi
  4006a5:	ff e0                	jmpq   *%rax
  4006a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ae:	00 00 
  4006b0:	5d                   	pop    %rbp
  4006b1:	c3                   	retq   
  4006b2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006bd:	00 00 00 

00000000004006c0 <register_tm_clones>:
  4006c0:	be 80 10 60 00       	mov    $0x601080,%esi
  4006c5:	55                   	push   %rbp
  4006c6:	48 81 ee 80 10 60 00 	sub    $0x601080,%rsi
  4006cd:	48 c1 fe 03          	sar    $0x3,%rsi
  4006d1:	48 89 e5             	mov    %rsp,%rbp
  4006d4:	48 89 f0             	mov    %rsi,%rax
  4006d7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006db:	48 01 c6             	add    %rax,%rsi
  4006de:	48 d1 fe             	sar    %rsi
  4006e1:	74 15                	je     4006f8 <register_tm_clones+0x38>
  4006e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006e8:	48 85 c0             	test   %rax,%rax
  4006eb:	74 0b                	je     4006f8 <register_tm_clones+0x38>
  4006ed:	5d                   	pop    %rbp
  4006ee:	bf 80 10 60 00       	mov    $0x601080,%edi
  4006f3:	ff e0                	jmpq   *%rax
  4006f5:	0f 1f 00             	nopl   (%rax)
  4006f8:	5d                   	pop    %rbp
  4006f9:	c3                   	retq   
  4006fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d a1 09 20 00 00 	cmpb   $0x0,0x2009a1(%rip)        # 6010a8 <completed.7585>
  400707:	75 11                	jne    40071a <__do_global_dtors_aux+0x1a>
  400709:	55                   	push   %rbp
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	e8 6e ff ff ff       	callq  400680 <deregister_tm_clones>
  400712:	5d                   	pop    %rbp
  400713:	c6 05 8e 09 20 00 01 	movb   $0x1,0x20098e(%rip)        # 6010a8 <completed.7585>
  40071a:	f3 c3                	repz retq 
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400720 <frame_dummy>:
  400720:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400725:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400729:	75 05                	jne    400730 <frame_dummy+0x10>
  40072b:	eb 93                	jmp    4006c0 <register_tm_clones>
  40072d:	0f 1f 00             	nopl   (%rax)
  400730:	b8 00 00 00 00       	mov    $0x0,%eax
  400735:	48 85 c0             	test   %rax,%rax
  400738:	74 f1                	je     40072b <frame_dummy+0xb>
  40073a:	55                   	push   %rbp
  40073b:	48 89 e5             	mov    %rsp,%rbp
  40073e:	ff d0                	callq  *%rax
  400740:	5d                   	pop    %rbp
  400741:	e9 7a ff ff ff       	jmpq   4006c0 <register_tm_clones>

0000000000400746 <main>:
  400746:	55                   	push   %rbp
  400747:	48 89 e5             	mov    %rsp,%rbp
  40074a:	48 8b 05 2f 09 20 00 	mov    0x20092f(%rip),%rax        # 601080 <stdout@@GLIBC_2.2.5>
  400751:	b9 00 00 00 00       	mov    $0x0,%ecx
  400756:	ba 02 00 00 00       	mov    $0x2,%edx
  40075b:	be 00 00 00 00       	mov    $0x0,%esi
  400760:	48 89 c7             	mov    %rax,%rdi
  400763:	e8 c8 fe ff ff       	callq  400630 <setvbuf@plt>
  400768:	48 8b 05 31 09 20 00 	mov    0x200931(%rip),%rax        # 6010a0 <stderr@@GLIBC_2.2.5>
  40076f:	b9 00 00 00 00       	mov    $0x0,%ecx
  400774:	ba 02 00 00 00       	mov    $0x2,%edx
  400779:	be 00 00 00 00       	mov    $0x0,%esi
  40077e:	48 89 c7             	mov    %rax,%rdi
  400781:	e8 aa fe ff ff       	callq  400630 <setvbuf@plt>
  400786:	bf a8 08 40 00       	mov    $0x4008a8,%edi
  40078b:	e8 40 fe ff ff       	callq  4005d0 <puts@plt>
  400790:	bf be 08 40 00       	mov    $0x4008be,%edi
  400795:	e8 36 fe ff ff       	callq  4005d0 <puts@plt>
  40079a:	b8 00 00 00 00       	mov    $0x0,%eax
  40079f:	e8 11 00 00 00       	callq  4007b5 <pwnme>
  4007a4:	bf c6 08 40 00       	mov    $0x4008c6,%edi
  4007a9:	e8 22 fe ff ff       	callq  4005d0 <puts@plt>
  4007ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b3:	5d                   	pop    %rbp
  4007b4:	c3                   	retq   

00000000004007b5 <pwnme>:
  4007b5:	55                   	push   %rbp
  4007b6:	48 89 e5             	mov    %rsp,%rbp
  4007b9:	48 83 ec 20          	sub    $0x20,%rsp
  4007bd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4007c1:	ba 20 00 00 00       	mov    $0x20,%edx
  4007c6:	be 00 00 00 00       	mov    $0x0,%esi
  4007cb:	48 89 c7             	mov    %rax,%rdi
  4007ce:	e8 2d fe ff ff       	callq  400600 <memset@plt>
  4007d3:	bf d0 08 40 00       	mov    $0x4008d0,%edi
  4007d8:	e8 f3 fd ff ff       	callq  4005d0 <puts@plt>
  4007dd:	bf fc 08 40 00       	mov    $0x4008fc,%edi
  4007e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4007e7:	e8 04 fe ff ff       	callq  4005f0 <printf@plt>
  4007ec:	48 8b 15 9d 08 20 00 	mov    0x20089d(%rip),%rdx        # 601090 <stdin@@GLIBC_2.2.5>
  4007f3:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4007f7:	be 60 00 00 00       	mov    $0x60,%esi
  4007fc:	48 89 c7             	mov    %rax,%rdi
  4007ff:	e8 1c fe ff ff       	callq  400620 <fgets@plt>
  400804:	90                   	nop
  400805:	c9                   	leaveq 
  400806:	c3                   	retq   

0000000000400807 <usefulFunction>:
  400807:	55                   	push   %rbp
  400808:	48 89 e5             	mov    %rsp,%rbp
  40080b:	bf ff 08 40 00       	mov    $0x4008ff,%edi
  400810:	e8 cb fd ff ff       	callq  4005e0 <system@plt>
  400815:	90                   	nop
  400816:	5d                   	pop    %rbp
  400817:	c3                   	retq   
  400818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40081f:	00 

0000000000400820 <__libc_csu_init>:
  400820:	41 57                	push   %r15
  400822:	41 56                	push   %r14
  400824:	41 89 ff             	mov    %edi,%r15d
  400827:	41 55                	push   %r13
  400829:	41 54                	push   %r12
  40082b:	4c 8d 25 de 05 20 00 	lea    0x2005de(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400832:	55                   	push   %rbp
  400833:	48 8d 2d de 05 20 00 	lea    0x2005de(%rip),%rbp        # 600e18 <__init_array_end>
  40083a:	53                   	push   %rbx
  40083b:	49 89 f6             	mov    %rsi,%r14
  40083e:	49 89 d5             	mov    %rdx,%r13
  400841:	4c 29 e5             	sub    %r12,%rbp
  400844:	48 83 ec 08          	sub    $0x8,%rsp
  400848:	48 c1 fd 03          	sar    $0x3,%rbp
  40084c:	e8 4f fd ff ff       	callq  4005a0 <_init>
  400851:	48 85 ed             	test   %rbp,%rbp
  400854:	74 20                	je     400876 <__libc_csu_init+0x56>
  400856:	31 db                	xor    %ebx,%ebx
  400858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40085f:	00 
  400860:	4c 89 ea             	mov    %r13,%rdx
  400863:	4c 89 f6             	mov    %r14,%rsi
  400866:	44 89 ff             	mov    %r15d,%edi
  400869:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40086d:	48 83 c3 01          	add    $0x1,%rbx
  400871:	48 39 eb             	cmp    %rbp,%rbx
  400874:	75 ea                	jne    400860 <__libc_csu_init+0x40>
  400876:	48 83 c4 08          	add    $0x8,%rsp
  40087a:	5b                   	pop    %rbx
  40087b:	5d                   	pop    %rbp
  40087c:	41 5c                	pop    %r12
  40087e:	41 5d                	pop    %r13
  400880:	41 5e                	pop    %r14
  400882:	41 5f                	pop    %r15
  400884:	c3                   	retq   
  400885:	90                   	nop
  400886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40088d:	00 00 00 

0000000000400890 <__libc_csu_fini>:
  400890:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400894 <_fini>:
  400894:	48 83 ec 08          	sub    $0x8,%rsp
  400898:	48 83 c4 08          	add    $0x8,%rsp
  40089c:	c3                   	retq   

Disassembly of section .rodata:

00000000004008a0 <_IO_stdin_used>:
  4008a0:	01 00                	add    %eax,(%rax)
  4008a2:	02 00                	add    (%rax),%al
  4008a4:	00 00                	add    %al,(%rax)
  4008a6:	00 00                	add    %al,(%rax)
  4008a8:	73 70                	jae    40091a <__GNU_EH_FRAME_HDR+0x12>
  4008aa:	6c                   	insb   (%dx),%es:(%rdi)
  4008ab:	69 74 20 62 79 20 52 	imul   $0x4f522079,0x62(%rax,%riz,1),%esi
  4008b2:	4f 
  4008b3:	50                   	push   %rax
  4008b4:	20 45 6d             	and    %al,0x6d(%rbp)
  4008b7:	70 6f                	jo     400928 <__GNU_EH_FRAME_HDR+0x20>
  4008b9:	72 69                	jb     400924 <__GNU_EH_FRAME_HDR+0x1c>
  4008bb:	75 6d                	jne    40092a <__GNU_EH_FRAME_HDR+0x22>
  4008bd:	00 36                	add    %dh,(%rsi)
  4008bf:	34 62                	xor    $0x62,%al
  4008c1:	69 74 73 0a 00 0a 45 	imul   $0x78450a00,0xa(%rbx,%rsi,2),%esi
  4008c8:	78 
  4008c9:	69 74 69 6e 67 00 00 	imul   $0x43000067,0x6e(%rcx,%rbp,2),%esi
  4008d0:	43 
  4008d1:	6f                   	outsl  %ds:(%rsi),(%dx)
  4008d2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4008d3:	74 72                	je     400947 <__GNU_EH_FRAME_HDR+0x3f>
  4008d5:	69 76 69 6e 67 20 61 	imul   $0x6120676e,0x69(%rsi),%esi
  4008dc:	20 72 65             	and    %dh,0x65(%rdx)
  4008df:	61                   	(bad)  
  4008e0:	73 6f                	jae    400951 <__GNU_EH_FRAME_HDR+0x49>
  4008e2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4008e3:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  4008e7:	61                   	(bad)  
  4008e8:	73 6b                	jae    400955 <__GNU_EH_FRAME_HDR+0x4d>
  4008ea:	20 75 73             	and    %dh,0x73(%rbp)
  4008ed:	65 72 20             	gs jb  400910 <__GNU_EH_FRAME_HDR+0x8>
  4008f0:	66 6f                	outsw  %ds:(%rsi),(%dx)
  4008f2:	72 20                	jb     400914 <__GNU_EH_FRAME_HDR+0xc>
  4008f4:	64 61                	fs (bad) 
  4008f6:	74 61                	je     400959 <__GNU_EH_FRAME_HDR+0x51>
  4008f8:	2e 2e 2e 00 3e       	cs cs add %bh,%cs:(%rsi)
  4008fd:	20 00                	and    %al,(%rax)
  4008ff:	2f                   	(bad)  
  400900:	62                   	(bad)  
  400901:	69                   	.byte 0x69
  400902:	6e                   	outsb  %ds:(%rsi),(%dx)
  400903:	2f                   	(bad)  
  400904:	6c                   	insb   (%dx),%es:(%rdi)
  400905:	73 00                	jae    400907 <_IO_stdin_used+0x67>

Disassembly of section .eh_frame_hdr:

0000000000400908 <__GNU_EH_FRAME_HDR>:
  400908:	01 1b                	add    %ebx,(%rbx)
  40090a:	03 3b                	add    (%rbx),%edi
  40090c:	44 00 00             	add    %r8b,(%rax)
  40090f:	00 07                	add    %al,(%rdi)
  400911:	00 00                	add    %al,(%rax)
  400913:	00 b8 fc ff ff 90    	add    %bh,-0x6f000004(%rax)
  400919:	00 00                	add    %al,(%rax)
  40091b:	00 48 fd             	add    %cl,-0x3(%rax)
  40091e:	ff                   	(bad)  
  40091f:	ff 60 00             	jmpq   *0x0(%rax)
  400922:	00 00                	add    %al,(%rax)
  400924:	3e fe                	ds (bad) 
  400926:	ff                   	(bad)  
  400927:	ff                   	(bad)  
  400928:	b8 00 00 00 ad       	mov    $0xad000000,%eax
  40092d:	fe                   	(bad)  
  40092e:	ff                   	(bad)  
  40092f:	ff                   	(bad)  
  400930:	d8 00                	fadds  (%rax)
  400932:	00 00                	add    %al,(%rax)
  400934:	ff                   	(bad)  
  400935:	fe                   	(bad)  
  400936:	ff                   	(bad)  
  400937:	ff                   	(bad)  
  400938:	f8                   	clc    
  400939:	00 00                	add    %al,(%rax)
  40093b:	00 18                	add    %bl,(%rax)
  40093d:	ff                   	(bad)  
  40093e:	ff                   	(bad)  
  40093f:	ff 18                	lcall  *(%rax)
  400941:	01 00                	add    %eax,(%rax)
  400943:	00 88 ff ff ff 60    	add    %cl,0x60ffffff(%rax)
  400949:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400950 <__FRAME_END__-0x130>:
  400950:	14 00                	adc    $0x0,%al
  400952:	00 00                	add    %al,(%rax)
  400954:	00 00                	add    %al,(%rax)
  400956:	00 00                	add    %al,(%rax)
  400958:	01 7a 52             	add    %edi,0x52(%rdx)
  40095b:	00 01                	add    %al,(%rcx)
  40095d:	78 10                	js     40096f <__GNU_EH_FRAME_HDR+0x67>
  40095f:	01 1b                	add    %ebx,(%rbx)
  400961:	0c 07                	or     $0x7,%al
  400963:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400969:	00 00                	add    %al,(%rax)
  40096b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40096e:	00 00                	add    %al,(%rax)
  400970:	e0 fc                	loopne 40096e <__GNU_EH_FRAME_HDR+0x66>
  400972:	ff                   	(bad)  
  400973:	ff 2a                	ljmp   *(%rdx)
	...
  40097d:	00 00                	add    %al,(%rax)
  40097f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400982:	00 00                	add    %al,(%rax)
  400984:	00 00                	add    %al,(%rax)
  400986:	00 00                	add    %al,(%rax)
  400988:	01 7a 52             	add    %edi,0x52(%rdx)
  40098b:	00 01                	add    %al,(%rcx)
  40098d:	78 10                	js     40099f <__GNU_EH_FRAME_HDR+0x97>
  40098f:	01 1b                	add    %ebx,(%rbx)
  400991:	0c 07                	or     $0x7,%al
  400993:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400999:	00 00                	add    %al,(%rax)
  40099b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40099e:	00 00                	add    %al,(%rax)
  4009a0:	20 fc                	and    %bh,%ah
  4009a2:	ff                   	(bad)  
  4009a3:	ff 80 00 00 00 00    	incl   0x0(%rax)
  4009a9:	0e                   	(bad)  
  4009aa:	10 46 0e             	adc    %al,0xe(%rsi)
  4009ad:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4009b0:	0b 77 08             	or     0x8(%rdi),%esi
  4009b3:	80 00 3f             	addb   $0x3f,(%rax)
  4009b6:	1a 3b                	sbb    (%rbx),%bh
  4009b8:	2a 33                	sub    (%rbx),%dh
  4009ba:	24 22                	and    $0x22,%al
  4009bc:	00 00                	add    %al,(%rax)
  4009be:	00 00                	add    %al,(%rax)
  4009c0:	1c 00                	sbb    $0x0,%al
  4009c2:	00 00                	add    %al,(%rax)
  4009c4:	44 00 00             	add    %r8b,(%rax)
  4009c7:	00 7e fd             	add    %bh,-0x3(%rsi)
  4009ca:	ff                   	(bad)  
  4009cb:	ff 6f 00             	ljmp   *0x0(%rdi)
  4009ce:	00 00                	add    %al,(%rax)
  4009d0:	00 41 0e             	add    %al,0xe(%rcx)
  4009d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4009d9:	02 6a 0c             	add    0xc(%rdx),%ch
  4009dc:	07                   	(bad)  
  4009dd:	08 00                	or     %al,(%rax)
  4009df:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4009e2:	00 00                	add    %al,(%rax)
  4009e4:	64 00 00             	add    %al,%fs:(%rax)
  4009e7:	00 cd                	add    %cl,%ch
  4009e9:	fd                   	std    
  4009ea:	ff                   	(bad)  
  4009eb:	ff 52 00             	callq  *0x0(%rdx)
  4009ee:	00 00                	add    %al,(%rax)
  4009f0:	00 41 0e             	add    %al,0xe(%rcx)
  4009f3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4009f9:	02 4d 0c             	add    0xc(%rbp),%cl
  4009fc:	07                   	(bad)  
  4009fd:	08 00                	or     %al,(%rax)
  4009ff:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400a02:	00 00                	add    %al,(%rax)
  400a04:	84 00                	test   %al,(%rax)
  400a06:	00 00                	add    %al,(%rax)
  400a08:	ff                   	(bad)  
  400a09:	fd                   	std    
  400a0a:	ff                   	(bad)  
  400a0b:	ff 11                	callq  *(%rcx)
  400a0d:	00 00                	add    %al,(%rax)
  400a0f:	00 00                	add    %al,(%rax)
  400a11:	41 0e                	rex.B (bad) 
  400a13:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400a19:	4c 0c 07             	rex.WR or $0x7,%al
  400a1c:	08 00                	or     %al,(%rax)
  400a1e:	00 00                	add    %al,(%rax)
  400a20:	44 00 00             	add    %r8b,(%rax)
  400a23:	00 a4 00 00 00 f8 fd 	add    %ah,-0x2080000(%rax,%rax,1)
  400a2a:	ff                   	(bad)  
  400a2b:	ff 65 00             	jmpq   *0x0(%rbp)
  400a2e:	00 00                	add    %al,(%rax)
  400a30:	00 42 0e             	add    %al,0xe(%rdx)
  400a33:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400a39:	8e 03                	mov    (%rbx),%es
  400a3b:	45 0e                	rex.RB (bad) 
  400a3d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400a43:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701891 <_end+0xffffffff861007e1>
  400a49:	06                   	(bad)  
  400a4a:	48 0e                	rex.W (bad) 
  400a4c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400a52:	72 0e                	jb     400a62 <__GNU_EH_FRAME_HDR+0x15a>
  400a54:	38 41 0e             	cmp    %al,0xe(%rcx)
  400a57:	30 41 0e             	xor    %al,0xe(%rcx)
  400a5a:	28 42 0e             	sub    %al,0xe(%rdx)
  400a5d:	20 42 0e             	and    %al,0xe(%rdx)
  400a60:	18 42 0e             	sbb    %al,0xe(%rdx)
  400a63:	10 42 0e             	adc    %al,0xe(%rdx)
  400a66:	08 00                	or     %al,(%rax)
  400a68:	14 00                	adc    $0x0,%al
  400a6a:	00 00                	add    %al,(%rax)
  400a6c:	ec                   	in     (%dx),%al
  400a6d:	00 00                	add    %al,(%rax)
  400a6f:	00 20                	add    %ah,(%rax)
  400a71:	fe                   	(bad)  
  400a72:	ff                   	(bad)  
  400a73:	ff 02                	incl   (%rdx)
	...

0000000000400a80 <__FRAME_END__>:
  400a80:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	20 07                	and    %al,(%rdi)
  600e12:	40 00 00             	add    %al,(%rax)
  600e15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	00 07                	add    %al,(%rdi)
  600e1a:	40 00 00             	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000600e20 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600e28 <_DYNAMIC>:
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	01 00                	add    %eax,(%rax)
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	0c 00                	or     $0x0,%al
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	a0 05 40 00 00 00 00 	movabs 0xd00000000004005,%al
  600e47:	00 0d 
  600e49:	00 00                	add    %al,(%rax)
  600e4b:	00 00                	add    %al,(%rax)
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 94 08 40 00 00 00 	add    %dl,0x40(%rax,%rcx,1)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	19 00                	sbb    %eax,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	10 0e                	adc    %cl,(%rsi)
  600e62:	60                   	(bad)  
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 1b                	add    %bl,(%rbx)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 08                	add    %cl,(%rax)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 1a                	add    %bl,(%rdx)
  600e79:	00 00                	add    %al,(%rax)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 18                	add    %bl,(%rax)
  600e81:	0e                   	(bad)  
  600e82:	60                   	(bad)  
  600e83:	00 00                	add    %al,(%rax)
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc    
  600e99:	fe                   	(bad)  
  600e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0x85>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 e8                	add    %ch,%al
  600eb1:	03 40 00             	add    0x0(%rax),%eax
  600eb4:	00 00                	add    %al,(%rax)
  600eb6:	00 00                	add    %al,(%rax)
  600eb8:	06                   	(bad)  
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 c8                	add    %cl,%al
  600ec1:	02 40 00             	add    0x0(%rax),%al
  600ec4:	00 00                	add    %al,(%rax)
  600ec6:	00 00                	add    %al,(%rax)
  600ec8:	0a 00                	or     (%rax),%al
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	74 00                	je     600ed2 <_DYNAMIC+0xaa>
  600ed2:	00 00                	add    %al,(%rax)
  600ed4:	00 00                	add    %al,(%rax)
  600ed6:	00 00                	add    %al,(%rax)
  600ed8:	0b 00                	or     (%rax),%eax
  600eda:	00 00                	add    %al,(%rax)
  600edc:	00 00                	add    %al,(%rax)
  600ede:	00 00                	add    %al,(%rax)
  600ee0:	18 00                	sbb    %al,(%rax)
  600ee2:	00 00                	add    %al,(%rax)
  600ee4:	00 00                	add    %al,(%rax)
  600ee6:	00 00                	add    %al,(%rax)
  600ee8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	a8 00                	test   $0x0,%al
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	14 00                	adc    $0x0,%al
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)  
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 f8                	add    %bh,%al
  600f31:	04 40                	add    $0x40,%al
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 07                	add    %al,(%rdi)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 98 04 40 00 00    	add    %bl,0x4004(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 08                	add    %cl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 60 00             	add    %ah,0x0(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	09 00                	or     %eax,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	18 00                	sbb    %al,(%rax)
  600f62:	00 00                	add    %al,(%rax)
  600f64:	00 00                	add    %al,(%rax)
  600f66:	00 00                	add    %al,(%rax)
  600f68:	fe                   	(bad)  
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 78 04             	add    %bh,0x4(%rax)
  600f72:	40 00 00             	add    %al,(%rax)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 ff                	add    %bh,%bh
  600f79:	ff                   	(bad)  
  600f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 01                	add    %al,(%rcx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)  
  600f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 5c 04 40          	add    %bl,0x40(%rsp,%rax,1)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 d6                	add    %dl,%dh
  601019:	05 40 00 00 00       	add    $0x40,%eax
  60101e:	00 00                	add    %al,(%rax)
  601020:	e6 05                	out    %al,$0x5
  601022:	40 00 00             	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 f6                	add    %dh,%dh
  601029:	05 40 00 00 00       	add    $0x40,%eax
  60102e:	00 00                	add    %al,(%rax)
  601030:	06                   	(bad)  
  601031:	06                   	(bad)  
  601032:	40 00 00             	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 16                	add    %dl,(%rsi)
  601039:	06                   	(bad)  
  60103a:	40 00 00             	add    %al,(%rax)
  60103d:	00 00                	add    %al,(%rax)
  60103f:	00 26                	add    %ah,(%rsi)
  601041:	06                   	(bad)  
  601042:	40 00 00             	add    %al,(%rax)
  601045:	00 00                	add    %al,(%rax)
  601047:	00 36                	add    %dh,(%rsi)
  601049:	06                   	(bad)  
  60104a:	40 00 00             	add    %al,(%rax)
  60104d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601050 <__data_start>:
	...

0000000000601058 <__dso_handle>:
	...

0000000000601060 <usefulString>:
  601060:	2f                   	(bad)  
  601061:	62                   	(bad)  
  601062:	69 6e 2f 63 61 74 20 	imul   $0x20746163,0x2f(%rsi),%ebp
  601069:	66 6c                	data16 insb (%dx),%es:(%rdi)
  60106b:	61                   	(bad)  
  60106c:	67 2e 74 78          	addr32 je,pn 6010e8 <_end+0x38>
  601070:	74 00                	je     601072 <usefulString+0x12>
	...

Disassembly of section .bss:

0000000000601080 <stdout@@GLIBC_2.2.5>:
	...

0000000000601090 <stdin@@GLIBC_2.2.5>:
	...

00000000006010a0 <stderr@@GLIBC_2.2.5>:
	...

00000000006010a8 <completed.7585>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400528>
   a:	74 75                	je     81 <_init-0x40051f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce2390>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x400511>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	34 29                	xor    $0x29,%al
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3458 <_end+0x2fce23a8>
  2a:	20 32                	and    %dh,(%rdx)
  2c:	30 31                	xor    %dh,(%rcx)
  2e:	36 30 36             	xor    %dh,%ss:(%rsi)
  31:	30 39                	xor    %bh,(%rcx)
	...
