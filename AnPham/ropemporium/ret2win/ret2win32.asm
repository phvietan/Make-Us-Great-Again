
ret2win32:     file format elf32-i386


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
 8048197:	00 70 a2             	add    %dh,-0x5e(%eax)
 804819a:	5e                   	pop    %esi
 804819b:	b0 b8                	mov    $0xb8,%al
 804819d:	18 fd                	sbb    %bh,%ch
 804819f:	c0 ba fa be 17 e0 7b 	sarb   $0x7b,-0x1fe84106(%edx)
 80481a6:	cc                   	int3   
 80481a7:	ac                   	lods   %ds:(%esi),%al
 80481a8:	b8                   	.byte 0xb8
 80481a9:	51                   	push   %ecx
 80481aa:	3a                   	.byte 0x3a
 80481ab:	53                   	push   %ebx

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
 8048270:	64 a0 04 08 04 00    	mov    %fs:0x40804,%al
 8048276:	00 00                	add    %al,(%eax)
 8048278:	11 00                	adc    %eax,(%eax)
 804827a:	1a 00                	sbb    (%eax),%al
 804827c:	40                   	inc    %eax
 804827d:	00 00                	add    %al,(%eax)
 804827f:	00 40 a0             	add    %al,-0x60(%eax)
 8048282:	04 08                	add    $0x8,%al
 8048284:	04 00                	add    $0x0,%al
 8048286:	00 00                	add    %al,(%eax)
 8048288:	11 00                	adc    %eax,(%eax)
 804828a:	1a 00                	sbb    (%eax),%al
 804828c:	0b 00                	or     (%eax),%eax
 804828e:	00 00                	add    %al,(%eax)
 8048290:	0c 87                	or     $0x87,%al
 8048292:	04 08                	add    $0x8,%al
 8048294:	04 00                	add    $0x0,%al
 8048296:	00 00                	add    %al,(%eax)
 8048298:	11 00                	adc    %eax,(%eax)
 804829a:	10 00                	adc    %al,(%eax)
 804829c:	1f                   	pop    %ds
 804829d:	00 00                	add    %al,(%eax)
 804829f:	00 60 a0             	add    %ah,-0x60(%eax)
 80482a2:	04 08                	add    $0x8,%al
 80482a4:	04 00                	add    $0x0,%al
 80482a6:	00 00                	add    %al,(%eax)
 80482a8:	11 00                	adc    %eax,(%eax)
 80482aa:	1a 00                	sbb    (%eax),%al

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
 804836d:	05 00 00 40 a0       	add    $0xa0400000,%eax
 8048372:	04 08                	add    $0x8,%al
 8048374:	05 0a 00 00 60       	add    $0x6000000a,%eax
 8048379:	a0 04 08 05 0c       	mov    0xc050804,%al
 804837e:	00 00                	add    %al,(%eax)
 8048380:	64 a0 04 08 05 09    	mov    %fs:0x9050804,%al
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
 804848b:	68 f0 86 04 08       	push   $0x80486f0
 8048490:	68 90 86 04 08       	push   $0x8048690
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
 80484c0:	b8 33 a0 04 08       	mov    $0x804a033,%eax
 80484c5:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 80484ca:	83 f8 06             	cmp    $0x6,%eax
 80484cd:	76 1a                	jbe    80484e9 <deregister_tm_clones+0x29>
 80484cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80484d4:	85 c0                	test   %eax,%eax
 80484d6:	74 11                	je     80484e9 <deregister_tm_clones+0x29>
 80484d8:	55                   	push   %ebp
 80484d9:	89 e5                	mov    %esp,%ebp
 80484db:	83 ec 14             	sub    $0x14,%esp
 80484de:	68 30 a0 04 08       	push   $0x804a030
 80484e3:	ff d0                	call   *%eax
 80484e5:	83 c4 10             	add    $0x10,%esp
 80484e8:	c9                   	leave  
 80484e9:	f3 c3                	repz ret 
 80484eb:	90                   	nop
 80484ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080484f0 <register_tm_clones>:
 80484f0:	b8 30 a0 04 08       	mov    $0x804a030,%eax
 80484f5:	2d 30 a0 04 08       	sub    $0x804a030,%eax
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
 8048518:	68 30 a0 04 08       	push   $0x804a030
 804851d:	ff d2                	call   *%edx
 804851f:	83 c4 10             	add    $0x10,%esp
 8048522:	c9                   	leave  
 8048523:	f3 c3                	repz ret 
 8048525:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048530 <__do_global_dtors_aux>:
 8048530:	80 3d 68 a0 04 08 00 	cmpb   $0x0,0x804a068
 8048537:	75 13                	jne    804854c <__do_global_dtors_aux+0x1c>
 8048539:	55                   	push   %ebp
 804853a:	89 e5                	mov    %esp,%ebp
 804853c:	83 ec 08             	sub    $0x8,%esp
 804853f:	e8 7c ff ff ff       	call   80484c0 <deregister_tm_clones>
 8048544:	c6 05 68 a0 04 08 01 	movb   $0x1,0x804a068
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
 804858c:	a1 64 a0 04 08       	mov    0x804a064,%eax
 8048591:	6a 00                	push   $0x0
 8048593:	6a 02                	push   $0x2
 8048595:	6a 00                	push   $0x0
 8048597:	50                   	push   %eax
 8048598:	e8 b3 fe ff ff       	call   8048450 <setvbuf@plt>
 804859d:	83 c4 10             	add    $0x10,%esp
 80485a0:	a1 40 a0 04 08       	mov    0x804a040,%eax
 80485a5:	6a 00                	push   $0x0
 80485a7:	6a 02                	push   $0x2
 80485a9:	6a 00                	push   $0x0
 80485ab:	50                   	push   %eax
 80485ac:	e8 9f fe ff ff       	call   8048450 <setvbuf@plt>
 80485b1:	83 c4 10             	add    $0x10,%esp
 80485b4:	83 ec 0c             	sub    $0xc,%esp
 80485b7:	68 10 87 04 08       	push   $0x8048710
 80485bc:	e8 5f fe ff ff       	call   8048420 <puts@plt>
 80485c1:	83 c4 10             	add    $0x10,%esp
 80485c4:	83 ec 0c             	sub    $0xc,%esp
 80485c7:	68 28 87 04 08       	push   $0x8048728
 80485cc:	e8 4f fe ff ff       	call   8048420 <puts@plt>
 80485d1:	83 c4 10             	add    $0x10,%esp
 80485d4:	e8 1d 00 00 00       	call   80485f6 <pwnme>
 80485d9:	83 ec 0c             	sub    $0xc,%esp
 80485dc:	68 30 87 04 08       	push   $0x8048730
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
 8048612:	68 3c 87 04 08       	push   $0x804873c
 8048617:	e8 04 fe ff ff       	call   8048420 <puts@plt>
 804861c:	83 c4 10             	add    $0x10,%esp
 804861f:	83 ec 0c             	sub    $0xc,%esp
 8048622:	68 bc 87 04 08       	push   $0x80487bc
 8048627:	e8 f4 fd ff ff       	call   8048420 <puts@plt>
 804862c:	83 c4 10             	add    $0x10,%esp
 804862f:	83 ec 0c             	sub    $0xc,%esp
 8048632:	68 21 88 04 08       	push   $0x8048821
 8048637:	e8 c4 fd ff ff       	call   8048400 <printf@plt>
 804863c:	83 c4 10             	add    $0x10,%esp
 804863f:	a1 60 a0 04 08       	mov    0x804a060,%eax
 8048644:	83 ec 04             	sub    $0x4,%esp
 8048647:	50                   	push   %eax
 8048648:	6a 32                	push   $0x32
 804864a:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804864d:	50                   	push   %eax
 804864e:	e8 bd fd ff ff       	call   8048410 <fgets@plt>
 8048653:	83 c4 10             	add    $0x10,%esp
 8048656:	90                   	nop
 8048657:	c9                   	leave  
 8048658:	c3                   	ret    

08048659 <ret2win>:
 8048659:	55                   	push   %ebp
 804865a:	89 e5                	mov    %esp,%ebp
 804865c:	83 ec 08             	sub    $0x8,%esp
 804865f:	83 ec 0c             	sub    $0xc,%esp
 8048662:	68 24 88 04 08       	push   $0x8048824
 8048667:	e8 94 fd ff ff       	call   8048400 <printf@plt>
 804866c:	83 c4 10             	add    $0x10,%esp
 804866f:	83 ec 0c             	sub    $0xc,%esp
 8048672:	68 41 88 04 08       	push   $0x8048841
 8048677:	e8 b4 fd ff ff       	call   8048430 <system@plt>
 804867c:	83 c4 10             	add    $0x10,%esp
 804867f:	90                   	nop
 8048680:	c9                   	leave  
 8048681:	c3                   	ret    
 8048682:	66 90                	xchg   %ax,%ax
 8048684:	66 90                	xchg   %ax,%ax
 8048686:	66 90                	xchg   %ax,%ax
 8048688:	66 90                	xchg   %ax,%ax
 804868a:	66 90                	xchg   %ax,%ax
 804868c:	66 90                	xchg   %ax,%ax
 804868e:	66 90                	xchg   %ax,%ax

08048690 <__libc_csu_init>:
 8048690:	55                   	push   %ebp
 8048691:	57                   	push   %edi
 8048692:	56                   	push   %esi
 8048693:	53                   	push   %ebx
 8048694:	e8 17 fe ff ff       	call   80484b0 <__x86.get_pc_thunk.bx>
 8048699:	81 c3 67 19 00 00    	add    $0x1967,%ebx
 804869f:	83 ec 0c             	sub    $0xc,%esp
 80486a2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80486a6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80486ac:	e8 0f fd ff ff       	call   80483c0 <_init>
 80486b1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80486b7:	29 c6                	sub    %eax,%esi
 80486b9:	c1 fe 02             	sar    $0x2,%esi
 80486bc:	85 f6                	test   %esi,%esi
 80486be:	74 25                	je     80486e5 <__libc_csu_init+0x55>
 80486c0:	31 ff                	xor    %edi,%edi
 80486c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486c8:	83 ec 04             	sub    $0x4,%esp
 80486cb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486cf:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486d3:	55                   	push   %ebp
 80486d4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486db:	83 c7 01             	add    $0x1,%edi
 80486de:	83 c4 10             	add    $0x10,%esp
 80486e1:	39 f7                	cmp    %esi,%edi
 80486e3:	75 e3                	jne    80486c8 <__libc_csu_init+0x38>
 80486e5:	83 c4 0c             	add    $0xc,%esp
 80486e8:	5b                   	pop    %ebx
 80486e9:	5e                   	pop    %esi
 80486ea:	5f                   	pop    %edi
 80486eb:	5d                   	pop    %ebp
 80486ec:	c3                   	ret    
 80486ed:	8d 76 00             	lea    0x0(%esi),%esi

080486f0 <__libc_csu_fini>:
 80486f0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486f4 <_fini>:
 80486f4:	53                   	push   %ebx
 80486f5:	83 ec 08             	sub    $0x8,%esp
 80486f8:	e8 b3 fd ff ff       	call   80484b0 <__x86.get_pc_thunk.bx>
 80486fd:	81 c3 03 19 00 00    	add    $0x1903,%ebx
 8048703:	83 c4 08             	add    $0x8,%esp
 8048706:	5b                   	pop    %ebx
 8048707:	c3                   	ret    

Disassembly of section .rodata:

08048708 <_fp_hw>:
 8048708:	03 00                	add    (%eax),%eax
	...

0804870c <_IO_stdin_used>:
 804870c:	01 00                	add    %eax,(%eax)
 804870e:	02 00                	add    (%eax),%al
 8048710:	72 65                	jb     8048777 <_IO_stdin_used+0x6b>
 8048712:	74 32                	je     8048746 <_IO_stdin_used+0x3a>
 8048714:	77 69                	ja     804877f <_IO_stdin_used+0x73>
 8048716:	6e                   	outsb  %ds:(%esi),(%dx)
 8048717:	20 62 79             	and    %ah,0x79(%edx)
 804871a:	20 52 4f             	and    %dl,0x4f(%edx)
 804871d:	50                   	push   %eax
 804871e:	20 45 6d             	and    %al,0x6d(%ebp)
 8048721:	70 6f                	jo     8048792 <_IO_stdin_used+0x86>
 8048723:	72 69                	jb     804878e <_IO_stdin_used+0x82>
 8048725:	75 6d                	jne    8048794 <_IO_stdin_used+0x88>
 8048727:	00 33                	add    %dh,(%ebx)
 8048729:	32 62 69             	xor    0x69(%edx),%ah
 804872c:	74 73                	je     80487a1 <_IO_stdin_used+0x95>
 804872e:	0a 00                	or     (%eax),%al
 8048730:	0a 45 78             	or     0x78(%ebp),%al
 8048733:	69 74 69 6e 67 00 00 	imul   $0x67,0x6e(%ecx,%ebp,2),%esi
 804873a:	00 
 804873b:	00 46 6f             	add    %al,0x6f(%esi)
 804873e:	72 20                	jb     8048760 <_IO_stdin_used+0x54>
 8048740:	6d                   	insl   (%dx),%es:(%edi)
 8048741:	79 20                	jns    8048763 <_IO_stdin_used+0x57>
 8048743:	66 69 72 73 74 20    	imul   $0x2074,0x73(%edx),%si
 8048749:	74 72                	je     80487bd <_IO_stdin_used+0xb1>
 804874b:	69 63 6b 2c 20 49 20 	imul   $0x2049202c,0x6b(%ebx),%esp
 8048752:	77 69                	ja     80487bd <_IO_stdin_used+0xb1>
 8048754:	6c                   	insb   (%dx),%es:(%edi)
 8048755:	6c                   	insb   (%dx),%es:(%edi)
 8048756:	20 61 74             	and    %ah,0x74(%ecx)
 8048759:	74 65                	je     80487c0 <_IO_stdin_used+0xb4>
 804875b:	6d                   	insl   (%dx),%es:(%edi)
 804875c:	70 74                	jo     80487d2 <_IO_stdin_used+0xc6>
 804875e:	20 74 6f 20          	and    %dh,0x20(%edi,%ebp,2)
 8048762:	66 69 74 20 35 30 20 	imul   $0x2030,0x35(%eax,%eiz,1),%si
 8048769:	62 79 74             	bound  %edi,0x74(%ecx)
 804876c:	65 73 20             	gs jae 804878f <_IO_stdin_used+0x83>
 804876f:	6f                   	outsl  %ds:(%esi),(%dx)
 8048770:	66 20 75 73          	data16 and %dh,0x73(%ebp)
 8048774:	65 72 20             	gs jb  8048797 <_IO_stdin_used+0x8b>
 8048777:	69 6e 70 75 74 20 69 	imul   $0x69207475,0x70(%esi),%ebp
 804877e:	6e                   	outsb  %ds:(%esi),(%dx)
 804877f:	74 6f                	je     80487f0 <_IO_stdin_used+0xe4>
 8048781:	20 33                	and    %dh,(%ebx)
 8048783:	32 20                	xor    (%eax),%ah
 8048785:	62 79 74             	bound  %edi,0x74(%ecx)
 8048788:	65 73 20             	gs jae 80487ab <_IO_stdin_used+0x9f>
 804878b:	6f                   	outsl  %ds:(%esi),(%dx)
 804878c:	66 20 73 74          	data16 and %dh,0x74(%ebx)
 8048790:	61                   	popa   
 8048791:	63 6b 20             	arpl   %bp,0x20(%ebx)
 8048794:	62 75 66             	bound  %esi,0x66(%ebp)
 8048797:	66 65 72 3b          	data16 gs jb 80487d6 <_IO_stdin_used+0xca>
 804879b:	0a 57 68             	or     0x68(%edi),%dl
 804879e:	61                   	popa   
 804879f:	74 20                	je     80487c1 <_IO_stdin_used+0xb5>
 80487a1:	63 6f 75             	arpl   %bp,0x75(%edi)
 80487a4:	6c                   	insb   (%dx),%es:(%edi)
 80487a5:	64 20 70 6f          	and    %dh,%fs:0x6f(%eax)
 80487a9:	73 73                	jae    804881e <_IO_stdin_used+0x112>
 80487ab:	69 62 6c 79 20 67 6f 	imul   $0x6f672079,0x6c(%edx),%esp
 80487b2:	20 77 72             	and    %dh,0x72(%edi)
 80487b5:	6f                   	outsl  %ds:(%esi),(%dx)
 80487b6:	6e                   	outsb  %ds:(%esi),(%dx)
 80487b7:	67 3f                	addr16 aas 
 80487b9:	00 00                	add    %al,(%eax)
 80487bb:	00 59 6f             	add    %bl,0x6f(%ecx)
 80487be:	75 20                	jne    80487e0 <_IO_stdin_used+0xd4>
 80487c0:	74 68                	je     804882a <_IO_stdin_used+0x11e>
 80487c2:	65 72 65             	gs jb  804882a <_IO_stdin_used+0x11e>
 80487c5:	20 6d 61             	and    %ch,0x61(%ebp)
 80487c8:	64 61                	fs popa 
 80487ca:	6d                   	insl   (%dx),%es:(%edi)
 80487cb:	2c 20                	sub    $0x20,%al
 80487cd:	6d                   	insl   (%dx),%es:(%edi)
 80487ce:	61                   	popa   
 80487cf:	79 20                	jns    80487f1 <_IO_stdin_used+0xe5>
 80487d1:	49                   	dec    %ecx
 80487d2:	20 68 61             	and    %ch,0x61(%eax)
 80487d5:	76 65                	jbe    804883c <_IO_stdin_used+0x130>
 80487d7:	20 79 6f             	and    %bh,0x6f(%ecx)
 80487da:	75 72                	jne    804884e <_IO_stdin_used+0x142>
 80487dc:	20 69 6e             	and    %ch,0x6e(%ecx)
 80487df:	70 75                	jo     8048856 <__GNU_EH_FRAME_HDR+0x2>
 80487e1:	74 20                	je     8048803 <_IO_stdin_used+0xf7>
 80487e3:	70 6c                	jo     8048851 <_IO_stdin_used+0x145>
 80487e5:	65 61                	gs popa 
 80487e7:	73 65                	jae    804884e <_IO_stdin_used+0x142>
 80487e9:	3f                   	aas    
 80487ea:	20 41 6e             	and    %al,0x6e(%ecx)
 80487ed:	64 20 64 6f 6e       	and    %ah,%fs:0x6e(%edi,%ebp,2)
 80487f2:	27                   	daa    
 80487f3:	74 20                	je     8048815 <_IO_stdin_used+0x109>
 80487f5:	77 6f                	ja     8048866 <__GNU_EH_FRAME_HDR+0x12>
 80487f7:	72 72                	jb     804886b <__GNU_EH_FRAME_HDR+0x17>
 80487f9:	79 20                	jns    804881b <_IO_stdin_used+0x10f>
 80487fb:	61                   	popa   
 80487fc:	62 6f 75             	bound  %ebp,0x75(%edi)
 80487ff:	74 20                	je     8048821 <_IO_stdin_used+0x115>
 8048801:	6e                   	outsb  %ds:(%esi),(%dx)
 8048802:	75 6c                	jne    8048870 <__GNU_EH_FRAME_HDR+0x1c>
 8048804:	6c                   	insb   (%dx),%es:(%edi)
 8048805:	20 62 79             	and    %ah,0x79(%edx)
 8048808:	74 65                	je     804886f <__GNU_EH_FRAME_HDR+0x1b>
 804880a:	73 2c                	jae    8048838 <_IO_stdin_used+0x12c>
 804880c:	20 77 65             	and    %dh,0x65(%edi)
 804880f:	27                   	daa    
 8048810:	72 65                	jb     8048877 <__GNU_EH_FRAME_HDR+0x23>
 8048812:	20 75 73             	and    %dh,0x73(%ebp)
 8048815:	69 6e 67 20 66 67 65 	imul   $0x65676620,0x67(%esi),%ebp
 804881c:	74 73                	je     8048891 <__GNU_EH_FRAME_HDR+0x3d>
 804881e:	21 0a                	and    %ecx,(%edx)
 8048820:	00 3e                	add    %bh,(%esi)
 8048822:	20 00                	and    %al,(%eax)
 8048824:	54                   	push   %esp
 8048825:	68 61 6e 6b 20       	push   $0x206b6e61
 804882a:	79 6f                	jns    804889b <__GNU_EH_FRAME_HDR+0x47>
 804882c:	75 21                	jne    804884f <_IO_stdin_used+0x143>
 804882e:	20 48 65             	and    %cl,0x65(%eax)
 8048831:	72 65                	jb     8048898 <__GNU_EH_FRAME_HDR+0x44>
 8048833:	27                   	daa    
 8048834:	73 20                	jae    8048856 <__GNU_EH_FRAME_HDR+0x2>
 8048836:	79 6f                	jns    80488a7 <__GNU_EH_FRAME_HDR+0x53>
 8048838:	75 72                	jne    80488ac <__GNU_EH_FRAME_HDR+0x58>
 804883a:	20 66 6c             	and    %ah,0x6c(%esi)
 804883d:	61                   	popa   
 804883e:	67 3a 00             	cmp    (%bx,%si),%al
 8048841:	2f                   	das    
 8048842:	62 69 6e             	bound  %ebp,0x6e(%ecx)
 8048845:	2f                   	das    
 8048846:	63 61 74             	arpl   %sp,0x74(%ecx)
 8048849:	20 66 6c             	and    %ah,0x6c(%esi)
 804884c:	61                   	popa   
 804884d:	67 2e 74 78          	addr16 je,pn 80488c9 <__GNU_EH_FRAME_HDR+0x75>
 8048851:	74 00                	je     8048853 <_IO_stdin_used+0x147>

Disassembly of section .eh_frame_hdr:

08048854 <__GNU_EH_FRAME_HDR>:
 8048854:	01 1b                	add    %ebx,(%ebx)
 8048856:	03 3b                	add    (%ebx),%edi
 8048858:	38 00                	cmp    %al,(%eax)
 804885a:	00 00                	add    %al,(%eax)
 804885c:	06                   	push   %es
 804885d:	00 00                	add    %al,(%eax)
 804885f:	00 9c fb ff ff 54 00 	add    %bl,0x54ffff(%ebx,%edi,8)
 8048866:	00 00                	add    %al,(%eax)
 8048868:	27                   	daa    
 8048869:	fd                   	std    
 804886a:	ff                   	(bad)  
 804886b:	ff                   	(bad)  
 804886c:	78 00                	js     804886e <__GNU_EH_FRAME_HDR+0x1a>
 804886e:	00 00                	add    %al,(%eax)
 8048870:	a2 fd ff ff a4       	mov    %al,0xa4fffffd
 8048875:	00 00                	add    %al,(%eax)
 8048877:	00 05 fe ff ff c4    	add    %al,0xc4fffffe
 804887d:	00 00                	add    %al,(%eax)
 804887f:	00 3c fe             	add    %bh,(%esi,%edi,8)
 8048882:	ff                   	(bad)  
 8048883:	ff e4                	jmp    *%esp
 8048885:	00 00                	add    %al,(%eax)
 8048887:	00 9c fe ff ff 30 01 	add    %bl,0x130ffff(%esi,%edi,8)
	...

Disassembly of section .eh_frame:

08048890 <__FRAME_END__-0x108>:
 8048890:	14 00                	adc    $0x0,%al
 8048892:	00 00                	add    %al,(%eax)
 8048894:	00 00                	add    %al,(%eax)
 8048896:	00 00                	add    %al,(%eax)
 8048898:	01 7a 52             	add    %edi,0x52(%edx)
 804889b:	00 01                	add    %al,(%ecx)
 804889d:	7c 08                	jl     80488a7 <__GNU_EH_FRAME_HDR+0x53>
 804889f:	01 1b                	add    %ebx,(%ebx)
 80488a1:	0c 04                	or     $0x4,%al
 80488a3:	04 88                	add    $0x88,%al
 80488a5:	01 00                	add    %eax,(%eax)
 80488a7:	00 20                	add    %ah,(%eax)
 80488a9:	00 00                	add    %al,(%eax)
 80488ab:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80488ae:	00 00                	add    %al,(%eax)
 80488b0:	40                   	inc    %eax
 80488b1:	fb                   	sti    
 80488b2:	ff                   	(bad)  
 80488b3:	ff 80 00 00 00 00    	incl   0x0(%eax)
 80488b9:	0e                   	push   %cs
 80488ba:	08 46 0e             	or     %al,0xe(%esi)
 80488bd:	0c 4a                	or     $0x4a,%al
 80488bf:	0f 0b                	ud2    
 80488c1:	74 04                	je     80488c7 <__GNU_EH_FRAME_HDR+0x73>
 80488c3:	78 00                	js     80488c5 <__GNU_EH_FRAME_HDR+0x71>
 80488c5:	3f                   	aas    
 80488c6:	1a 3b                	sbb    (%ebx),%bh
 80488c8:	2a 32                	sub    (%edx),%dh
 80488ca:	24 22                	and    $0x22,%al
 80488cc:	28 00                	sub    %al,(%eax)
 80488ce:	00 00                	add    %al,(%eax)
 80488d0:	40                   	inc    %eax
 80488d1:	00 00                	add    %al,(%eax)
 80488d3:	00 a7 fc ff ff 7b    	add    %ah,0x7bfffffc(%edi)
 80488d9:	00 00                	add    %al,(%eax)
 80488db:	00 00                	add    %al,(%eax)
 80488dd:	44                   	inc    %esp
 80488de:	0c 01                	or     $0x1,%al
 80488e0:	00 47 10             	add    %al,0x10(%edi)
 80488e3:	05 02 75 00 43       	add    $0x43007502,%eax
 80488e8:	0f 03 75 7c          	lsl    0x7c(%ebp),%esi
 80488ec:	06                   	push   %es
 80488ed:	02 68 0c             	add    0xc(%eax),%ch
 80488f0:	01 00                	add    %eax,(%eax)
 80488f2:	41                   	inc    %ecx
 80488f3:	c5 43 0c             	lds    0xc(%ebx),%eax
 80488f6:	04 04                	add    $0x4,%al
 80488f8:	1c 00                	sbb    $0x0,%al
 80488fa:	00 00                	add    %al,(%eax)
 80488fc:	6c                   	insb   (%dx),%es:(%edi)
 80488fd:	00 00                	add    %al,(%eax)
 80488ff:	00 f6                	add    %dh,%dh
 8048901:	fc                   	cld    
 8048902:	ff                   	(bad)  
 8048903:	ff 63 00             	jmp    *0x0(%ebx)
 8048906:	00 00                	add    %al,(%eax)
 8048908:	00 41 0e             	add    %al,0xe(%ecx)
 804890b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048911:	02 5f c5             	add    -0x3b(%edi),%bl
 8048914:	0c 04                	or     $0x4,%al
 8048916:	04 00                	add    $0x0,%al
 8048918:	1c 00                	sbb    $0x0,%al
 804891a:	00 00                	add    %al,(%eax)
 804891c:	8c 00                	mov    %es,(%eax)
 804891e:	00 00                	add    %al,(%eax)
 8048920:	39 fd                	cmp    %edi,%ebp
 8048922:	ff                   	(bad)  
 8048923:	ff 29                	ljmp   *(%ecx)
 8048925:	00 00                	add    %al,(%eax)
 8048927:	00 00                	add    %al,(%eax)
 8048929:	41                   	inc    %ecx
 804892a:	0e                   	push   %cs
 804892b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048931:	65 c5 0c 04          	lds    %gs:(%esp,%eax,1),%ecx
 8048935:	04 00                	add    $0x0,%al
 8048937:	00 48 00             	add    %cl,0x0(%eax)
 804893a:	00 00                	add    %al,(%eax)
 804893c:	ac                   	lods   %ds:(%esi),%al
 804893d:	00 00                	add    %al,(%eax)
 804893f:	00 50 fd             	add    %dl,-0x3(%eax)
 8048942:	ff                   	(bad)  
 8048943:	ff 5d 00             	lcall  *0x0(%ebp)
 8048946:	00 00                	add    %al,(%eax)
 8048948:	00 41 0e             	add    %al,0xe(%ecx)
 804894b:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048951:	87 03                	xchg   %eax,(%ebx)
 8048953:	41                   	inc    %ecx
 8048954:	0e                   	push   %cs
 8048955:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 804895b:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 8048962:	24 44                	and    $0x44,%al
 8048964:	0e                   	push   %cs
 8048965:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8048969:	41                   	inc    %ecx
 804896a:	0e                   	push   %cs
 804896b:	30 4d 0e             	xor    %cl,0xe(%ebp)
 804896e:	20 47 0e             	and    %al,0xe(%edi)
 8048971:	14 41                	adc    $0x41,%al
 8048973:	c3                   	ret    
 8048974:	0e                   	push   %cs
 8048975:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048978:	0e                   	push   %cs
 8048979:	0c 41                	or     $0x41,%al
 804897b:	c7                   	(bad)  
 804897c:	0e                   	push   %cs
 804897d:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048980:	0e                   	push   %cs
 8048981:	04 00                	add    $0x0,%al
 8048983:	00 10                	add    %dl,(%eax)
 8048985:	00 00                	add    %al,(%eax)
 8048987:	00 f8                	add    %bh,%al
 8048989:	00 00                	add    %al,(%eax)
 804898b:	00 64 fd ff          	add    %ah,-0x1(%ebp,%edi,8)
 804898f:	ff 02                	incl   (%edx)
 8048991:	00 00                	add    %al,(%eax)
 8048993:	00 00                	add    %al,(%eax)
 8048995:	00 00                	add    %al,(%eax)
	...

08048998 <__FRAME_END__>:
 8048998:	00 00                	add    %al,(%eax)
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
 8049f27:	00 f4                	add    %dh,%ah
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

Disassembly of section .bss:

0804a040 <stderr@@GLIBC_2.0>:
	...

0804a060 <stdin@@GLIBC_2.0>:
 804a060:	00 00                	add    %al,(%eax)
	...

0804a064 <stdout@@GLIBC_2.0>:
 804a064:	00 00                	add    %al,(%eax)
	...

0804a068 <completed.7200>:
 804a068:	00 00                	add    %al,(%eax)
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
