
split32:     file format elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 20                	add    %ah,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 f8                	add    %bh,%al
 8048199:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804819a:	d6                   	(bad)
 804819b:	bf 3d 26 4d 33       	mov    $0x334d263d,%edi
 80481a0:	1e                   	push   %ds
 80481a1:	cb                   	lret
 80481a2:	f9                   	stc
 80481a3:	d1 e6                	shl    %esi
 80481a5:	85 8d 6e ac 12 4b    	test   %ecx,0x4b12ac6e(%ebp)
 80481ab:	89                   	.byte 0x89

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	09 00                	or     %eax,(%eax)
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	01 00                	add    %eax,(%eax)
 80481b6:	00 00                	add    %al,(%eax)
 80481b8:	05 00 00 00 80       	add    $0x80000000,%eax
 80481bd:	2b 02                	sub    (%edx),%eax
 80481bf:	22 09                	and    (%ecx),%cl
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 0a                	add    %cl,(%edx)
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 00                	add    %al,(%eax)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 29                	add    %ch,(%ecx)
 80481cd:	1d 8c 1c 38 f2       	sbb    $0xf2381c8c,%eax
 80481d2:	8b 1c ac             	mov    (%esp,%ebp,4),%ebx
 80481d5:	4b                   	dec    %ebx
 80481d6:	e3 c0                	jecxz  8048198 <_init-0x228>
 80481d8:	67 55                	addr16 push %ebp
 80481da:	61                   	popa
 80481db:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481dc <.dynsym>:
	...
 80481ec:	25 00 00 00 00       	and    $0x0,%eax
 80481f1:	00 00                	add    %al,(%eax)
 80481f3:	00 00                	add    %al,(%eax)
 80481f5:	00 00                	add    %al,(%eax)
 80481f7:	00 12                	add    %dl,(%edx)
 80481f9:	00 00                	add    %al,(%eax)
 80481fb:	00 2c 00             	add    %ch,(%eax,%eax,1)
	...
 8048206:	00 00                	add    %al,(%eax)
 8048208:	12 00                	adc    (%eax),%al
 804820a:	00 00                	add    %al,(%eax)
 804820c:	1a 00                	sbb    (%eax),%al
	...
 8048216:	00 00                	add    %al,(%eax)
 8048218:	12 00                	adc    (%eax),%al
 804821a:	00 00                	add    %al,(%eax)
 804821c:	47                   	inc    %edi
	...
 8048225:	00 00                	add    %al,(%eax)
 8048227:	00 12                	add    %dl,(%edx)
 8048229:	00 00                	add    %al,(%eax)
 804822b:	00 68 00             	add    %ch,0x0(%eax)
	...
 8048236:	00 00                	add    %al,(%eax)
 8048238:	20 00                	and    %al,(%eax)
 804823a:	00 00                	add    %al,(%eax)
 804823c:	56                   	push   %esi
	...
 8048245:	00 00                	add    %al,(%eax)
 8048247:	00 12                	add    %dl,(%edx)
 8048249:	00 00                	add    %al,(%eax)
 804824b:	00 4e 00             	add    %cl,0x0(%esi)
	...
 8048256:	00 00                	add    %al,(%eax)
 8048258:	12 00                	adc    (%eax),%al
 804825a:	00 00                	add    %al,(%eax)
 804825c:	32 00                	xor    (%eax),%al
	...
 8048266:	00 00                	add    %al,(%eax)
 8048268:	12 00                	adc    (%eax),%al
 804826a:	00 00                	add    %al,(%eax)
 804826c:	39 00                	cmp    %eax,(%eax)
 804826e:	00 00                	add    %al,(%eax)
 8048270:	84 a0 04 08 04 00    	test   %ah,0x40804(%eax)
 8048276:	00 00                	add    %al,(%eax)
 8048278:	11 00                	adc    %eax,(%eax)
 804827a:	1a 00                	sbb    (%eax),%al
 804827c:	40                   	inc    %eax
 804827d:	00 00                	add    %al,(%eax)
 804827f:	00 60 a0             	add    %ah,-0x60(%eax)
 8048282:	04 08                	add    $0x8,%al
 8048284:	04 00                	add    $0x0,%al
 8048286:	00 00                	add    %al,(%eax)
 8048288:	11 00                	adc    %eax,(%eax)
 804828a:	1a 00                	sbb    (%eax),%al
 804828c:	0b 00                	or     (%eax),%eax
 804828e:	00 00                	add    %al,(%eax)
 8048290:	ec                   	in     (%dx),%al
 8048291:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8048294:	04 00                	add    $0x0,%al
 8048296:	00 00                	add    %al,(%eax)
 8048298:	11 00                	adc    %eax,(%eax)
 804829a:	10 00                	adc    %al,(%eax)
 804829c:	1f                   	pop    %ds
 804829d:	00 00                	add    %al,(%eax)
 804829f:	00 80 a0 04 08 04    	add    %al,0x40804a0(%eax)
 80482a5:	00 00                	add    %al,(%eax)
 80482a7:	00 11                	add    %dl,(%ecx)
 80482a9:	00 1a                	add    %bl,(%edx)
	...

Disassembly of section .dynstr:

080482ac <.dynstr>:
 80482ac:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 80482b0:	63 2e                	arpl   %bp,(%esi)
 80482b2:	73 6f                	jae    8048323 <_init-0x9d>
 80482b4:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 80482b9:	4f                   	dec    %edi
 80482ba:	5f                   	pop    %edi
 80482bb:	73 74                	jae    8048331 <_init-0x8f>
 80482bd:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 80482c4:	64
 80482c5:	00 70 75             	add    %dh,0x75(%eax)
 80482c8:	74 73                	je     804833d <_init-0x83>
 80482ca:	00 73 74             	add    %dh,0x74(%ebx)
 80482cd:	64 69 6e 00 70 72 69 	imul   $0x6e697270,%fs:0x0(%esi),%ebp
 80482d4:	6e
 80482d5:	74 66                	je     804833d <_init-0x83>
 80482d7:	00 66 67             	add    %ah,0x67(%esi)
 80482da:	65 74 73             	gs je  8048350 <_init-0x70>
 80482dd:	00 6d 65             	add    %ch,0x65(%ebp)
 80482e0:	6d                   	insl   (%dx),%es:(%edi)
 80482e1:	73 65                	jae    8048348 <_init-0x78>
 80482e3:	74 00                	je     80482e5 <_init-0xdb>
 80482e5:	73 74                	jae    804835b <_init-0x65>
 80482e7:	64 6f                	outsl  %fs:(%esi),(%dx)
 80482e9:	75 74                	jne    804835f <_init-0x61>
 80482eb:	00 73 74             	add    %dh,0x74(%ebx)
 80482ee:	64 65 72 72          	fs gs jb 8048364 <_init-0x5c>
 80482f2:	00 73 79             	add    %dh,0x79(%ebx)
 80482f5:	73 74                	jae    804836b <_init-0x55>
 80482f7:	65 6d                	gs insl (%dx),%es:(%edi)
 80482f9:	00 73 65             	add    %dh,0x65(%ebx)
 80482fc:	74 76                	je     8048374 <_init-0x4c>
 80482fe:	62 75 66             	bound  %esi,0x66(%ebp)
 8048301:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048304:	6c                   	insb   (%dx),%es:(%edi)
 8048305:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 804830c:	72 74                	jb     8048382 <_init-0x3e>
 804830e:	5f                   	pop    %edi
 804830f:	6d                   	insl   (%dx),%es:(%edi)
 8048310:	61                   	popa
 8048311:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%esi),%ebp
 8048318:	6f                   	outsl  %ds:(%esi),(%dx)
 8048319:	6e                   	outsb  %ds:(%esi),(%dx)
 804831a:	5f                   	pop    %edi
 804831b:	73 74                	jae    8048391 <_init-0x2f>
 804831d:	61                   	popa
 804831e:	72 74                	jb     8048394 <_init-0x2c>
 8048320:	5f                   	pop    %edi
 8048321:	5f                   	pop    %edi
 8048322:	00 47 4c             	add    %al,0x4c(%edi)
 8048325:	49                   	dec    %ecx
 8048326:	42                   	inc    %edx
 8048327:	43                   	inc    %ebx
 8048328:	5f                   	pop    %edi
 8048329:	32 2e                	xor    (%esi),%ch
 804832b:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

0804832e <.gnu.version>:
 804832e:	00 00                	add    %al,(%eax)
 8048330:	02 00                	add    (%eax),%al
 8048332:	02 00                	add    (%eax),%al
 8048334:	02 00                	add    (%eax),%al
 8048336:	02 00                	add    (%eax),%al
 8048338:	00 00                	add    %al,(%eax)
 804833a:	02 00                	add    (%eax),%al
 804833c:	02 00                	add    (%eax),%al
 804833e:	02 00                	add    (%eax),%al
 8048340:	02 00                	add    (%eax),%al
 8048342:	02 00                	add    (%eax),%al
 8048344:	01 00                	add    %eax,(%eax)
 8048346:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

08048348 <.gnu.version_r>:
 8048348:	01 00                	add    %eax,(%eax)
 804834a:	01 00                	add    %eax,(%eax)
 804834c:	01 00                	add    %eax,(%eax)
 804834e:	00 00                	add    %al,(%eax)
 8048350:	10 00                	adc    %al,(%eax)
 8048352:	00 00                	add    %al,(%eax)
 8048354:	00 00                	add    %al,(%eax)
 8048356:	00 00                	add    %al,(%eax)
 8048358:	10 69 69             	adc    %ch,0x69(%ecx)
 804835b:	0d 00 00 02 00       	or     $0x20000,%eax
 8048360:	77 00                	ja     8048362 <_init-0x5e>
 8048362:	00 00                	add    %al,(%eax)
 8048364:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048368 <.rel.dyn>:
 8048368:	fc                   	cld
 8048369:	9f                   	lahf
 804836a:	04 08                	add    $0x8,%al
 804836c:	06                   	push   %es
 804836d:	05 00 00 60 a0       	add    $0xa0600000,%eax
 8048372:	04 08                	add    $0x8,%al
 8048374:	05 0a 00 00 80       	add    $0x8000000a,%eax
 8048379:	a0 04 08 05 0c       	mov    0xc050804,%al
 804837e:	00 00                	add    %al,(%eax)
 8048380:	84 a0 04 08 05 09    	test   %ah,0x9050804(%eax)
	...

Disassembly of section .rel.plt:

08048388 <.rel.plt>:
 8048388:	0c a0                	or     $0xa0,%al
 804838a:	04 08                	add    $0x8,%al
 804838c:	07                   	pop    %es
 804838d:	01 00                	add    %eax,(%eax)
 804838f:	00 10                	add    %dl,(%eax)
 8048391:	a0 04 08 07 02       	mov    0x2070804,%al
 8048396:	00 00                	add    %al,(%eax)
 8048398:	14 a0                	adc    $0xa0,%al
 804839a:	04 08                	add    $0x8,%al
 804839c:	07                   	pop    %es
 804839d:	03 00                	add    (%eax),%eax
 804839f:	00 18                	add    %bl,(%eax)
 80483a1:	a0 04 08 07 04       	mov    0x4070804,%al
 80483a6:	00 00                	add    %al,(%eax)
 80483a8:	1c a0                	sbb    $0xa0,%al
 80483aa:	04 08                	add    $0x8,%al
 80483ac:	07                   	pop    %es
 80483ad:	06                   	push   %es
 80483ae:	00 00                	add    %al,(%eax)
 80483b0:	20 a0 04 08 07 07    	and    %ah,0x7070804(%eax)
 80483b6:	00 00                	add    %al,(%eax)
 80483b8:	24 a0                	and    $0xa0,%al
 80483ba:	04 08                	add    $0x8,%al
 80483bc:	07                   	pop    %es
 80483bd:	08 00                	or     %al,(%eax)
	...

Disassembly of section .init:

080483c0 <_init>:
 80483c0:	53                   	push   %ebx
 80483c1:	83 ec 08             	sub    $0x8,%esp
 80483c4:	e8 e7 00 00 00       	call   80484b0 <__x86.get_pc_thunk.bx>
 80483c9:	81 c3 37 1c 00 00    	add    $0x1c37,%ebx
 80483cf:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483d5:	85 c0                	test   %eax,%eax
 80483d7:	74 05                	je     80483de <_init+0x1e>
 80483d9:	e8 92 00 00 00       	call   8048470 <__gmon_start__@plt>
 80483de:	83 c4 08             	add    $0x8,%esp
 80483e1:	5b                   	pop    %ebx
 80483e2:	c3                   	ret

Disassembly of section .plt:

080483f0 <.plt>:
 80483f0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483f6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483fc:	00 00                	add    %al,(%eax)
	...

08048400 <printf@plt>:
 8048400:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048406:	68 00 00 00 00       	push   $0x0
 804840b:	e9 e0 ff ff ff       	jmp    80483f0 <.plt>

08048410 <fgets@plt>:
 8048410:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048416:	68 08 00 00 00       	push   $0x8
 804841b:	e9 d0 ff ff ff       	jmp    80483f0 <.plt>

08048420 <puts@plt>:
 8048420:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048426:	68 10 00 00 00       	push   $0x10
 804842b:	e9 c0 ff ff ff       	jmp    80483f0 <.plt>

08048430 <system@plt>:
 8048430:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048436:	68 18 00 00 00       	push   $0x18
 804843b:	e9 b0 ff ff ff       	jmp    80483f0 <.plt>

08048440 <__libc_start_main@plt>:
 8048440:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048446:	68 20 00 00 00       	push   $0x20
 804844b:	e9 a0 ff ff ff       	jmp    80483f0 <.plt>

08048450 <setvbuf@plt>:
 8048450:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048456:	68 28 00 00 00       	push   $0x28
 804845b:	e9 90 ff ff ff       	jmp    80483f0 <.plt>

08048460 <memset@plt>:
 8048460:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048466:	68 30 00 00 00       	push   $0x30
 804846b:	e9 80 ff ff ff       	jmp    80483f0 <.plt>

Disassembly of section .plt.got:

08048470 <__gmon_start__@plt>:
 8048470:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048476:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048480 <_start>:
 8048480:	31 ed                	xor    %ebp,%ebp
 8048482:	5e                   	pop    %esi
 8048483:	89 e1                	mov    %esp,%ecx
 8048485:	83 e4 f0             	and    $0xfffffff0,%esp
 8048488:	50                   	push   %eax
 8048489:	54                   	push   %esp
 804848a:	52                   	push   %edx
 804848b:	68 d0 86 04 08       	push   $0x80486d0
 8048490:	68 70 86 04 08       	push   $0x8048670
 8048495:	51                   	push   %ecx
 8048496:	56                   	push   %esi
 8048497:	68 7b 85 04 08       	push   $0x804857b
 804849c:	e8 9f ff ff ff       	call   8048440 <__libc_start_main@plt>
 80484a1:	f4                   	hlt
 80484a2:	66 90                	xchg   %ax,%ax
 80484a4:	66 90                	xchg   %ax,%ax
 80484a6:	66 90                	xchg   %ax,%ax
 80484a8:	66 90                	xchg   %ax,%ax
 80484aa:	66 90                	xchg   %ax,%ax
 80484ac:	66 90                	xchg   %ax,%ax
 80484ae:	66 90                	xchg   %ax,%ax

080484b0 <__x86.get_pc_thunk.bx>:
 80484b0:	8b 1c 24             	mov    (%esp),%ebx
 80484b3:	c3                   	ret
 80484b4:	66 90                	xchg   %ax,%ax
 80484b6:	66 90                	xchg   %ax,%ax
 80484b8:	66 90                	xchg   %ax,%ax
 80484ba:	66 90                	xchg   %ax,%ax
 80484bc:	66 90                	xchg   %ax,%ax
 80484be:	66 90                	xchg   %ax,%ax

080484c0 <deregister_tm_clones>:
 80484c0:	b8 4f a0 04 08       	mov    $0x804a04f,%eax
 80484c5:	2d 4c a0 04 08       	sub    $0x804a04c,%eax
 80484ca:	83 f8 06             	cmp    $0x6,%eax
 80484cd:	76 1a                	jbe    80484e9 <deregister_tm_clones+0x29>
 80484cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80484d4:	85 c0                	test   %eax,%eax
 80484d6:	74 11                	je     80484e9 <deregister_tm_clones+0x29>
 80484d8:	55                   	push   %ebp
 80484d9:	89 e5                	mov    %esp,%ebp
 80484db:	83 ec 14             	sub    $0x14,%esp
 80484de:	68 4c a0 04 08       	push   $0x804a04c
 80484e3:	ff d0                	call   *%eax
 80484e5:	83 c4 10             	add    $0x10,%esp
 80484e8:	c9                   	leave
 80484e9:	f3 c3                	repz ret
 80484eb:	90                   	nop
 80484ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080484f0 <register_tm_clones>:
 80484f0:	b8 4c a0 04 08       	mov    $0x804a04c,%eax
 80484f5:	2d 4c a0 04 08       	sub    $0x804a04c,%eax
 80484fa:	c1 f8 02             	sar    $0x2,%eax
 80484fd:	89 c2                	mov    %eax,%edx
 80484ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048502:	01 d0                	add    %edx,%eax
 8048504:	d1 f8                	sar    %eax
 8048506:	74 1b                	je     8048523 <register_tm_clones+0x33>
 8048508:	ba 00 00 00 00       	mov    $0x0,%edx
 804850d:	85 d2                	test   %edx,%edx
 804850f:	74 12                	je     8048523 <register_tm_clones+0x33>
 8048511:	55                   	push   %ebp
 8048512:	89 e5                	mov    %esp,%ebp
 8048514:	83 ec 10             	sub    $0x10,%esp
 8048517:	50                   	push   %eax
 8048518:	68 4c a0 04 08       	push   $0x804a04c
 804851d:	ff d2                	call   *%edx
 804851f:	83 c4 10             	add    $0x10,%esp
 8048522:	c9                   	leave
 8048523:	f3 c3                	repz ret
 8048525:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048530 <__do_global_dtors_aux>:
 8048530:	80 3d 88 a0 04 08 00 	cmpb   $0x0,0x804a088
 8048537:	75 13                	jne    804854c <__do_global_dtors_aux+0x1c>
 8048539:	55                   	push   %ebp
 804853a:	89 e5                	mov    %esp,%ebp
 804853c:	83 ec 08             	sub    $0x8,%esp
 804853f:	e8 7c ff ff ff       	call   80484c0 <deregister_tm_clones>
 8048544:	c6 05 88 a0 04 08 01 	movb   $0x1,0x804a088
 804854b:	c9                   	leave
 804854c:	f3 c3                	repz ret
 804854e:	66 90                	xchg   %ax,%ax

08048550 <frame_dummy>:
 8048550:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048555:	8b 10                	mov    (%eax),%edx
 8048557:	85 d2                	test   %edx,%edx
 8048559:	75 05                	jne    8048560 <frame_dummy+0x10>
 804855b:	eb 93                	jmp    80484f0 <register_tm_clones>
 804855d:	8d 76 00             	lea    0x0(%esi),%esi
 8048560:	ba 00 00 00 00       	mov    $0x0,%edx
 8048565:	85 d2                	test   %edx,%edx
 8048567:	74 f2                	je     804855b <frame_dummy+0xb>
 8048569:	55                   	push   %ebp
 804856a:	89 e5                	mov    %esp,%ebp
 804856c:	83 ec 14             	sub    $0x14,%esp
 804856f:	50                   	push   %eax
 8048570:	ff d2                	call   *%edx
 8048572:	83 c4 10             	add    $0x10,%esp
 8048575:	c9                   	leave
 8048576:	e9 75 ff ff ff       	jmp    80484f0 <register_tm_clones>

0804857b <main>:
 804857b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804857f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048582:	ff 71 fc             	pushl  -0x4(%ecx)
 8048585:	55                   	push   %ebp
 8048586:	89 e5                	mov    %esp,%ebp
 8048588:	51                   	push   %ecx
 8048589:	83 ec 04             	sub    $0x4,%esp
 804858c:	a1 84 a0 04 08       	mov    0x804a084,%eax
 8048591:	6a 00                	push   $0x0
 8048593:	6a 02                	push   $0x2
 8048595:	6a 00                	push   $0x0
 8048597:	50                   	push   %eax
 8048598:	e8 b3 fe ff ff       	call   8048450 <setvbuf@plt>
 804859d:	83 c4 10             	add    $0x10,%esp
 80485a0:	a1 60 a0 04 08       	mov    0x804a060,%eax
 80485a5:	6a 00                	push   $0x0
 80485a7:	6a 02                	push   $0x2
 80485a9:	6a 00                	push   $0x0
 80485ab:	50                   	push   %eax
 80485ac:	e8 9f fe ff ff       	call   8048450 <setvbuf@plt>
 80485b1:	83 c4 10             	add    $0x10,%esp
 80485b4:	83 ec 0c             	sub    $0xc,%esp
 80485b7:	68 f0 86 04 08       	push   $0x80486f0
 80485bc:	e8 5f fe ff ff       	call   8048420 <puts@plt>
 80485c1:	83 c4 10             	add    $0x10,%esp
 80485c4:	83 ec 0c             	sub    $0xc,%esp
 80485c7:	68 06 87 04 08       	push   $0x8048706
 80485cc:	e8 4f fe ff ff       	call   8048420 <puts@plt>
 80485d1:	83 c4 10             	add    $0x10,%esp
 80485d4:	e8 1d 00 00 00       	call   80485f6 <pwnme>
 80485d9:	83 ec 0c             	sub    $0xc,%esp
 80485dc:	68 0e 87 04 08       	push   $0x804870e
 80485e1:	e8 3a fe ff ff       	call   8048420 <puts@plt>
 80485e6:	83 c4 10             	add    $0x10,%esp
 80485e9:	b8 00 00 00 00       	mov    $0x0,%eax
 80485ee:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80485f1:	c9                   	leave
 80485f2:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80485f5:	c3                   	ret

080485f6 <pwnme>:
 80485f6:	55                   	push   %ebp
 80485f7:	89 e5                	mov    %esp,%ebp
 80485f9:	83 ec 28             	sub    $0x28,%esp
 80485fc:	83 ec 04             	sub    $0x4,%esp
 80485ff:	6a 20                	push   $0x20
 8048601:	6a 00                	push   $0x0
 8048603:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8048606:	50                   	push   %eax
 8048607:	e8 54 fe ff ff       	call   8048460 <memset@plt>
 804860c:	83 c4 10             	add    $0x10,%esp
 804860f:	83 ec 0c             	sub    $0xc,%esp
 8048612:	68 18 87 04 08       	push   $0x8048718
 8048617:	e8 04 fe ff ff       	call   8048420 <puts@plt>
 804861c:	83 c4 10             	add    $0x10,%esp
 804861f:	83 ec 0c             	sub    $0xc,%esp
 8048622:	68 44 87 04 08       	push   $0x8048744
 8048627:	e8 d4 fd ff ff       	call   8048400 <printf@plt>
 804862c:	83 c4 10             	add    $0x10,%esp
 804862f:	a1 80 a0 04 08       	mov    0x804a080,%eax
 8048634:	83 ec 04             	sub    $0x4,%esp
 8048637:	50                   	push   %eax
 8048638:	6a 60                	push   $0x60
 804863a:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804863d:	50                   	push   %eax
 804863e:	e8 cd fd ff ff       	call   8048410 <fgets@plt>
 8048643:	83 c4 10             	add    $0x10,%esp
 8048646:	90                   	nop
 8048647:	c9                   	leave
 8048648:	c3                   	ret

08048649 <usefulFunction>:
 8048649:	55                   	push   %ebp
 804864a:	89 e5                	mov    %esp,%ebp
 804864c:	83 ec 08             	sub    $0x8,%esp
 804864f:	83 ec 0c             	sub    $0xc,%esp
 8048652:	68 47 87 04 08       	push   $0x8048747
 8048657:	e8 d4 fd ff ff       	call   8048430 <system@plt>
 804865c:	83 c4 10             	add    $0x10,%esp
 804865f:	90                   	nop
 8048660:	c9                   	leave
 8048661:	c3                   	ret
 8048662:	66 90                	xchg   %ax,%ax
 8048664:	66 90                	xchg   %ax,%ax
 8048666:	66 90                	xchg   %ax,%ax
 8048668:	66 90                	xchg   %ax,%ax
 804866a:	66 90                	xchg   %ax,%ax
 804866c:	66 90                	xchg   %ax,%ax
 804866e:	66 90                	xchg   %ax,%ax

08048670 <__libc_csu_init>:
 8048670:	55                   	push   %ebp
 8048671:	57                   	push   %edi
 8048672:	56                   	push   %esi
 8048673:	53                   	push   %ebx
 8048674:	e8 37 fe ff ff       	call   80484b0 <__x86.get_pc_thunk.bx>
 8048679:	81 c3 87 19 00 00    	add    $0x1987,%ebx
 804867f:	83 ec 0c             	sub    $0xc,%esp
 8048682:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048686:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804868c:	e8 2f fd ff ff       	call   80483c0 <_init>
 8048691:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048697:	29 c6                	sub    %eax,%esi
 8048699:	c1 fe 02             	sar    $0x2,%esi
 804869c:	85 f6                	test   %esi,%esi
 804869e:	74 25                	je     80486c5 <__libc_csu_init+0x55>
 80486a0:	31 ff                	xor    %edi,%edi
 80486a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486a8:	83 ec 04             	sub    $0x4,%esp
 80486ab:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486af:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486b3:	55                   	push   %ebp
 80486b4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486bb:	83 c7 01             	add    $0x1,%edi
 80486be:	83 c4 10             	add    $0x10,%esp
 80486c1:	39 f7                	cmp    %esi,%edi
 80486c3:	75 e3                	jne    80486a8 <__libc_csu_init+0x38>
 80486c5:	83 c4 0c             	add    $0xc,%esp
 80486c8:	5b                   	pop    %ebx
 80486c9:	5e                   	pop    %esi
 80486ca:	5f                   	pop    %edi
 80486cb:	5d                   	pop    %ebp
 80486cc:	c3                   	ret
 80486cd:	8d 76 00             	lea    0x0(%esi),%esi

080486d0 <__libc_csu_fini>:
 80486d0:	f3 c3                	repz ret

Disassembly of section .fini:

080486d4 <_fini>:
 80486d4:	53                   	push   %ebx
 80486d5:	83 ec 08             	sub    $0x8,%esp
 80486d8:	e8 d3 fd ff ff       	call   80484b0 <__x86.get_pc_thunk.bx>
 80486dd:	81 c3 23 19 00 00    	add    $0x1923,%ebx
 80486e3:	83 c4 08             	add    $0x8,%esp
 80486e6:	5b                   	pop    %ebx
 80486e7:	c3                   	ret

Disassembly of section .rodata:

080486e8 <_fp_hw>:
 80486e8:	03 00                	add    (%eax),%eax
	...

080486ec <_IO_stdin_used>:
 80486ec:	01 00                	add    %eax,(%eax)
 80486ee:	02 00                	add    (%eax),%al
 80486f0:	73 70                	jae    8048762 <__GNU_EH_FRAME_HDR+0x12>
 80486f2:	6c                   	insb   (%dx),%es:(%edi)
 80486f3:	69 74 20 62 79 20 52 	imul   $0x4f522079,0x62(%eax,%eiz,1),%esi
 80486fa:	4f
 80486fb:	50                   	push   %eax
 80486fc:	20 45 6d             	and    %al,0x6d(%ebp)
 80486ff:	70 6f                	jo     8048770 <__GNU_EH_FRAME_HDR+0x20>
 8048701:	72 69                	jb     804876c <__GNU_EH_FRAME_HDR+0x1c>
 8048703:	75 6d                	jne    8048772 <__GNU_EH_FRAME_HDR+0x22>
 8048705:	00 33                	add    %dh,(%ebx)
 8048707:	32 62 69             	xor    0x69(%edx),%ah
 804870a:	74 73                	je     804877f <__GNU_EH_FRAME_HDR+0x2f>
 804870c:	0a 00                	or     (%eax),%al
 804870e:	0a 45 78             	or     0x78(%ebp),%al
 8048711:	69 74 69 6e 67 00 00 	imul   $0x43000067,0x6e(%ecx,%ebp,2),%esi
 8048718:	43
 8048719:	6f                   	outsl  %ds:(%esi),(%dx)
 804871a:	6e                   	outsb  %ds:(%esi),(%dx)
 804871b:	74 72                	je     804878f <__GNU_EH_FRAME_HDR+0x3f>
 804871d:	69 76 69 6e 67 20 61 	imul   $0x6120676e,0x69(%esi),%esi
 8048724:	20 72 65             	and    %dh,0x65(%edx)
 8048727:	61                   	popa
 8048728:	73 6f                	jae    8048799 <__GNU_EH_FRAME_HDR+0x49>
 804872a:	6e                   	outsb  %ds:(%esi),(%dx)
 804872b:	20 74 6f 20          	and    %dh,0x20(%edi,%ebp,2)
 804872f:	61                   	popa
 8048730:	73 6b                	jae    804879d <__GNU_EH_FRAME_HDR+0x4d>
 8048732:	20 75 73             	and    %dh,0x73(%ebp)
 8048735:	65 72 20             	gs jb  8048758 <__GNU_EH_FRAME_HDR+0x8>
 8048738:	66 6f                	outsw  %ds:(%esi),(%dx)
 804873a:	72 20                	jb     804875c <__GNU_EH_FRAME_HDR+0xc>
 804873c:	64 61                	fs popa
 804873e:	74 61                	je     80487a1 <__GNU_EH_FRAME_HDR+0x51>
 8048740:	2e 2e 2e 00 3e       	cs cs add %bh,%cs:(%esi)
 8048745:	20 00                	and    %al,(%eax)
 8048747:	2f                   	das
 8048748:	62 69 6e             	bound  %ebp,0x6e(%ecx)
 804874b:	2f                   	das
 804874c:	6c                   	insb   (%dx),%es:(%edi)
 804874d:	73 00                	jae    804874f <_IO_stdin_used+0x63>

Disassembly of section .eh_frame_hdr:

08048750 <__GNU_EH_FRAME_HDR>:
 8048750:	01 1b                	add    %ebx,(%ebx)
 8048752:	03 3b                	add    (%ebx),%edi
 8048754:	38 00                	cmp    %al,(%eax)
 8048756:	00 00                	add    %al,(%eax)
 8048758:	06                   	push   %es
 8048759:	00 00                	add    %al,(%eax)
 804875b:	00 a0 fc ff ff 54    	add    %ah,0x54fffffc(%eax)
 8048761:	00 00                	add    %al,(%eax)
 8048763:	00 2b                	add    %ch,(%ebx)
 8048765:	fe                   	(bad)
 8048766:	ff                   	(bad)
 8048767:	ff                   	(bad)
 8048768:	78 00                	js     804876a <__GNU_EH_FRAME_HDR+0x1a>
 804876a:	00 00                	add    %al,(%eax)
 804876c:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804876d:	fe                   	(bad)
 804876e:	ff                   	(bad)
 804876f:	ff a4 00 00 00 f9 fe 	jmp    *-0x1070000(%eax,%eax,1)
 8048776:	ff                   	(bad)
 8048777:	ff c4                	inc    %esp
 8048779:	00 00                	add    %al,(%eax)
 804877b:	00 20                	add    %ah,(%eax)
 804877d:	ff                   	(bad)
 804877e:	ff                   	(bad)
 804877f:	ff e4                	jmp    *%esp
 8048781:	00 00                	add    %al,(%eax)
 8048783:	00 80 ff ff ff 30    	add    %al,0x30ffffff(%eax)
 8048789:	01 00                	add    %eax,(%eax)
	...

Disassembly of section .eh_frame:

0804878c <__FRAME_END__-0x108>:
 804878c:	14 00                	adc    $0x0,%al
 804878e:	00 00                	add    %al,(%eax)
 8048790:	00 00                	add    %al,(%eax)
 8048792:	00 00                	add    %al,(%eax)
 8048794:	01 7a 52             	add    %edi,0x52(%edx)
 8048797:	00 01                	add    %al,(%ecx)
 8048799:	7c 08                	jl     80487a3 <__GNU_EH_FRAME_HDR+0x53>
 804879b:	01 1b                	add    %ebx,(%ebx)
 804879d:	0c 04                	or     $0x4,%al
 804879f:	04 88                	add    $0x88,%al
 80487a1:	01 00                	add    %eax,(%eax)
 80487a3:	00 20                	add    %ah,(%eax)
 80487a5:	00 00                	add    %al,(%eax)
 80487a7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80487aa:	00 00                	add    %al,(%eax)
 80487ac:	44                   	inc    %esp
 80487ad:	fc                   	cld
 80487ae:	ff                   	(bad)
 80487af:	ff 80 00 00 00 00    	incl   0x0(%eax)
 80487b5:	0e                   	push   %cs
 80487b6:	08 46 0e             	or     %al,0xe(%esi)
 80487b9:	0c 4a                	or     $0x4a,%al
 80487bb:	0f 0b                	ud2
 80487bd:	74 04                	je     80487c3 <__GNU_EH_FRAME_HDR+0x73>
 80487bf:	78 00                	js     80487c1 <__GNU_EH_FRAME_HDR+0x71>
 80487c1:	3f                   	aas
 80487c2:	1a 3b                	sbb    (%ebx),%bh
 80487c4:	2a 32                	sub    (%edx),%dh
 80487c6:	24 22                	and    $0x22,%al
 80487c8:	28 00                	sub    %al,(%eax)
 80487ca:	00 00                	add    %al,(%eax)
 80487cc:	40                   	inc    %eax
 80487cd:	00 00                	add    %al,(%eax)
 80487cf:	00 ab fd ff ff 7b    	add    %ch,0x7bfffffd(%ebx)
 80487d5:	00 00                	add    %al,(%eax)
 80487d7:	00 00                	add    %al,(%eax)
 80487d9:	44                   	inc    %esp
 80487da:	0c 01                	or     $0x1,%al
 80487dc:	00 47 10             	add    %al,0x10(%edi)
 80487df:	05 02 75 00 43       	add    $0x43007502,%eax
 80487e4:	0f 03 75 7c          	lsl    0x7c(%ebp),%esi
 80487e8:	06                   	push   %es
 80487e9:	02 68 0c             	add    0xc(%eax),%ch
 80487ec:	01 00                	add    %eax,(%eax)
 80487ee:	41                   	inc    %ecx
 80487ef:	c5 43 0c             	lds    0xc(%ebx),%eax
 80487f2:	04 04                	add    $0x4,%al
 80487f4:	1c 00                	sbb    $0x0,%al
 80487f6:	00 00                	add    %al,(%eax)
 80487f8:	6c                   	insb   (%dx),%es:(%edi)
 80487f9:	00 00                	add    %al,(%eax)
 80487fb:	00 fa                	add    %bh,%dl
 80487fd:	fd                   	std
 80487fe:	ff                   	(bad)
 80487ff:	ff 53 00             	call   *0x0(%ebx)
 8048802:	00 00                	add    %al,(%eax)
 8048804:	00 41 0e             	add    %al,0xe(%ecx)
 8048807:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 804880d:	02 4f c5             	add    -0x3b(%edi),%cl
 8048810:	0c 04                	or     $0x4,%al
 8048812:	04 00                	add    $0x0,%al
 8048814:	1c 00                	sbb    $0x0,%al
 8048816:	00 00                	add    %al,(%eax)
 8048818:	8c 00                	mov    %es,(%eax)
 804881a:	00 00                	add    %al,(%eax)
 804881c:	2d fe ff ff 19       	sub    $0x19fffffe,%eax
 8048821:	00 00                	add    %al,(%eax)
 8048823:	00 00                	add    %al,(%eax)
 8048825:	41                   	inc    %ecx
 8048826:	0e                   	push   %cs
 8048827:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 804882d:	55                   	push   %ebp
 804882e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8048831:	04 00                	add    $0x0,%al
 8048833:	00 48 00             	add    %cl,0x0(%eax)
 8048836:	00 00                	add    %al,(%eax)
 8048838:	ac                   	lods   %ds:(%esi),%al
 8048839:	00 00                	add    %al,(%eax)
 804883b:	00 34 fe             	add    %dh,(%esi,%edi,8)
 804883e:	ff                   	(bad)
 804883f:	ff 5d 00             	lcall  *0x0(%ebp)
 8048842:	00 00                	add    %al,(%eax)
 8048844:	00 41 0e             	add    %al,0xe(%ecx)
 8048847:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 804884d:	87 03                	xchg   %eax,(%ebx)
 804884f:	41                   	inc    %ecx
 8048850:	0e                   	push   %cs
 8048851:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048857:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 804885e:	24 44                	and    $0x44,%al
 8048860:	0e                   	push   %cs
 8048861:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8048865:	41                   	inc    %ecx
 8048866:	0e                   	push   %cs
 8048867:	30 4d 0e             	xor    %cl,0xe(%ebp)
 804886a:	20 47 0e             	and    %al,0xe(%edi)
 804886d:	14 41                	adc    $0x41,%al
 804886f:	c3                   	ret
 8048870:	0e                   	push   %cs
 8048871:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048874:	0e                   	push   %cs
 8048875:	0c 41                	or     $0x41,%al
 8048877:	c7                   	(bad)
 8048878:	0e                   	push   %cs
 8048879:	08 41 c5             	or     %al,-0x3b(%ecx)
 804887c:	0e                   	push   %cs
 804887d:	04 00                	add    $0x0,%al
 804887f:	00 10                	add    %dl,(%eax)
 8048881:	00 00                	add    %al,(%eax)
 8048883:	00 f8                	add    %bh,%al
 8048885:	00 00                	add    %al,(%eax)
 8048887:	00 48 fe             	add    %cl,-0x2(%eax)
 804888a:	ff                   	(bad)
 804888b:	ff 02                	incl   (%edx)
 804888d:	00 00                	add    %al,(%eax)
 804888f:	00 00                	add    %al,(%eax)
 8048891:	00 00                	add    %al,(%eax)
	...

08048894 <__FRAME_END__>:
 8048894:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	50                   	push   %eax
 8049f09:	85 04 08             	test   %eax,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	30                   	.byte 0x30
 8049f0d:	85 04 08             	test   %eax,(%eax,%ecx,1)

Disassembly of section .jcr:

08049f10 <__JCR_END__>:
 8049f10:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

08049f14 <_DYNAMIC>:
 8049f14:	01 00                	add    %eax,(%eax)
 8049f16:	00 00                	add    %al,(%eax)
 8049f18:	01 00                	add    %eax,(%eax)
 8049f1a:	00 00                	add    %al,(%eax)
 8049f1c:	0c 00                	or     $0x0,%al
 8049f1e:	00 00                	add    %al,(%eax)
 8049f20:	c0 83 04 08 0d 00 00 	rolb   $0x0,0xd0804(%ebx)
 8049f27:	00 d4                	add    %dl,%ah
 8049f29:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8049f2c:	19 00                	sbb    %eax,(%eax)
 8049f2e:	00 00                	add    %al,(%eax)
 8049f30:	08 9f 04 08 1b 00    	or     %bl,0x1b0804(%edi)
 8049f36:	00 00                	add    %al,(%eax)
 8049f38:	04 00                	add    $0x0,%al
 8049f3a:	00 00                	add    %al,(%eax)
 8049f3c:	1a 00                	sbb    (%eax),%al
 8049f3e:	00 00                	add    %al,(%eax)
 8049f40:	0c 9f                	or     $0x9f,%al
 8049f42:	04 08                	add    $0x8,%al
 8049f44:	1c 00                	sbb    $0x0,%al
 8049f46:	00 00                	add    %al,(%eax)
 8049f48:	04 00                	add    $0x0,%al
 8049f4a:	00 00                	add    %al,(%eax)
 8049f4c:	f5                   	cmc
 8049f4d:	fe                   	(bad)
 8049f4e:	ff 6f ac             	ljmp   *-0x54(%edi)
 8049f51:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 8049f58:	ac                   	lods   %ds:(%esi),%al
 8049f59:	82 04 08 06          	addb   $0x6,(%eax,%ecx,1)
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 dc                	add    %bl,%ah
 8049f61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f68:	81 00 00 00 0b 00    	addl   $0xb0000,(%eax)
 8049f6e:	00 00                	add    %al,(%eax)
 8049f70:	10 00                	adc    %al,(%eax)
 8049f72:	00 00                	add    %al,(%eax)
 8049f74:	15 00 00 00 00       	adc    $0x0,%eax
 8049f79:	00 00                	add    %al,(%eax)
 8049f7b:	00 03                	add    %al,(%ebx)
 8049f7d:	00 00                	add    %al,(%eax)
 8049f7f:	00 00                	add    %al,(%eax)
 8049f81:	a0 04 08 02 00       	mov    0x20804,%al
 8049f86:	00 00                	add    %al,(%eax)
 8049f88:	38 00                	cmp    %al,(%eax)
 8049f8a:	00 00                	add    %al,(%eax)
 8049f8c:	14 00                	adc    $0x0,%al
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 88 83 04 08 11    	add    %cl,0x11080483(%eax)
 8049f9d:	00 00                	add    %al,(%eax)
 8049f9f:	00 68 83             	add    %ch,-0x7d(%eax)
 8049fa2:	04 08                	add    $0x8,%al
 8049fa4:	12 00                	adc    (%eax),%al
 8049fa6:	00 00                	add    %al,(%eax)
 8049fa8:	20 00                	and    %al,(%eax)
 8049faa:	00 00                	add    %al,(%eax)
 8049fac:	13 00                	adc    (%eax),%eax
 8049fae:	00 00                	add    %al,(%eax)
 8049fb0:	08 00                	or     %al,(%eax)
 8049fb2:	00 00                	add    %al,(%eax)
 8049fb4:	fe                   	(bad)
 8049fb5:	ff                   	(bad)
 8049fb6:	ff 6f 48             	ljmp   *0x48(%edi)
 8049fb9:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fbd:	ff                   	(bad)
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)
 8049fc6:	ff 6f 2e             	ljmp   *0x2e(%edi)
 8049fc9:	83 04 08 00          	addl   $0x0,(%eax,%ecx,1)
	...

Disassembly of section .got:

08049ffc <.got>:
 8049ffc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

0804a000 <_GLOBAL_OFFSET_TABLE_>:
 804a000:	14 9f                	adc    $0x9f,%al
 804a002:	04 08                	add    $0x8,%al
	...
 804a00c:	06                   	push   %es
 804a00d:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a010:	16                   	push   %ss
 804a011:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a014:	26 84 04 08          	test   %al,%es:(%eax,%ecx,1)
 804a018:	36 84 04 08          	test   %al,%ss:(%eax,%ecx,1)
 804a01c:	46                   	inc    %esi
 804a01d:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a020:	56                   	push   %esi
 804a021:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a024:	66 84 04 08          	data16 test %al,(%eax,%ecx,1)

Disassembly of section .data:

0804a028 <__data_start>:
 804a028:	00 00                	add    %al,(%eax)
	...

0804a02c <__dso_handle>:
 804a02c:	00 00                	add    %al,(%eax)
	...

0804a030 <usefulString>:
 804a030:	2f                   	das
 804a031:	62 69 6e             	bound  %ebp,0x6e(%ecx)
 804a034:	2f                   	das
 804a035:	63 61 74             	arpl   %sp,0x74(%ecx)
 804a038:	20 66 6c             	and    %ah,0x6c(%esi)
 804a03b:	61                   	popa
 804a03c:	67 2e 74 78          	addr16 je,pn 804a0b8 <_end+0x2c>
 804a040:	74 00                	je     804a042 <usefulString+0x12>
	...

Disassembly of section .bss:

0804a060 <stderr@@GLIBC_2.0>:
	...

0804a080 <stdin@@GLIBC_2.0>:
 804a080:	00 00                	add    %al,(%eax)
	...

0804a084 <stdout@@GLIBC_2.0>:
 804a084:	00 00                	add    %al,(%eax)
	...

0804a088 <completed.7200>:
 804a088:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x8048348>
   a:	74 75                	je     81 <_init-0x804833f>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x8048331>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	34 29                	xor    $0x29,%al
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  2a:	20 32                	and    %dh,(%edx)
  2c:	30 31                	xor    %dh,(%ecx)
  2e:	36 30 36             	xor    %dh,%ss:(%esi)
  31:	30 39                	xor    %bh,(%ecx)
	...
