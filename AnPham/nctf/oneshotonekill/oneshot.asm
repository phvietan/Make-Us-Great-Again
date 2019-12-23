
oneshot_onekill:     file format elf32-i386


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
 8048197:	00 02                	add    %al,(%edx)
 8048199:	fc                   	cld
 804819a:	b5 d2                	mov    $0xd2,%ch
 804819c:	76 e4                	jbe    8048182 <_init-0x1f6>
 804819e:	25 26 5c 54 90       	and    $0x90545c26,%eax
 80481a3:	b5 d0                	mov    $0xd0,%ch
 80481a5:	1b 34 4b             	sbb    (%ebx,%ecx,2),%esi
 80481a8:	fb                   	sti
 80481a9:	b2 b7                	mov    $0xb7,%dl
 80481ab:	d1                   	.byte 0xd1

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
 80481d2:	e3 c0                	jecxz  8048194 <_init-0x1e4>
 80481d4:	67 55                	addr16 push %ebp
 80481d6:	61                   	popa
 80481d7:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481d8 <.dynsym>:
	...
 80481e8:	2a 00                	sub    (%eax),%al
	...
 80481f2:	00 00                	add    %al,(%eax)
 80481f4:	12 00                	adc    (%eax),%al
 80481f6:	00 00                	add    %al,(%eax)
 80481f8:	1a 00                	sbb    (%eax),%al
	...
 8048202:	00 00                	add    %al,(%eax)
 8048204:	12 00                	adc    (%eax),%al
 8048206:	00 00                	add    %al,(%eax)
 8048208:	1f                   	pop    %ds
	...
 8048211:	00 00                	add    %al,(%eax)
 8048213:	00 12                	add    %dl,(%edx)
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 38                	add    %bh,(%eax)
	...
 8048221:	00 00                	add    %al,(%eax)
 8048223:	00 12                	add    %dl,(%edx)
 8048225:	00 00                	add    %al,(%eax)
 8048227:	00 59 00             	add    %bl,0x0(%ecx)
	...
 8048232:	00 00                	add    %al,(%eax)
 8048234:	20 00                	and    %al,(%eax)
 8048236:	00 00                	add    %al,(%eax)
 8048238:	47                   	inc    %edi
	...
 8048241:	00 00                	add    %al,(%eax)
 8048243:	00 12                	add    %dl,(%edx)
 8048245:	00 00                	add    %al,(%eax)
 8048247:	00 3f                	add    %bh,(%edi)
	...
 8048251:	00 00                	add    %al,(%eax)
 8048253:	00 12                	add    %dl,(%edx)
 8048255:	00 00                	add    %al,(%eax)
 8048257:	00 31                	add    %dh,(%ecx)
 8048259:	00 00                	add    %al,(%eax)
 804825b:	00 44 a0 04          	add    %al,0x4(%eax,%eiz,4)
 804825f:	08 04 00             	or     %al,(%eax,%eax,1)
 8048262:	00 00                	add    %al,(%eax)
 8048264:	11 00                	adc    %eax,(%eax)
 8048266:	1a 00                	sbb    (%eax),%al
 8048268:	0b 00                	or     (%eax),%eax
 804826a:	00 00                	add    %al,(%eax)
 804826c:	4c                   	dec    %esp
 804826d:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8048270:	04 00                	add    $0x0,%al
 8048272:	00 00                	add    %al,(%eax)
 8048274:	11 00                	adc    %eax,(%eax)
 8048276:	10 00                	adc    %al,(%eax)
 8048278:	24 00                	and    $0x0,%al
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
 804828e:	73 6f                	jae    80482ff <_init-0x79>
 8048290:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048295:	4f                   	dec    %edi
 8048296:	5f                   	pop    %edi
 8048297:	73 74                	jae    804830d <_init-0x6b>
 8048299:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 80482a0:	64
 80482a1:	00 67 65             	add    %ah,0x65(%edi)
 80482a4:	74 73                	je     8048319 <_init-0x5f>
 80482a6:	00 70 75             	add    %dh,0x75(%eax)
 80482a9:	74 73                	je     804831e <_init-0x5a>
 80482ab:	00 73 74             	add    %dh,0x74(%ebx)
 80482ae:	64 69 6e 00 70 72 69 	imul   $0x6e697270,%fs:0x0(%esi),%ebp
 80482b5:	6e
 80482b6:	74 66                	je     804831e <_init-0x5a>
 80482b8:	00 73 74             	add    %dh,0x74(%ebx)
 80482bb:	64 6f                	outsl  %fs:(%esi),(%dx)
 80482bd:	75 74                	jne    8048333 <_init-0x45>
 80482bf:	00 73 79             	add    %dh,0x79(%ebx)
 80482c2:	73 74                	jae    8048338 <_init-0x40>
 80482c4:	65 6d                	gs insl (%dx),%es:(%edi)
 80482c6:	00 73 65             	add    %dh,0x65(%ebx)
 80482c9:	74 76                	je     8048341 <_init-0x37>
 80482cb:	62 75 66             	bound  %esi,0x66(%ebp)
 80482ce:	00 5f 5f             	add    %bl,0x5f(%edi)
 80482d1:	6c                   	insb   (%dx),%es:(%edi)
 80482d2:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 80482d9:	72 74                	jb     804834f <_init-0x29>
 80482db:	5f                   	pop    %edi
 80482dc:	6d                   	insl   (%dx),%es:(%edi)
 80482dd:	61                   	popa
 80482de:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%esi),%ebp
 80482e5:	6f                   	outsl  %ds:(%esi),(%dx)
 80482e6:	6e                   	outsb  %ds:(%esi),(%dx)
 80482e7:	5f                   	pop    %edi
 80482e8:	73 74                	jae    804835e <_init-0x1a>
 80482ea:	61                   	popa
 80482eb:	72 74                	jb     8048361 <_init-0x17>
 80482ed:	5f                   	pop    %edi
 80482ee:	5f                   	pop    %edi
 80482ef:	00 47 4c             	add    %al,0x4c(%edi)
 80482f2:	49                   	dec    %ecx
 80482f3:	42                   	inc    %edx
 80482f4:	43                   	inc    %ebx
 80482f5:	5f                   	pop    %edi
 80482f6:	32 2e                	xor    (%esi),%ch
 80482f8:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

080482fa <.gnu.version>:
 80482fa:	00 00                	add    %al,(%eax)
 80482fc:	02 00                	add    (%eax),%al
 80482fe:	02 00                	add    (%eax),%al
 8048300:	02 00                	add    (%eax),%al
 8048302:	02 00                	add    (%eax),%al
 8048304:	00 00                	add    %al,(%eax)
 8048306:	02 00                	add    (%eax),%al
 8048308:	02 00                	add    (%eax),%al
 804830a:	02 00                	add    (%eax),%al
 804830c:	01 00                	add    %eax,(%eax)
 804830e:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

08048310 <.gnu.version_r>:
 8048310:	01 00                	add    %eax,(%eax)
 8048312:	01 00                	add    %eax,(%eax)
 8048314:	01 00                	add    %eax,(%eax)
 8048316:	00 00                	add    %al,(%eax)
 8048318:	10 00                	adc    %al,(%eax)
 804831a:	00 00                	add    %al,(%eax)
 804831c:	00 00                	add    %al,(%eax)
 804831e:	00 00                	add    %al,(%eax)
 8048320:	10 69 69             	adc    %ch,0x69(%ecx)
 8048323:	0d 00 00 02 00       	or     $0x20000,%eax
 8048328:	68 00 00 00 00       	push   $0x0
 804832d:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048330 <.rel.dyn>:
 8048330:	fc                   	cld
 8048331:	9f                   	lahf
 8048332:	04 08                	add    $0x8,%al
 8048334:	06                   	push   %es
 8048335:	05 00 00 40 a0       	add    $0xa0400000,%eax
 804833a:	04 08                	add    $0x8,%al
 804833c:	05 0a 00 00 44       	add    $0x4400000a,%eax
 8048341:	a0 04 08 05 08       	mov    0x8050804,%al
	...

Disassembly of section .rel.plt:

08048348 <.rel.plt>:
 8048348:	0c a0                	or     $0xa0,%al
 804834a:	04 08                	add    $0x8,%al
 804834c:	07                   	pop    %es
 804834d:	01 00                	add    %eax,(%eax)
 804834f:	00 10                	add    %dl,(%eax)
 8048351:	a0 04 08 07 02       	mov    0x2070804,%al
 8048356:	00 00                	add    %al,(%eax)
 8048358:	14 a0                	adc    $0xa0,%al
 804835a:	04 08                	add    $0x8,%al
 804835c:	07                   	pop    %es
 804835d:	03 00                	add    (%eax),%eax
 804835f:	00 18                	add    %bl,(%eax)
 8048361:	a0 04 08 07 04       	mov    0x4070804,%al
 8048366:	00 00                	add    %al,(%eax)
 8048368:	1c a0                	sbb    $0xa0,%al
 804836a:	04 08                	add    $0x8,%al
 804836c:	07                   	pop    %es
 804836d:	06                   	push   %es
 804836e:	00 00                	add    %al,(%eax)
 8048370:	20 a0 04 08 07 07    	and    %ah,0x7070804(%eax)
	...

Disassembly of section .init:

08048378 <_init>:
 8048378:	53                   	push   %ebx
 8048379:	83 ec 08             	sub    $0x8,%esp
 804837c:	e8 cf 00 00 00       	call   8048450 <__x86.get_pc_thunk.bx>
 8048381:	81 c3 7f 1c 00 00    	add    $0x1c7f,%ebx
 8048387:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804838d:	85 c0                	test   %eax,%eax
 804838f:	74 05                	je     8048396 <_init+0x1e>
 8048391:	e8 7a 00 00 00       	call   8048410 <__gmon_start__@plt>
 8048396:	83 c4 08             	add    $0x8,%esp
 8048399:	5b                   	pop    %ebx
 804839a:	c3                   	ret

Disassembly of section .plt:

080483a0 <.plt>:
 80483a0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483a6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483ac:	00 00                	add    %al,(%eax)
	...

080483b0 <printf@plt>:
 80483b0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483b6:	68 00 00 00 00       	push   $0x0
 80483bb:	e9 e0 ff ff ff       	jmp    80483a0 <.plt>

080483c0 <gets@plt>:
 80483c0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483c6:	68 08 00 00 00       	push   $0x8
 80483cb:	e9 d0 ff ff ff       	jmp    80483a0 <.plt>

080483d0 <puts@plt>:
 80483d0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483d6:	68 10 00 00 00       	push   $0x10
 80483db:	e9 c0 ff ff ff       	jmp    80483a0 <.plt>

080483e0 <system@plt>:
 80483e0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483e6:	68 18 00 00 00       	push   $0x18
 80483eb:	e9 b0 ff ff ff       	jmp    80483a0 <.plt>

080483f0 <__libc_start_main@plt>:
 80483f0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483f6:	68 20 00 00 00       	push   $0x20
 80483fb:	e9 a0 ff ff ff       	jmp    80483a0 <.plt>

08048400 <setvbuf@plt>:
 8048400:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048406:	68 28 00 00 00       	push   $0x28
 804840b:	e9 90 ff ff ff       	jmp    80483a0 <.plt>

Disassembly of section .plt.got:

08048410 <__gmon_start__@plt>:
 8048410:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048416:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048420 <_start>:
 8048420:	31 ed                	xor    %ebp,%ebp
 8048422:	5e                   	pop    %esi
 8048423:	89 e1                	mov    %esp,%ecx
 8048425:	83 e4 f0             	and    $0xfffffff0,%esp
 8048428:	50                   	push   %eax
 8048429:	54                   	push   %esp
 804842a:	52                   	push   %edx
 804842b:	68 30 86 04 08       	push   $0x8048630
 8048430:	68 d0 85 04 08       	push   $0x80485d0
 8048435:	51                   	push   %ecx
 8048436:	56                   	push   %esi
 8048437:	68 1b 85 04 08       	push   $0x804851b
 804843c:	e8 af ff ff ff       	call   80483f0 <__libc_start_main@plt>
 8048441:	f4                   	hlt
 8048442:	66 90                	xchg   %ax,%ax
 8048444:	66 90                	xchg   %ax,%ax
 8048446:	66 90                	xchg   %ax,%ax
 8048448:	66 90                	xchg   %ax,%ax
 804844a:	66 90                	xchg   %ax,%ax
 804844c:	66 90                	xchg   %ax,%ax
 804844e:	66 90                	xchg   %ax,%ax

08048450 <__x86.get_pc_thunk.bx>:
 8048450:	8b 1c 24             	mov    (%esp),%ebx
 8048453:	c3                   	ret
 8048454:	66 90                	xchg   %ax,%ax
 8048456:	66 90                	xchg   %ax,%ax
 8048458:	66 90                	xchg   %ax,%ax
 804845a:	66 90                	xchg   %ax,%ax
 804845c:	66 90                	xchg   %ax,%ax
 804845e:	66 90                	xchg   %ax,%ax

08048460 <deregister_tm_clones>:
 8048460:	b8 2f a0 04 08       	mov    $0x804a02f,%eax
 8048465:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804846a:	83 f8 06             	cmp    $0x6,%eax
 804846d:	76 1a                	jbe    8048489 <deregister_tm_clones+0x29>
 804846f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048474:	85 c0                	test   %eax,%eax
 8048476:	74 11                	je     8048489 <deregister_tm_clones+0x29>
 8048478:	55                   	push   %ebp
 8048479:	89 e5                	mov    %esp,%ebp
 804847b:	83 ec 14             	sub    $0x14,%esp
 804847e:	68 2c a0 04 08       	push   $0x804a02c
 8048483:	ff d0                	call   *%eax
 8048485:	83 c4 10             	add    $0x10,%esp
 8048488:	c9                   	leave
 8048489:	f3 c3                	repz ret
 804848b:	90                   	nop
 804848c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048490 <register_tm_clones>:
 8048490:	b8 2c a0 04 08       	mov    $0x804a02c,%eax
 8048495:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804849a:	c1 f8 02             	sar    $0x2,%eax
 804849d:	89 c2                	mov    %eax,%edx
 804849f:	c1 ea 1f             	shr    $0x1f,%edx
 80484a2:	01 d0                	add    %edx,%eax
 80484a4:	d1 f8                	sar    %eax
 80484a6:	74 1b                	je     80484c3 <register_tm_clones+0x33>
 80484a8:	ba 00 00 00 00       	mov    $0x0,%edx
 80484ad:	85 d2                	test   %edx,%edx
 80484af:	74 12                	je     80484c3 <register_tm_clones+0x33>
 80484b1:	55                   	push   %ebp
 80484b2:	89 e5                	mov    %esp,%ebp
 80484b4:	83 ec 10             	sub    $0x10,%esp
 80484b7:	50                   	push   %eax
 80484b8:	68 2c a0 04 08       	push   $0x804a02c
 80484bd:	ff d2                	call   *%edx
 80484bf:	83 c4 10             	add    $0x10,%esp
 80484c2:	c9                   	leave
 80484c3:	f3 c3                	repz ret
 80484c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484d0 <__do_global_dtors_aux>:
 80484d0:	80 3d 48 a0 04 08 00 	cmpb   $0x0,0x804a048
 80484d7:	75 13                	jne    80484ec <__do_global_dtors_aux+0x1c>
 80484d9:	55                   	push   %ebp
 80484da:	89 e5                	mov    %esp,%ebp
 80484dc:	83 ec 08             	sub    $0x8,%esp
 80484df:	e8 7c ff ff ff       	call   8048460 <deregister_tm_clones>
 80484e4:	c6 05 48 a0 04 08 01 	movb   $0x1,0x804a048
 80484eb:	c9                   	leave
 80484ec:	f3 c3                	repz ret
 80484ee:	66 90                	xchg   %ax,%ax

080484f0 <frame_dummy>:
 80484f0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80484f5:	8b 10                	mov    (%eax),%edx
 80484f7:	85 d2                	test   %edx,%edx
 80484f9:	75 05                	jne    8048500 <frame_dummy+0x10>
 80484fb:	eb 93                	jmp    8048490 <register_tm_clones>
 80484fd:	8d 76 00             	lea    0x0(%esi),%esi
 8048500:	ba 00 00 00 00       	mov    $0x0,%edx
 8048505:	85 d2                	test   %edx,%edx
 8048507:	74 f2                	je     80484fb <frame_dummy+0xb>
 8048509:	55                   	push   %ebp
 804850a:	89 e5                	mov    %esp,%ebp
 804850c:	83 ec 14             	sub    $0x14,%esp
 804850f:	50                   	push   %eax
 8048510:	ff d2                	call   *%edx
 8048512:	83 c4 10             	add    $0x10,%esp
 8048515:	c9                   	leave
 8048516:	e9 75 ff ff ff       	jmp    8048490 <register_tm_clones>

0804851b <main>:
 804851b:	55                   	push   %ebp
 804851c:	89 e5                	mov    %esp,%ebp
 804851e:	81 ec 2c 01 00 00    	sub    $0x12c,%esp
 8048524:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048529:	6a 00                	push   $0x0
 804852b:	6a 02                	push   $0x2
 804852d:	6a 00                	push   $0x0
 804852f:	50                   	push   %eax
 8048530:	e8 cb fe ff ff       	call   8048400 <setvbuf@plt>
 8048535:	83 c4 10             	add    $0x10,%esp
 8048538:	a1 40 a0 04 08       	mov    0x804a040,%eax
 804853d:	6a 00                	push   $0x0
 804853f:	6a 02                	push   $0x2
 8048541:	6a 00                	push   $0x0
 8048543:	50                   	push   %eax
 8048544:	e8 b7 fe ff ff       	call   8048400 <setvbuf@plt>
 8048549:	83 c4 10             	add    $0x10,%esp
 804854c:	68 50 86 04 08       	push   $0x8048650
 8048551:	e8 7a fe ff ff       	call   80483d0 <puts@plt>
 8048556:	83 c4 04             	add    $0x4,%esp
 8048559:	68 6c 86 04 08       	push   $0x804866c
 804855e:	e8 6d fe ff ff       	call   80483d0 <puts@plt>
 8048563:	83 c4 04             	add    $0x4,%esp
 8048566:	68 a0 86 04 08       	push   $0x80486a0
 804856b:	e8 60 fe ff ff       	call   80483d0 <puts@plt>
 8048570:	83 c4 04             	add    $0x4,%esp
 8048573:	68 dc 86 04 08       	push   $0x80486dc
 8048578:	e8 53 fe ff ff       	call   80483d0 <puts@plt>
 804857d:	83 c4 04             	add    $0x4,%esp
 8048580:	8d 85 d4 fe ff ff    	lea    -0x12c(%ebp),%eax
 8048586:	50                   	push   %eax
 8048587:	e8 34 fe ff ff       	call   80483c0 <gets@plt>
 804858c:	83 c4 04             	add    $0x4,%esp
 804858f:	8d 85 d4 fe ff ff    	lea    -0x12c(%ebp),%eax
 8048595:	50                   	push   %eax
 8048596:	e8 35 fe ff ff       	call   80483d0 <puts@plt>
 804859b:	83 c4 04             	add    $0x4,%esp
 804859e:	b8 00 00 00 00       	mov    $0x0,%eax
 80485a3:	c9                   	leave
 80485a4:	c3                   	ret

080485a5 <oneshot>:
 80485a5:	55                   	push   %ebp
 80485a6:	89 e5                	mov    %esp,%ebp
 80485a8:	68 f0 86 04 08       	push   $0x80486f0
 80485ad:	e8 2e fe ff ff       	call   80483e0 <system@plt>
 80485b2:	83 c4 04             	add    $0x4,%esp
 80485b5:	68 f9 86 04 08       	push   $0x80486f9
 80485ba:	e8 f1 fd ff ff       	call   80483b0 <printf@plt>
 80485bf:	83 c4 04             	add    $0x4,%esp
 80485c2:	90                   	nop
 80485c3:	c9                   	leave
 80485c4:	c3                   	ret
 80485c5:	66 90                	xchg   %ax,%ax
 80485c7:	66 90                	xchg   %ax,%ax
 80485c9:	66 90                	xchg   %ax,%ax
 80485cb:	66 90                	xchg   %ax,%ax
 80485cd:	66 90                	xchg   %ax,%ax
 80485cf:	90                   	nop

080485d0 <__libc_csu_init>:
 80485d0:	55                   	push   %ebp
 80485d1:	57                   	push   %edi
 80485d2:	56                   	push   %esi
 80485d3:	53                   	push   %ebx
 80485d4:	e8 77 fe ff ff       	call   8048450 <__x86.get_pc_thunk.bx>
 80485d9:	81 c3 27 1a 00 00    	add    $0x1a27,%ebx
 80485df:	83 ec 0c             	sub    $0xc,%esp
 80485e2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80485e6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485ec:	e8 87 fd ff ff       	call   8048378 <_init>
 80485f1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485f7:	29 c6                	sub    %eax,%esi
 80485f9:	c1 fe 02             	sar    $0x2,%esi
 80485fc:	85 f6                	test   %esi,%esi
 80485fe:	74 25                	je     8048625 <__libc_csu_init+0x55>
 8048600:	31 ff                	xor    %edi,%edi
 8048602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048608:	83 ec 04             	sub    $0x4,%esp
 804860b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804860f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048613:	55                   	push   %ebp
 8048614:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804861b:	83 c7 01             	add    $0x1,%edi
 804861e:	83 c4 10             	add    $0x10,%esp
 8048621:	39 f7                	cmp    %esi,%edi
 8048623:	75 e3                	jne    8048608 <__libc_csu_init+0x38>
 8048625:	83 c4 0c             	add    $0xc,%esp
 8048628:	5b                   	pop    %ebx
 8048629:	5e                   	pop    %esi
 804862a:	5f                   	pop    %edi
 804862b:	5d                   	pop    %ebp
 804862c:	c3                   	ret
 804862d:	8d 76 00             	lea    0x0(%esi),%esi

08048630 <__libc_csu_fini>:
 8048630:	f3 c3                	repz ret

Disassembly of section .fini:

08048634 <_fini>:
 8048634:	53                   	push   %ebx
 8048635:	83 ec 08             	sub    $0x8,%esp
 8048638:	e8 13 fe ff ff       	call   8048450 <__x86.get_pc_thunk.bx>
 804863d:	81 c3 c3 19 00 00    	add    $0x19c3,%ebx
 8048643:	83 c4 08             	add    $0x8,%esp
 8048646:	5b                   	pop    %ebx
 8048647:	c3                   	ret

Disassembly of section .rodata:

08048648 <_fp_hw>:
 8048648:	03 00                	add    (%eax),%eax
	...

0804864c <_IO_stdin_used>:
 804864c:	01 00                	add    %eax,(%eax)
 804864e:	02 00                	add    (%eax),%al
 8048650:	44                   	inc    %esp
 8048651:	6f                   	outsl  %ds:(%esi),(%dx)
 8048652:	20 79 6f             	and    %bh,0x6f(%ecx)
 8048655:	75 20                	jne    8048677 <_IO_stdin_used+0x2b>
 8048657:	6b 6e 6f 77          	imul   $0x77,0x6f(%esi),%ebp
 804865b:	20 62 61             	and    %ah,0x61(%edx)
 804865e:	73 69                	jae    80486c9 <_IO_stdin_used+0x7d>
 8048660:	63 20                	arpl   %sp,(%eax)
 8048662:	6f                   	outsl  %ds:(%esi),(%dx)
 8048663:	66 20 42 4f          	data16 and %al,0x4f(%edx)
 8048667:	46                   	inc    %esi
 8048668:	3f                   	aas
 8048669:	00 00                	add    %al,(%eax)
 804866b:	00 54 68 69          	add    %dl,0x69(%eax,%ebp,2)
 804866f:	73 20                	jae    8048691 <_IO_stdin_used+0x45>
 8048671:	70 72                	jo     80486e5 <_IO_stdin_used+0x99>
 8048673:	6f                   	outsl  %ds:(%esi),(%dx)
 8048674:	62 20                	bound  %esp,(%eax)
 8048676:	69 73 20 66 6f 72 20 	imul   $0x20726f66,0x20(%ebx),%esi
 804867d:	6e                   	outsb  %ds:(%esi),(%dx)
 804867e:	65 77 62             	gs ja  80486e3 <_IO_stdin_used+0x97>
 8048681:	69 65 20 70 77 6e 65 	imul   $0x656e7770,0x20(%ebp),%esp
 8048688:	72 2c                	jb     80486b6 <_IO_stdin_used+0x6a>
 804868a:	20 73 6f             	and    %dh,0x6f(%ebx)
 804868d:	20 69 74             	and    %ch,0x74(%ecx)
 8048690:	20 69 73             	and    %ch,0x73(%ecx)
 8048693:	20 78 33             	and    %bh,0x33(%eax)
 8048696:	32 20                	xor    (%eax),%ah
 8048698:	62 69 6e             	bound  %ebp,0x6e(%ecx)
 804869b:	61                   	popa
 804869c:	72 79                	jb     8048717 <_IO_stdin_used+0xcb>
 804869e:	00 00                	add    %al,(%eax)
 80486a0:	54                   	push   %esp
 80486a1:	68 69 73 20 45       	push   $0x45207369
 80486a6:	6e                   	outsb  %ds:(%esi),(%dx)
 80486a7:	76 69                	jbe    8048712 <_IO_stdin_used+0xc6>
 80486a9:	72 6f                	jb     804871a <__GNU_EH_FRAME_HDR+0x2>
 80486ab:	6e                   	outsb  %ds:(%esi),(%dx)
 80486ac:	6d                   	insl   (%dx),%es:(%edi)
 80486ad:	65 6e                	outsb  %gs:(%esi),(%dx)
 80486af:	74 20                	je     80486d1 <_IO_stdin_used+0x85>
 80486b1:	68 61 73 20 6f       	push   $0x6f207361
 80486b6:	6e                   	outsb  %ds:(%esi),(%dx)
 80486b7:	6c                   	insb   (%dx),%es:(%edi)
 80486b8:	79 20                	jns    80486da <_IO_stdin_used+0x8e>
 80486ba:	41                   	inc    %ecx
 80486bb:	53                   	push   %ebx
 80486bc:	4c                   	dec    %esp
 80486bd:	52                   	push   %edx
 80486be:	20 61 6e             	and    %ah,0x6e(%ecx)
 80486c1:	64 20 4e 58          	and    %cl,%fs:0x58(%esi)
 80486c5:	2c 20                	sub    $0x20,%al
 80486c7:	4e                   	dec    %esi
 80486c8:	4f                   	dec    %edi
 80486c9:	20 6f 74             	and    %ch,0x74(%edi)
 80486cc:	68 65 72 20 6d       	push   $0x6d207265
 80486d1:	69 67 69 74 61 74 69 	imul   $0x69746174,0x69(%edi),%esp
 80486d8:	6f                   	outsl  %ds:(%esi),(%dx)
 80486d9:	6e                   	outsb  %ds:(%esi),(%dx)
 80486da:	73 00                	jae    80486dc <_IO_stdin_used+0x90>
 80486dc:	43                   	inc    %ebx
 80486dd:	61                   	popa
 80486de:	6e                   	outsb  %ds:(%esi),(%dx)
 80486df:	20 79 6f             	and    %bh,0x6f(%ecx)
 80486e2:	75 20                	jne    8048704 <_IO_stdin_used+0xb8>
 80486e4:	45                   	inc    %ebp
 80486e5:	78 70                	js     8048757 <__GNU_EH_FRAME_HDR+0x3f>
 80486e7:	6c                   	insb   (%dx),%es:(%edi)
 80486e8:	6f                   	outsl  %ds:(%esi),(%dx)
 80486e9:	69 74 20 69 74 3f 00 	imul   $0x63003f74,0x69(%eax,%eiz,1),%esi
 80486f0:	63
 80486f1:	61                   	popa
 80486f2:	74 20                	je     8048714 <_IO_stdin_used+0xc8>
 80486f4:	66 6c                	data16 insb (%dx),%es:(%edi)
 80486f6:	61                   	popa
 80486f7:	67 00 3a             	add    %bh,(%bp,%si)
 80486fa:	28 2e                	sub    %ch,(%esi)
 80486fc:	2e 2e 2e 4f          	cs cs cs dec %edi
 8048700:	6e                   	outsb  %ds:(%esi),(%dx)
 8048701:	65 20 53 68          	and    %dl,%gs:0x68(%ebx)
 8048705:	6f                   	outsl  %ds:(%esi),(%dx)
 8048706:	74 2e                	je     8048736 <__GNU_EH_FRAME_HDR+0x1e>
 8048708:	2e 20 4f 6e          	and    %cl,%cs:0x6e(%edi)
 804870c:	65 20 4b 69          	and    %cl,%gs:0x69(%ebx)
 8048710:	6c                   	insb   (%dx),%es:(%edi)
 8048711:	6c                   	insb   (%dx),%es:(%edi)
 8048712:	2e                   	cs
 8048713:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

08048718 <__GNU_EH_FRAME_HDR>:
 8048718:	01 1b                	add    %ebx,(%ebx)
 804871a:	03 3b                	add    (%ebx),%edi
 804871c:	30 00                	xor    %al,(%eax)
 804871e:	00 00                	add    %al,(%eax)
 8048720:	05 00 00 00 88       	add    $0x88000000,%eax
 8048725:	fc                   	cld
 8048726:	ff                   	(bad)
 8048727:	ff 4c 00 00          	decl   0x0(%eax,%eax,1)
 804872b:	00 03                	add    %al,(%ebx)
 804872d:	fe                   	(bad)
 804872e:	ff                   	(bad)
 804872f:	ff 70 00             	pushl  0x0(%eax)
 8048732:	00 00                	add    %al,(%eax)
 8048734:	8d                   	(bad)
 8048735:	fe                   	(bad)
 8048736:	ff                   	(bad)
 8048737:	ff 90 00 00 00 b8    	call   *-0x48000000(%eax)
 804873d:	fe                   	(bad)
 804873e:	ff                   	(bad)
 804873f:	ff b0 00 00 00 18    	pushl  0x18000000(%eax)
 8048745:	ff                   	(bad)
 8048746:	ff                   	(bad)
 8048747:	ff                   	(bad)
 8048748:	fc                   	cld
 8048749:	00 00                	add    %al,(%eax)
	...

Disassembly of section .eh_frame:

0804874c <__FRAME_END__-0xdc>:
 804874c:	14 00                	adc    $0x0,%al
 804874e:	00 00                	add    %al,(%eax)
 8048750:	00 00                	add    %al,(%eax)
 8048752:	00 00                	add    %al,(%eax)
 8048754:	01 7a 52             	add    %edi,0x52(%edx)
 8048757:	00 01                	add    %al,(%ecx)
 8048759:	7c 08                	jl     8048763 <__GNU_EH_FRAME_HDR+0x4b>
 804875b:	01 1b                	add    %ebx,(%ebx)
 804875d:	0c 04                	or     $0x4,%al
 804875f:	04 88                	add    $0x88,%al
 8048761:	01 00                	add    %eax,(%eax)
 8048763:	00 20                	add    %ah,(%eax)
 8048765:	00 00                	add    %al,(%eax)
 8048767:	00 1c 00             	add    %bl,(%eax,%eax,1)
 804876a:	00 00                	add    %al,(%eax)
 804876c:	34 fc                	xor    $0xfc,%al
 804876e:	ff                   	(bad)
 804876f:	ff 70 00             	pushl  0x0(%eax)
 8048772:	00 00                	add    %al,(%eax)
 8048774:	00 0e                	add    %cl,(%esi)
 8048776:	08 46 0e             	or     %al,0xe(%esi)
 8048779:	0c 4a                	or     $0x4a,%al
 804877b:	0f 0b                	ud2
 804877d:	74 04                	je     8048783 <__GNU_EH_FRAME_HDR+0x6b>
 804877f:	78 00                	js     8048781 <__GNU_EH_FRAME_HDR+0x69>
 8048781:	3f                   	aas
 8048782:	1a 3b                	sbb    (%ebx),%bh
 8048784:	2a 32                	sub    (%edx),%dh
 8048786:	24 22                	and    $0x22,%al
 8048788:	1c 00                	sbb    $0x0,%al
 804878a:	00 00                	add    %al,(%eax)
 804878c:	40                   	inc    %eax
 804878d:	00 00                	add    %al,(%eax)
 804878f:	00 8b fd ff ff 8a    	add    %cl,-0x75000003(%ebx)
 8048795:	00 00                	add    %al,(%eax)
 8048797:	00 00                	add    %al,(%eax)
 8048799:	41                   	inc    %ecx
 804879a:	0e                   	push   %cs
 804879b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 80487a1:	02 86 c5 0c 04 04    	add    0x4040cc5(%esi),%al
 80487a7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80487aa:	00 00                	add    %al,(%eax)
 80487ac:	60                   	pusha
 80487ad:	00 00                	add    %al,(%eax)
 80487af:	00 f5                	add    %dh,%ch
 80487b1:	fd                   	std
 80487b2:	ff                   	(bad)
 80487b3:	ff 20                	jmp    *(%eax)
 80487b5:	00 00                	add    %al,(%eax)
 80487b7:	00 00                	add    %al,(%eax)
 80487b9:	41                   	inc    %ecx
 80487ba:	0e                   	push   %cs
 80487bb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 80487c1:	5c                   	pop    %esp
 80487c2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 80487c5:	04 00                	add    $0x0,%al
 80487c7:	00 48 00             	add    %cl,0x0(%eax)
 80487ca:	00 00                	add    %al,(%eax)
 80487cc:	80 00 00             	addb   $0x0,(%eax)
 80487cf:	00 00                	add    %al,(%eax)
 80487d1:	fe                   	(bad)
 80487d2:	ff                   	(bad)
 80487d3:	ff 5d 00             	lcall  *0x0(%ebp)
 80487d6:	00 00                	add    %al,(%eax)
 80487d8:	00 41 0e             	add    %al,0xe(%ecx)
 80487db:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 80487e1:	87 03                	xchg   %eax,(%ebx)
 80487e3:	41                   	inc    %ecx
 80487e4:	0e                   	push   %cs
 80487e5:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 80487eb:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 80487f2:	24 44                	and    $0x44,%al
 80487f4:	0e                   	push   %cs
 80487f5:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 80487f9:	41                   	inc    %ecx
 80487fa:	0e                   	push   %cs
 80487fb:	30 4d 0e             	xor    %cl,0xe(%ebp)
 80487fe:	20 47 0e             	and    %al,0xe(%edi)
 8048801:	14 41                	adc    $0x41,%al
 8048803:	c3                   	ret
 8048804:	0e                   	push   %cs
 8048805:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048808:	0e                   	push   %cs
 8048809:	0c 41                	or     $0x41,%al
 804880b:	c7                   	(bad)
 804880c:	0e                   	push   %cs
 804880d:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048810:	0e                   	push   %cs
 8048811:	04 00                	add    $0x0,%al
 8048813:	00 10                	add    %dl,(%eax)
 8048815:	00 00                	add    %al,(%eax)
 8048817:	00 cc                	add    %cl,%ah
 8048819:	00 00                	add    %al,(%eax)
 804881b:	00 14 fe             	add    %dl,(%esi,%edi,8)
 804881e:	ff                   	(bad)
 804881f:	ff 02                	incl   (%edx)
 8048821:	00 00                	add    %al,(%eax)
 8048823:	00 00                	add    %al,(%eax)
 8048825:	00 00                	add    %al,(%eax)
	...

08048828 <__FRAME_END__>:
 8048828:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	f0 84 04 08          	lock test %al,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	d0                   	.byte 0xd0
 8049f0d:	84 04 08             	test   %al,(%eax,%ecx,1)

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
 8049f20:	78 83                	js     8049ea5 <__FRAME_END__+0x167d>
 8049f22:	04 08                	add    $0x8,%al
 8049f24:	0d 00 00 00 34       	or     $0x34000000,%eax
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
 8049f68:	72 00                	jb     8049f6a <_DYNAMIC+0x56>
 8049f6a:	00 00                	add    %al,(%eax)
 8049f6c:	0b 00                	or     (%eax),%eax
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
 8049f88:	30 00                	xor    %al,(%eax)
 8049f8a:	00 00                	add    %al,(%eax)
 8049f8c:	14 00                	adc    $0x0,%al
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 48 83             	add    %cl,-0x7d(%eax)
 8049f9a:	04 08                	add    $0x8,%al
 8049f9c:	11 00                	adc    %eax,(%eax)
 8049f9e:	00 00                	add    %al,(%eax)
 8049fa0:	30 83 04 08 12 00    	xor    %al,0x120804(%ebx)
 8049fa6:	00 00                	add    %al,(%eax)
 8049fa8:	18 00                	sbb    %al,(%eax)
 8049faa:	00 00                	add    %al,(%eax)
 8049fac:	13 00                	adc    (%eax),%eax
 8049fae:	00 00                	add    %al,(%eax)
 8049fb0:	08 00                	or     %al,(%eax)
 8049fb2:	00 00                	add    %al,(%eax)
 8049fb4:	fe                   	(bad)
 8049fb5:	ff                   	(bad)
 8049fb6:	ff 6f 10             	ljmp   *0x10(%edi)
 8049fb9:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fbd:	ff                   	(bad)
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)
 8049fc6:	ff 6f fa             	ljmp   *-0x6(%edi)
 8049fc9:	82 04 08 00          	addb   $0x0,(%eax,%ecx,1)
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
 804a00c:	b6 83                	mov    $0x83,%dh
 804a00e:	04 08                	add    $0x8,%al
 804a010:	c6 83 04 08 d6 83 04 	movb   $0x4,-0x7c29f7fc(%ebx)
 804a017:	08 e6                	or     %ah,%dh
 804a019:	83 04 08 f6          	addl   $0xfffffff6,(%eax,%ecx,1)
 804a01d:	83 04 08 06          	addl   $0x6,(%eax,%ecx,1)
 804a021:	84 04 08             	test   %al,(%eax,%ecx,1)

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
   8:	75 6e                	jne    78 <_init-0x8048300>
   a:	74 75                	je     81 <_init-0x80482f7>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x80482e9>
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
