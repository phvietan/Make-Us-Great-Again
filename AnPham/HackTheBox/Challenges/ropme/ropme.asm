
ropme:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x23b>
  400248:	78 38                	js     400282 <_init-0x22e>
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
  400283:	00 e3                	add    %ah,%bl
  400285:	0e                   	(bad)
  400286:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  400287:	fd                   	std
  400288:	40 5c                	rex pop %rsp
  40028a:	51                   	push   %rcx
  40028b:	04 fd                	add    $0xfd,%al
  40028d:	0d 97 dc 46 4c       	or     $0x4c46dc97,%eax
  400292:	51                   	push   %rcx
  400293:	3b                   	.byte 0x3b
  400294:	05                   	.byte 0x5
  400295:	00 5f db             	add    %bl,-0x25(%rdi)

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	02 00                	add    (%rax),%al
  40029a:	00 00                	add    %al,(%rax)
  40029c:	06                   	(bad)
  40029d:	00 00                	add    %al,(%rax)
  40029f:	00 01                	add    %al,(%rcx)
  4002a1:	00 00                	add    %al,(%rax)
  4002a3:	00 06                	add    %al,(%rsi)
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 00                	add    %al,(%rax)
  4002a9:	00 20                	add    %ah,(%rax)
  4002ab:	00 80 01 10 00 06    	add    %al,0x6001001(%rax)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 07                	add    %al,(%rdi)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 29                	add    %ch,(%rcx)
  4002b9:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
  4002be:	61                   	(bad)
  4002bf:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000004002c0 <.dynsym>:
	...
  4002d8:	12 00                	adc    (%rax),%al
  4002da:	00 00                	add    %al,(%rax)
  4002dc:	12 00                	adc    (%rax),%al
	...
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	2a 00                	sub    (%rax),%al
  4002f2:	00 00                	add    %al,(%rax)
  4002f4:	12 00                	adc    (%rax),%al
	...
  400306:	00 00                	add    %al,(%rax)
  400308:	1d 00 00 00 12       	sbb    $0x12000000,%eax
	...
  40031d:	00 00                	add    %al,(%rax)
  40031f:	00 3c 00             	add    %bh,(%rax,%rax,1)
  400322:	00 00                	add    %al,(%rax)
  400324:	20 00                	and    %al,(%rax)
	...
  400336:	00 00                	add    %al,(%rax)
  400338:	0b 00                	or     (%rax),%eax
  40033a:	00 00                	add    %al,(%rax)
  40033c:	12 00                	adc    (%rax),%al
	...
  40034e:	00 00                	add    %al,(%rax)
  400350:	23 00                	and    (%rax),%eax
  400352:	00 00                	add    %al,(%rax)
  400354:	11 00                	adc    %eax,(%rax)
  400356:	1a 00                	sbb    (%rax),%al
  400358:	50                   	push   %rax
  400359:	10 60 00             	adc    %ah,0x0(%rax)
  40035c:	00 00                	add    %al,(%rax)
  40035e:	00 00                	add    %al,(%rax)
  400360:	08 00                	or     %al,(%rax)
  400362:	00 00                	add    %al,(%rax)
  400364:	00 00                	add    %al,(%rax)
  400366:	00 00                	add    %al,(%rax)
  400368:	17                   	(bad)
  400369:	00 00                	add    %al,(%rax)
  40036b:	00 11                	add    %dl,(%rcx)
  40036d:	00 1a                	add    %bl,(%rdx)
  40036f:	00 60 10             	add    %ah,0x10(%rax)
  400372:	60                   	(bad)
  400373:	00 00                	add    %al,(%rax)
  400375:	00 00                	add    %al,(%rax)
  400377:	00 08                	add    %cl,(%rax)
  400379:	00 00                	add    %al,(%rax)
  40037b:	00 00                	add    %al,(%rax)
  40037d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400380 <.dynstr>:
  400380:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400384:	63 2e                	movslq (%rsi),%ebp
  400386:	73 6f                	jae    4003f7 <_init-0xb9>
  400388:	2e 36 00 66 66       	cs add %ah,%ss:0x66(%rsi)
  40038d:	6c                   	insb   (%dx),%es:(%rdi)
  40038e:	75 73                	jne    400403 <_init-0xad>
  400390:	68 00 70 75 74       	pushq  $0x74757000
  400395:	73 00                	jae    400397 <_init-0x119>
  400397:	73 74                	jae    40040d <_init-0xa3>
  400399:	64 69 6e 00 66 67 65 	imul   $0x74656766,%fs:0x0(%rsi),%ebp
  4003a0:	74
  4003a1:	73 00                	jae    4003a3 <_init-0x10d>
  4003a3:	73 74                	jae    400419 <_init-0x97>
  4003a5:	64 6f                	outsl  %fs:(%rsi),(%dx)
  4003a7:	75 74                	jne    40041d <_init-0x93>
  4003a9:	00 5f 5f             	add    %bl,0x5f(%rdi)
  4003ac:	6c                   	insb   (%dx),%es:(%rdi)
  4003ad:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  4003b4:	72 74                	jb     40042a <_init-0x86>
  4003b6:	5f                   	pop    %rdi
  4003b7:	6d                   	insl   (%dx),%es:(%rdi)
  4003b8:	61                   	(bad)
  4003b9:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  4003c0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4003c1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4003c2:	5f                   	pop    %rdi
  4003c3:	73 74                	jae    400439 <_init-0x77>
  4003c5:	61                   	(bad)
  4003c6:	72 74                	jb     40043c <_init-0x74>
  4003c8:	5f                   	pop    %rdi
  4003c9:	5f                   	pop    %rdi
  4003ca:	00 47 4c             	add    %al,0x4c(%rdi)
  4003cd:	49                   	rex.WB
  4003ce:	42                   	rex.X
  4003cf:	43 5f                	rex.XB pop %r15
  4003d1:	32 2e                	xor    (%rsi),%ch
  4003d3:	32 2e                	xor    (%rsi),%ch
  4003d5:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

00000000004003d8 <.gnu.version>:
  4003d8:	00 00                	add    %al,(%rax)
  4003da:	02 00                	add    (%rax),%al
  4003dc:	02 00                	add    (%rax),%al
  4003de:	02 00                	add    (%rax),%al
  4003e0:	00 00                	add    %al,(%rax)
  4003e2:	02 00                	add    (%rax),%al
  4003e4:	02 00                	add    (%rax),%al
  4003e6:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000004003e8 <.gnu.version_r>:
  4003e8:	01 00                	add    %eax,(%rax)
  4003ea:	01 00                	add    %eax,(%rax)
  4003ec:	01 00                	add    %eax,(%rax)
  4003ee:	00 00                	add    %al,(%rax)
  4003f0:	10 00                	adc    %al,(%rax)
  4003f2:	00 00                	add    %al,(%rax)
  4003f4:	00 00                	add    %al,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	75 1a                	jne    400414 <_init-0x9c>
  4003fa:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400400:	4b 00 00             	rex.WXB add %al,(%r8)
  400403:	00 00                	add    %al,(%rax)
  400405:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400408 <.rela.dyn>:
  400408:	f8                   	clc
  400409:	0f 60 00             	punpcklbw (%rax),%mm0
  40040c:	00 00                	add    %al,(%rax)
  40040e:	00 00                	add    %al,(%rax)
  400410:	06                   	(bad)
  400411:	00 00                	add    %al,(%rax)
  400413:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  40041e:	00 00                	add    %al,(%rax)
  400420:	50                   	push   %rax
  400421:	10 60 00             	adc    %ah,0x0(%rax)
  400424:	00 00                	add    %al,(%rax)
  400426:	00 00                	add    %al,(%rax)
  400428:	05 00 00 00 06       	add    $0x6000000,%eax
	...
  400435:	00 00                	add    %al,(%rax)
  400437:	00 60 10             	add    %ah,0x10(%rax)
  40043a:	60                   	(bad)
  40043b:	00 00                	add    %al,(%rax)
  40043d:	00 00                	add    %al,(%rax)
  40043f:	00 05 00 00 00 07    	add    %al,0x7000000(%rip)        # 7400445 <_end+0x6dff3d5>
	...

Disassembly of section .rela.plt:

0000000000400450 <.rela.plt>:
  400450:	18 10                	sbb    %dl,(%rax)
  400452:	60                   	(bad)
  400453:	00 00                	add    %al,(%rax)
  400455:	00 00                	add    %al,(%rax)
  400457:	00 07                	add    %al,(%rdi)
  400459:	00 00                	add    %al,(%rax)
  40045b:	00 01                	add    %al,(%rcx)
	...
  400465:	00 00                	add    %al,(%rax)
  400467:	00 20                	add    %ah,(%rax)
  400469:	10 60 00             	adc    %ah,0x0(%rax)
  40046c:	00 00                	add    %al,(%rax)
  40046e:	00 00                	add    %al,(%rax)
  400470:	07                   	(bad)
  400471:	00 00                	add    %al,(%rax)
  400473:	00 02                	add    %al,(%rdx)
	...
  40047d:	00 00                	add    %al,(%rax)
  40047f:	00 28                	add    %ch,(%rax)
  400481:	10 60 00             	adc    %ah,0x0(%rax)
  400484:	00 00                	add    %al,(%rax)
  400486:	00 00                	add    %al,(%rax)
  400488:	07                   	(bad)
  400489:	00 00                	add    %al,(%rax)
  40048b:	00 03                	add    %al,(%rbx)
	...
  400495:	00 00                	add    %al,(%rax)
  400497:	00 30                	add    %dh,(%rax)
  400499:	10 60 00             	adc    %ah,0x0(%rax)
  40049c:	00 00                	add    %al,(%rax)
  40049e:	00 00                	add    %al,(%rax)
  4004a0:	07                   	(bad)
  4004a1:	00 00                	add    %al,(%rax)
  4004a3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4004a9 <_init-0x7>
  4004a9:	00 00                	add    %al,(%rax)
  4004ab:	00 00                	add    %al,(%rax)
  4004ad:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	48 8b 05 3d 0b 20 00 	mov    0x200b3d(%rip),%rax        # 600ff8 <__gmon_start__>
  4004bb:	48 85 c0             	test   %rax,%rax
  4004be:	74 05                	je     4004c5 <_init+0x15>
  4004c0:	e8 5b 00 00 00       	callq  400520 <__gmon_start__@plt>
  4004c5:	48 83 c4 08          	add    $0x8,%rsp
  4004c9:	c3                   	retq

Disassembly of section .plt:

00000000004004d0 <.plt>:
  4004d0:	ff 35 32 0b 20 00    	pushq  0x200b32(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 0b 20 00    	jmpq   *0x200b34(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <puts@plt>:
  4004e0:	ff 25 32 0b 20 00    	jmpq   *0x200b32(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <.plt>

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 2a 0b 20 00    	jmpq   *0x200b2a(%rip)        # 601020 <__libc_start_main@GLIBC_2.2.5>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400500 <fgets@plt>:
  400500:	ff 25 22 0b 20 00    	jmpq   *0x200b22(%rip)        # 601028 <fgets@GLIBC_2.2.5>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400510 <fflush@plt>:
  400510:	ff 25 1a 0b 20 00    	jmpq   *0x200b1a(%rip)        # 601030 <fflush@GLIBC_2.2.5>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <.plt>

Disassembly of section .plt.got:

0000000000400520 <__gmon_start__@plt>:
  400520:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 600ff8 <__gmon_start__>
  400526:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400530 <_start>:
  400530:	31 ed                	xor    %ebp,%ebp
  400532:	49 89 d1             	mov    %rdx,%r9
  400535:	5e                   	pop    %rsi
  400536:	48 89 e2             	mov    %rsp,%rdx
  400539:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40053d:	50                   	push   %rax
  40053e:	54                   	push   %rsp
  40053f:	49 c7 c0 e0 06 40 00 	mov    $0x4006e0,%r8
  400546:	48 c7 c1 70 06 40 00 	mov    $0x400670,%rcx
  40054d:	48 c7 c7 26 06 40 00 	mov    $0x400626,%rdi
  400554:	e8 97 ff ff ff       	callq  4004f0 <__libc_start_main@plt>
  400559:	f4                   	hlt
  40055a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400560 <deregister_tm_clones>:
  400560:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400565:	55                   	push   %rbp
  400566:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40056c:	48 83 f8 0e          	cmp    $0xe,%rax
  400570:	48 89 e5             	mov    %rsp,%rbp
  400573:	76 1b                	jbe    400590 <deregister_tm_clones+0x30>
  400575:	b8 00 00 00 00       	mov    $0x0,%eax
  40057a:	48 85 c0             	test   %rax,%rax
  40057d:	74 11                	je     400590 <deregister_tm_clones+0x30>
  40057f:	5d                   	pop    %rbp
  400580:	bf 48 10 60 00       	mov    $0x601048,%edi
  400585:	ff e0                	jmpq   *%rax
  400587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40058e:	00 00
  400590:	5d                   	pop    %rbp
  400591:	c3                   	retq
  400592:	0f 1f 40 00          	nopl   0x0(%rax)
  400596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40059d:	00 00 00

00000000004005a0 <register_tm_clones>:
  4005a0:	be 48 10 60 00       	mov    $0x601048,%esi
  4005a5:	55                   	push   %rbp
  4005a6:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  4005ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4005b1:	48 89 e5             	mov    %rsp,%rbp
  4005b4:	48 89 f0             	mov    %rsi,%rax
  4005b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005bb:	48 01 c6             	add    %rax,%rsi
  4005be:	48 d1 fe             	sar    %rsi
  4005c1:	74 15                	je     4005d8 <register_tm_clones+0x38>
  4005c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c8:	48 85 c0             	test   %rax,%rax
  4005cb:	74 0b                	je     4005d8 <register_tm_clones+0x38>
  4005cd:	5d                   	pop    %rbp
  4005ce:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005d3:	ff e0                	jmpq   *%rax
  4005d5:	0f 1f 00             	nopl   (%rax)
  4005d8:	5d                   	pop    %rbp
  4005d9:	c3                   	retq
  4005da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005e0 <__do_global_dtors_aux>:
  4005e0:	80 3d 81 0a 20 00 00 	cmpb   $0x0,0x200a81(%rip)        # 601068 <completed.7585>
  4005e7:	75 11                	jne    4005fa <__do_global_dtors_aux+0x1a>
  4005e9:	55                   	push   %rbp
  4005ea:	48 89 e5             	mov    %rsp,%rbp
  4005ed:	e8 6e ff ff ff       	callq  400560 <deregister_tm_clones>
  4005f2:	5d                   	pop    %rbp
  4005f3:	c6 05 6e 0a 20 00 01 	movb   $0x1,0x200a6e(%rip)        # 601068 <completed.7585>
  4005fa:	f3 c3                	repz retq
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <frame_dummy>:
  400600:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400605:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400609:	75 05                	jne    400610 <frame_dummy+0x10>
  40060b:	eb 93                	jmp    4005a0 <register_tm_clones>
  40060d:	0f 1f 00             	nopl   (%rax)
  400610:	b8 00 00 00 00       	mov    $0x0,%eax
  400615:	48 85 c0             	test   %rax,%rax
  400618:	74 f1                	je     40060b <frame_dummy+0xb>
  40061a:	55                   	push   %rbp
  40061b:	48 89 e5             	mov    %rsp,%rbp
  40061e:	ff d0                	callq  *%rax
  400620:	5d                   	pop    %rbp
  400621:	e9 7a ff ff ff       	jmpq   4005a0 <register_tm_clones>

0000000000400626 <main>:
  400626:	55                   	push   %rbp
  400627:	48 89 e5             	mov    %rsp,%rbp
  40062a:	48 83 ec 50          	sub    $0x50,%rsp
  40062e:	89 7d bc             	mov    %edi,-0x44(%rbp)
  400631:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  400635:	bf f8 06 40 00       	mov    $0x4006f8,%edi
  40063a:	e8 a1 fe ff ff       	callq  4004e0 <puts@plt>
  40063f:	48 8b 05 0a 0a 20 00 	mov    0x200a0a(%rip),%rax        # 601050 <stdout@@GLIBC_2.2.5>
  400646:	48 89 c7             	mov    %rax,%rdi
  400649:	e8 c2 fe ff ff       	callq  400510 <fflush@plt>
  40064e:	48 8b 15 0b 0a 20 00 	mov    0x200a0b(%rip),%rdx        # 601060 <stdin@@GLIBC_2.2.5>
  400655:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400659:	be f4 01 00 00       	mov    $0x1f4,%esi
  40065e:	48 89 c7             	mov    %rax,%rdi
  400661:	e8 9a fe ff ff       	callq  400500 <fgets@plt>
  400666:	b8 00 00 00 00       	mov    $0x0,%eax
  40066b:	c9                   	leaveq
  40066c:	c3                   	retq
  40066d:	0f 1f 00             	nopl   (%rax)

0000000000400670 <__libc_csu_init>:
  400670:	41 57                	push   %r15
  400672:	41 56                	push   %r14
  400674:	41 89 ff             	mov    %edi,%r15d
  400677:	41 55                	push   %r13
  400679:	41 54                	push   %r12
  40067b:	4c 8d 25 8e 07 20 00 	lea    0x20078e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400682:	55                   	push   %rbp
  400683:	48 8d 2d 8e 07 20 00 	lea    0x20078e(%rip),%rbp        # 600e18 <__init_array_end>
  40068a:	53                   	push   %rbx
  40068b:	49 89 f6             	mov    %rsi,%r14
  40068e:	49 89 d5             	mov    %rdx,%r13
  400691:	4c 29 e5             	sub    %r12,%rbp
  400694:	48 83 ec 08          	sub    $0x8,%rsp
  400698:	48 c1 fd 03          	sar    $0x3,%rbp
  40069c:	e8 0f fe ff ff       	callq  4004b0 <_init>
  4006a1:	48 85 ed             	test   %rbp,%rbp
  4006a4:	74 20                	je     4006c6 <__libc_csu_init+0x56>
  4006a6:	31 db                	xor    %ebx,%ebx
  4006a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006af:	00
  4006b0:	4c 89 ea             	mov    %r13,%rdx
  4006b3:	4c 89 f6             	mov    %r14,%rsi
  4006b6:	44 89 ff             	mov    %r15d,%edi
  4006b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006bd:	48 83 c3 01          	add    $0x1,%rbx
  4006c1:	48 39 eb             	cmp    %rbp,%rbx
  4006c4:	75 ea                	jne    4006b0 <__libc_csu_init+0x40>
  4006c6:	48 83 c4 08          	add    $0x8,%rsp
  4006ca:	5b                   	pop    %rbx
  4006cb:	5d                   	pop    %rbp
  4006cc:	41 5c                	pop    %r12
  4006ce:	41 5d                	pop    %r13
  4006d0:	41 5e                	pop    %r14
  4006d2:	41 5f                	pop    %r15
  4006d4:	c3                   	retq
  4006d5:	90                   	nop
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00

00000000004006e0 <__libc_csu_fini>:
  4006e0:	f3 c3                	repz retq

Disassembly of section .fini:

00000000004006e4 <_fini>:
  4006e4:	48 83 ec 08          	sub    $0x8,%rsp
  4006e8:	48 83 c4 08          	add    $0x8,%rsp
  4006ec:	c3                   	retq

Disassembly of section .rodata:

00000000004006f0 <_IO_stdin_used>:
  4006f0:	01 00                	add    %eax,(%rax)
  4006f2:	02 00                	add    (%rax),%al
  4006f4:	00 00                	add    %al,(%rax)
  4006f6:	00 00                	add    %al,(%rax)
  4006f8:	52                   	push   %rdx
  4006f9:	4f 50                	rex.WRXB push %r8
  4006fb:	20 6d 65             	and    %ch,0x65(%rbp)
  4006fe:	20 6f 75             	and    %ch,0x75(%rdi)
  400701:	74 73                	je     400776 <__GNU_EH_FRAME_HDR+0x5e>
  400703:	69 64 65 2c 20 68 6f 	imul   $0x776f6820,0x2c(%rbp,%riz,2),%esp
  40070a:	77
  40070b:	20 27                	and    %ah,(%rdi)
  40070d:	61                   	(bad)
  40070e:	62                   	(bad)
  40070f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400710:	75 74                	jne    400786 <__GNU_EH_FRAME_HDR+0x6e>
  400712:	20 64 61 68          	and    %ah,0x68(%rcx,%riz,2)
  400716:	3f                   	(bad)
	...

Disassembly of section .eh_frame_hdr:

0000000000400718 <__GNU_EH_FRAME_HDR>:
  400718:	01 1b                	add    %ebx,(%rbx)
  40071a:	03 3b                	add    (%rbx),%edi
  40071c:	34 00                	xor    $0x0,%al
  40071e:	00 00                	add    %al,(%rax)
  400720:	05 00 00 00 b8       	add    $0xb8000000,%eax
  400725:	fd                   	std
  400726:	ff                   	(bad)
  400727:	ff 80 00 00 00 18    	incl   0x18000000(%rax)
  40072d:	fe                   	(bad)
  40072e:	ff                   	(bad)
  40072f:	ff 50 00             	callq  *0x0(%rax)
  400732:	00 00                	add    %al,(%rax)
  400734:	0e                   	(bad)
  400735:	ff                   	(bad)
  400736:	ff                   	(bad)
  400737:	ff a8 00 00 00 58    	ljmp   *0x58000000(%rax)
  40073d:	ff                   	(bad)
  40073e:	ff                   	(bad)
  40073f:	ff c8                	dec    %eax
  400741:	00 00                	add    %al,(%rax)
  400743:	00 c8                	add    %cl,%al
  400745:	ff                   	(bad)
  400746:	ff                   	(bad)
  400747:	ff 10                	callq  *(%rax)
  400749:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400750 <__FRAME_END__-0xf0>:
  400750:	14 00                	adc    $0x0,%al
  400752:	00 00                	add    %al,(%rax)
  400754:	00 00                	add    %al,(%rax)
  400756:	00 00                	add    %al,(%rax)
  400758:	01 7a 52             	add    %edi,0x52(%rdx)
  40075b:	00 01                	add    %al,(%rcx)
  40075d:	78 10                	js     40076f <__GNU_EH_FRAME_HDR+0x57>
  40075f:	01 1b                	add    %ebx,(%rbx)
  400761:	0c 07                	or     $0x7,%al
  400763:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400769:	00 00                	add    %al,(%rax)
  40076b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40076e:	00 00                	add    %al,(%rax)
  400770:	c0 fd ff             	sar    $0xff,%ch
  400773:	ff 2a                	ljmp   *(%rdx)
	...
  40077d:	00 00                	add    %al,(%rax)
  40077f:	00 14 00             	add    %dl,(%rax,%rax,1)
  400782:	00 00                	add    %al,(%rax)
  400784:	00 00                	add    %al,(%rax)
  400786:	00 00                	add    %al,(%rax)
  400788:	01 7a 52             	add    %edi,0x52(%rdx)
  40078b:	00 01                	add    %al,(%rcx)
  40078d:	78 10                	js     40079f <__GNU_EH_FRAME_HDR+0x87>
  40078f:	01 1b                	add    %ebx,(%rbx)
  400791:	0c 07                	or     $0x7,%al
  400793:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400799:	00 00                	add    %al,(%rax)
  40079b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40079e:	00 00                	add    %al,(%rax)
  4007a0:	30 fd                	xor    %bh,%ch
  4007a2:	ff                   	(bad)
  4007a3:	ff 50 00             	callq  *0x0(%rax)
  4007a6:	00 00                	add    %al,(%rax)
  4007a8:	00 0e                	add    %cl,(%rsi)
  4007aa:	10 46 0e             	adc    %al,0xe(%rsi)
  4007ad:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4007b0:	0b 77 08             	or     0x8(%rdi),%esi
  4007b3:	80 00 3f             	addb   $0x3f,(%rax)
  4007b6:	1a 3b                	sbb    (%rbx),%bh
  4007b8:	2a 33                	sub    (%rbx),%dh
  4007ba:	24 22                	and    $0x22,%al
  4007bc:	00 00                	add    %al,(%rax)
  4007be:	00 00                	add    %al,(%rax)
  4007c0:	1c 00                	sbb    $0x0,%al
  4007c2:	00 00                	add    %al,(%rax)
  4007c4:	44 00 00             	add    %r8b,(%rax)
  4007c7:	00 5e fe             	add    %bl,-0x2(%rsi)
  4007ca:	ff                   	(bad)
  4007cb:	ff 47 00             	incl   0x0(%rdi)
  4007ce:	00 00                	add    %al,(%rax)
  4007d0:	00 41 0e             	add    %al,0xe(%rcx)
  4007d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4007d9:	02 42 0c             	add    0xc(%rdx),%al
  4007dc:	07                   	(bad)
  4007dd:	08 00                	or     %al,(%rax)
  4007df:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  4007e3:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  4007e7:	00 88 fe ff ff 65    	add    %cl,0x65fffffe(%rax)
  4007ed:	00 00                	add    %al,(%rax)
  4007ef:	00 00                	add    %al,(%rax)
  4007f1:	42 0e                	rex.X (bad)
  4007f3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  4007f9:	8e 03                	mov    (%rbx),%es
  4007fb:	45 0e                	rex.RB (bad)
  4007fd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400803:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701651 <_end+0xffffffff861005e1>
  400809:	06                   	(bad)
  40080a:	48 0e                	rex.W (bad)
  40080c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400812:	72 0e                	jb     400822 <__GNU_EH_FRAME_HDR+0x10a>
  400814:	38 41 0e             	cmp    %al,0xe(%rcx)
  400817:	30 41 0e             	xor    %al,0xe(%rcx)
  40081a:	28 42 0e             	sub    %al,0xe(%rdx)
  40081d:	20 42 0e             	and    %al,0xe(%rdx)
  400820:	18 42 0e             	sbb    %al,0xe(%rdx)
  400823:	10 42 0e             	adc    %al,0xe(%rdx)
  400826:	08 00                	or     %al,(%rax)
  400828:	14 00                	adc    $0x0,%al
  40082a:	00 00                	add    %al,(%rax)
  40082c:	ac                   	lods   %ds:(%rsi),%al
  40082d:	00 00                	add    %al,(%rax)
  40082f:	00 b0 fe ff ff 02    	add    %dh,0x2fffffe(%rax)
	...

0000000000400840 <__FRAME_END__>:
  400840:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	00 06                	add    %al,(%rsi)
  600e12:	40 00 00             	add    %al,(%rax)
  600e15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	e0 05                	loopne 600e1f <__do_global_dtors_aux_fini_array_entry+0x7>
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
  600e40:	b0 04                	mov    $0x4,%al
  600e42:	40 00 00             	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 e4                	add    %ah,%ah
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
  600eaf:	00 80 03 40 00 00    	add    %al,0x4003(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 06                	add    %al,(%rsi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 c0                	add    %al,%al
  600ec1:	02 40 00             	add    0x0(%rax),%al
  600ec4:	00 00                	add    %al,(%rax)
  600ec6:	00 00                	add    %al,(%rax)
  600ec8:	0a 00                	or     (%rax),%al
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	57                   	push   %rdi
  600ed1:	00 00                	add    %al,(%rax)
  600ed3:	00 00                	add    %al,(%rax)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 0b                	add    %cl,(%rbx)
  600ed9:	00 00                	add    %al,(%rax)
  600edb:	00 00                	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 18                	add    %bl,(%rax)
  600ee1:	00 00                	add    %al,(%rax)
  600ee3:	00 00                	add    %al,(%rax)
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600eed <_DYNAMIC+0xc5>
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
  600f2f:	00 50 04             	add    %dl,0x4(%rax)
  600f32:	40 00 00             	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 07                	add    %al,(%rdi)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 08                	add    %cl,(%rax)
  600f41:	04 40                	add    $0x40,%al
  600f43:	00 00                	add    %al,(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 08                	add    %cl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 48 00             	add    %cl,0x0(%rax)
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
  600f6f:	00 e8                	add    %ch,%al
  600f71:	03 40 00             	add    0x0(%rax),%eax
  600f74:	00 00                	add    %al,(%rax)
  600f76:	00 00                	add    %al,(%rax)
  600f78:	ff                   	(bad)
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
  600f8f:	00 d8                	add    %bl,%al
  600f91:	03 40 00             	add    0x0(%rax),%eax
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)
	...
  601017:	00 e6                	add    %ah,%dh
  601019:	04 40                	add    $0x40,%al
  60101b:	00 00                	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 f6                	add    %dh,%dh
  601021:	04 40                	add    $0x40,%al
  601023:	00 00                	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 06                	add    %al,(%rsi)
  601029:	05 40 00 00 00       	add    $0x40,%eax
  60102e:	00 00                	add    %al,(%rax)
  601030:	16                   	(bad)
  601031:	05 40 00 00 00       	add    $0x40,%eax
	...

Disassembly of section .data:

0000000000601038 <__data_start>:
	...

0000000000601040 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601050 <stdout@@GLIBC_2.2.5>:
	...

0000000000601060 <stdin@@GLIBC_2.2.5>:
	...

0000000000601068 <completed.7585>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400438>
   a:	74 75                	je     81 <_init-0x40042f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce23d0>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x400421>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	34 29                	xor    $0x29,%al
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3458 <_end+0x2fce23e8>
  2a:	20 32                	and    %dh,(%rdx)
  2c:	30 31                	xor    %dh,(%rcx)
  2e:	36 30 36             	xor    %dh,%ss:(%rsi)
  31:	30 39                	xor    %bh,(%rcx)
	...
