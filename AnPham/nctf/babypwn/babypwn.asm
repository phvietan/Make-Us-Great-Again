
babypwn:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x1c3>
  400248:	78 38                	js     400282 <_init-0x1b6>
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
  400283:	00 bb a6 9d a9 63    	add    %bh,0x63a99da6(%rbx)
  400289:	70 2e                	jo     4002b9 <_init-0x17f>
  40028b:	6c                   	insb   (%dx),%es:(%rdi)
  40028c:	7c 0d                	jl     40029b <_init-0x19d>
  40028e:	bd cd a9 9c 6c       	mov    $0x6c9ca9cd,%ebp
  400293:	05 0c 18 94 e0       	add    $0xe094180c,%eax

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	17                   	(bad)
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 12                	add    %dl,(%rdx)
	...
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 10                	add    %dl,(%rax)
  4002e9:	00 00                	add    %al,(%rax)
  4002eb:	00 12                	add    %dl,(%rdx)
	...
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 1e                	add    %bl,(%rsi)
  400301:	00 00                	add    %al,(%rax)
  400303:	00 12                	add    %dl,(%rdx)
	...
  400315:	00 00                	add    %al,(%rax)
  400317:	00 30                	add    %dh,(%rax)
  400319:	00 00                	add    %al,(%rax)
  40031b:	00 20                	add    %ah,(%rax)
	...
  40032d:	00 00                	add    %al,(%rax)
  40032f:	00 0b                	add    %cl,(%rbx)
  400331:	00 00                	add    %al,(%rax)
  400333:	00 12                	add    %dl,(%rdx)
	...

Disassembly of section .dynstr:

0000000000400348 <.dynstr>:
  400348:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40034c:	63 2e                	movslq (%rsi),%ebp
  40034e:	73 6f                	jae    4003bf <_init-0x79>
  400350:	2e 36 00 67 65       	cs add %ah,%ss:0x65(%rdi)
  400355:	74 73                	je     4003ca <_init-0x6e>
  400357:	00 70 72             	add    %dh,0x72(%rax)
  40035a:	69 6e 74 66 00 73 79 	imul   $0x79730066,0x74(%rsi),%ebp
  400361:	73 74                	jae    4003d7 <_init-0x61>
  400363:	65 6d                	gs insl (%dx),%es:(%rdi)
  400365:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400368:	6c                   	insb   (%dx),%es:(%rdi)
  400369:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400370:	72 74                	jb     4003e6 <_init-0x52>
  400372:	5f                   	pop    %rdi
  400373:	6d                   	insl   (%dx),%es:(%rdi)
  400374:	61                   	(bad)
  400375:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  40037c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40037d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40037e:	5f                   	pop    %rdi
  40037f:	73 74                	jae    4003f5 <_init-0x43>
  400381:	61                   	(bad)
  400382:	72 74                	jb     4003f8 <_init-0x40>
  400384:	5f                   	pop    %rdi
  400385:	5f                   	pop    %rdi
  400386:	00 47 4c             	add    %al,0x4c(%rdi)
  400389:	49                   	rex.WB
  40038a:	42                   	rex.X
  40038b:	43 5f                	rex.XB pop %r15
  40038d:	32 2e                	xor    (%rsi),%ch
  40038f:	32 2e                	xor    (%rsi),%ch
  400391:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400394 <.gnu.version>:
  400394:	00 00                	add    %al,(%rax)
  400396:	02 00                	add    (%rax),%al
  400398:	02 00                	add    (%rax),%al
  40039a:	02 00                	add    (%rax),%al
  40039c:	00 00                	add    %al,(%rax)
  40039e:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000004003a0 <.gnu.version_r>:
  4003a0:	01 00                	add    %eax,(%rax)
  4003a2:	01 00                	add    %eax,(%rax)
  4003a4:	01 00                	add    %eax,(%rax)
  4003a6:	00 00                	add    %al,(%rax)
  4003a8:	10 00                	adc    %al,(%rax)
  4003aa:	00 00                	add    %al,(%rax)
  4003ac:	00 00                	add    %al,(%rax)
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	75 1a                	jne    4003cc <_init-0x6c>
  4003b2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4003b8:	3f                   	(bad)
  4003b9:	00 00                	add    %al,(%rax)
  4003bb:	00 00                	add    %al,(%rax)
  4003bd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003c0 <.rela.dyn>:
  4003c0:	f8                   	clc
  4003c1:	0f 60 00             	punpcklbw (%rax),%mm0
  4003c4:	00 00                	add    %al,(%rax)
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	06                   	(bad)
  4003c9:	00 00                	add    %al,(%rax)
  4003cb:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

00000000004003d8 <.rela.plt>:
  4003d8:	18 10                	sbb    %dl,(%rax)
  4003da:	60                   	(bad)
  4003db:	00 00                	add    %al,(%rax)
  4003dd:	00 00                	add    %al,(%rax)
  4003df:	00 07                	add    %al,(%rdi)
  4003e1:	00 00                	add    %al,(%rax)
  4003e3:	00 01                	add    %al,(%rcx)
	...
  4003ed:	00 00                	add    %al,(%rax)
  4003ef:	00 20                	add    %ah,(%rax)
  4003f1:	10 60 00             	adc    %ah,0x0(%rax)
  4003f4:	00 00                	add    %al,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	07                   	(bad)
  4003f9:	00 00                	add    %al,(%rax)
  4003fb:	00 02                	add    %al,(%rdx)
	...
  400405:	00 00                	add    %al,(%rax)
  400407:	00 28                	add    %ch,(%rax)
  400409:	10 60 00             	adc    %ah,0x0(%rax)
  40040c:	00 00                	add    %al,(%rax)
  40040e:	00 00                	add    %al,(%rax)
  400410:	07                   	(bad)
  400411:	00 00                	add    %al,(%rax)
  400413:	00 03                	add    %al,(%rbx)
	...
  40041d:	00 00                	add    %al,(%rax)
  40041f:	00 30                	add    %dh,(%rax)
  400421:	10 60 00             	adc    %ah,0x0(%rax)
  400424:	00 00                	add    %al,(%rax)
  400426:	00 00                	add    %al,(%rax)
  400428:	07                   	(bad)
  400429:	00 00                	add    %al,(%rax)
  40042b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400431 <_init-0x7>
  400431:	00 00                	add    %al,(%rax)
  400433:	00 00                	add    %al,(%rax)
  400435:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

0000000000400438 <_init>:
  400438:	48 83 ec 08          	sub    $0x8,%rsp
  40043c:	48 8b 05 b5 0b 20 00 	mov    0x200bb5(%rip),%rax        # 600ff8 <__gmon_start__>
  400443:	48 85 c0             	test   %rax,%rax
  400446:	74 05                	je     40044d <_init+0x15>
  400448:	e8 63 00 00 00       	callq  4004b0 <__gmon_start__@plt>
  40044d:	48 83 c4 08          	add    $0x8,%rsp
  400451:	c3                   	retq

Disassembly of section .plt:

0000000000400460 <.plt>:
  400460:	ff 35 a2 0b 20 00    	pushq  0x200ba2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400466:	ff 25 a4 0b 20 00    	jmpq   *0x200ba4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40046c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400470 <system@plt>:
  400470:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601018 <system@GLIBC_2.2.5>
  400476:	68 00 00 00 00       	pushq  $0x0
  40047b:	e9 e0 ff ff ff       	jmpq   400460 <.plt>

0000000000400480 <printf@plt>:
  400480:	ff 25 9a 0b 20 00    	jmpq   *0x200b9a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400486:	68 01 00 00 00       	pushq  $0x1
  40048b:	e9 d0 ff ff ff       	jmpq   400460 <.plt>

0000000000400490 <__libc_start_main@plt>:
  400490:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601028 <__libc_start_main@GLIBC_2.2.5>
  400496:	68 02 00 00 00       	pushq  $0x2
  40049b:	e9 c0 ff ff ff       	jmpq   400460 <.plt>

00000000004004a0 <gets@plt>:
  4004a0:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601030 <gets@GLIBC_2.2.5>
  4004a6:	68 03 00 00 00       	pushq  $0x3
  4004ab:	e9 b0 ff ff ff       	jmpq   400460 <.plt>

Disassembly of section .plt.got:

00000000004004b0 <__gmon_start__@plt>:
  4004b0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 600ff8 <__gmon_start__>
  4004b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004c0 <_start>:
  4004c0:	31 ed                	xor    %ebp,%ebp
  4004c2:	49 89 d1             	mov    %rdx,%r9
  4004c5:	5e                   	pop    %rsi
  4004c6:	48 89 e2             	mov    %rsp,%rdx
  4004c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004cd:	50                   	push   %rax
  4004ce:	54                   	push   %rsp
  4004cf:	49 c7 c0 d0 06 40 00 	mov    $0x4006d0,%r8
  4004d6:	48 c7 c1 60 06 40 00 	mov    $0x400660,%rcx
  4004dd:	48 c7 c7 b6 05 40 00 	mov    $0x4005b6,%rdi
  4004e4:	e8 a7 ff ff ff       	callq  400490 <__libc_start_main@plt>
  4004e9:	f4                   	hlt
  4004ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004f0 <deregister_tm_clones>:
  4004f0:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  4004f5:	55                   	push   %rbp
  4004f6:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  4004fc:	48 83 f8 0e          	cmp    $0xe,%rax
  400500:	48 89 e5             	mov    %rsp,%rbp
  400503:	76 1b                	jbe    400520 <deregister_tm_clones+0x30>
  400505:	b8 00 00 00 00       	mov    $0x0,%eax
  40050a:	48 85 c0             	test   %rax,%rax
  40050d:	74 11                	je     400520 <deregister_tm_clones+0x30>
  40050f:	5d                   	pop    %rbp
  400510:	bf 48 10 60 00       	mov    $0x601048,%edi
  400515:	ff e0                	jmpq   *%rax
  400517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40051e:	00 00
  400520:	5d                   	pop    %rbp
  400521:	c3                   	retq
  400522:	0f 1f 40 00          	nopl   0x0(%rax)
  400526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40052d:	00 00 00

0000000000400530 <register_tm_clones>:
  400530:	be 48 10 60 00       	mov    $0x601048,%esi
  400535:	55                   	push   %rbp
  400536:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40053d:	48 c1 fe 03          	sar    $0x3,%rsi
  400541:	48 89 e5             	mov    %rsp,%rbp
  400544:	48 89 f0             	mov    %rsi,%rax
  400547:	48 c1 e8 3f          	shr    $0x3f,%rax
  40054b:	48 01 c6             	add    %rax,%rsi
  40054e:	48 d1 fe             	sar    %rsi
  400551:	74 15                	je     400568 <register_tm_clones+0x38>
  400553:	b8 00 00 00 00       	mov    $0x0,%eax
  400558:	48 85 c0             	test   %rax,%rax
  40055b:	74 0b                	je     400568 <register_tm_clones+0x38>
  40055d:	5d                   	pop    %rbp
  40055e:	bf 48 10 60 00       	mov    $0x601048,%edi
  400563:	ff e0                	jmpq   *%rax
  400565:	0f 1f 00             	nopl   (%rax)
  400568:	5d                   	pop    %rbp
  400569:	c3                   	retq
  40056a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400570 <__do_global_dtors_aux>:
  400570:	80 3d d1 0a 20 00 00 	cmpb   $0x0,0x200ad1(%rip)        # 601048 <__TMC_END__>
  400577:	75 11                	jne    40058a <__do_global_dtors_aux+0x1a>
  400579:	55                   	push   %rbp
  40057a:	48 89 e5             	mov    %rsp,%rbp
  40057d:	e8 6e ff ff ff       	callq  4004f0 <deregister_tm_clones>
  400582:	5d                   	pop    %rbp
  400583:	c6 05 be 0a 20 00 01 	movb   $0x1,0x200abe(%rip)        # 601048 <__TMC_END__>
  40058a:	f3 c3                	repz retq
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <frame_dummy>:
  400590:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400595:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400599:	75 05                	jne    4005a0 <frame_dummy+0x10>
  40059b:	eb 93                	jmp    400530 <register_tm_clones>
  40059d:	0f 1f 00             	nopl   (%rax)
  4005a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a5:	48 85 c0             	test   %rax,%rax
  4005a8:	74 f1                	je     40059b <frame_dummy+0xb>
  4005aa:	55                   	push   %rbp
  4005ab:	48 89 e5             	mov    %rsp,%rbp
  4005ae:	ff d0                	callq  *%rax
  4005b0:	5d                   	pop    %rbp
  4005b1:	e9 7a ff ff ff       	jmpq   400530 <register_tm_clones>

00000000004005b6 <main>:
  4005b6:	55                   	push   %rbp
  4005b7:	48 89 e5             	mov    %rsp,%rbp
  4005ba:	48 81 ec 00 04 00 00 	sub    $0x400,%rsp
  4005c1:	bf e8 06 40 00       	mov    $0x4006e8,%edi
  4005c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4005cb:	e8 b0 fe ff ff       	callq  400480 <printf@plt>
  4005d0:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  4005d7:	48 89 c7             	mov    %rax,%rdi
  4005da:	b8 00 00 00 00       	mov    $0x0,%eax
  4005df:	e8 bc fe ff ff       	callq  4004a0 <gets@plt>
  4005e4:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  4005eb:	48 89 c6             	mov    %rax,%rsi
  4005ee:	bf 05 07 40 00       	mov    $0x400705,%edi
  4005f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f8:	e8 83 fe ff ff       	callq  400480 <printf@plt>
  4005fd:	b8 00 00 00 00       	mov    $0x0,%eax
  400602:	c9                   	leaveq
  400603:	c3                   	retq

0000000000400604 <flag1>:
  400604:	55                   	push   %rbp
  400605:	48 89 e5             	mov    %rsp,%rbp
  400608:	48 83 ec 10          	sub    $0x10,%rsp
  40060c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400613:	eb 18                	jmp    40062d <flag1+0x29>
  400615:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400618:	89 c6                	mov    %eax,%esi
  40061a:	bf 10 07 40 00       	mov    $0x400710,%edi
  40061f:	b8 00 00 00 00       	mov    $0x0,%eax
  400624:	e8 57 fe ff ff       	callq  400480 <printf@plt>
  400629:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40062d:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  400631:	7e e2                	jle    400615 <flag1+0x11>
  400633:	90                   	nop
  400634:	c9                   	leaveq
  400635:	c3                   	retq

0000000000400636 <flag2>:
  400636:	55                   	push   %rbp
  400637:	48 89 e5             	mov    %rsp,%rbp
  40063a:	bf 30 07 40 00       	mov    $0x400730,%edi
  40063f:	b8 00 00 00 00       	mov    $0x0,%eax
  400644:	e8 37 fe ff ff       	callq  400480 <printf@plt>
  400649:	bf 4c 07 40 00       	mov    $0x40074c,%edi
  40064e:	b8 00 00 00 00       	mov    $0x0,%eax
  400653:	e8 18 fe ff ff       	callq  400470 <system@plt>
  400658:	90                   	nop
  400659:	5d                   	pop    %rbp
  40065a:	c3                   	retq
  40065b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400660 <__libc_csu_init>:
  400660:	41 57                	push   %r15
  400662:	41 56                	push   %r14
  400664:	41 89 ff             	mov    %edi,%r15d
  400667:	41 55                	push   %r13
  400669:	41 54                	push   %r12
  40066b:	4c 8d 25 9e 07 20 00 	lea    0x20079e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400672:	55                   	push   %rbp
  400673:	48 8d 2d 9e 07 20 00 	lea    0x20079e(%rip),%rbp        # 600e18 <__init_array_end>
  40067a:	53                   	push   %rbx
  40067b:	49 89 f6             	mov    %rsi,%r14
  40067e:	49 89 d5             	mov    %rdx,%r13
  400681:	4c 29 e5             	sub    %r12,%rbp
  400684:	48 83 ec 08          	sub    $0x8,%rsp
  400688:	48 c1 fd 03          	sar    $0x3,%rbp
  40068c:	e8 a7 fd ff ff       	callq  400438 <_init>
  400691:	48 85 ed             	test   %rbp,%rbp
  400694:	74 20                	je     4006b6 <__libc_csu_init+0x56>
  400696:	31 db                	xor    %ebx,%ebx
  400698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40069f:	00
  4006a0:	4c 89 ea             	mov    %r13,%rdx
  4006a3:	4c 89 f6             	mov    %r14,%rsi
  4006a6:	44 89 ff             	mov    %r15d,%edi
  4006a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006ad:	48 83 c3 01          	add    $0x1,%rbx
  4006b1:	48 39 eb             	cmp    %rbp,%rbx
  4006b4:	75 ea                	jne    4006a0 <__libc_csu_init+0x40>
  4006b6:	48 83 c4 08          	add    $0x8,%rsp
  4006ba:	5b                   	pop    %rbx
  4006bb:	5d                   	pop    %rbp
  4006bc:	41 5c                	pop    %r12
  4006be:	41 5d                	pop    %r13
  4006c0:	41 5e                	pop    %r14
  4006c2:	41 5f                	pop    %r15
  4006c4:	c3                   	retq
  4006c5:	90                   	nop
  4006c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006cd:	00 00 00

00000000004006d0 <__libc_csu_fini>:
  4006d0:	f3 c3                	repz retq

Disassembly of section .fini:

00000000004006d4 <_fini>:
  4006d4:	48 83 ec 08          	sub    $0x8,%rsp
  4006d8:	48 83 c4 08          	add    $0x8,%rsp
  4006dc:	c3                   	retq

Disassembly of section .rodata:

00000000004006e0 <_IO_stdin_used>:
  4006e0:	01 00                	add    %eax,(%rax)
  4006e2:	02 00                	add    (%rax),%al
  4006e4:	00 00                	add    %al,(%rax)
  4006e6:	00 00                	add    %al,(%rax)
  4006e8:	48 6f                	rex.W outsl %ds:(%rsi),(%dx)
  4006ea:	77 20                	ja     40070c <_IO_stdin_used+0x2c>
  4006ec:	69 73 20 74 68 65 20 	imul   $0x20656874,0x20(%rbx),%esi
  4006f3:	77 65                	ja     40075a <__GNU_EH_FRAME_HDR+0x6>
  4006f5:	61                   	(bad)
  4006f6:	74 68                	je     400760 <__GNU_EH_FRAME_HDR+0xc>
  4006f8:	65 72 20             	gs jb  40071b <_IO_stdin_used+0x3b>
  4006fb:	74 6f                	je     40076c <__GNU_EH_FRAME_HDR+0x18>
  4006fd:	64 61                	fs (bad)
  4006ff:	79 3f                	jns    400740 <_IO_stdin_used+0x60>
  400701:	20 3a                	and    %bh,(%rdx)
  400703:	20 00                	and    %al,(%rax)
  400705:	25 73 20 0a 00       	and    $0xa2073,%eax
  40070a:	00 00                	add    %al,(%rax)
  40070c:	00 00                	add    %al,(%rax)
  40070e:	00 00                	add    %al,(%rax)
  400710:	4b 6f                	rex.WXB outsl %ds:(%rsi),(%dx)
  400712:	72 4e                	jb     400762 <__GNU_EH_FRAME_HDR+0xe>
  400714:	65 77 62             	gs ja  400779 <__GNU_EH_FRAME_HDR+0x25>
  400717:	69 65 7b 54 68 31 73 	imul   $0x73316854,0x7b(%rbp),%esp
  40071e:	5f                   	pop    %rdi
  40071f:	46 34 6b             	rex.RX xor $0x6b,%al
  400722:	33 46 31             	xor    0x31(%rsi),%eax
  400725:	34 47                	xor    $0x47,%al
  400727:	21 21                	and    %esp,(%rcx)
  400729:	21 5f 25             	and    %ebx,0x25(%rdi)
  40072c:	64 7d 0a             	fs jge 400739 <_IO_stdin_used+0x59>
  40072f:	00 4b 6f             	add    %cl,0x6f(%rbx)
  400732:	72 4e                	jb     400782 <__GNU_EH_FRAME_HDR+0x2e>
  400734:	65 77 62             	gs ja  400799 <__GNU_EH_FRAME_HDR+0x45>
  400737:	69 65 7b 54 68 31 73 	imul   $0x73316854,0x7b(%rbp),%esp
  40073e:	5f                   	pop    %rdi
  40073f:	46 34 6b             	rex.RX xor $0x6b,%al
  400742:	33 46 31             	xor    0x31(%rsi),%eax
  400745:	34 47                	xor    $0x47,%al
  400747:	21 21                	and    %esp,(%rcx)
  400749:	21 7d 00             	and    %edi,0x0(%rbp)
  40074c:	2f                   	(bad)
  40074d:	62                   	(bad)
  40074e:	69                   	.byte 0x69
  40074f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400750:	2f                   	(bad)
  400751:	73 68                	jae    4007bb <__GNU_EH_FRAME_HDR+0x67>
	...

Disassembly of section .eh_frame_hdr:

0000000000400754 <__GNU_EH_FRAME_HDR>:
  400754:	01 1b                	add    %ebx,(%rbx)
  400756:	03 3b                	add    (%rbx),%edi
  400758:	40 00 00             	add    %al,(%rax)
  40075b:	00 07                	add    %al,(%rdi)
  40075d:	00 00                	add    %al,(%rax)
  40075f:	00 0c fd ff ff 8c 00 	add    %cl,0x8cffff(,%rdi,8)
  400766:	00 00                	add    %al,(%rax)
  400768:	6c                   	insb   (%dx),%es:(%rdi)
  400769:	fd                   	std
  40076a:	ff                   	(bad)
  40076b:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
  40076f:	00 62 fe             	add    %ah,-0x2(%rdx)
  400772:	ff                   	(bad)
  400773:	ff b4 00 00 00 b0 fe 	pushq  -0x1500000(%rax,%rax,1)
  40077a:	ff                   	(bad)
  40077b:	ff d4                	callq  *%rsp
  40077d:	00 00                	add    %al,(%rax)
  40077f:	00 e2                	add    %ah,%dl
  400781:	fe                   	(bad)
  400782:	ff                   	(bad)
  400783:	ff f4                	push   %rsp
  400785:	00 00                	add    %al,(%rax)
  400787:	00 0c ff             	add    %cl,(%rdi,%rdi,8)
  40078a:	ff                   	(bad)
  40078b:	ff 14 01             	callq  *(%rcx,%rax,1)
  40078e:	00 00                	add    %al,(%rax)
  400790:	7c ff                	jl     400791 <__GNU_EH_FRAME_HDR+0x3d>
  400792:	ff                   	(bad)
  400793:	ff 5c 01 00          	lcall  *0x0(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000400798 <__FRAME_END__-0x130>:
  400798:	14 00                	adc    $0x0,%al
  40079a:	00 00                	add    %al,(%rax)
  40079c:	00 00                	add    %al,(%rax)
  40079e:	00 00                	add    %al,(%rax)
  4007a0:	01 7a 52             	add    %edi,0x52(%rdx)
  4007a3:	00 01                	add    %al,(%rcx)
  4007a5:	78 10                	js     4007b7 <__GNU_EH_FRAME_HDR+0x63>
  4007a7:	01 1b                	add    %ebx,(%rbx)
  4007a9:	0c 07                	or     $0x7,%al
  4007ab:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  4007b1:	00 00                	add    %al,(%rax)
  4007b3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007b6:	00 00                	add    %al,(%rax)
  4007b8:	08 fd                	or     %bh,%ch
  4007ba:	ff                   	(bad)
  4007bb:	ff 2a                	ljmp   *(%rdx)
	...
  4007c5:	00 00                	add    %al,(%rax)
  4007c7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4007ca:	00 00                	add    %al,(%rax)
  4007cc:	00 00                	add    %al,(%rax)
  4007ce:	00 00                	add    %al,(%rax)
  4007d0:	01 7a 52             	add    %edi,0x52(%rdx)
  4007d3:	00 01                	add    %al,(%rcx)
  4007d5:	78 10                	js     4007e7 <__GNU_EH_FRAME_HDR+0x93>
  4007d7:	01 1b                	add    %ebx,(%rbx)
  4007d9:	0c 07                	or     $0x7,%al
  4007db:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4007e1:	00 00                	add    %al,(%rax)
  4007e3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007e6:	00 00                	add    %al,(%rax)
  4007e8:	78 fc                	js     4007e6 <__GNU_EH_FRAME_HDR+0x92>
  4007ea:	ff                   	(bad)
  4007eb:	ff 50 00             	callq  *0x0(%rax)
  4007ee:	00 00                	add    %al,(%rax)
  4007f0:	00 0e                	add    %cl,(%rsi)
  4007f2:	10 46 0e             	adc    %al,0xe(%rsi)
  4007f5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4007f8:	0b 77 08             	or     0x8(%rdi),%esi
  4007fb:	80 00 3f             	addb   $0x3f,(%rax)
  4007fe:	1a 3b                	sbb    (%rbx),%bh
  400800:	2a 33                	sub    (%rbx),%dh
  400802:	24 22                	and    $0x22,%al
  400804:	00 00                	add    %al,(%rax)
  400806:	00 00                	add    %al,(%rax)
  400808:	1c 00                	sbb    $0x0,%al
  40080a:	00 00                	add    %al,(%rax)
  40080c:	44 00 00             	add    %r8b,(%rax)
  40080f:	00 a6 fd ff ff 4e    	add    %ah,0x4efffffd(%rsi)
  400815:	00 00                	add    %al,(%rax)
  400817:	00 00                	add    %al,(%rax)
  400819:	41 0e                	rex.B (bad)
  40081b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400821:	02 49 0c             	add    0xc(%rcx),%cl
  400824:	07                   	(bad)
  400825:	08 00                	or     %al,(%rax)
  400827:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40082a:	00 00                	add    %al,(%rax)
  40082c:	64 00 00             	add    %al,%fs:(%rax)
  40082f:	00 d4                	add    %dl,%ah
  400831:	fd                   	std
  400832:	ff                   	(bad)
  400833:	ff 32                	pushq  (%rdx)
  400835:	00 00                	add    %al,(%rax)
  400837:	00 00                	add    %al,(%rax)
  400839:	41 0e                	rex.B (bad)
  40083b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400841:	6d                   	insl   (%dx),%es:(%rdi)
  400842:	0c 07                	or     $0x7,%al
  400844:	08 00                	or     %al,(%rax)
  400846:	00 00                	add    %al,(%rax)
  400848:	1c 00                	sbb    $0x0,%al
  40084a:	00 00                	add    %al,(%rax)
  40084c:	84 00                	test   %al,(%rax)
  40084e:	00 00                	add    %al,(%rax)
  400850:	e6 fd                	out    %al,$0xfd
  400852:	ff                   	(bad)
  400853:	ff 25 00 00 00 00    	jmpq   *0x0(%rip)        # 400859 <__GNU_EH_FRAME_HDR+0x105>
  400859:	41 0e                	rex.B (bad)
  40085b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400861:	60                   	(bad)
  400862:	0c 07                	or     $0x7,%al
  400864:	08 00                	or     %al,(%rax)
  400866:	00 00                	add    %al,(%rax)
  400868:	44 00 00             	add    %r8b,(%rax)
  40086b:	00 a4 00 00 00 f0 fd 	add    %ah,-0x2100000(%rax,%rax,1)
  400872:	ff                   	(bad)
  400873:	ff 65 00             	jmpq   *0x0(%rbp)
  400876:	00 00                	add    %al,(%rax)
  400878:	00 42 0e             	add    %al,0xe(%rdx)
  40087b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400881:	8e 03                	mov    (%rbx),%es
  400883:	45 0e                	rex.RB (bad)
  400885:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  40088b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff867016d9 <_end+0xffffffff86100689>
  400891:	06                   	(bad)
  400892:	48 0e                	rex.W (bad)
  400894:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  40089a:	72 0e                	jb     4008aa <__GNU_EH_FRAME_HDR+0x156>
  40089c:	38 41 0e             	cmp    %al,0xe(%rcx)
  40089f:	30 41 0e             	xor    %al,0xe(%rcx)
  4008a2:	28 42 0e             	sub    %al,0xe(%rdx)
  4008a5:	20 42 0e             	and    %al,0xe(%rdx)
  4008a8:	18 42 0e             	sbb    %al,0xe(%rdx)
  4008ab:	10 42 0e             	adc    %al,0xe(%rdx)
  4008ae:	08 00                	or     %al,(%rax)
  4008b0:	14 00                	adc    $0x0,%al
  4008b2:	00 00                	add    %al,(%rax)
  4008b4:	ec                   	in     (%dx),%al
  4008b5:	00 00                	add    %al,(%rax)
  4008b7:	00 18                	add    %bl,(%rax)
  4008b9:	fe                   	(bad)
  4008ba:	ff                   	(bad)
  4008bb:	ff 02                	incl   (%rdx)
	...

00000000004008c8 <__FRAME_END__>:
  4008c8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	90                   	nop
  600e11:	05 40 00 00 00       	add    $0x40,%eax
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	70 05                	jo     600e1f <__do_global_dtors_aux_fini_array_entry+0x7>
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
  600e40:	38 04 40             	cmp    %al,(%rax,%rax,2)
  600e43:	00 00                	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 d4                	add    %dl,%ah
  600e51:	06                   	(bad)
  600e52:	40 00 00             	add    %al,(%rax)
  600e55:	00 00                	add    %al,(%rax)
  600e57:	00 19                	add    %bl,(%rcx)
  600e59:	00 00                	add    %al,(%rax)
  600e5b:	00 00                	add    %al,(%rax)
  600e5d:	00 00                	add    %al,(%rax)
  600e5f:	00 10                	add    %dl,(%rax)
  600e61:	0e                   	(bad)
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
  600eaf:	00 48 03             	add    %cl,0x3(%rax)
  600eb2:	40 00 00             	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 06                	add    %al,(%rsi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 0a                	add    %cl,(%rdx)
  600ec9:	00 00                	add    %al,(%rax)
  600ecb:	00 00                	add    %al,(%rax)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 4b 00             	add    %cl,0x0(%rbx)
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
  600f10:	60                   	(bad)
  600f11:	00 00                	add    %al,(%rax)
  600f13:	00 00                	add    %al,(%rax)
  600f15:	00 00                	add    %al,(%rax)
  600f17:	00 14 00             	add    %dl,(%rax,%rax,1)
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
  600f2f:	00 d8                	add    %bl,%al
  600f31:	03 40 00             	add    0x0(%rax),%eax
  600f34:	00 00                	add    %al,(%rax)
  600f36:	00 00                	add    %al,(%rax)
  600f38:	07                   	(bad)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 c0                	add    %al,%al
  600f41:	03 40 00             	add    0x0(%rax),%eax
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	08 00                	or     %al,(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	18 00                	sbb    %al,(%rax)
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
  600f6f:	00 a0 03 40 00 00    	add    %ah,0x4003(%rax)
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
  600f8f:	00 94 03 40 00 00 00 	add    %dl,0x40(%rbx,%rax,1)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)
	...
  601017:	00 76 04             	add    %dh,0x4(%rsi)
  60101a:	40 00 00             	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 86 04 40 00 00    	add    %al,0x4004(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 96 04 40 00 00    	add    %dl,0x4004(%rsi)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 a6 04 40 00 00    	add    %ah,0x4004(%rsi)
  601035:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601038 <__data_start>:
	...

0000000000601040 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601048 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x4003c0>
   a:	74 75                	je     81 <_init-0x4003b7>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce23f0>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x4003a9>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	31 31                	xor    %esi,(%rcx)
  24:	29 20                	sub    %esp,(%rax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%rdx)
  2d:	30 31                	xor    %dh,(%rcx)
  2f:	36 30 36             	xor    %dh,%ss:(%rsi)
  32:	30 39                	xor    %bh,(%rcx)
	...
