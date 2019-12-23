
badchars32:     file format elf32-i386


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
 8048197:	00 64 6a 0e          	add    %ah,0xe(%edx,%ebp,2)
 804819b:	c0 b6 ad aa d4 38 5d 	shlb   $0x5d,0x38d4aaad(%esi)
 80481a2:	78 45                	js     80481e9 <_init-0x257>
 80481a4:	98                   	cwtl
 80481a5:	7e 70                	jle    8048217 <_init-0x229>
 80481a7:	01 26                	add    %esp,(%esi)
 80481a9:	4d                   	dec    %ebp
 80481aa:	b8                   	.byte 0xb8
 80481ab:	71                   	.byte 0x71

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	0d 00 00 00 01       	or     $0x1000000,%eax
 80481b5:	00 00                	add    %al,(%eax)
 80481b7:	00 05 00 00 00 80    	add    %al,0x80000000
 80481bd:	2b 02                	sub    (%edx),%eax
 80481bf:	22 0d 00 00 00 0e    	and    0xe000000,%cl
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 00                	add    %al,(%eax)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 29                	add    %ch,(%ecx)
 80481cd:	1d 8c 1c 38 f2       	sbb    $0xf2381c8c,%eax
 80481d2:	8b 1c ac             	mov    (%esp,%ebp,4),%ebx
 80481d5:	4b                   	dec    %ebx
 80481d6:	e3 c0                	jecxz  8048198 <_init-0x2a8>
 80481d8:	67 55                	addr16 push %ebp
 80481da:	61                   	popa
 80481db:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481dc <.dynsym>:
	...
 80481ec:	2a 00                	sub    (%eax),%al
	...
 80481f6:	00 00                	add    %al,(%eax)
 80481f8:	12 00                	adc    (%eax),%al
 80481fa:	00 00                	add    %al,(%eax)
 80481fc:	7b 00                	jnp    80481fe <_init-0x242>
	...
 8048206:	00 00                	add    %al,(%eax)
 8048208:	12 00                	adc    (%eax),%al
 804820a:	00 00                	add    %al,(%eax)
 804820c:	45                   	inc    %ebp
	...
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 12                	add    %dl,(%edx)
 8048219:	00 00                	add    %al,(%eax)
 804821b:	00 31                	add    %dh,(%ecx)
	...
 8048225:	00 00                	add    %al,(%eax)
 8048227:	00 12                	add    %dl,(%edx)
 8048229:	00 00                	add    %al,(%eax)
 804822b:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
	...
 8048237:	00 12                	add    %dl,(%edx)
 8048239:	00 00                	add    %al,(%eax)
 804823b:	00 1f                	add    %bl,(%edi)
	...
 8048245:	00 00                	add    %al,(%eax)
 8048247:	00 12                	add    %dl,(%edx)
 8048249:	00 00                	add    %al,(%eax)
 804824b:	00 5a 00             	add    %bl,0x0(%edx)
	...
 8048256:	00 00                	add    %al,(%eax)
 8048258:	12 00                	adc    (%eax),%al
 804825a:	00 00                	add    %al,(%eax)
 804825c:	80 00 00             	addb   $0x0,(%eax)
	...
 8048267:	00 20                	add    %ah,(%eax)
 8048269:	00 00                	add    %al,(%eax)
 804826b:	00 1a                	add    %bl,(%edx)
	...
 8048275:	00 00                	add    %al,(%eax)
 8048277:	00 12                	add    %dl,(%edx)
 8048279:	00 00                	add    %al,(%eax)
 804827b:	00 69 00             	add    %ch,0x0(%ecx)
	...
 8048286:	00 00                	add    %al,(%eax)
 8048288:	12 00                	adc    (%eax),%al
 804828a:	00 00                	add    %al,(%eax)
 804828c:	61                   	popa
	...
 8048295:	00 00                	add    %al,(%eax)
 8048297:	00 12                	add    %dl,(%edx)
 8048299:	00 00                	add    %al,(%eax)
 804829b:	00 37                	add    %dh,(%edi)
	...
 80482a5:	00 00                	add    %al,(%eax)
 80482a7:	00 12                	add    %dl,(%edx)
 80482a9:	00 00                	add    %al,(%eax)
 80482ab:	00 3e                	add    %bh,(%esi)
 80482ad:	00 00                	add    %al,(%eax)
 80482af:	00 64 a0 04          	add    %ah,0x4(%eax,%eiz,4)
 80482b3:	08 04 00             	or     %al,(%eax,%eax,1)
 80482b6:	00 00                	add    %al,(%eax)
 80482b8:	11 00                	adc    %eax,(%eax)
 80482ba:	1a 00                	sbb    (%eax),%al
 80482bc:	53                   	push   %ebx
 80482bd:	00 00                	add    %al,(%eax)
 80482bf:	00 40 a0             	add    %al,-0x60(%eax)
 80482c2:	04 08                	add    $0x8,%al
 80482c4:	04 00                	add    $0x0,%al
 80482c6:	00 00                	add    %al,(%eax)
 80482c8:	11 00                	adc    %eax,(%eax)
 80482ca:	1a 00                	sbb    (%eax),%al
 80482cc:	0b 00                	or     (%eax),%eax
 80482ce:	00 00                	add    %al,(%eax)
 80482d0:	1c 89                	sbb    $0x89,%al
 80482d2:	04 08                	add    $0x8,%al
 80482d4:	04 00                	add    $0x0,%al
 80482d6:	00 00                	add    %al,(%eax)
 80482d8:	11 00                	adc    %eax,(%eax)
 80482da:	10 00                	adc    %al,(%eax)
 80482dc:	24 00                	and    $0x0,%al
 80482de:	00 00                	add    %al,(%eax)
 80482e0:	60                   	pusha
 80482e1:	a0 04 08 04 00       	mov    0x40804,%al
 80482e6:	00 00                	add    %al,(%eax)
 80482e8:	11 00                	adc    %eax,(%eax)
 80482ea:	1a 00                	sbb    (%eax),%al

Disassembly of section .dynstr:

080482ec <.dynstr>:
 80482ec:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 80482f0:	63 2e                	arpl   %bp,(%esi)
 80482f2:	73 6f                	jae    8048363 <_init-0xdd>
 80482f4:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 80482f9:	4f                   	dec    %edi
 80482fa:	5f                   	pop    %edi
 80482fb:	73 74                	jae    8048371 <_init-0xcf>
 80482fd:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048304:	64
 8048305:	00 65 78             	add    %ah,0x78(%ebp)
 8048308:	69 74 00 70 75 74 73 	imul   $0x737475,0x70(%eax,%eax,1),%esi
 804830f:	00
 8048310:	73 74                	jae    8048386 <_init-0xba>
 8048312:	64 69 6e 00 70 72 69 	imul   $0x6e697270,%fs:0x0(%esi),%ebp
 8048319:	6e
 804831a:	74 66                	je     8048382 <_init-0xbe>
 804831c:	00 66 67             	add    %ah,0x67(%esi)
 804831f:	65 74 73             	gs je  8048395 <_init-0xab>
 8048322:	00 6d 65             	add    %ch,0x65(%ebp)
 8048325:	6d                   	insl   (%dx),%es:(%edi)
 8048326:	73 65                	jae    804838d <_init-0xb3>
 8048328:	74 00                	je     804832a <_init-0x116>
 804832a:	73 74                	jae    80483a0 <_init-0xa0>
 804832c:	64 6f                	outsl  %fs:(%esi),(%dx)
 804832e:	75 74                	jne    80483a4 <_init-0x9c>
 8048330:	00 6d 65             	add    %ch,0x65(%ebp)
 8048333:	6d                   	insl   (%dx),%es:(%edi)
 8048334:	63 70 79             	arpl   %si,0x79(%eax)
 8048337:	00 6d 61             	add    %ch,0x61(%ebp)
 804833a:	6c                   	insb   (%dx),%es:(%edi)
 804833b:	6c                   	insb   (%dx),%es:(%edi)
 804833c:	6f                   	outsl  %ds:(%esi),(%dx)
 804833d:	63 00                	arpl   %ax,(%eax)
 804833f:	73 74                	jae    80483b5 <_init-0x8b>
 8048341:	64 65 72 72          	fs gs jb 80483b7 <_init-0x89>
 8048345:	00 73 79             	add    %dh,0x79(%ebx)
 8048348:	73 74                	jae    80483be <_init-0x82>
 804834a:	65 6d                	gs insl (%dx),%es:(%edi)
 804834c:	00 73 65             	add    %dh,0x65(%ebx)
 804834f:	74 76                	je     80483c7 <_init-0x79>
 8048351:	62 75 66             	bound  %esi,0x66(%ebp)
 8048354:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048357:	6c                   	insb   (%dx),%es:(%edi)
 8048358:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 804835f:	72 74                	jb     80483d5 <_init-0x6b>
 8048361:	5f                   	pop    %edi
 8048362:	6d                   	insl   (%dx),%es:(%edi)
 8048363:	61                   	popa
 8048364:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%esi),%ebp
 804836b:	00 5f 5f             	add    %bl,0x5f(%edi)
 804836e:	67 6d                	insl   (%dx),%es:(%di)
 8048370:	6f                   	outsl  %ds:(%esi),(%dx)
 8048371:	6e                   	outsb  %ds:(%esi),(%dx)
 8048372:	5f                   	pop    %edi
 8048373:	73 74                	jae    80483e9 <_init-0x57>
 8048375:	61                   	popa
 8048376:	72 74                	jb     80483ec <_init-0x54>
 8048378:	5f                   	pop    %edi
 8048379:	5f                   	pop    %edi
 804837a:	00 47 4c             	add    %al,0x4c(%edi)
 804837d:	49                   	dec    %ecx
 804837e:	42                   	inc    %edx
 804837f:	43                   	inc    %ebx
 8048380:	5f                   	pop    %edi
 8048381:	32 2e                	xor    (%esi),%ch
 8048383:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048386 <.gnu.version>:
 8048386:	00 00                	add    %al,(%eax)
 8048388:	02 00                	add    (%eax),%al
 804838a:	02 00                	add    (%eax),%al
 804838c:	02 00                	add    (%eax),%al
 804838e:	02 00                	add    (%eax),%al
 8048390:	02 00                	add    (%eax),%al
 8048392:	02 00                	add    (%eax),%al
 8048394:	02 00                	add    (%eax),%al
 8048396:	00 00                	add    %al,(%eax)
 8048398:	02 00                	add    (%eax),%al
 804839a:	02 00                	add    (%eax),%al
 804839c:	02 00                	add    (%eax),%al
 804839e:	02 00                	add    (%eax),%al
 80483a0:	02 00                	add    (%eax),%al
 80483a2:	02 00                	add    (%eax),%al
 80483a4:	01 00                	add    %eax,(%eax)
 80483a6:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

080483a8 <.gnu.version_r>:
 80483a8:	01 00                	add    %eax,(%eax)
 80483aa:	01 00                	add    %eax,(%eax)
 80483ac:	01 00                	add    %eax,(%eax)
 80483ae:	00 00                	add    %al,(%eax)
 80483b0:	10 00                	adc    %al,(%eax)
 80483b2:	00 00                	add    %al,(%eax)
 80483b4:	00 00                	add    %al,(%eax)
 80483b6:	00 00                	add    %al,(%eax)
 80483b8:	10 69 69             	adc    %ch,0x69(%ecx)
 80483bb:	0d 00 00 02 00       	or     $0x20000,%eax
 80483c0:	8f 00                	popl   (%eax)
 80483c2:	00 00                	add    %al,(%eax)
 80483c4:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

080483c8 <.rel.dyn>:
 80483c8:	fc                   	cld
 80483c9:	9f                   	lahf
 80483ca:	04 08                	add    $0x8,%al
 80483cc:	06                   	push   %es
 80483cd:	08 00                	or     %al,(%eax)
 80483cf:	00 40 a0             	add    %al,-0x60(%eax)
 80483d2:	04 08                	add    $0x8,%al
 80483d4:	05 0e 00 00 60       	add    $0x6000000e,%eax
 80483d9:	a0 04 08 05 10       	mov    0x10050804,%al
 80483de:	00 00                	add    %al,(%eax)
 80483e0:	64 a0 04 08 05 0d    	mov    %fs:0xd050804,%al
	...

Disassembly of section .rel.plt:

080483e8 <.rel.plt>:
 80483e8:	0c a0                	or     $0xa0,%al
 80483ea:	04 08                	add    $0x8,%al
 80483ec:	07                   	pop    %es
 80483ed:	01 00                	add    %eax,(%eax)
 80483ef:	00 10                	add    %dl,(%eax)
 80483f1:	a0 04 08 07 02       	mov    0x2070804,%al
 80483f6:	00 00                	add    %al,(%eax)
 80483f8:	14 a0                	adc    $0xa0,%al
 80483fa:	04 08                	add    $0x8,%al
 80483fc:	07                   	pop    %es
 80483fd:	03 00                	add    (%eax),%eax
 80483ff:	00 18                	add    %bl,(%eax)
 8048401:	a0 04 08 07 04       	mov    0x4070804,%al
 8048406:	00 00                	add    %al,(%eax)
 8048408:	1c a0                	sbb    $0xa0,%al
 804840a:	04 08                	add    $0x8,%al
 804840c:	07                   	pop    %es
 804840d:	05 00 00 20 a0       	add    $0xa0200000,%eax
 8048412:	04 08                	add    $0x8,%al
 8048414:	07                   	pop    %es
 8048415:	06                   	push   %es
 8048416:	00 00                	add    %al,(%eax)
 8048418:	24 a0                	and    $0xa0,%al
 804841a:	04 08                	add    $0x8,%al
 804841c:	07                   	pop    %es
 804841d:	07                   	pop    %es
 804841e:	00 00                	add    %al,(%eax)
 8048420:	28 a0 04 08 07 09    	sub    %ah,0x9070804(%eax)
 8048426:	00 00                	add    %al,(%eax)
 8048428:	2c a0                	sub    $0xa0,%al
 804842a:	04 08                	add    $0x8,%al
 804842c:	07                   	pop    %es
 804842d:	0a 00                	or     (%eax),%al
 804842f:	00 30                	add    %dh,(%eax)
 8048431:	a0 04 08 07 0b       	mov    0xb070804,%al
 8048436:	00 00                	add    %al,(%eax)
 8048438:	34 a0                	xor    $0xa0,%al
 804843a:	04 08                	add    $0x8,%al
 804843c:	07                   	pop    %es
 804843d:	0c 00                	or     $0x0,%al
	...

Disassembly of section .init:

08048440 <_init>:
 8048440:	53                   	push   %ebx
 8048441:	83 ec 08             	sub    $0x8,%esp
 8048444:	e8 27 01 00 00       	call   8048570 <__x86.get_pc_thunk.bx>
 8048449:	81 c3 b7 1b 00 00    	add    $0x1bb7,%ebx
 804844f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048455:	85 c0                	test   %eax,%eax
 8048457:	74 05                	je     804845e <_init+0x1e>
 8048459:	e8 d2 00 00 00       	call   8048530 <__gmon_start__@plt>
 804845e:	83 c4 08             	add    $0x8,%esp
 8048461:	5b                   	pop    %ebx
 8048462:	c3                   	ret

Disassembly of section .plt:

08048470 <.plt>:
 8048470:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048476:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804847c:	00 00                	add    %al,(%eax)
	...

08048480 <printf@plt>:
 8048480:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048486:	68 00 00 00 00       	push   $0x0
 804848b:	e9 e0 ff ff ff       	jmp    8048470 <.plt>

08048490 <free@plt>:
 8048490:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048496:	68 08 00 00 00       	push   $0x8
 804849b:	e9 d0 ff ff ff       	jmp    8048470 <.plt>

080484a0 <memcpy@plt>:
 80484a0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80484a6:	68 10 00 00 00       	push   $0x10
 80484ab:	e9 c0 ff ff ff       	jmp    8048470 <.plt>

080484b0 <fgets@plt>:
 80484b0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80484b6:	68 18 00 00 00       	push   $0x18
 80484bb:	e9 b0 ff ff ff       	jmp    8048470 <.plt>

080484c0 <malloc@plt>:
 80484c0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80484c6:	68 20 00 00 00       	push   $0x20
 80484cb:	e9 a0 ff ff ff       	jmp    8048470 <.plt>

080484d0 <puts@plt>:
 80484d0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80484d6:	68 28 00 00 00       	push   $0x28
 80484db:	e9 90 ff ff ff       	jmp    8048470 <.plt>

080484e0 <system@plt>:
 80484e0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80484e6:	68 30 00 00 00       	push   $0x30
 80484eb:	e9 80 ff ff ff       	jmp    8048470 <.plt>

080484f0 <exit@plt>:
 80484f0:	ff 25 28 a0 04 08    	jmp    *0x804a028
 80484f6:	68 38 00 00 00       	push   $0x38
 80484fb:	e9 70 ff ff ff       	jmp    8048470 <.plt>

08048500 <__libc_start_main@plt>:
 8048500:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 8048506:	68 40 00 00 00       	push   $0x40
 804850b:	e9 60 ff ff ff       	jmp    8048470 <.plt>

08048510 <setvbuf@plt>:
 8048510:	ff 25 30 a0 04 08    	jmp    *0x804a030
 8048516:	68 48 00 00 00       	push   $0x48
 804851b:	e9 50 ff ff ff       	jmp    8048470 <.plt>

08048520 <memset@plt>:
 8048520:	ff 25 34 a0 04 08    	jmp    *0x804a034
 8048526:	68 50 00 00 00       	push   $0x50
 804852b:	e9 40 ff ff ff       	jmp    8048470 <.plt>

Disassembly of section .plt.got:

08048530 <__gmon_start__@plt>:
 8048530:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048536:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048540 <_start>:
 8048540:	31 ed                	xor    %ebp,%ebp
 8048542:	5e                   	pop    %esi
 8048543:	89 e1                	mov    %esp,%ecx
 8048545:	83 e4 f0             	and    $0xfffffff0,%esp
 8048548:	50                   	push   %eax
 8048549:	54                   	push   %esp
 804854a:	52                   	push   %edx
 804854b:	68 00 89 04 08       	push   $0x8048900
 8048550:	68 a0 88 04 08       	push   $0x80488a0
 8048555:	51                   	push   %ecx
 8048556:	56                   	push   %esi
 8048557:	68 3b 86 04 08       	push   $0x804863b
 804855c:	e8 9f ff ff ff       	call   8048500 <__libc_start_main@plt>
 8048561:	f4                   	hlt
 8048562:	66 90                	xchg   %ax,%ax
 8048564:	66 90                	xchg   %ax,%ax
 8048566:	66 90                	xchg   %ax,%ax
 8048568:	66 90                	xchg   %ax,%ax
 804856a:	66 90                	xchg   %ax,%ax
 804856c:	66 90                	xchg   %ax,%ax
 804856e:	66 90                	xchg   %ax,%ax

08048570 <__x86.get_pc_thunk.bx>:
 8048570:	8b 1c 24             	mov    (%esp),%ebx
 8048573:	c3                   	ret
 8048574:	66 90                	xchg   %ax,%ax
 8048576:	66 90                	xchg   %ax,%ax
 8048578:	66 90                	xchg   %ax,%ax
 804857a:	66 90                	xchg   %ax,%ax
 804857c:	66 90                	xchg   %ax,%ax
 804857e:	66 90                	xchg   %ax,%ax

08048580 <deregister_tm_clones>:
 8048580:	b8 43 a0 04 08       	mov    $0x804a043,%eax
 8048585:	2d 40 a0 04 08       	sub    $0x804a040,%eax
 804858a:	83 f8 06             	cmp    $0x6,%eax
 804858d:	76 1a                	jbe    80485a9 <deregister_tm_clones+0x29>
 804858f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048594:	85 c0                	test   %eax,%eax
 8048596:	74 11                	je     80485a9 <deregister_tm_clones+0x29>
 8048598:	55                   	push   %ebp
 8048599:	89 e5                	mov    %esp,%ebp
 804859b:	83 ec 14             	sub    $0x14,%esp
 804859e:	68 40 a0 04 08       	push   $0x804a040
 80485a3:	ff d0                	call   *%eax
 80485a5:	83 c4 10             	add    $0x10,%esp
 80485a8:	c9                   	leave
 80485a9:	f3 c3                	repz ret
 80485ab:	90                   	nop
 80485ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080485b0 <register_tm_clones>:
 80485b0:	b8 40 a0 04 08       	mov    $0x804a040,%eax
 80485b5:	2d 40 a0 04 08       	sub    $0x804a040,%eax
 80485ba:	c1 f8 02             	sar    $0x2,%eax
 80485bd:	89 c2                	mov    %eax,%edx
 80485bf:	c1 ea 1f             	shr    $0x1f,%edx
 80485c2:	01 d0                	add    %edx,%eax
 80485c4:	d1 f8                	sar    %eax
 80485c6:	74 1b                	je     80485e3 <register_tm_clones+0x33>
 80485c8:	ba 00 00 00 00       	mov    $0x0,%edx
 80485cd:	85 d2                	test   %edx,%edx
 80485cf:	74 12                	je     80485e3 <register_tm_clones+0x33>
 80485d1:	55                   	push   %ebp
 80485d2:	89 e5                	mov    %esp,%ebp
 80485d4:	83 ec 10             	sub    $0x10,%esp
 80485d7:	50                   	push   %eax
 80485d8:	68 40 a0 04 08       	push   $0x804a040
 80485dd:	ff d2                	call   *%edx
 80485df:	83 c4 10             	add    $0x10,%esp
 80485e2:	c9                   	leave
 80485e3:	f3 c3                	repz ret
 80485e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485f0 <__do_global_dtors_aux>:
 80485f0:	80 3d 68 a0 04 08 00 	cmpb   $0x0,0x804a068
 80485f7:	75 13                	jne    804860c <__do_global_dtors_aux+0x1c>
 80485f9:	55                   	push   %ebp
 80485fa:	89 e5                	mov    %esp,%ebp
 80485fc:	83 ec 08             	sub    $0x8,%esp
 80485ff:	e8 7c ff ff ff       	call   8048580 <deregister_tm_clones>
 8048604:	c6 05 68 a0 04 08 01 	movb   $0x1,0x804a068
 804860b:	c9                   	leave
 804860c:	f3 c3                	repz ret
 804860e:	66 90                	xchg   %ax,%ax

08048610 <frame_dummy>:
 8048610:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048615:	8b 10                	mov    (%eax),%edx
 8048617:	85 d2                	test   %edx,%edx
 8048619:	75 05                	jne    8048620 <frame_dummy+0x10>
 804861b:	eb 93                	jmp    80485b0 <register_tm_clones>
 804861d:	8d 76 00             	lea    0x0(%esi),%esi
 8048620:	ba 00 00 00 00       	mov    $0x0,%edx
 8048625:	85 d2                	test   %edx,%edx
 8048627:	74 f2                	je     804861b <frame_dummy+0xb>
 8048629:	55                   	push   %ebp
 804862a:	89 e5                	mov    %esp,%ebp
 804862c:	83 ec 14             	sub    $0x14,%esp
 804862f:	50                   	push   %eax
 8048630:	ff d2                	call   *%edx
 8048632:	83 c4 10             	add    $0x10,%esp
 8048635:	c9                   	leave
 8048636:	e9 75 ff ff ff       	jmp    80485b0 <register_tm_clones>

0804863b <main>:
 804863b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804863f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048642:	ff 71 fc             	pushl  -0x4(%ecx)
 8048645:	55                   	push   %ebp
 8048646:	89 e5                	mov    %esp,%ebp
 8048648:	51                   	push   %ecx
 8048649:	83 ec 04             	sub    $0x4,%esp
 804864c:	a1 64 a0 04 08       	mov    0x804a064,%eax
 8048651:	6a 00                	push   $0x0
 8048653:	6a 02                	push   $0x2
 8048655:	6a 00                	push   $0x0
 8048657:	50                   	push   %eax
 8048658:	e8 b3 fe ff ff       	call   8048510 <setvbuf@plt>
 804865d:	83 c4 10             	add    $0x10,%esp
 8048660:	a1 40 a0 04 08       	mov    0x804a040,%eax
 8048665:	6a 00                	push   $0x0
 8048667:	6a 02                	push   $0x2
 8048669:	6a 00                	push   $0x0
 804866b:	50                   	push   %eax
 804866c:	e8 9f fe ff ff       	call   8048510 <setvbuf@plt>
 8048671:	83 c4 10             	add    $0x10,%esp
 8048674:	83 ec 0c             	sub    $0xc,%esp
 8048677:	68 20 89 04 08       	push   $0x8048920
 804867c:	e8 4f fe ff ff       	call   80484d0 <puts@plt>
 8048681:	83 c4 10             	add    $0x10,%esp
 8048684:	83 ec 0c             	sub    $0xc,%esp
 8048687:	68 39 89 04 08       	push   $0x8048939
 804868c:	e8 3f fe ff ff       	call   80484d0 <puts@plt>
 8048691:	83 c4 10             	add    $0x10,%esp
 8048694:	e8 1d 00 00 00       	call   80486b6 <pwnme>
 8048699:	83 ec 0c             	sub    $0xc,%esp
 804869c:	68 41 89 04 08       	push   $0x8048941
 80486a1:	e8 2a fe ff ff       	call   80484d0 <puts@plt>
 80486a6:	83 c4 10             	add    $0x10,%esp
 80486a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80486ae:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80486b1:	c9                   	leave
 80486b2:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80486b5:	c3                   	ret

080486b6 <pwnme>:
 80486b6:	55                   	push   %ebp
 80486b7:	89 e5                	mov    %esp,%ebp
 80486b9:	83 ec 38             	sub    $0x38,%esp
 80486bc:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 80486c3:	83 ec 0c             	sub    $0xc,%esp
 80486c6:	68 00 02 00 00       	push   $0x200
 80486cb:	e8 f0 fd ff ff       	call   80484c0 <malloc@plt>
 80486d0:	83 c4 10             	add    $0x10,%esp
 80486d3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 80486d6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80486d9:	85 c0                	test   %eax,%eax
 80486db:	74 18                	je     80486f5 <pwnme+0x3f>
 80486dd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80486e0:	83 ec 04             	sub    $0x4,%esp
 80486e3:	68 00 02 00 00       	push   $0x200
 80486e8:	6a 00                	push   $0x0
 80486ea:	50                   	push   %eax
 80486eb:	e8 30 fe ff ff       	call   8048520 <memset@plt>
 80486f0:	83 c4 10             	add    $0x10,%esp
 80486f3:	eb 0a                	jmp    80486ff <pwnme+0x49>
 80486f5:	83 ec 0c             	sub    $0xc,%esp
 80486f8:	6a 01                	push   $0x1
 80486fa:	e8 f1 fd ff ff       	call   80484f0 <exit@plt>
 80486ff:	83 ec 04             	sub    $0x4,%esp
 8048702:	6a 20                	push   $0x20
 8048704:	6a 00                	push   $0x0
 8048706:	8d 45 d0             	lea    -0x30(%ebp),%eax
 8048709:	83 c0 08             	add    $0x8,%eax
 804870c:	50                   	push   %eax
 804870d:	e8 0e fe ff ff       	call   8048520 <memset@plt>
 8048712:	83 c4 10             	add    $0x10,%esp
 8048715:	83 ec 0c             	sub    $0xc,%esp
 8048718:	68 4c 89 04 08       	push   $0x804894c
 804871d:	e8 ae fd ff ff       	call   80484d0 <puts@plt>
 8048722:	83 c4 10             	add    $0x10,%esp
 8048725:	83 ec 0c             	sub    $0xc,%esp
 8048728:	68 70 89 04 08       	push   $0x8048970
 804872d:	e8 4e fd ff ff       	call   8048480 <printf@plt>
 8048732:	83 c4 10             	add    $0x10,%esp
 8048735:	8b 15 60 a0 04 08    	mov    0x804a060,%edx
 804873b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804873e:	83 ec 04             	sub    $0x4,%esp
 8048741:	52                   	push   %edx
 8048742:	68 00 02 00 00       	push   $0x200
 8048747:	50                   	push   %eax
 8048748:	e8 63 fd ff ff       	call   80484b0 <fgets@plt>
 804874d:	83 c4 10             	add    $0x10,%esp
 8048750:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048753:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048756:	83 ec 08             	sub    $0x8,%esp
 8048759:	68 00 02 00 00       	push   $0x200
 804875e:	50                   	push   %eax
 804875f:	e8 5e 00 00 00       	call   80487c2 <nstrlen>
 8048764:	83 c4 10             	add    $0x10,%esp
 8048767:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804876a:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804876d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048770:	83 ec 08             	sub    $0x8,%esp
 8048773:	52                   	push   %edx
 8048774:	50                   	push   %eax
 8048775:	e8 87 00 00 00       	call   8048801 <checkBadchars>
 804877a:	83 c4 10             	add    $0x10,%esp
 804877d:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8048780:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048783:	83 ec 04             	sub    $0x4,%esp
 8048786:	52                   	push   %edx
 8048787:	50                   	push   %eax
 8048788:	8d 45 d0             	lea    -0x30(%ebp),%eax
 804878b:	83 c0 08             	add    $0x8,%eax
 804878e:	50                   	push   %eax
 804878f:	e8 0c fd ff ff       	call   80484a0 <memcpy@plt>
 8048794:	83 c4 10             	add    $0x10,%esp
 8048797:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804879a:	83 ec 0c             	sub    $0xc,%esp
 804879d:	50                   	push   %eax
 804879e:	e8 ed fc ff ff       	call   8048490 <free@plt>
 80487a3:	83 c4 10             	add    $0x10,%esp
 80487a6:	90                   	nop
 80487a7:	c9                   	leave
 80487a8:	c3                   	ret

080487a9 <usefulFunction>:
 80487a9:	55                   	push   %ebp
 80487aa:	89 e5                	mov    %esp,%ebp
 80487ac:	83 ec 08             	sub    $0x8,%esp
 80487af:	83 ec 0c             	sub    $0xc,%esp
 80487b2:	68 73 89 04 08       	push   $0x8048973
 80487b7:	e8 24 fd ff ff       	call   80484e0 <system@plt>
 80487bc:	83 c4 10             	add    $0x10,%esp
 80487bf:	90                   	nop
 80487c0:	c9                   	leave
 80487c1:	c3                   	ret

080487c2 <nstrlen>:
 80487c2:	55                   	push   %ebp
 80487c3:	89 e5                	mov    %esp,%ebp
 80487c5:	83 ec 10             	sub    $0x10,%esp
 80487c8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80487cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80487d6:	eb 1c                	jmp    80487f4 <nstrlen+0x32>
 80487d8:	8b 55 08             	mov    0x8(%ebp),%edx
 80487db:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80487de:	01 d0                	add    %edx,%eax
 80487e0:	0f b6 00             	movzbl (%eax),%eax
 80487e3:	3c 0a                	cmp    $0xa,%al
 80487e5:	75 09                	jne    80487f0 <nstrlen+0x2e>
 80487e7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 80487eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80487ee:	eb 0f                	jmp    80487ff <nstrlen+0x3d>
 80487f0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 80487f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80487f7:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80487fa:	72 dc                	jb     80487d8 <nstrlen+0x16>
 80487fc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80487ff:	c9                   	leave
 8048800:	c3                   	ret

08048801 <checkBadchars>:
 8048801:	55                   	push   %ebp
 8048802:	89 e5                	mov    %esp,%ebp
 8048804:	83 ec 10             	sub    $0x10,%esp
 8048807:	c6 45 f0 62          	movb   $0x62,-0x10(%ebp)
 804880b:	c6 45 f1 69          	movb   $0x69,-0xf(%ebp)
 804880f:	c6 45 f2 63          	movb   $0x63,-0xe(%ebp)
 8048813:	c6 45 f3 2f          	movb   $0x2f,-0xd(%ebp)
 8048817:	c6 45 f4 20          	movb   $0x20,-0xc(%ebp)
 804881b:	c6 45 f5 66          	movb   $0x66,-0xb(%ebp)
 804881f:	c6 45 f6 6e          	movb   $0x6e,-0xa(%ebp)
 8048823:	c6 45 f7 73          	movb   $0x73,-0x9(%ebp)
 8048827:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804882e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048835:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804883c:	eb 3e                	jmp    804887c <checkBadchars+0x7b>
 804883e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048845:	eb 2b                	jmp    8048872 <checkBadchars+0x71>
 8048847:	8b 55 08             	mov    0x8(%ebp),%edx
 804884a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804884d:	01 d0                	add    %edx,%eax
 804884f:	0f b6 10             	movzbl (%eax),%edx
 8048852:	8d 4d f0             	lea    -0x10(%ebp),%ecx
 8048855:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048858:	01 c8                	add    %ecx,%eax
 804885a:	0f b6 00             	movzbl (%eax),%eax
 804885d:	38 c2                	cmp    %al,%dl
 804885f:	75 0d                	jne    804886e <checkBadchars+0x6d>
 8048861:	8b 55 08             	mov    0x8(%ebp),%edx
 8048864:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048867:	01 d0                	add    %edx,%eax
 8048869:	c6 00 eb             	movb   $0xeb,(%eax)
 804886c:	eb 0a                	jmp    8048878 <checkBadchars+0x77>
 804886e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048872:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048876:	76 cf                	jbe    8048847 <checkBadchars+0x46>
 8048878:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 804887c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804887f:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048882:	72 ba                	jb     804883e <checkBadchars+0x3d>
 8048884:	90                   	nop
 8048885:	c9                   	leave
 8048886:	c3                   	ret
 8048887:	66 90                	xchg   %ax,%ax
 8048889:	66 90                	xchg   %ax,%ax
 804888b:	66 90                	xchg   %ax,%ax
 804888d:	66 90                	xchg   %ax,%ax
 804888f:	90                   	nop

08048890 <usefulGadgets>:
 8048890:	30 0b                	xor    %cl,(%ebx)
 8048892:	c3                   	ret
 8048893:	89 37                	mov    %esi,(%edi)
 8048895:	c3                   	ret
 8048896:	5b                   	pop    %ebx
 8048897:	59                   	pop    %ecx
 8048898:	c3                   	ret
 8048899:	5e                   	pop    %esi
 804889a:	5f                   	pop    %edi
 804889b:	c3                   	ret
 804889c:	66 90                	xchg   %ax,%ax
 804889e:	66 90                	xchg   %ax,%ax

080488a0 <__libc_csu_init>:
 80488a0:	55                   	push   %ebp
 80488a1:	57                   	push   %edi
 80488a2:	56                   	push   %esi
 80488a3:	53                   	push   %ebx
 80488a4:	e8 c7 fc ff ff       	call   8048570 <__x86.get_pc_thunk.bx>
 80488a9:	81 c3 57 17 00 00    	add    $0x1757,%ebx
 80488af:	83 ec 0c             	sub    $0xc,%esp
 80488b2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80488b6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80488bc:	e8 7f fb ff ff       	call   8048440 <_init>
 80488c1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80488c7:	29 c6                	sub    %eax,%esi
 80488c9:	c1 fe 02             	sar    $0x2,%esi
 80488cc:	85 f6                	test   %esi,%esi
 80488ce:	74 25                	je     80488f5 <__libc_csu_init+0x55>
 80488d0:	31 ff                	xor    %edi,%edi
 80488d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80488d8:	83 ec 04             	sub    $0x4,%esp
 80488db:	ff 74 24 2c          	pushl  0x2c(%esp)
 80488df:	ff 74 24 2c          	pushl  0x2c(%esp)
 80488e3:	55                   	push   %ebp
 80488e4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80488eb:	83 c7 01             	add    $0x1,%edi
 80488ee:	83 c4 10             	add    $0x10,%esp
 80488f1:	39 f7                	cmp    %esi,%edi
 80488f3:	75 e3                	jne    80488d8 <__libc_csu_init+0x38>
 80488f5:	83 c4 0c             	add    $0xc,%esp
 80488f8:	5b                   	pop    %ebx
 80488f9:	5e                   	pop    %esi
 80488fa:	5f                   	pop    %edi
 80488fb:	5d                   	pop    %ebp
 80488fc:	c3                   	ret
 80488fd:	8d 76 00             	lea    0x0(%esi),%esi

08048900 <__libc_csu_fini>:
 8048900:	f3 c3                	repz ret

Disassembly of section .fini:

08048904 <_fini>:
 8048904:	53                   	push   %ebx
 8048905:	83 ec 08             	sub    $0x8,%esp
 8048908:	e8 63 fc ff ff       	call   8048570 <__x86.get_pc_thunk.bx>
 804890d:	81 c3 f3 16 00 00    	add    $0x16f3,%ebx
 8048913:	83 c4 08             	add    $0x8,%esp
 8048916:	5b                   	pop    %ebx
 8048917:	c3                   	ret

Disassembly of section .rodata:

08048918 <_fp_hw>:
 8048918:	03 00                	add    (%eax),%eax
	...

0804891c <_IO_stdin_used>:
 804891c:	01 00                	add    %eax,(%eax)
 804891e:	02 00                	add    (%eax),%al
 8048920:	62 61 64             	bound  %esp,0x64(%ecx)
 8048923:	63 68 61             	arpl   %bp,0x61(%eax)
 8048926:	72 73                	jb     804899b <__GNU_EH_FRAME_HDR+0x1f>
 8048928:	20 62 79             	and    %ah,0x79(%edx)
 804892b:	20 52 4f             	and    %dl,0x4f(%edx)
 804892e:	50                   	push   %eax
 804892f:	20 45 6d             	and    %al,0x6d(%ebp)
 8048932:	70 6f                	jo     80489a3 <__GNU_EH_FRAME_HDR+0x27>
 8048934:	72 69                	jb     804899f <__GNU_EH_FRAME_HDR+0x23>
 8048936:	75 6d                	jne    80489a5 <__GNU_EH_FRAME_HDR+0x29>
 8048938:	00 33                	add    %dh,(%ebx)
 804893a:	32 62 69             	xor    0x69(%edx),%ah
 804893d:	74 73                	je     80489b2 <__GNU_EH_FRAME_HDR+0x36>
 804893f:	0a 00                	or     (%eax),%al
 8048941:	0a 45 78             	or     0x78(%ebp),%al
 8048944:	69 74 69 6e 67 00 00 	imul   $0x67,0x6e(%ecx,%ebp,2),%esi
 804894b:	00
 804894c:	62 61 64             	bound  %esp,0x64(%ecx)
 804894f:	63 68 61             	arpl   %bp,0x61(%eax)
 8048952:	72 73                	jb     80489c7 <__GNU_EH_FRAME_HDR+0x4b>
 8048954:	20 61 72             	and    %ah,0x72(%ecx)
 8048957:	65 3a 20             	cmp    %gs:(%eax),%ah
 804895a:	62 20                	bound  %esp,(%eax)
 804895c:	69 20 63 20 2f 20    	imul   $0x202f2063,(%eax),%esp
 8048962:	3c 73                	cmp    $0x73,%al
 8048964:	70 61                	jo     80489c7 <__GNU_EH_FRAME_HDR+0x4b>
 8048966:	63 65 3e             	arpl   %sp,0x3e(%ebp)
 8048969:	20 66 20             	and    %ah,0x20(%esi)
 804896c:	6e                   	outsb  %ds:(%esi),(%dx)
 804896d:	20 73 00             	and    %dh,0x0(%ebx)
 8048970:	3e 20 00             	and    %al,%ds:(%eax)
 8048973:	2f                   	das
 8048974:	62 69 6e             	bound  %ebp,0x6e(%ecx)
 8048977:	2f                   	das
 8048978:	6c                   	insb   (%dx),%es:(%edi)
 8048979:	73 00                	jae    804897b <_IO_stdin_used+0x5f>

Disassembly of section .eh_frame_hdr:

0804897c <__GNU_EH_FRAME_HDR>:
 804897c:	01 1b                	add    %ebx,(%ebx)
 804897e:	03 3b                	add    (%ebx),%edi
 8048980:	48                   	dec    %eax
 8048981:	00 00                	add    %al,(%eax)
 8048983:	00 08                	add    %cl,(%eax)
 8048985:	00 00                	add    %al,(%eax)
 8048987:	00 f4                	add    %dh,%ah
 8048989:	fa                   	cli
 804898a:	ff                   	(bad)
 804898b:	ff 64 00 00          	jmp    *0x0(%eax,%eax,1)
 804898f:	00 bf fc ff ff 88    	add    %bh,-0x77000004(%edi)
 8048995:	00 00                	add    %al,(%eax)
 8048997:	00 3a                	add    %bh,(%edx)
 8048999:	fd                   	std
 804899a:	ff                   	(bad)
 804899b:	ff b4 00 00 00 2d fe 	pushl  -0x1d30000(%eax,%eax,1)
 80489a2:	ff                   	(bad)
 80489a3:	ff d4                	call   *%esp
 80489a5:	00 00                	add    %al,(%eax)
 80489a7:	00 46 fe             	add    %al,-0x2(%esi)
 80489aa:	ff                   	(bad)
 80489ab:	ff f4                	push   %esp
 80489ad:	00 00                	add    %al,(%eax)
 80489af:	00 85 fe ff ff 14    	add    %al,0x14fffffe(%ebp)
 80489b5:	01 00                	add    %eax,(%eax)
 80489b7:	00 24 ff             	add    %ah,(%edi,%edi,8)
 80489ba:	ff                   	(bad)
 80489bb:	ff 34 01             	pushl  (%ecx,%eax,1)
 80489be:	00 00                	add    %al,(%eax)
 80489c0:	84 ff                	test   %bh,%bh
 80489c2:	ff                   	(bad)
 80489c3:	ff                   	.byte 0xff
 80489c4:	80 01 00             	addb   $0x0,(%ecx)
	...

Disassembly of section .eh_frame:

080489c8 <__FRAME_END__-0x148>:
 80489c8:	14 00                	adc    $0x0,%al
 80489ca:	00 00                	add    %al,(%eax)
 80489cc:	00 00                	add    %al,(%eax)
 80489ce:	00 00                	add    %al,(%eax)
 80489d0:	01 7a 52             	add    %edi,0x52(%edx)
 80489d3:	00 01                	add    %al,(%ecx)
 80489d5:	7c 08                	jl     80489df <__GNU_EH_FRAME_HDR+0x63>
 80489d7:	01 1b                	add    %ebx,(%ebx)
 80489d9:	0c 04                	or     $0x4,%al
 80489db:	04 88                	add    $0x88,%al
 80489dd:	01 00                	add    %eax,(%eax)
 80489df:	00 20                	add    %ah,(%eax)
 80489e1:	00 00                	add    %al,(%eax)
 80489e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80489e6:	00 00                	add    %al,(%eax)
 80489e8:	88 fa                	mov    %bh,%dl
 80489ea:	ff                   	(bad)
 80489eb:	ff c0                	inc    %eax
 80489ed:	00 00                	add    %al,(%eax)
 80489ef:	00 00                	add    %al,(%eax)
 80489f1:	0e                   	push   %cs
 80489f2:	08 46 0e             	or     %al,0xe(%esi)
 80489f5:	0c 4a                	or     $0x4a,%al
 80489f7:	0f 0b                	ud2
 80489f9:	74 04                	je     80489ff <__GNU_EH_FRAME_HDR+0x83>
 80489fb:	78 00                	js     80489fd <__GNU_EH_FRAME_HDR+0x81>
 80489fd:	3f                   	aas
 80489fe:	1a 3b                	sbb    (%ebx),%bh
 8048a00:	2a 32                	sub    (%edx),%dh
 8048a02:	24 22                	and    $0x22,%al
 8048a04:	28 00                	sub    %al,(%eax)
 8048a06:	00 00                	add    %al,(%eax)
 8048a08:	40                   	inc    %eax
 8048a09:	00 00                	add    %al,(%eax)
 8048a0b:	00 2f                	add    %ch,(%edi)
 8048a0d:	fc                   	cld
 8048a0e:	ff                   	(bad)
 8048a0f:	ff                   	(bad)
 8048a10:	7b 00                	jnp    8048a12 <__GNU_EH_FRAME_HDR+0x96>
 8048a12:	00 00                	add    %al,(%eax)
 8048a14:	00 44 0c 01          	add    %al,0x1(%esp,%ecx,1)
 8048a18:	00 47 10             	add    %al,0x10(%edi)
 8048a1b:	05 02 75 00 43       	add    $0x43007502,%eax
 8048a20:	0f 03 75 7c          	lsl    0x7c(%ebp),%esi
 8048a24:	06                   	push   %es
 8048a25:	02 68 0c             	add    0xc(%eax),%ch
 8048a28:	01 00                	add    %eax,(%eax)
 8048a2a:	41                   	inc    %ecx
 8048a2b:	c5 43 0c             	lds    0xc(%ebx),%eax
 8048a2e:	04 04                	add    $0x4,%al
 8048a30:	1c 00                	sbb    $0x0,%al
 8048a32:	00 00                	add    %al,(%eax)
 8048a34:	6c                   	insb   (%dx),%es:(%edi)
 8048a35:	00 00                	add    %al,(%eax)
 8048a37:	00 7e fc             	add    %bh,-0x4(%esi)
 8048a3a:	ff                   	(bad)
 8048a3b:	ff f3                	push   %ebx
 8048a3d:	00 00                	add    %al,(%eax)
 8048a3f:	00 00                	add    %al,(%eax)
 8048a41:	41                   	inc    %ecx
 8048a42:	0e                   	push   %cs
 8048a43:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048a49:	02 ef                	add    %bh,%ch
 8048a4b:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8048a4e:	04 00                	add    $0x0,%al
 8048a50:	1c 00                	sbb    $0x0,%al
 8048a52:	00 00                	add    %al,(%eax)
 8048a54:	8c 00                	mov    %es,(%eax)
 8048a56:	00 00                	add    %al,(%eax)
 8048a58:	51                   	push   %ecx
 8048a59:	fd                   	std
 8048a5a:	ff                   	(bad)
 8048a5b:	ff 19                	lcall  *(%ecx)
 8048a5d:	00 00                	add    %al,(%eax)
 8048a5f:	00 00                	add    %al,(%eax)
 8048a61:	41                   	inc    %ecx
 8048a62:	0e                   	push   %cs
 8048a63:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048a69:	55                   	push   %ebp
 8048a6a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8048a6d:	04 00                	add    $0x0,%al
 8048a6f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048a72:	00 00                	add    %al,(%eax)
 8048a74:	ac                   	lods   %ds:(%esi),%al
 8048a75:	00 00                	add    %al,(%eax)
 8048a77:	00 4a fd             	add    %cl,-0x3(%edx)
 8048a7a:	ff                   	(bad)
 8048a7b:	ff                   	(bad)
 8048a7c:	3f                   	aas
 8048a7d:	00 00                	add    %al,(%eax)
 8048a7f:	00 00                	add    %al,(%eax)
 8048a81:	41                   	inc    %ecx
 8048a82:	0e                   	push   %cs
 8048a83:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048a89:	7b c5                	jnp    8048a50 <__GNU_EH_FRAME_HDR+0xd4>
 8048a8b:	0c 04                	or     $0x4,%al
 8048a8d:	04 00                	add    $0x0,%al
 8048a8f:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048a92:	00 00                	add    %al,(%eax)
 8048a94:	cc                   	int3
 8048a95:	00 00                	add    %al,(%eax)
 8048a97:	00 69 fd             	add    %ch,-0x3(%ecx)
 8048a9a:	ff                   	(bad)
 8048a9b:	ff 86 00 00 00 00    	incl   0x0(%esi)
 8048aa1:	41                   	inc    %ecx
 8048aa2:	0e                   	push   %cs
 8048aa3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048aa9:	02 82 c5 0c 04 04    	add    0x4040cc5(%edx),%al
 8048aaf:	00 48 00             	add    %cl,0x0(%eax)
 8048ab2:	00 00                	add    %al,(%eax)
 8048ab4:	ec                   	in     (%dx),%al
 8048ab5:	00 00                	add    %al,(%eax)
 8048ab7:	00 e8                	add    %ch,%al
 8048ab9:	fd                   	std
 8048aba:	ff                   	(bad)
 8048abb:	ff 5d 00             	lcall  *0x0(%ebp)
 8048abe:	00 00                	add    %al,(%eax)
 8048ac0:	00 41 0e             	add    %al,0xe(%ecx)
 8048ac3:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048ac9:	87 03                	xchg   %eax,(%ebx)
 8048acb:	41                   	inc    %ecx
 8048acc:	0e                   	push   %cs
 8048acd:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048ad3:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 8048ada:	24 44                	and    $0x44,%al
 8048adc:	0e                   	push   %cs
 8048add:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8048ae1:	41                   	inc    %ecx
 8048ae2:	0e                   	push   %cs
 8048ae3:	30 4d 0e             	xor    %cl,0xe(%ebp)
 8048ae6:	20 47 0e             	and    %al,0xe(%edi)
 8048ae9:	14 41                	adc    $0x41,%al
 8048aeb:	c3                   	ret
 8048aec:	0e                   	push   %cs
 8048aed:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048af0:	0e                   	push   %cs
 8048af1:	0c 41                	or     $0x41,%al
 8048af3:	c7                   	(bad)
 8048af4:	0e                   	push   %cs
 8048af5:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048af8:	0e                   	push   %cs
 8048af9:	04 00                	add    $0x0,%al
 8048afb:	00 10                	add    %dl,(%eax)
 8048afd:	00 00                	add    %al,(%eax)
 8048aff:	00 38                	add    %bh,(%eax)
 8048b01:	01 00                	add    %eax,(%eax)
 8048b03:	00 fc                	add    %bh,%ah
 8048b05:	fd                   	std
 8048b06:	ff                   	(bad)
 8048b07:	ff 02                	incl   (%edx)
 8048b09:	00 00                	add    %al,(%eax)
 8048b0b:	00 00                	add    %al,(%eax)
 8048b0d:	00 00                	add    %al,(%eax)
	...

08048b10 <__FRAME_END__>:
 8048b10:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	10                   	.byte 0x10
 8049f09:	86 04 08             	xchg   %al,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	f0 85 04 08          	lock test %eax,(%eax,%ecx,1)

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
 8049f20:	40                   	inc    %eax
 8049f21:	84 04 08             	test   %al,(%eax,%ecx,1)
 8049f24:	0d 00 00 00 04       	or     $0x4000000,%eax
 8049f29:	89 04 08             	mov    %eax,(%eax,%ecx,1)
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
 8049f58:	ec                   	in     (%dx),%al
 8049f59:	82 04 08 06          	addb   $0x6,(%eax,%ecx,1)
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 dc                	add    %bl,%ah
 8049f61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f68:	99                   	cltd
 8049f69:	00 00                	add    %al,(%eax)
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
 8049f88:	58                   	pop    %eax
 8049f89:	00 00                	add    %al,(%eax)
 8049f8b:	00 14 00             	add    %dl,(%eax,%eax,1)
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 e8                	add    %ch,%al
 8049f99:	83 04 08 11          	addl   $0x11,(%eax,%ecx,1)
 8049f9d:	00 00                	add    %al,(%eax)
 8049f9f:	00 c8                	add    %cl,%al
 8049fa1:	83 04 08 12          	addl   $0x12,(%eax,%ecx,1)
 8049fa5:	00 00                	add    %al,(%eax)
 8049fa7:	00 20                	add    %ah,(%eax)
 8049fa9:	00 00                	add    %al,(%eax)
 8049fab:	00 13                	add    %dl,(%ebx)
 8049fad:	00 00                	add    %al,(%eax)
 8049faf:	00 08                	add    %cl,(%eax)
 8049fb1:	00 00                	add    %al,(%eax)
 8049fb3:	00 fe                	add    %bh,%dh
 8049fb5:	ff                   	(bad)
 8049fb6:	ff 6f a8             	ljmp   *-0x58(%edi)
 8049fb9:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fbd:	ff                   	(bad)
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)
 8049fc6:	ff 6f 86             	ljmp   *-0x7a(%edi)
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
 804a00c:	86 84 04 08 96 84 04 	xchg   %al,0x4849608(%esp,%eax,1)
 804a013:	08 a6 84 04 08 b6    	or     %ah,-0x49f7fb7c(%esi)
 804a019:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a01c:	c6 84 04 08 d6 84 04 	movb   $0x8,0x484d608(%esp,%eax,1)
 804a023:	08
 804a024:	e6 84                	out    %al,$0x84
 804a026:	04 08                	add    $0x8,%al
 804a028:	f6 84 04 08 06 85 04 	testb  $0x8,0x4850608(%esp,%eax,1)
 804a02f:	08
 804a030:	16                   	push   %ss
 804a031:	85 04 08             	test   %eax,(%eax,%ecx,1)
 804a034:	26 85 04 08          	test   %eax,%es:(%eax,%ecx,1)

Disassembly of section .data:

0804a038 <__data_start>:
 804a038:	00 00                	add    %al,(%eax)
	...

0804a03c <__dso_handle>:
 804a03c:	00 00                	add    %al,(%eax)
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
   8:	75 6e                	jne    78 <_init-0x80483c8>
   a:	74 75                	je     81 <_init-0x80483bf>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x80483b1>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	34 29                	xor    $0x29,%al
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  2a:	20 32                	and    %dh,(%edx)
  2c:	30 31                	xor    %dh,(%ecx)
  2e:	36 30 36             	xor    %dh,%ss:(%esi)
  31:	30 39                	xor    %bh,(%ecx)
	...
