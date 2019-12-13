
drop_the_beat_easy:     file format elf32-i386


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
 8048197:	00 f9                	add    %bh,%cl
 8048199:	39 bd ee eb da 44    	cmp    %edi,0x44daebee(%ebp)
 804819f:	fe                   	(bad)
 80481a0:	ab                   	stos   %eax,%es:(%edi)
 80481a1:	e0 94                	loopne 8048137 <_init-0x261>
 80481a3:	76 f2                	jbe    8048197 <_init-0x201>
 80481a5:	c6                   	(bad)
 80481a6:	bb d6 ed 32 c4       	mov    $0xc432edd6,%ebx
 80481ab:	2a                   	.byte 0x2a

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	08 00                	or     %al,(%eax)
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	01 00                	add    %eax,(%eax)
 80481b6:	00 00                	add    %al,(%eax)
 80481b8:	05 00 00 00 80       	add    $0x80000000,%eax
 80481bd:	2b 00                	sub    (%eax),%eax
 80481bf:	20 08                	and    %cl,(%eax)
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 09                	add    %cl,(%ecx)
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 00                	add    %al,(%eax)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 29                	add    %ch,(%ecx)
 80481cd:	1d 8c 1c ac 4b       	sbb    $0x4bac1c8c,%eax
 80481d2:	e3 c0                	jecxz  8048194 <_init-0x204>
 80481d4:	67 55                	addr16 push %ebp
 80481d6:	61                   	popa
 80481d7:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481d8 <.dynsym>:
	...
 80481e8:	39 00                	cmp    %eax,(%eax)
	...
 80481f2:	00 00                	add    %al,(%eax)
 80481f4:	12 00                	adc    (%eax),%al
 80481f6:	00 00                	add    %al,(%eax)
 80481f8:	2e 00 00             	add    %al,%cs:(%eax)
	...
 8048203:	00 12                	add    %dl,(%edx)
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 5f 00             	add    %bl,0x0(%edi)
	...
 8048212:	00 00                	add    %al,(%eax)
 8048214:	20 00                	and    %al,(%eax)
 8048216:	00 00                	add    %al,(%eax)
 8048218:	1a 00                	sbb    (%eax),%al
	...
 8048222:	00 00                	add    %al,(%eax)
 8048224:	12 00                	adc    (%eax),%al
 8048226:	00 00                	add    %al,(%eax)
 8048228:	4d                   	dec    %ebp
	...
 8048231:	00 00                	add    %al,(%eax)
 8048233:	00 12                	add    %dl,(%edx)
 8048235:	00 00                	add    %al,(%eax)
 8048237:	00 45 00             	add    %al,0x0(%ebp)
	...
 8048242:	00 00                	add    %al,(%eax)
 8048244:	12 00                	adc    (%eax),%al
 8048246:	00 00                	add    %al,(%eax)
 8048248:	1f                   	pop    %ds
	...
 8048251:	00 00                	add    %al,(%eax)
 8048253:	00 12                	add    %dl,(%edx)
 8048255:	00 00                	add    %al,(%eax)
 8048257:	00 3e                	add    %bh,(%esi)
 8048259:	00 00                	add    %al,(%eax)
 804825b:	00 44 a0 04          	add    %al,0x4(%eax,%eiz,4)
 804825f:	08 04 00             	or     %al,(%eax,%eax,1)
 8048262:	00 00                	add    %al,(%eax)
 8048264:	11 00                	adc    %eax,(%eax)
 8048266:	1a 00                	sbb    (%eax),%al
 8048268:	0b 00                	or     (%eax),%eax
 804826a:	00 00                	add    %al,(%eax)
 804826c:	fc                   	cld
 804826d:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8048270:	04 00                	add    $0x0,%al
 8048272:	00 00                	add    %al,(%eax)
 8048274:	11 00                	adc    %eax,(%eax)
 8048276:	10 00                	adc    %al,(%eax)
 8048278:	33 00                	xor    (%eax),%eax
 804827a:	00 00                	add    %al,(%eax)
 804827c:	40                   	inc    %eax
 804827d:	a0 04 08 04 00       	mov    0x40804,%al
 8048282:	00 00                	add    %al,(%eax)
 8048284:	11 00                	adc    %eax,(%eax)
 8048286:	1a 00                	sbb    (%eax),%al

Disassembly of section .dynstr:

08048288 <.dynstr>:
 8048288:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 804828c:	63 2e                	arpl   %bp,(%esi)
 804828e:	73 6f                	jae    80482ff <_init-0x99>
 8048290:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048295:	4f                   	dec    %edi
 8048296:	5f                   	pop    %edi
 8048297:	73 74                	jae    804830d <_init-0x8b>
 8048299:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 80482a0:	64
 80482a1:	00 65 78             	add    %ah,0x78(%ebp)
 80482a4:	69 74 00 5f 5f 69 73 	imul   $0x6f73695f,0x5f(%eax,%eax,1),%esi
 80482ab:	6f
 80482ac:	63 39                	arpl   %di,(%ecx)
 80482ae:	39 5f 73             	cmp    %ebx,0x73(%edi)
 80482b1:	63 61 6e             	arpl   %sp,0x6e(%ecx)
 80482b4:	66 00 70 75          	data16 add %dh,0x75(%eax)
 80482b8:	74 73                	je     804832d <_init-0x6b>
 80482ba:	00 73 74             	add    %dh,0x74(%ebx)
 80482bd:	64 69 6e 00 72 65 61 	imul   $0x64616572,%fs:0x0(%esi),%ebp
 80482c4:	64
 80482c5:	00 73 74             	add    %dh,0x74(%ebx)
 80482c8:	64 6f                	outsl  %fs:(%esi),(%dx)
 80482ca:	75 74                	jne    8048340 <_init-0x58>
 80482cc:	00 73 65             	add    %dh,0x65(%ebx)
 80482cf:	74 76                	je     8048347 <_init-0x51>
 80482d1:	62 75 66             	bound  %esi,0x66(%ebp)
 80482d4:	00 5f 5f             	add    %bl,0x5f(%edi)
 80482d7:	6c                   	insb   (%dx),%es:(%edi)
 80482d8:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 80482df:	72 74                	jb     8048355 <_init-0x43>
 80482e1:	5f                   	pop    %edi
 80482e2:	6d                   	insl   (%dx),%es:(%edi)
 80482e3:	61                   	popa
 80482e4:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%esi),%ebp
 80482eb:	6f                   	outsl  %ds:(%esi),(%dx)
 80482ec:	6e                   	outsb  %ds:(%esi),(%dx)
 80482ed:	5f                   	pop    %edi
 80482ee:	73 74                	jae    8048364 <_init-0x34>
 80482f0:	61                   	popa
 80482f1:	72 74                	jb     8048367 <_init-0x31>
 80482f3:	5f                   	pop    %edi
 80482f4:	5f                   	pop    %edi
 80482f5:	00 47 4c             	add    %al,0x4c(%edi)
 80482f8:	49                   	dec    %ecx
 80482f9:	42                   	inc    %edx
 80482fa:	43                   	inc    %ebx
 80482fb:	5f                   	pop    %edi
 80482fc:	32 2e                	xor    (%esi),%ch
 80482fe:	37                   	aaa
 80482ff:	00 47 4c             	add    %al,0x4c(%edi)
 8048302:	49                   	dec    %ecx
 8048303:	42                   	inc    %edx
 8048304:	43                   	inc    %ebx
 8048305:	5f                   	pop    %edi
 8048306:	32 2e                	xor    (%esi),%ch
 8048308:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

0804830a <.gnu.version>:
 804830a:	00 00                	add    %al,(%eax)
 804830c:	02 00                	add    (%eax),%al
 804830e:	02 00                	add    (%eax),%al
 8048310:	00 00                	add    %al,(%eax)
 8048312:	02 00                	add    (%eax),%al
 8048314:	02 00                	add    (%eax),%al
 8048316:	02 00                	add    (%eax),%al
 8048318:	03 00                	add    (%eax),%eax
 804831a:	02 00                	add    (%eax),%al
 804831c:	01 00                	add    %eax,(%eax)
 804831e:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

08048320 <.gnu.version_r>:
 8048320:	01 00                	add    %eax,(%eax)
 8048322:	02 00                	add    (%eax),%al
 8048324:	01 00                	add    %eax,(%eax)
 8048326:	00 00                	add    %al,(%eax)
 8048328:	10 00                	adc    %al,(%eax)
 804832a:	00 00                	add    %al,(%eax)
 804832c:	00 00                	add    %al,(%eax)
 804832e:	00 00                	add    %al,(%eax)
 8048330:	17                   	pop    %ss
 8048331:	69 69 0d 00 00 03 00 	imul   $0x30000,0xd(%ecx),%ebp
 8048338:	6e                   	outsb  %ds:(%esi),(%dx)
 8048339:	00 00                	add    %al,(%eax)
 804833b:	00 10                	add    %dl,(%eax)
 804833d:	00 00                	add    %al,(%eax)
 804833f:	00 10                	add    %dl,(%eax)
 8048341:	69 69 0d 00 00 02 00 	imul   $0x20000,0xd(%ecx),%ebp
 8048348:	78 00                	js     804834a <_init-0x4e>
 804834a:	00 00                	add    %al,(%eax)
 804834c:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048350 <.rel.dyn>:
 8048350:	fc                   	cld
 8048351:	9f                   	lahf
 8048352:	04 08                	add    $0x8,%al
 8048354:	06                   	push   %es
 8048355:	03 00                	add    (%eax),%eax
 8048357:	00 40 a0             	add    %al,-0x60(%eax)
 804835a:	04 08                	add    $0x8,%al
 804835c:	05 0a 00 00 44       	add    $0x4400000a,%eax
 8048361:	a0 04 08 05 08       	mov    0x8050804,%al
	...

Disassembly of section .rel.plt:

08048368 <.rel.plt>:
 8048368:	0c a0                	or     $0xa0,%al
 804836a:	04 08                	add    $0x8,%al
 804836c:	07                   	pop    %es
 804836d:	01 00                	add    %eax,(%eax)
 804836f:	00 10                	add    %dl,(%eax)
 8048371:	a0 04 08 07 02       	mov    0x2070804,%al
 8048376:	00 00                	add    %al,(%eax)
 8048378:	14 a0                	adc    $0xa0,%al
 804837a:	04 08                	add    $0x8,%al
 804837c:	07                   	pop    %es
 804837d:	04 00                	add    $0x0,%al
 804837f:	00 18                	add    %bl,(%eax)
 8048381:	a0 04 08 07 05       	mov    0x5070804,%al
 8048386:	00 00                	add    %al,(%eax)
 8048388:	1c a0                	sbb    $0xa0,%al
 804838a:	04 08                	add    $0x8,%al
 804838c:	07                   	pop    %es
 804838d:	06                   	push   %es
 804838e:	00 00                	add    %al,(%eax)
 8048390:	20 a0 04 08 07 07    	and    %ah,0x7070804(%eax)
	...

Disassembly of section .init:

08048398 <_init>:
 8048398:	53                   	push   %ebx
 8048399:	83 ec 08             	sub    $0x8,%esp
 804839c:	e8 cf 00 00 00       	call   8048470 <__x86.get_pc_thunk.bx>
 80483a1:	81 c3 5f 1c 00 00    	add    $0x1c5f,%ebx
 80483a7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483ad:	85 c0                	test   %eax,%eax
 80483af:	74 05                	je     80483b6 <_init+0x1e>
 80483b1:	e8 7a 00 00 00       	call   8048430 <__gmon_start__@plt>
 80483b6:	83 c4 08             	add    $0x8,%esp
 80483b9:	5b                   	pop    %ebx
 80483ba:	c3                   	ret

Disassembly of section .plt:

080483c0 <.plt>:
 80483c0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483c6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483cc:	00 00                	add    %al,(%eax)
	...

080483d0 <read@plt>:
 80483d0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483d6:	68 00 00 00 00       	push   $0x0
 80483db:	e9 e0 ff ff ff       	jmp    80483c0 <.plt>

080483e0 <puts@plt>:
 80483e0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483e6:	68 08 00 00 00       	push   $0x8
 80483eb:	e9 d0 ff ff ff       	jmp    80483c0 <.plt>

080483f0 <exit@plt>:
 80483f0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483f6:	68 10 00 00 00       	push   $0x10
 80483fb:	e9 c0 ff ff ff       	jmp    80483c0 <.plt>

08048400 <__libc_start_main@plt>:
 8048400:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048406:	68 18 00 00 00       	push   $0x18
 804840b:	e9 b0 ff ff ff       	jmp    80483c0 <.plt>

08048410 <setvbuf@plt>:
 8048410:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048416:	68 20 00 00 00       	push   $0x20
 804841b:	e9 a0 ff ff ff       	jmp    80483c0 <.plt>

08048420 <__isoc99_scanf@plt>:
 8048420:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048426:	68 28 00 00 00       	push   $0x28
 804842b:	e9 90 ff ff ff       	jmp    80483c0 <.plt>

Disassembly of section .plt.got:

08048430 <__gmon_start__@plt>:
 8048430:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048436:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048440 <_start>:
 8048440:	31 ed                	xor    %ebp,%ebp
 8048442:	5e                   	pop    %esi
 8048443:	89 e1                	mov    %esp,%ecx
 8048445:	83 e4 f0             	and    $0xfffffff0,%esp
 8048448:	50                   	push   %eax
 8048449:	54                   	push   %esp
 804844a:	52                   	push   %edx
 804844b:	68 e0 86 04 08       	push   $0x80486e0
 8048450:	68 80 86 04 08       	push   $0x8048680
 8048455:	51                   	push   %ecx
 8048456:	56                   	push   %esi
 8048457:	68 3b 85 04 08       	push   $0x804853b
 804845c:	e8 9f ff ff ff       	call   8048400 <__libc_start_main@plt>
 8048461:	f4                   	hlt
 8048462:	66 90                	xchg   %ax,%ax
 8048464:	66 90                	xchg   %ax,%ax
 8048466:	66 90                	xchg   %ax,%ax
 8048468:	66 90                	xchg   %ax,%ax
 804846a:	66 90                	xchg   %ax,%ax
 804846c:	66 90                	xchg   %ax,%ax
 804846e:	66 90                	xchg   %ax,%ax

08048470 <__x86.get_pc_thunk.bx>:
 8048470:	8b 1c 24             	mov    (%esp),%ebx
 8048473:	c3                   	ret
 8048474:	66 90                	xchg   %ax,%ax
 8048476:	66 90                	xchg   %ax,%ax
 8048478:	66 90                	xchg   %ax,%ax
 804847a:	66 90                	xchg   %ax,%ax
 804847c:	66 90                	xchg   %ax,%ax
 804847e:	66 90                	xchg   %ax,%ax

08048480 <deregister_tm_clones>:
 8048480:	b8 2f a0 04 08       	mov    $0x804a02f,%eax
 8048485:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804848a:	83 f8 06             	cmp    $0x6,%eax
 804848d:	76 1a                	jbe    80484a9 <deregister_tm_clones+0x29>
 804848f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048494:	85 c0                	test   %eax,%eax
 8048496:	74 11                	je     80484a9 <deregister_tm_clones+0x29>
 8048498:	55                   	push   %ebp
 8048499:	89 e5                	mov    %esp,%ebp
 804849b:	83 ec 14             	sub    $0x14,%esp
 804849e:	68 2c a0 04 08       	push   $0x804a02c
 80484a3:	ff d0                	call   *%eax
 80484a5:	83 c4 10             	add    $0x10,%esp
 80484a8:	c9                   	leave
 80484a9:	f3 c3                	repz ret
 80484ab:	90                   	nop
 80484ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080484b0 <register_tm_clones>:
 80484b0:	b8 2c a0 04 08       	mov    $0x804a02c,%eax
 80484b5:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 80484ba:	c1 f8 02             	sar    $0x2,%eax
 80484bd:	89 c2                	mov    %eax,%edx
 80484bf:	c1 ea 1f             	shr    $0x1f,%edx
 80484c2:	01 d0                	add    %edx,%eax
 80484c4:	d1 f8                	sar    %eax
 80484c6:	74 1b                	je     80484e3 <register_tm_clones+0x33>
 80484c8:	ba 00 00 00 00       	mov    $0x0,%edx
 80484cd:	85 d2                	test   %edx,%edx
 80484cf:	74 12                	je     80484e3 <register_tm_clones+0x33>
 80484d1:	55                   	push   %ebp
 80484d2:	89 e5                	mov    %esp,%ebp
 80484d4:	83 ec 10             	sub    $0x10,%esp
 80484d7:	50                   	push   %eax
 80484d8:	68 2c a0 04 08       	push   $0x804a02c
 80484dd:	ff d2                	call   *%edx
 80484df:	83 c4 10             	add    $0x10,%esp
 80484e2:	c9                   	leave
 80484e3:	f3 c3                	repz ret
 80484e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484f0 <__do_global_dtors_aux>:
 80484f0:	80 3d 48 a0 04 08 00 	cmpb   $0x0,0x804a048
 80484f7:	75 13                	jne    804850c <__do_global_dtors_aux+0x1c>
 80484f9:	55                   	push   %ebp
 80484fa:	89 e5                	mov    %esp,%ebp
 80484fc:	83 ec 08             	sub    $0x8,%esp
 80484ff:	e8 7c ff ff ff       	call   8048480 <deregister_tm_clones>
 8048504:	c6 05 48 a0 04 08 01 	movb   $0x1,0x804a048
 804850b:	c9                   	leave
 804850c:	f3 c3                	repz ret
 804850e:	66 90                	xchg   %ax,%ax

08048510 <frame_dummy>:
 8048510:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048515:	8b 10                	mov    (%eax),%edx
 8048517:	85 d2                	test   %edx,%edx
 8048519:	75 05                	jne    8048520 <frame_dummy+0x10>
 804851b:	eb 93                	jmp    80484b0 <register_tm_clones>
 804851d:	8d 76 00             	lea    0x0(%esi),%esi
 8048520:	ba 00 00 00 00       	mov    $0x0,%edx
 8048525:	85 d2                	test   %edx,%edx
 8048527:	74 f2                	je     804851b <frame_dummy+0xb>
 8048529:	55                   	push   %ebp
 804852a:	89 e5                	mov    %esp,%ebp
 804852c:	83 ec 14             	sub    $0x14,%esp
 804852f:	50                   	push   %eax
 8048530:	ff d2                	call   *%edx
 8048532:	83 c4 10             	add    $0x10,%esp
 8048535:	c9                   	leave
 8048536:	e9 75 ff ff ff       	jmp    80484b0 <register_tm_clones>

0804853b <main>:
 804853b:	55                   	push   %ebp
 804853c:	89 e5                	mov    %esp,%ebp
 804853e:	83 ec 68             	sub    $0x68,%esp
 8048541:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048546:	6a 00                	push   $0x0
 8048548:	6a 02                	push   $0x2
 804854a:	6a 00                	push   $0x0
 804854c:	50                   	push   %eax
 804854d:	e8 be fe ff ff       	call   8048410 <setvbuf@plt>
 8048552:	83 c4 10             	add    $0x10,%esp
 8048555:	a1 40 a0 04 08       	mov    0x804a040,%eax
 804855a:	6a 00                	push   $0x0
 804855c:	6a 02                	push   $0x2
 804855e:	6a 00                	push   $0x0
 8048560:	50                   	push   %eax
 8048561:	e8 aa fe ff ff       	call   8048410 <setvbuf@plt>
 8048566:	83 c4 10             	add    $0x10,%esp
 8048569:	68 00 87 04 08       	push   $0x8048700
 804856e:	e8 6d fe ff ff       	call   80483e0 <puts@plt>
 8048573:	83 c4 04             	add    $0x4,%esp
 8048576:	68 6c 87 04 08       	push   $0x804876c
 804857b:	e8 60 fe ff ff       	call   80483e0 <puts@plt>
 8048580:	83 c4 04             	add    $0x4,%esp
 8048583:	68 d8 87 04 08       	push   $0x80487d8
 8048588:	e8 53 fe ff ff       	call   80483e0 <puts@plt>
 804858d:	83 c4 04             	add    $0x4,%esp
 8048590:	68 44 88 04 08       	push   $0x8048844
 8048595:	e8 46 fe ff ff       	call   80483e0 <puts@plt>
 804859a:	83 c4 04             	add    $0x4,%esp
 804859d:	68 b0 88 04 08       	push   $0x80488b0
 80485a2:	e8 39 fe ff ff       	call   80483e0 <puts@plt>
 80485a7:	83 c4 04             	add    $0x4,%esp
 80485aa:	68 1c 89 04 08       	push   $0x804891c
 80485af:	e8 2c fe ff ff       	call   80483e0 <puts@plt>
 80485b4:	83 c4 04             	add    $0x4,%esp
 80485b7:	68 88 89 04 08       	push   $0x8048988
 80485bc:	e8 1f fe ff ff       	call   80483e0 <puts@plt>
 80485c1:	83 c4 04             	add    $0x4,%esp
 80485c4:	68 f3 89 04 08       	push   $0x80489f3
 80485c9:	e8 12 fe ff ff       	call   80483e0 <puts@plt>
 80485ce:	83 c4 04             	add    $0x4,%esp
 80485d1:	68 f4 89 04 08       	push   $0x80489f4
 80485d6:	e8 05 fe ff ff       	call   80483e0 <puts@plt>
 80485db:	83 c4 04             	add    $0x4,%esp
 80485de:	68 f3 89 04 08       	push   $0x80489f3
 80485e3:	e8 f8 fd ff ff       	call   80483e0 <puts@plt>
 80485e8:	83 c4 04             	add    $0x4,%esp
 80485eb:	68 10 8a 04 08       	push   $0x8048a10
 80485f0:	e8 eb fd ff ff       	call   80483e0 <puts@plt>
 80485f5:	83 c4 04             	add    $0x4,%esp
 80485f8:	68 24 8a 04 08       	push   $0x8048a24
 80485fd:	e8 de fd ff ff       	call   80483e0 <puts@plt>
 8048602:	83 c4 04             	add    $0x4,%esp
 8048605:	8d 45 98             	lea    -0x68(%ebp),%eax
 8048608:	50                   	push   %eax
 8048609:	68 3a 8a 04 08       	push   $0x8048a3a
 804860e:	e8 0d fe ff ff       	call   8048420 <__isoc99_scanf@plt>
 8048613:	83 c4 08             	add    $0x8,%esp
 8048616:	8b 45 98             	mov    -0x68(%ebp),%eax
 8048619:	83 f8 01             	cmp    $0x1,%eax
 804861c:	75 40                	jne    804865e <main+0x123>
 804861e:	68 3d 8a 04 08       	push   $0x8048a3d
 8048623:	e8 b8 fd ff ff       	call   80483e0 <puts@plt>
 8048628:	83 c4 04             	add    $0x4,%esp
 804862b:	68 2c 01 00 00       	push   $0x12c
 8048630:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8048633:	50                   	push   %eax
 8048634:	6a 00                	push   $0x0
 8048636:	e8 95 fd ff ff       	call   80483d0 <read@plt>
 804863b:	83 c4 0c             	add    $0xc,%esp
 804863e:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8048641:	50                   	push   %eax
 8048642:	e8 99 fd ff ff       	call   80483e0 <puts@plt>
 8048647:	83 c4 04             	add    $0x4,%esp
 804864a:	68 4e 8a 04 08       	push   $0x8048a4e
 804864f:	e8 8c fd ff ff       	call   80483e0 <puts@plt>
 8048654:	83 c4 04             	add    $0x4,%esp
 8048657:	b8 00 00 00 00       	mov    $0x0,%eax
 804865c:	eb 14                	jmp    8048672 <main+0x137>
 804865e:	68 68 8a 04 08       	push   $0x8048a68
 8048663:	e8 78 fd ff ff       	call   80483e0 <puts@plt>
 8048668:	83 c4 04             	add    $0x4,%esp
 804866b:	6a 01                	push   $0x1
 804866d:	e8 7e fd ff ff       	call   80483f0 <exit@plt>
 8048672:	c9                   	leave
 8048673:	c3                   	ret
 8048674:	66 90                	xchg   %ax,%ax
 8048676:	66 90                	xchg   %ax,%ax
 8048678:	66 90                	xchg   %ax,%ax
 804867a:	66 90                	xchg   %ax,%ax
 804867c:	66 90                	xchg   %ax,%ax
 804867e:	66 90                	xchg   %ax,%ax

08048680 <__libc_csu_init>:
 8048680:	55                   	push   %ebp
 8048681:	57                   	push   %edi
 8048682:	56                   	push   %esi
 8048683:	53                   	push   %ebx
 8048684:	e8 e7 fd ff ff       	call   8048470 <__x86.get_pc_thunk.bx>
 8048689:	81 c3 77 19 00 00    	add    $0x1977,%ebx
 804868f:	83 ec 0c             	sub    $0xc,%esp
 8048692:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048696:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804869c:	e8 f7 fc ff ff       	call   8048398 <_init>
 80486a1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80486a7:	29 c6                	sub    %eax,%esi
 80486a9:	c1 fe 02             	sar    $0x2,%esi
 80486ac:	85 f6                	test   %esi,%esi
 80486ae:	74 25                	je     80486d5 <__libc_csu_init+0x55>
 80486b0:	31 ff                	xor    %edi,%edi
 80486b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486b8:	83 ec 04             	sub    $0x4,%esp
 80486bb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486bf:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486c3:	55                   	push   %ebp
 80486c4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486cb:	83 c7 01             	add    $0x1,%edi
 80486ce:	83 c4 10             	add    $0x10,%esp
 80486d1:	39 f7                	cmp    %esi,%edi
 80486d3:	75 e3                	jne    80486b8 <__libc_csu_init+0x38>
 80486d5:	83 c4 0c             	add    $0xc,%esp
 80486d8:	5b                   	pop    %ebx
 80486d9:	5e                   	pop    %esi
 80486da:	5f                   	pop    %edi
 80486db:	5d                   	pop    %ebp
 80486dc:	c3                   	ret
 80486dd:	8d 76 00             	lea    0x0(%esi),%esi

080486e0 <__libc_csu_fini>:
 80486e0:	f3 c3                	repz ret

Disassembly of section .fini:

080486e4 <_fini>:
 80486e4:	53                   	push   %ebx
 80486e5:	83 ec 08             	sub    $0x8,%esp
 80486e8:	e8 83 fd ff ff       	call   8048470 <__x86.get_pc_thunk.bx>
 80486ed:	81 c3 13 19 00 00    	add    $0x1913,%ebx
 80486f3:	83 c4 08             	add    $0x8,%esp
 80486f6:	5b                   	pop    %ebx
 80486f7:	c3                   	ret

Disassembly of section .rodata:

080486f8 <_fp_hw>:
 80486f8:	03 00                	add    (%eax),%eax
	...

080486fc <_IO_stdin_used>:
 80486fc:	01 00                	add    %eax,(%eax)
 80486fe:	02 00                	add    (%eax),%al
 8048700:	20 20                	and    %ah,(%eax)
 8048702:	20 20                	and    %ah,(%eax)
 8048704:	20 20                	and    %ah,(%eax)
 8048706:	64 50                	fs push %eax
 8048708:	20 20                	and    %ah,(%eax)
 804870a:	38 38                	cmp    %bh,(%eax)
 804870c:	38 38                	cmp    %bh,(%eax)
 804870e:	38 38                	cmp    %bh,(%eax)
 8048710:	62 61 20             	bound  %esp,0x20(%ecx)
 8048713:	20 20                	and    %ah,(%eax)
 8048715:	2e 38 38             	cmp    %bh,%cs:(%eax)
 8048718:	38 38                	cmp    %bh,(%eax)
 804871a:	38 2e                	cmp    %ch,(%esi)
 804871c:	20 20                	and    %ah,(%eax)
 804871e:	20 38                	and    %bh,(%eax)
 8048720:	38 38                	cmp    %bh,(%eax)
 8048722:	38 38                	cmp    %bh,(%eax)
 8048724:	38 62 61             	cmp    %ah,0x61(%edx)
 8048727:	20 20                	and    %ah,(%eax)
 8048729:	20 20                	and    %ah,(%eax)
 804872b:	20 20                	and    %ah,(%eax)
 804872d:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 8048731:	20 20                	and    %ah,(%eax)
 8048733:	64 50                	fs push %eax
 8048735:	20 20                	and    %ah,(%eax)
 8048737:	20 20                	and    %ah,(%eax)
 8048739:	20 20                	and    %ah,(%eax)
 804873b:	20 20                	and    %ah,(%eax)
 804873d:	20 20                	and    %ah,(%eax)
 804873f:	20 20                	and    %ah,(%eax)
 8048741:	20 20                	and    %ah,(%eax)
 8048743:	20 20                	and    %ah,(%eax)
 8048745:	20 20                	and    %ah,(%eax)
 8048747:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 804874b:	20 20                	and    %ah,(%eax)
 804874d:	20 20                	and    %ah,(%eax)
 804874f:	20 20                	and    %ah,(%eax)
 8048751:	20 20                	and    %ah,(%eax)
 8048753:	20 20                	and    %ah,(%eax)
 8048755:	20 20                	and    %ah,(%eax)
 8048757:	20 20                	and    %ah,(%eax)
 8048759:	20 20                	and    %ah,(%eax)
 804875b:	20 20                	and    %ah,(%eax)
 804875d:	20 20                	and    %ah,(%eax)
 804875f:	20 20                	and    %ah,(%eax)
 8048761:	20 20                	and    %ah,(%eax)
 8048763:	20 20                	and    %ah,(%eax)
 8048765:	64 50                	fs push %eax
 8048767:	20 20                	and    %ah,(%eax)
 8048769:	20 00                	and    %al,(%eax)
 804876b:	00 20                	add    %ah,(%eax)
 804876d:	20 20                	and    %ah,(%eax)
 804876f:	20 20                	and    %ah,(%eax)
 8048771:	20 38                	and    %bh,(%eax)
 8048773:	38 20                	cmp    %ah,(%eax)
 8048775:	20 38                	and    %bh,(%eax)
 8048777:	38 20                	cmp    %ah,(%eax)
 8048779:	20 20                	and    %ah,(%eax)
 804877b:	20 60 38             	and    %ah,0x38(%eax)
 804877e:	62 20                	bound  %esp,(%eax)
 8048780:	64 38 27             	cmp    %ah,%fs:(%edi)
 8048783:	20 20                	and    %ah,(%eax)
 8048785:	20 60 38             	and    %ah,0x38(%eax)
 8048788:	62 20                	bound  %esp,(%eax)
 804878a:	20 38                	and    %bh,(%eax)
 804878c:	38 20                	cmp    %ah,(%eax)
 804878e:	20 20                	and    %ah,(%eax)
 8048790:	20 60 38             	and    %ah,0x38(%eax)
 8048793:	62 20                	bound  %esp,(%eax)
 8048795:	20 20                	and    %ah,(%eax)
 8048797:	20 20                	and    %ah,(%eax)
 8048799:	20 38                	and    %bh,(%eax)
 804879b:	38 20                	cmp    %ah,(%eax)
 804879d:	20 20                	and    %ah,(%eax)
 804879f:	38 38                	cmp    %bh,(%eax)
 80487a1:	20 20                	and    %ah,(%eax)
 80487a3:	20 20                	and    %ah,(%eax)
 80487a5:	20 20                	and    %ah,(%eax)
 80487a7:	20 20                	and    %ah,(%eax)
 80487a9:	20 20                	and    %ah,(%eax)
 80487ab:	20 20                	and    %ah,(%eax)
 80487ad:	20 20                	and    %ah,(%eax)
 80487af:	20 20                	and    %ah,(%eax)
 80487b1:	20 20                	and    %ah,(%eax)
 80487b3:	20 38                	and    %bh,(%eax)
 80487b5:	38 20                	cmp    %ah,(%eax)
 80487b7:	20 20                	and    %ah,(%eax)
 80487b9:	20 20                	and    %ah,(%eax)
 80487bb:	20 20                	and    %ah,(%eax)
 80487bd:	20 20                	and    %ah,(%eax)
 80487bf:	20 20                	and    %ah,(%eax)
 80487c1:	20 20                	and    %ah,(%eax)
 80487c3:	20 20                	and    %ah,(%eax)
 80487c5:	20 20                	and    %ah,(%eax)
 80487c7:	20 20                	and    %ah,(%eax)
 80487c9:	20 20                	and    %ah,(%eax)
 80487cb:	20 20                	and    %ah,(%eax)
 80487cd:	20 20                	and    %ah,(%eax)
 80487cf:	20 20                	and    %ah,(%eax)
 80487d1:	38 38                	cmp    %bh,(%eax)
 80487d3:	20 20                	and    %ah,(%eax)
 80487d5:	20 00                	and    %al,(%eax)
 80487d7:	00 2e                	add    %ch,(%esi)
 80487d9:	64 38 38             	cmp    %bh,%fs:(%eax)
 80487dc:	38 62 38             	cmp    %ah,0x38(%edx)
 80487df:	38 20                	cmp    %ah,(%eax)
 80487e1:	61                   	popa
 80487e2:	38 38                	cmp    %bh,(%eax)
 80487e4:	61                   	popa
 80487e5:	61                   	popa
 80487e6:	61                   	popa
 80487e7:	61                   	popa
 80487e8:	38 50 27             	cmp    %dl,0x27(%eax)
 80487eb:	20 38                	and    %bh,(%eax)
 80487ed:	38 20                	cmp    %ah,(%eax)
 80487ef:	20 20                	and    %ah,(%eax)
 80487f1:	20 20                	and    %ah,(%eax)
 80487f3:	38 38                	cmp    %bh,(%eax)
 80487f5:	20 61 38             	and    %ah,0x38(%ecx)
 80487f8:	38 61 61             	cmp    %ah,0x61(%ecx)
 80487fb:	61                   	popa
 80487fc:	61                   	popa
 80487fd:	38 50 27             	cmp    %dl,0x27(%eax)
 8048800:	20 20                	and    %ah,(%eax)
 8048802:	20 20                	and    %ah,(%eax)
 8048804:	64 38 38             	cmp    %bh,%fs:(%eax)
 8048807:	38 38                	cmp    %bh,(%eax)
 8048809:	50                   	push   %eax
 804880a:	20 38                	and    %bh,(%eax)
 804880c:	38 64 38 38          	cmp    %ah,0x38(%eax,%edi,1)
 8048810:	38 62 2e             	cmp    %ah,0x2e(%edx)
 8048813:	20 2e                	and    %ch,(%esi)
 8048815:	64 38 38             	cmp    %bh,%fs:(%eax)
 8048818:	38 38                	cmp    %bh,(%eax)
 804881a:	62 2e                	bound  %ebp,(%esi)
 804881c:	20 20                	and    %ah,(%eax)
 804881e:	20 20                	and    %ah,(%eax)
 8048820:	38 38                	cmp    %bh,(%eax)
 8048822:	64 38 38             	cmp    %bh,%fs:(%eax)
 8048825:	38 62 2e             	cmp    %ah,0x2e(%edx)
 8048828:	20 2e                	and    %ch,(%esi)
 804882a:	64 38 38             	cmp    %bh,%fs:(%eax)
 804882d:	38 38                	cmp    %bh,(%eax)
 804882f:	62 2e                	bound  %ebp,(%esi)
 8048831:	20 2e                	and    %ch,(%esi)
 8048833:	64 38 38             	cmp    %bh,%fs:(%eax)
 8048836:	38 38                	cmp    %bh,(%eax)
 8048838:	62 2e                	bound  %ebp,(%esi)
 804883a:	20 64 38 38          	and    %ah,0x38(%eax,%edi,1)
 804883e:	38 38                	cmp    %bh,(%eax)
 8048840:	50                   	push   %eax
 8048841:	20 00                	and    %al,(%eax)
 8048843:	00 38                	add    %bh,(%eax)
 8048845:	38 27                	cmp    %ah,(%edi)
 8048847:	20 20                	and    %ah,(%eax)
 8048849:	60                   	pusha
 804884a:	38 38                	cmp    %bh,(%eax)
 804884c:	20 20                	and    %ah,(%eax)
 804884e:	38 38                	cmp    %bh,(%eax)
 8048850:	20 20                	and    %ah,(%eax)
 8048852:	20 60 38             	and    %ah,0x38(%eax)
 8048855:	62 2e                	bound  %ebp,(%esi)
 8048857:	20 38                	and    %bh,(%eax)
 8048859:	38 20                	cmp    %ah,(%eax)
 804885b:	20 20                	and    %ah,(%eax)
 804885d:	20 20                	and    %ah,(%eax)
 804885f:	38 38                	cmp    %bh,(%eax)
 8048861:	20 20                	and    %ah,(%eax)
 8048863:	38 38                	cmp    %bh,(%eax)
 8048865:	20 20                	and    %ah,(%eax)
 8048867:	20 20                	and    %ah,(%eax)
 8048869:	20 20                	and    %ah,(%eax)
 804886b:	20 20                	and    %ah,(%eax)
 804886d:	20 20                	and    %ah,(%eax)
 804886f:	20 20                	and    %ah,(%eax)
 8048871:	20 38                	and    %bh,(%eax)
 8048873:	38 20                	cmp    %ah,(%eax)
 8048875:	20 20                	and    %ah,(%eax)
 8048877:	38 38                	cmp    %bh,(%eax)
 8048879:	27                   	daa
 804887a:	20 20                	and    %ah,(%eax)
 804887c:	60                   	pusha
 804887d:	38 38                	cmp    %bh,(%eax)
 804887f:	20 38                	and    %bh,(%eax)
 8048881:	38 6f 6f             	cmp    %ch,0x6f(%edi)
 8048884:	6f                   	outsl  %ds:(%esi),(%dx)
 8048885:	6f                   	outsl  %ds:(%esi),(%dx)
 8048886:	64 38 20             	cmp    %ah,%fs:(%eax)
 8048889:	20 20                	and    %ah,(%eax)
 804888b:	20 38                	and    %bh,(%eax)
 804888d:	38 27                	cmp    %ah,(%edi)
 804888f:	20 20                	and    %ah,(%eax)
 8048891:	60                   	pusha
 8048892:	38 38                	cmp    %bh,(%eax)
 8048894:	20 38                	and    %bh,(%eax)
 8048896:	38 6f 6f             	cmp    %ch,0x6f(%edi)
 8048899:	6f                   	outsl  %ds:(%esi),(%dx)
 804889a:	6f                   	outsl  %ds:(%esi),(%dx)
 804889b:	64 38 20             	cmp    %ah,%fs:(%eax)
 804889e:	38 38                	cmp    %bh,(%eax)
 80488a0:	27                   	daa
 80488a1:	20 20                	and    %ah,(%eax)
 80488a3:	60                   	pusha
 80488a4:	38 38                	cmp    %bh,(%eax)
 80488a6:	20 20                	and    %ah,(%eax)
 80488a8:	20 38                	and    %bh,(%eax)
 80488aa:	38 20                	cmp    %ah,(%eax)
 80488ac:	20 20                	and    %ah,(%eax)
 80488ae:	00 00                	add    %al,(%eax)
 80488b0:	38 38                	cmp    %bh,(%eax)
 80488b2:	2e 20 20             	and    %ah,%cs:(%eax)
 80488b5:	2e 38 38             	cmp    %bh,%cs:(%eax)
 80488b8:	20 20                	and    %ah,(%eax)
 80488ba:	38 38                	cmp    %bh,(%eax)
 80488bc:	20 20                	and    %ah,(%eax)
 80488be:	20 20                	and    %ah,(%eax)
 80488c0:	20 38                	and    %bh,(%eax)
 80488c2:	38 20                	cmp    %ah,(%eax)
 80488c4:	59                   	pop    %ecx
 80488c5:	38 2e                	cmp    %ch,(%esi)
 80488c7:	20 20                	and    %ah,(%eax)
 80488c9:	20 2e                	and    %ch,(%esi)
 80488cb:	38 50 20             	cmp    %dl,0x20(%eax)
 80488ce:	20 38                	and    %bh,(%eax)
 80488d0:	38 20                	cmp    %ah,(%eax)
 80488d2:	20 20                	and    %ah,(%eax)
 80488d4:	20 20                	and    %ah,(%eax)
 80488d6:	20 20                	and    %ah,(%eax)
 80488d8:	20 20                	and    %ah,(%eax)
 80488da:	20 20                	and    %ah,(%eax)
 80488dc:	20 20                	and    %ah,(%eax)
 80488de:	38 38                	cmp    %bh,(%eax)
 80488e0:	20 20                	and    %ah,(%eax)
 80488e2:	20 38                	and    %bh,(%eax)
 80488e4:	38 20                	cmp    %ah,(%eax)
 80488e6:	20 20                	and    %ah,(%eax)
 80488e8:	20 38                	and    %bh,(%eax)
 80488ea:	38 20                	cmp    %ah,(%eax)
 80488ec:	38 38                	cmp    %bh,(%eax)
 80488ee:	2e 20 20             	and    %ah,%cs:(%eax)
 80488f1:	2e 2e 2e 20 20       	cs cs and %ah,%cs:(%eax)
 80488f6:	20 20                	and    %ah,(%eax)
 80488f8:	38 38                	cmp    %bh,(%eax)
 80488fa:	2e 20 20             	and    %ah,%cs:(%eax)
 80488fd:	2e 38 38             	cmp    %bh,%cs:(%eax)
 8048900:	20 38                	and    %bh,(%eax)
 8048902:	38 2e                	cmp    %ch,(%esi)
 8048904:	20 20                	and    %ah,(%eax)
 8048906:	2e 2e 2e 20 38       	cs cs and %bh,%cs:(%eax)
 804890b:	38 2e                	cmp    %ch,(%esi)
 804890d:	20 20                	and    %ah,(%eax)
 804890f:	2e 38 38             	cmp    %bh,%cs:(%eax)
 8048912:	20 20                	and    %ah,(%eax)
 8048914:	20 38                	and    %bh,(%eax)
 8048916:	38 20                	cmp    %ah,(%eax)
 8048918:	20 20                	and    %ah,(%eax)
 804891a:	00 00                	add    %al,(%eax)
 804891c:	60                   	pusha
 804891d:	38 38                	cmp    %bh,(%eax)
 804891f:	38 38                	cmp    %bh,(%eax)
 8048921:	38 50 38             	cmp    %dl,0x38(%eax)
 8048924:	20 20                	and    %ah,(%eax)
 8048926:	64 50                	fs push %eax
 8048928:	20 20                	and    %ah,(%eax)
 804892a:	20 20                	and    %ah,(%eax)
 804892c:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 8048930:	20 60 38             	and    %ah,0x38(%eax)
 8048933:	38 38                	cmp    %bh,(%eax)
 8048935:	38 50 27             	cmp    %dl,0x27(%eax)
 8048938:	20 20                	and    %ah,(%eax)
 804893a:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 804893e:	20 20                	and    %ah,(%eax)
 8048940:	20 20                	and    %ah,(%eax)
 8048942:	20 20                	and    %ah,(%eax)
 8048944:	20 20                	and    %ah,(%eax)
 8048946:	20 20                	and    %ah,(%eax)
 8048948:	20 20                	and    %ah,(%eax)
 804894a:	64 50                	fs push %eax
 804894c:	20 20                	and    %ah,(%eax)
 804894e:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 8048952:	20 20                	and    %ah,(%eax)
 8048954:	20 64 50 20          	and    %ah,0x20(%eax,%edx,2)
 8048958:	60                   	pusha
 8048959:	38 38                	cmp    %bh,(%eax)
 804895b:	38 38                	cmp    %bh,(%eax)
 804895d:	38 50 27             	cmp    %dl,0x27(%eax)
 8048960:	20 20                	and    %ah,(%eax)
 8048962:	20 20                	and    %ah,(%eax)
 8048964:	38 38                	cmp    %bh,(%eax)
 8048966:	59                   	pop    %ecx
 8048967:	38 38                	cmp    %bh,(%eax)
 8048969:	38 38                	cmp    %bh,(%eax)
 804896b:	27                   	daa
 804896c:	20 60 38             	and    %ah,0x38(%eax)
 804896f:	38 38                	cmp    %bh,(%eax)
 8048971:	38 38                	cmp    %bh,(%eax)
 8048973:	50                   	push   %eax
 8048974:	27                   	daa
 8048975:	20 60 38             	and    %ah,0x38(%eax)
 8048978:	38 38                	cmp    %bh,(%eax)
 804897a:	38 38                	cmp    %bh,(%eax)
 804897c:	50                   	push   %eax
 804897d:	38 20                	cmp    %ah,(%eax)
 804897f:	20 20                	and    %ah,(%eax)
 8048981:	64 50                	fs push %eax
 8048983:	20 20                	and    %ah,(%eax)
 8048985:	20 00                	and    %al,(%eax)
 8048987:	00 6f 6f             	add    %ch,0x6f(%edi)
 804898a:	6f                   	outsl  %ds:(%esi),(%dx)
 804898b:	6f                   	outsl  %ds:(%esi),(%dx)
 804898c:	6f                   	outsl  %ds:(%esi),(%dx)
 804898d:	6f                   	outsl  %ds:(%esi),(%dx)
 804898e:	6f                   	outsl  %ds:(%esi),(%dx)
 804898f:	6f                   	outsl  %ds:(%esi),(%dx)
 8048990:	6f                   	outsl  %ds:(%esi),(%dx)
 8048991:	6f                   	outsl  %ds:(%esi),(%dx)
 8048992:	6f                   	outsl  %ds:(%esi),(%dx)
 8048993:	6f                   	outsl  %ds:(%esi),(%dx)
 8048994:	6f                   	outsl  %ds:(%esi),(%dx)
 8048995:	6f                   	outsl  %ds:(%esi),(%dx)
 8048996:	6f                   	outsl  %ds:(%esi),(%dx)
 8048997:	6f                   	outsl  %ds:(%esi),(%dx)
 8048998:	6f                   	outsl  %ds:(%esi),(%dx)
 8048999:	6f                   	outsl  %ds:(%esi),(%dx)
 804899a:	6f                   	outsl  %ds:(%esi),(%dx)
 804899b:	6f                   	outsl  %ds:(%esi),(%dx)
 804899c:	6f                   	outsl  %ds:(%esi),(%dx)
 804899d:	6f                   	outsl  %ds:(%esi),(%dx)
 804899e:	6f                   	outsl  %ds:(%esi),(%dx)
 804899f:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a2:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a3:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a4:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a5:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a6:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a7:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a8:	6f                   	outsl  %ds:(%esi),(%dx)
 80489a9:	6f                   	outsl  %ds:(%esi),(%dx)
 80489aa:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ab:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ac:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ad:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ae:	6f                   	outsl  %ds:(%esi),(%dx)
 80489af:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b2:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b3:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b4:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b5:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b6:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b7:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b8:	6f                   	outsl  %ds:(%esi),(%dx)
 80489b9:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ba:	6f                   	outsl  %ds:(%esi),(%dx)
 80489bb:	6f                   	outsl  %ds:(%esi),(%dx)
 80489bc:	6f                   	outsl  %ds:(%esi),(%dx)
 80489bd:	6f                   	outsl  %ds:(%esi),(%dx)
 80489be:	6f                   	outsl  %ds:(%esi),(%dx)
 80489bf:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c2:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c3:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c4:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c5:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c6:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c7:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c8:	6f                   	outsl  %ds:(%esi),(%dx)
 80489c9:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ca:	6f                   	outsl  %ds:(%esi),(%dx)
 80489cb:	6f                   	outsl  %ds:(%esi),(%dx)
 80489cc:	6f                   	outsl  %ds:(%esi),(%dx)
 80489cd:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ce:	6f                   	outsl  %ds:(%esi),(%dx)
 80489cf:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d2:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d3:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d4:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d5:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d6:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d7:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d8:	6f                   	outsl  %ds:(%esi),(%dx)
 80489d9:	6f                   	outsl  %ds:(%esi),(%dx)
 80489da:	6f                   	outsl  %ds:(%esi),(%dx)
 80489db:	6f                   	outsl  %ds:(%esi),(%dx)
 80489dc:	6f                   	outsl  %ds:(%esi),(%dx)
 80489dd:	6f                   	outsl  %ds:(%esi),(%dx)
 80489de:	6f                   	outsl  %ds:(%esi),(%dx)
 80489df:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e2:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e3:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e4:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e5:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e6:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e7:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e8:	6f                   	outsl  %ds:(%esi),(%dx)
 80489e9:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ea:	6f                   	outsl  %ds:(%esi),(%dx)
 80489eb:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ec:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ed:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ee:	6f                   	outsl  %ds:(%esi),(%dx)
 80489ef:	6f                   	outsl  %ds:(%esi),(%dx)
 80489f0:	6f                   	outsl  %ds:(%esi),(%dx)
 80489f1:	6f                   	outsl  %ds:(%esi),(%dx)
 80489f2:	00 00                	add    %al,(%eax)
 80489f4:	64 52                	fs push %edx
 80489f6:	4f                   	dec    %edi
 80489f7:	50                   	push   %eax
 80489f8:	20 54 68 65          	and    %dl,0x65(%eax,%ebp,2)
 80489fc:	20 62 65             	and    %ah,0x65(%edx)
 80489ff:	61                   	popa
 8048a00:	74 28                	je     8048a2a <_IO_stdin_used+0x32e>
 8048a02:	65 61                	gs popa
 8048a04:	73 79                	jae    8048a7f <_IO_stdin_used+0x383>
 8048a06:	20 76 65             	and    %dh,0x65(%esi)
 8048a09:	72 73                	jb     8048a7e <_IO_stdin_used+0x382>
 8048a0b:	69 6f 6e 29 00 31 29 	imul   $0x29310029,0x6e(%edi),%ebp
 8048a12:	20 47 69             	and    %al,0x69(%edi)
 8048a15:	76 65                	jbe    8048a7c <_IO_stdin_used+0x380>
 8048a17:	20 48 69             	and    %cl,0x69(%eax)
 8048a1a:	6d                   	insl   (%dx),%es:(%edi)
 8048a1b:	20 61 20             	and    %ah,0x20(%ecx)
 8048a1e:	42                   	inc    %edx
 8048a1f:	65 61                	gs popa
 8048a21:	74 21                	je     8048a44 <_IO_stdin_used+0x348>
 8048a23:	00 32                	add    %dh,(%edx)
 8048a25:	29 20                	sub    %esp,(%eax)
 8048a27:	4e                   	dec    %esi
 8048a28:	6f                   	outsl  %ds:(%esi),(%dx)
 8048a29:	20 42 65             	and    %al,0x65(%edx)
 8048a2c:	61                   	popa
 8048a2d:	74 20                	je     8048a4f <_IO_stdin_used+0x353>
 8048a2f:	46                   	inc    %esi
 8048a30:	6f                   	outsl  %ds:(%esi),(%dx)
 8048a31:	72 20                	jb     8048a53 <_IO_stdin_used+0x357>
 8048a33:	59                   	pop    %ecx
 8048a34:	6f                   	outsl  %ds:(%esi),(%dx)
 8048a35:	75 2e                	jne    8048a65 <_IO_stdin_used+0x369>
 8048a37:	2e 21 00             	and    %eax,%cs:(%eax)
 8048a3a:	25 64 00 47 69       	and    $0x69470064,%eax
 8048a3f:	76 65                	jbe    8048aa6 <__GNU_EH_FRAME_HDR+0x1a>
 8048a41:	20 4d 65             	and    %cl,0x65(%ebp)
 8048a44:	20 61 20             	and    %ah,0x20(%ecx)
 8048a47:	42                   	inc    %edx
 8048a48:	65 61                	gs popa
 8048a4a:	74 21                	je     8048a6d <_IO_stdin_used+0x371>
 8048a4c:	21 00                	and    %eax,(%eax)
 8048a4e:	57                   	push   %edi
 8048a4f:	6f                   	outsl  %ds:(%esi),(%dx)
 8048a50:	77 2e                	ja     8048a80 <_IO_stdin_used+0x384>
 8048a52:	2e 2e 20 54 68 61    	cs and %dl,%cs:0x61(%eax,%ebp,2)
 8048a58:	74 27                	je     8048a81 <_IO_stdin_used+0x385>
 8048a5a:	73 20                	jae    8048a7c <_IO_stdin_used+0x380>
 8048a5c:	41                   	inc    %ecx
 8048a5d:	57                   	push   %edi
 8048a5e:	45                   	inc    %ebp
 8048a5f:	53                   	push   %ebx
 8048a60:	4f                   	dec    %edi
 8048a61:	4d                   	dec    %ebp
 8048a62:	45                   	inc    %ebp
 8048a63:	21 00                	and    %eax,(%eax)
 8048a65:	00 00                	add    %al,(%eax)
 8048a67:	00 3a                	add    %bh,(%edx)
 8048a69:	28 20                	sub    %ah,(%eax)
 8048a6b:	53                   	push   %ebx
 8048a6c:	6f                   	outsl  %ds:(%esi),(%dx)
 8048a6d:	72 72                	jb     8048ae1 <__GNU_EH_FRAME_HDR+0x55>
 8048a6f:	79 2c                	jns    8048a9d <__GNU_EH_FRAME_HDR+0x11>
 8048a71:	20 59 6f             	and    %bl,0x6f(%ecx)
 8048a74:	75 20                	jne    8048a96 <__GNU_EH_FRAME_HDR+0xa>
 8048a76:	43                   	inc    %ebx
 8048a77:	61                   	popa
 8048a78:	6e                   	outsb  %ds:(%esi),(%dx)
 8048a79:	27                   	daa
 8048a7a:	74 20                	je     8048a9c <__GNU_EH_FRAME_HDR+0x10>
 8048a7c:	62 65 20             	bound  %esp,0x20(%ebp)
 8048a7f:	77 69                	ja     8048aea <__GNU_EH_FRAME_HDR+0x5e>
 8048a81:	74 68                	je     8048aeb <__GNU_EH_FRAME_HDR+0x5f>
 8048a83:	20 75 73             	and    %dh,0x73(%ebp)
 8048a86:	2e                   	cs
 8048a87:	2e                   	cs
 8048a88:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

08048a8c <__GNU_EH_FRAME_HDR>:
 8048a8c:	01 1b                	add    %ebx,(%ebx)
 8048a8e:	03 3b                	add    (%ebx),%edi
 8048a90:	28 00                	sub    %al,(%eax)
 8048a92:	00 00                	add    %al,(%eax)
 8048a94:	04 00                	add    $0x0,%al
 8048a96:	00 00                	add    %al,(%eax)
 8048a98:	34 f9                	xor    $0xf9,%al
 8048a9a:	ff                   	(bad)
 8048a9b:	ff 44 00 00          	incl   0x0(%eax,%eax,1)
 8048a9f:	00 af fa ff ff 68    	add    %ch,0x68fffffa(%edi)
 8048aa5:	00 00                	add    %al,(%eax)
 8048aa7:	00 f4                	add    %dh,%ah
 8048aa9:	fb                   	sti
 8048aaa:	ff                   	(bad)
 8048aab:	ff 88 00 00 00 54    	decl   0x54000000(%eax)
 8048ab1:	fc                   	cld
 8048ab2:	ff                   	(bad)
 8048ab3:	ff d4                	call   *%esp
 8048ab5:	00 00                	add    %al,(%eax)
	...

Disassembly of section .eh_frame:

08048ab8 <__FRAME_END__-0xbc>:
 8048ab8:	14 00                	adc    $0x0,%al
 8048aba:	00 00                	add    %al,(%eax)
 8048abc:	00 00                	add    %al,(%eax)
 8048abe:	00 00                	add    %al,(%eax)
 8048ac0:	01 7a 52             	add    %edi,0x52(%edx)
 8048ac3:	00 01                	add    %al,(%ecx)
 8048ac5:	7c 08                	jl     8048acf <__GNU_EH_FRAME_HDR+0x43>
 8048ac7:	01 1b                	add    %ebx,(%ebx)
 8048ac9:	0c 04                	or     $0x4,%al
 8048acb:	04 88                	add    $0x88,%al
 8048acd:	01 00                	add    %eax,(%eax)
 8048acf:	00 20                	add    %ah,(%eax)
 8048ad1:	00 00                	add    %al,(%eax)
 8048ad3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048ad6:	00 00                	add    %al,(%eax)
 8048ad8:	e8 f8 ff ff 70       	call   79048ad5 <_end+0x70ffea89>
 8048add:	00 00                	add    %al,(%eax)
 8048adf:	00 00                	add    %al,(%eax)
 8048ae1:	0e                   	push   %cs
 8048ae2:	08 46 0e             	or     %al,0xe(%esi)
 8048ae5:	0c 4a                	or     $0x4a,%al
 8048ae7:	0f 0b                	ud2
 8048ae9:	74 04                	je     8048aef <__GNU_EH_FRAME_HDR+0x63>
 8048aeb:	78 00                	js     8048aed <__GNU_EH_FRAME_HDR+0x61>
 8048aed:	3f                   	aas
 8048aee:	1a 3b                	sbb    (%ebx),%bh
 8048af0:	2a 32                	sub    (%edx),%dh
 8048af2:	24 22                	and    $0x22,%al
 8048af4:	1c 00                	sbb    $0x0,%al
 8048af6:	00 00                	add    %al,(%eax)
 8048af8:	40                   	inc    %eax
 8048af9:	00 00                	add    %al,(%eax)
 8048afb:	00 3f                	add    %bh,(%edi)
 8048afd:	fa                   	cli
 8048afe:	ff                   	(bad)
 8048aff:	ff                   	(bad)
 8048b00:	39 01                	cmp    %eax,(%ecx)
 8048b02:	00 00                	add    %al,(%eax)
 8048b04:	00 41 0e             	add    %al,0xe(%ecx)
 8048b07:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048b0d:	03 35 01 c5 0c 04    	add    0x40cc501,%esi
 8048b13:	04 48                	add    $0x48,%al
 8048b15:	00 00                	add    %al,(%eax)
 8048b17:	00 60 00             	add    %ah,0x0(%eax)
 8048b1a:	00 00                	add    %al,(%eax)
 8048b1c:	64 fb                	fs sti
 8048b1e:	ff                   	(bad)
 8048b1f:	ff 5d 00             	lcall  *0x0(%ebp)
 8048b22:	00 00                	add    %al,(%eax)
 8048b24:	00 41 0e             	add    %al,0xe(%ecx)
 8048b27:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048b2d:	87 03                	xchg   %eax,(%ebx)
 8048b2f:	41                   	inc    %ecx
 8048b30:	0e                   	push   %cs
 8048b31:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048b37:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 8048b3e:	24 44                	and    $0x44,%al
 8048b40:	0e                   	push   %cs
 8048b41:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8048b45:	41                   	inc    %ecx
 8048b46:	0e                   	push   %cs
 8048b47:	30 4d 0e             	xor    %cl,0xe(%ebp)
 8048b4a:	20 47 0e             	and    %al,0xe(%edi)
 8048b4d:	14 41                	adc    $0x41,%al
 8048b4f:	c3                   	ret
 8048b50:	0e                   	push   %cs
 8048b51:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048b54:	0e                   	push   %cs
 8048b55:	0c 41                	or     $0x41,%al
 8048b57:	c7                   	(bad)
 8048b58:	0e                   	push   %cs
 8048b59:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048b5c:	0e                   	push   %cs
 8048b5d:	04 00                	add    $0x0,%al
 8048b5f:	00 10                	add    %dl,(%eax)
 8048b61:	00 00                	add    %al,(%eax)
 8048b63:	00 ac 00 00 00 78 fb 	add    %ch,-0x4880000(%eax,%eax,1)
 8048b6a:	ff                   	(bad)
 8048b6b:	ff 02                	incl   (%edx)
 8048b6d:	00 00                	add    %al,(%eax)
 8048b6f:	00 00                	add    %al,(%eax)
 8048b71:	00 00                	add    %al,(%eax)
	...

08048b74 <__FRAME_END__>:
 8048b74:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	10                   	.byte 0x10
 8049f09:	85 04 08             	test   %eax,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	f0 84 04 08          	lock test %al,(%eax,%ecx,1)

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
 8049f20:	98                   	cwtl
 8049f21:	83 04 08 0d          	addl   $0xd,(%eax,%ecx,1)
 8049f25:	00 00                	add    %al,(%eax)
 8049f27:	00 e4                	add    %ah,%ah
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
 8049f58:	88 82 04 08 06 00    	mov    %al,0x60804(%edx)
 8049f5e:	00 00                	add    %al,(%eax)
 8049f60:	d8 81 04 08 0a 00    	fadds  0xa0804(%ecx)
 8049f66:	00 00                	add    %al,(%eax)
 8049f68:	82 00 00             	addb   $0x0,(%eax)
 8049f6b:	00 0b                	add    %cl,(%ebx)
 8049f6d:	00 00                	add    %al,(%eax)
 8049f6f:	00 10                	add    %dl,(%eax)
 8049f71:	00 00                	add    %al,(%eax)
 8049f73:	00 15 00 00 00 00    	add    %dl,0x0
 8049f79:	00 00                	add    %al,(%eax)
 8049f7b:	00 03                	add    %al,(%ebx)
 8049f7d:	00 00                	add    %al,(%eax)
 8049f7f:	00 00                	add    %al,(%eax)
 8049f81:	a0 04 08 02 00       	mov    0x20804,%al
 8049f86:	00 00                	add    %al,(%eax)
 8049f88:	30 00                	xor    %al,(%eax)
 8049f8a:	00 00                	add    %al,(%eax)
 8049f8c:	14 00                	adc    $0x0,%al
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 68 83             	add    %ch,-0x7d(%eax)
 8049f9a:	04 08                	add    $0x8,%al
 8049f9c:	11 00                	adc    %eax,(%eax)
 8049f9e:	00 00                	add    %al,(%eax)
 8049fa0:	50                   	push   %eax
 8049fa1:	83 04 08 12          	addl   $0x12,(%eax,%ecx,1)
 8049fa5:	00 00                	add    %al,(%eax)
 8049fa7:	00 18                	add    %bl,(%eax)
 8049fa9:	00 00                	add    %al,(%eax)
 8049fab:	00 13                	add    %dl,(%ebx)
 8049fad:	00 00                	add    %al,(%eax)
 8049faf:	00 08                	add    %cl,(%eax)
 8049fb1:	00 00                	add    %al,(%eax)
 8049fb3:	00 fe                	add    %bh,%dh
 8049fb5:	ff                   	(bad)
 8049fb6:	ff 6f 20             	ljmp   *0x20(%edi)
 8049fb9:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fbd:	ff                   	(bad)
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)
 8049fc6:	ff 6f 0a             	ljmp   *0xa(%edi)
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
 804a00c:	d6                   	(bad)
 804a00d:	83 04 08 e6          	addl   $0xffffffe6,(%eax,%ecx,1)
 804a011:	83 04 08 f6          	addl   $0xfffffff6,(%eax,%ecx,1)
 804a015:	83 04 08 06          	addl   $0x6,(%eax,%ecx,1)
 804a019:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a01c:	16                   	push   %ss
 804a01d:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a020:	26 84 04 08          	test   %al,%es:(%eax,%ecx,1)

Disassembly of section .data:

0804a024 <__data_start>:
 804a024:	00 00                	add    %al,(%eax)
	...

0804a028 <__dso_handle>:
 804a028:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804a040 <stdin@@GLIBC_2.0>:
 804a040:	00 00                	add    %al,(%eax)
	...

0804a044 <stdout@@GLIBC_2.0>:
 804a044:	00 00                	add    %al,(%eax)
	...

0804a048 <completed.7209>:
 804a048:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x8048320>
   a:	74 75                	je     81 <_init-0x8048317>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x8048309>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	31 31                	xor    %esi,(%ecx)
  24:	29 20                	sub    %esp,(%eax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%edx)
  2d:	30 31                	xor    %dh,(%ecx)
  2f:	36 30 36             	xor    %dh,%ss:(%esi)
  32:	30 39                	xor    %bh,(%ecx)
	...
