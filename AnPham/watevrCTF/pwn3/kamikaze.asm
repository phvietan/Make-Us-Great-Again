
kamikaze2:     file format elf32-i386


Disassembly of section .text:

08420620 <.text>:
 8420620:	31 ed                	xor    %ebp,%ebp
 8420622:	5e                   	pop    %esi
 8420623:	89 e1                	mov    %esp,%ecx
 8420625:	83 e4 f0             	and    $0xfffffff0,%esp
 8420628:	50                   	push   %eax
 8420629:	54                   	push   %esp
 842062a:	52                   	push   %edx
 842062b:	e8 23 00 00 00       	call   8420653 <__gmon_start__@plt+0x3d80d3>
 8420630:	81 c3 d0 19 00 00    	add    $0x19d0,%ebx
 8420636:	8d 83 60 e9 ff ff    	lea    -0x16a0(%ebx),%eax
 842063c:	50                   	push   %eax
 842063d:	8d 83 00 e9 ff ff    	lea    -0x1700(%ebx),%eax
 8420643:	50                   	push   %eax
 8420644:	51                   	push   %ecx
 8420645:	56                   	push   %esi
 8420646:	c7 c0 fb 07 42 08    	mov    $0x84207fb,%eax
 842064c:	50                   	push   %eax
 842064d:	e8 de 7e c2 ff       	call   8048530 <__libc_start_main@plt>
 8420652:	f4                   	hlt    
 8420653:	8b 1c 24             	mov    (%esp),%ebx
 8420656:	c3                   	ret    
 8420657:	66 90                	xchg   %ax,%ax
 8420659:	66 90                	xchg   %ax,%ax
 842065b:	66 90                	xchg   %ax,%ax
 842065d:	66 90                	xchg   %ax,%ax
 842065f:	90                   	nop
 8420660:	f3 c3                	repz ret 
 8420662:	66 90                	xchg   %ax,%ax
 8420664:	66 90                	xchg   %ax,%ax
 8420666:	66 90                	xchg   %ax,%ax
 8420668:	66 90                	xchg   %ax,%ax
 842066a:	66 90                	xchg   %ax,%ax
 842066c:	66 90                	xchg   %ax,%ax
 842066e:	66 90                	xchg   %ax,%ax
 8420670:	8b 1c 24             	mov    (%esp),%ebx
 8420673:	c3                   	ret    
 8420674:	66 90                	xchg   %ax,%ax
 8420676:	66 90                	xchg   %ax,%ax
 8420678:	66 90                	xchg   %ax,%ax
 842067a:	66 90                	xchg   %ax,%ax
 842067c:	66 90                	xchg   %ax,%ax
 842067e:	66 90                	xchg   %ax,%ax
 8420680:	b8 44 20 42 08       	mov    $0x8422044,%eax
 8420685:	3d 44 20 42 08       	cmp    $0x8422044,%eax
 842068a:	74 24                	je     84206b0 <__gmon_start__@plt+0x3d8130>
 842068c:	b8 00 00 00 00       	mov    $0x0,%eax
 8420691:	85 c0                	test   %eax,%eax
 8420693:	74 1b                	je     84206b0 <__gmon_start__@plt+0x3d8130>
 8420695:	55                   	push   %ebp
 8420696:	89 e5                	mov    %esp,%ebp
 8420698:	83 ec 14             	sub    $0x14,%esp
 842069b:	68 44 20 42 08       	push   $0x8422044
 84206a0:	ff d0                	call   *%eax
 84206a2:	83 c4 10             	add    $0x10,%esp
 84206a5:	c9                   	leave  
 84206a6:	c3                   	ret    
 84206a7:	89 f6                	mov    %esi,%esi
 84206a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 84206b0:	f3 c3                	repz ret 
 84206b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84206b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 84206c0:	b8 44 20 42 08       	mov    $0x8422044,%eax
 84206c5:	2d 44 20 42 08       	sub    $0x8422044,%eax
 84206ca:	c1 f8 02             	sar    $0x2,%eax
 84206cd:	89 c2                	mov    %eax,%edx
 84206cf:	c1 ea 1f             	shr    $0x1f,%edx
 84206d2:	01 d0                	add    %edx,%eax
 84206d4:	d1 f8                	sar    %eax
 84206d6:	74 20                	je     84206f8 <__gmon_start__@plt+0x3d8178>
 84206d8:	ba 00 00 00 00       	mov    $0x0,%edx
 84206dd:	85 d2                	test   %edx,%edx
 84206df:	74 17                	je     84206f8 <__gmon_start__@plt+0x3d8178>
 84206e1:	55                   	push   %ebp
 84206e2:	89 e5                	mov    %esp,%ebp
 84206e4:	83 ec 10             	sub    $0x10,%esp
 84206e7:	50                   	push   %eax
 84206e8:	68 44 20 42 08       	push   $0x8422044
 84206ed:	ff d2                	call   *%edx
 84206ef:	83 c4 10             	add    $0x10,%esp
 84206f2:	c9                   	leave  
 84206f3:	c3                   	ret    
 84206f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 84206f8:	f3 c3                	repz ret 
 84206fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8420700:	80 3d 44 20 42 08 00 	cmpb   $0x0,0x8422044
 8420707:	75 17                	jne    8420720 <__gmon_start__@plt+0x3d81a0>
 8420709:	55                   	push   %ebp
 842070a:	89 e5                	mov    %esp,%ebp
 842070c:	83 ec 08             	sub    $0x8,%esp
 842070f:	e8 6c ff ff ff       	call   8420680 <__gmon_start__@plt+0x3d8100>
 8420714:	c6 05 44 20 42 08 01 	movb   $0x1,0x8422044
 842071b:	c9                   	leave  
 842071c:	c3                   	ret    
 842071d:	8d 76 00             	lea    0x0(%esi),%esi
 8420720:	f3 c3                	repz ret 
 8420722:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8420729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8420730:	55                   	push   %ebp
 8420731:	89 e5                	mov    %esp,%ebp
 8420733:	5d                   	pop    %ebp
 8420734:	eb 8a                	jmp    84206c0 <__gmon_start__@plt+0x3d8140>
 8420736:	55                   	push   %ebp
 8420737:	89 e5                	mov    %esp,%ebp
 8420739:	53                   	push   %ebx
 842073a:	83 ec 14             	sub    $0x14,%esp
 842073d:	e8 2e ff ff ff       	call   8420670 <__gmon_start__@plt+0x3d80f0>
 8420742:	81 c3 be 18 00 00    	add    $0x18be,%ebx
 8420748:	83 ec 08             	sub    $0x8,%esp
 842074b:	8d 83 80 e9 ff ff    	lea    -0x1680(%ebx),%eax
 8420751:	50                   	push   %eax
 8420752:	8d 83 82 e9 ff ff    	lea    -0x167e(%ebx),%eax
 8420758:	50                   	push   %eax
 8420759:	e8 e2 7d c2 ff       	call   8048540 <fopen@plt>
 842075e:	83 c4 10             	add    $0x10,%esp
 8420761:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8420764:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8420768:	75 12                	jne    842077c <__gmon_start__@plt+0x3d81fc>
 842076a:	83 ec 0c             	sub    $0xc,%esp
 842076d:	8d 83 95 e9 ff ff    	lea    -0x166b(%ebx),%eax
 8420773:	50                   	push   %eax
 8420774:	e8 97 7d c2 ff       	call   8048510 <puts@plt>
 8420779:	83 c4 10             	add    $0x10,%esp
 842077c:	83 ec 0c             	sub    $0xc,%esp
 842077f:	ff 75 f0             	pushl  -0x10(%ebp)
 8420782:	e8 d9 7d c2 ff       	call   8048560 <fgetc@plt>
 8420787:	83 c4 10             	add    $0x10,%esp
 842078a:	88 45 f7             	mov    %al,-0x9(%ebp)
 842078d:	eb 21                	jmp    84207b0 <__gmon_start__@plt+0x3d8230>
 842078f:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
 8420793:	83 ec 0c             	sub    $0xc,%esp
 8420796:	50                   	push   %eax
 8420797:	e8 b4 7d c2 ff       	call   8048550 <putchar@plt>
 842079c:	83 c4 10             	add    $0x10,%esp
 842079f:	83 ec 0c             	sub    $0xc,%esp
 84207a2:	ff 75 f0             	pushl  -0x10(%ebp)
 84207a5:	e8 b6 7d c2 ff       	call   8048560 <fgetc@plt>
 84207aa:	83 c4 10             	add    $0x10,%esp
 84207ad:	88 45 f7             	mov    %al,-0x9(%ebp)
 84207b0:	80 7d f7 ff          	cmpb   $0xff,-0x9(%ebp)
 84207b4:	75 d9                	jne    842078f <__gmon_start__@plt+0x3d820f>
 84207b6:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 84207bc:	8b 00                	mov    (%eax),%eax
 84207be:	83 ec 0c             	sub    $0xc,%esp
 84207c1:	50                   	push   %eax
 84207c2:	e8 09 7d c2 ff       	call   80484d0 <fflush@plt>
 84207c7:	83 c4 10             	add    $0x10,%esp
 84207ca:	83 ec 0c             	sub    $0xc,%esp
 84207cd:	ff 75 f0             	pushl  -0x10(%ebp)
 84207d0:	e8 0b 7d c2 ff       	call   80484e0 <fclose@plt>
 84207d5:	83 c4 10             	add    $0x10,%esp
 84207d8:	90                   	nop
 84207d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 84207dc:	c9                   	leave  
 84207dd:	c3                   	ret    
 84207de:	55                   	push   %ebp
 84207df:	89 e5                	mov    %esp,%ebp
 84207e1:	53                   	push   %ebx
 84207e2:	83 ec 04             	sub    $0x4,%esp
 84207e5:	e8 12 01 00 00       	call   84208fc <__gmon_start__@plt+0x3d837c>
 84207ea:	05 16 18 00 00       	add    $0x1816,%eax
 84207ef:	83 ec 0c             	sub    $0xc,%esp
 84207f2:	6a 00                	push   $0x0
 84207f4:	89 c3                	mov    %eax,%ebx
 84207f6:	e8 25 7d c2 ff       	call   8048520 <exit@plt>
 84207fb:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 84207ff:	83 e4 f0             	and    $0xfffffff0,%esp
 8420802:	ff 71 fc             	pushl  -0x4(%ecx)
 8420805:	55                   	push   %ebp
 8420806:	89 e5                	mov    %esp,%ebp
 8420808:	53                   	push   %ebx
 8420809:	51                   	push   %ecx
 842080a:	83 ec 40             	sub    $0x40,%esp
 842080d:	e8 5e fe ff ff       	call   8420670 <__gmon_start__@plt+0x3d80f0>
 8420812:	81 c3 ee 17 00 00    	add    $0x17ee,%ebx
 8420818:	83 ec 08             	sub    $0x8,%esp
 842081b:	8d 83 de e7 ff ff    	lea    -0x1822(%ebx),%eax
 8420821:	50                   	push   %eax
 8420822:	6a 0e                	push   $0xe
 8420824:	e8 c7 7c c2 ff       	call   80484f0 <signal@plt>
 8420829:	83 c4 10             	add    $0x10,%esp
 842082c:	83 ec 0c             	sub    $0xc,%esp
 842082f:	6a 05                	push   $0x5
 8420831:	e8 ca 7c c2 ff       	call   8048500 <alarm@plt>
 8420836:	83 c4 10             	add    $0x10,%esp
 8420839:	83 ec 0c             	sub    $0xc,%esp
 842083c:	8d 83 ac e9 ff ff    	lea    -0x1654(%ebx),%eax
 8420842:	50                   	push   %eax
 8420843:	e8 c8 7c c2 ff       	call   8048510 <puts@plt>
 8420848:	83 c4 10             	add    $0x10,%esp
 842084b:	83 ec 0c             	sub    $0xc,%esp
 842084e:	8d 83 e4 e9 ff ff    	lea    -0x161c(%ebx),%eax
 8420854:	50                   	push   %eax
 8420855:	e8 b6 7c c2 ff       	call   8048510 <puts@plt>
 842085a:	83 c4 10             	add    $0x10,%esp
 842085d:	83 ec 0c             	sub    $0xc,%esp
 8420860:	8d 83 34 ea ff ff    	lea    -0x15cc(%ebx),%eax
 8420866:	50                   	push   %eax
 8420867:	e8 a4 7c c2 ff       	call   8048510 <puts@plt>
 842086c:	83 c4 10             	add    $0x10,%esp
 842086f:	83 ec 0c             	sub    $0xc,%esp
 8420872:	8d 83 74 ea ff ff    	lea    -0x158c(%ebx),%eax
 8420878:	50                   	push   %eax
 8420879:	e8 92 7c c2 ff       	call   8048510 <puts@plt>
 842087e:	83 c4 10             	add    $0x10,%esp
 8420881:	83 ec 0c             	sub    $0xc,%esp
 8420884:	8d 83 b0 ea ff ff    	lea    -0x1550(%ebx),%eax
 842088a:	50                   	push   %eax
 842088b:	e8 30 7c c2 ff       	call   80484c0 <printf@plt>
 8420890:	83 c4 10             	add    $0x10,%esp
 8420893:	8b 83 f8 ff ff ff    	mov    -0x8(%ebx),%eax
 8420899:	8b 00                	mov    (%eax),%eax
 842089b:	83 ec 0c             	sub    $0xc,%esp
 842089e:	50                   	push   %eax
 842089f:	e8 2c 7c c2 ff       	call   80484d0 <fflush@plt>
 84208a4:	83 c4 10             	add    $0x10,%esp
 84208a7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 84208ad:	8b 00                	mov    (%eax),%eax
 84208af:	83 ec 0c             	sub    $0xc,%esp
 84208b2:	50                   	push   %eax
 84208b3:	e8 18 7c c2 ff       	call   80484d0 <fflush@plt>
 84208b8:	83 c4 10             	add    $0x10,%esp
 84208bb:	83 ec 08             	sub    $0x8,%esp
 84208be:	8d 45 c6             	lea    -0x3a(%ebp),%eax
 84208c1:	50                   	push   %eax
 84208c2:	8d 83 b8 ea ff ff    	lea    -0x1548(%ebx),%eax
 84208c8:	50                   	push   %eax
 84208c9:	e8 a2 7c c2 ff       	call   8048570 <__isoc99_scanf@plt>
 84208ce:	83 c4 10             	add    $0x10,%esp
 84208d1:	83 ec 0c             	sub    $0xc,%esp
 84208d4:	8d 45 c6             	lea    -0x3a(%ebp),%eax
 84208d7:	50                   	push   %eax
 84208d8:	e8 e3 7b c2 ff       	call   80484c0 <printf@plt>
 84208dd:	83 c4 10             	add    $0x10,%esp
 84208e0:	83 ec 0c             	sub    $0xc,%esp
 84208e3:	8d 83 c4 ea ff ff    	lea    -0x153c(%ebx),%eax
 84208e9:	50                   	push   %eax
 84208ea:	e8 21 7c c2 ff       	call   8048510 <puts@plt>
 84208ef:	83 c4 10             	add    $0x10,%esp
 84208f2:	83 ec 0c             	sub    $0xc,%esp
 84208f5:	6a 00                	push   $0x0
 84208f7:	e8 24 7c c2 ff       	call   8048520 <exit@plt>
 84208fc:	8b 04 24             	mov    (%esp),%eax
 84208ff:	c3                   	ret    
 8420900:	55                   	push   %ebp
 8420901:	57                   	push   %edi
 8420902:	56                   	push   %esi
 8420903:	53                   	push   %ebx
 8420904:	e8 67 fd ff ff       	call   8420670 <__gmon_start__@plt+0x3d80f0>
 8420909:	81 c3 f7 16 00 00    	add    $0x16f7,%ebx
 842090f:	83 ec 0c             	sub    $0xc,%esp
 8420912:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8420916:	8d b3 08 ff ff ff    	lea    -0xf8(%ebx),%esi
 842091c:	e8 6b 7b c2 ff       	call   804848c <printf@plt-0x34>
 8420921:	8d 83 04 ff ff ff    	lea    -0xfc(%ebx),%eax
 8420927:	29 c6                	sub    %eax,%esi
 8420929:	c1 fe 02             	sar    $0x2,%esi
 842092c:	85 f6                	test   %esi,%esi
 842092e:	74 25                	je     8420955 <__gmon_start__@plt+0x3d83d5>
 8420930:	31 ff                	xor    %edi,%edi
 8420932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8420938:	83 ec 04             	sub    $0x4,%esp
 842093b:	55                   	push   %ebp
 842093c:	ff 74 24 2c          	pushl  0x2c(%esp)
 8420940:	ff 74 24 2c          	pushl  0x2c(%esp)
 8420944:	ff 94 bb 04 ff ff ff 	call   *-0xfc(%ebx,%edi,4)
 842094b:	83 c7 01             	add    $0x1,%edi
 842094e:	83 c4 10             	add    $0x10,%esp
 8420951:	39 fe                	cmp    %edi,%esi
 8420953:	75 e3                	jne    8420938 <__gmon_start__@plt+0x3d83b8>
 8420955:	83 c4 0c             	add    $0xc,%esp
 8420958:	5b                   	pop    %ebx
 8420959:	5e                   	pop    %esi
 842095a:	5f                   	pop    %edi
 842095b:	5d                   	pop    %ebp
 842095c:	c3                   	ret    
 842095d:	8d 76 00             	lea    0x0(%esi),%esi
 8420960:	f3 c3                	repz ret 

Disassembly of section .interp:

08048174 <.interp>:
 8048174:	2f                   	das    
 8048175:	6c                   	insb   (%dx),%es:(%edi)
 8048176:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804817d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048184:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048188 <.note.ABI-tag>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	10 00                	adc    %al,(%eax)
 804818e:	00 00                	add    %al,(%eax)
 8048190:	01 00                	add    %eax,(%eax)
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 00                	add    %al,(%eax)
 8048199:	00 00                	add    %al,(%eax)
 804819b:	00 03                	add    %al,(%ebx)
 804819d:	00 00                	add    %al,(%eax)
 804819f:	00 02                	add    %al,(%edx)
 80481a1:	00 00                	add    %al,(%eax)
 80481a3:	00 00                	add    %al,(%eax)
 80481a5:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

080481a8 <.note.gnu.build-id>:
 80481a8:	04 00                	add    $0x0,%al
 80481aa:	00 00                	add    %al,(%eax)
 80481ac:	14 00                	adc    $0x0,%al
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	03 00                	add    (%eax),%eax
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	47                   	inc    %edi
 80481b5:	4e                   	dec    %esi
 80481b6:	55                   	push   %ebp
 80481b7:	00 88 e3 d6 8d b1    	add    %cl,-0x4e72291d(%eax)
 80481bd:	1b 50 c0             	sbb    -0x40(%eax),%edx
 80481c0:	f6 46 ee d9          	testb  $0xd9,-0x12(%esi)
 80481c4:	58                   	pop    %eax
 80481c5:	51                   	push   %ecx
 80481c6:	28 2a                	sub    %ch,(%edx)
 80481c8:	df                   	.byte 0xdf
 80481c9:	bf                   	.byte 0xbf
 80481ca:	1c 49                	sbb    $0x49,%al

Disassembly of section .gnu.hash:

080481cc <.gnu.hash>:
 80481cc:	02 00                	add    (%eax),%al
 80481ce:	00 00                	add    %al,(%eax)
 80481d0:	10 00                	adc    %al,(%eax)
 80481d2:	00 00                	add    %al,(%eax)
 80481d4:	01 00                	add    %eax,(%eax)
 80481d6:	00 00                	add    %al,(%eax)
 80481d8:	05 00 00 00 00       	add    $0x0,%eax
 80481dd:	20 00                	and    %al,(%eax)
 80481df:	20 00                	and    %al,(%eax)
 80481e1:	00 00                	add    %al,(%eax)
 80481e3:	00 10                	add    %dl,(%eax)
 80481e5:	00 00                	add    %al,(%eax)
 80481e7:	00                   	.byte 0x0
 80481e8:	ad                   	lods   %ds:(%esi),%eax
 80481e9:	4b                   	dec    %ebx
 80481ea:	e3 c0                	jecxz  80481ac <printf@plt-0x314>

Disassembly of section .dynsym:

080481ec <.dynsym>:
	...
 80481fc:	55                   	push   %ebp
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 1a                	add    %bl,(%edx)
	...
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 12                	add    %dl,(%edx)
 8048219:	00 00                	add    %al,(%eax)
 804821b:	00 69 00             	add    %ch,0x0(%ecx)
	...
 8048226:	00 00                	add    %al,(%eax)
 8048228:	12 00                	adc    (%eax),%al
 804822a:	00 00                	add    %al,(%eax)
 804822c:	3b 00                	cmp    (%eax),%eax
	...
 8048236:	00 00                	add    %al,(%eax)
 8048238:	12 00                	adc    (%eax),%al
 804823a:	00 00                	add    %al,(%eax)
 804823c:	70 00                	jo     804823e <printf@plt-0x282>
	...
 8048246:	00 00                	add    %al,(%eax)
 8048248:	12 00                	adc    (%eax),%al
 804824a:	00 00                	add    %al,(%eax)
 804824c:	42                   	inc    %edx
	...
 8048255:	00 00                	add    %al,(%eax)
 8048257:	00 12                	add    %dl,(%edx)
 8048259:	00 00                	add    %al,(%eax)
 804825b:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
 8048261:	00 00                	add    %al,(%eax)
 8048263:	00 00                	add    %al,(%eax)
 8048265:	00 00                	add    %al,(%eax)
 8048267:	00 20                	add    %ah,(%eax)
 8048269:	00 00                	add    %al,(%eax)
 804826b:	00 21                	add    %ah,(%ecx)
	...
 8048275:	00 00                	add    %al,(%eax)
 8048277:	00 12                	add    %dl,(%edx)
 8048279:	00 00                	add    %al,(%eax)
 804827b:	00 76 00             	add    %dh,0x0(%esi)
	...
 8048286:	00 00                	add    %al,(%eax)
 8048288:	12 00                	adc    (%eax),%al
 804828a:	00 00                	add    %al,(%eax)
 804828c:	4f                   	dec    %edi
	...
 8048295:	00 00                	add    %al,(%eax)
 8048297:	00 11                	add    %dl,(%ecx)
 8048299:	00 00                	add    %al,(%eax)
 804829b:	00 26                	add    %ah,(%esi)
	...
 80482a5:	00 00                	add    %al,(%eax)
 80482a7:	00 12                	add    %dl,(%edx)
 80482a9:	00 00                	add    %al,(%eax)
 80482ab:	00 47 00             	add    %al,0x0(%edi)
	...
 80482b6:	00 00                	add    %al,(%eax)
 80482b8:	12 00                	adc    (%eax),%al
 80482ba:	00 00                	add    %al,(%eax)
 80482bc:	5c                   	pop    %esp
	...
 80482c5:	00 00                	add    %al,(%eax)
 80482c7:	00 12                	add    %dl,(%edx)
 80482c9:	00 00                	add    %al,(%eax)
 80482cb:	00 62 00             	add    %ah,0x0(%edx)
	...
 80482d6:	00 00                	add    %al,(%eax)
 80482d8:	11 00                	adc    %eax,(%eax)
 80482da:	00 00                	add    %al,(%eax)
 80482dc:	2c 00                	sub    $0x0,%al
	...
 80482e6:	00 00                	add    %al,(%eax)
 80482e8:	12 00                	adc    (%eax),%al
 80482ea:	00 00                	add    %al,(%eax)
 80482ec:	0b 00                	or     (%eax),%eax
 80482ee:	00 00                	add    %al,(%eax)
 80482f0:	7c 09                	jl     80482fb <printf@plt-0x1c5>
 80482f2:	42                   	inc    %edx
 80482f3:	08 04 00             	or     %al,(%eax,%eax,1)
 80482f6:	00 00                	add    %al,(%eax)
 80482f8:	11 00                	adc    %eax,(%eax)
 80482fa:	10 00                	adc    %al,(%eax)

Disassembly of section .dynstr:

080482fc <.dynstr>:
 80482fc:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 8048300:	63 2e                	arpl   %bp,(%esi)
 8048302:	73 6f                	jae    8048373 <printf@plt-0x14d>
 8048304:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048309:	4f                   	dec    %edi
 804830a:	5f                   	pop    %edi
 804830b:	73 74                	jae    8048381 <printf@plt-0x13f>
 804830d:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048314:	64 
 8048315:	00 66 66             	add    %ah,0x66(%esi)
 8048318:	6c                   	insb   (%dx),%es:(%edi)
 8048319:	75 73                	jne    804838e <printf@plt-0x132>
 804831b:	68 00 65 78 69       	push   $0x69786500
 8048320:	74 00                	je     8048322 <printf@plt-0x19e>
 8048322:	66 6f                	outsw  %ds:(%esi),(%dx)
 8048324:	70 65                	jo     804838b <printf@plt-0x135>
 8048326:	6e                   	outsb  %ds:(%esi),(%dx)
 8048327:	00 5f 5f             	add    %bl,0x5f(%edi)
 804832a:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%ebx),%esi
 8048331:	73 63                	jae    8048396 <printf@plt-0x12a>
 8048333:	61                   	popa   
 8048334:	6e                   	outsb  %ds:(%esi),(%dx)
 8048335:	66 00 73 69          	data16 add %dh,0x69(%ebx)
 8048339:	67 6e                	outsb  %ds:(%si),(%dx)
 804833b:	61                   	popa   
 804833c:	6c                   	insb   (%dx),%es:(%edi)
 804833d:	00 70 75             	add    %dh,0x75(%eax)
 8048340:	74 73                	je     80483b5 <printf@plt-0x10b>
 8048342:	00 70 75             	add    %dh,0x75(%eax)
 8048345:	74 63                	je     80483aa <printf@plt-0x116>
 8048347:	68 61 72 00 73       	push   $0x73007261
 804834c:	74 64                	je     80483b2 <printf@plt-0x10e>
 804834e:	69 6e 00 70 72 69 6e 	imul   $0x6e697270,0x0(%esi),%ebp
 8048355:	74 66                	je     80483bd <printf@plt-0x103>
 8048357:	00 66 67             	add    %ah,0x67(%esi)
 804835a:	65 74 63             	gs je  80483c0 <printf@plt-0x100>
 804835d:	00 73 74             	add    %dh,0x74(%ebx)
 8048360:	64 6f                	outsl  %fs:(%esi),(%dx)
 8048362:	75 74                	jne    80483d8 <printf@plt-0xe8>
 8048364:	00 66 63             	add    %ah,0x63(%esi)
 8048367:	6c                   	insb   (%dx),%es:(%edi)
 8048368:	6f                   	outsl  %ds:(%esi),(%dx)
 8048369:	73 65                	jae    80483d0 <printf@plt-0xf0>
 804836b:	00 61 6c             	add    %ah,0x6c(%ecx)
 804836e:	61                   	popa   
 804836f:	72 6d                	jb     80483de <printf@plt-0xe2>
 8048371:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048374:	6c                   	insb   (%dx),%es:(%edi)
 8048375:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 804837c:	72 74                	jb     80483f2 <printf@plt-0xce>
 804837e:	5f                   	pop    %edi
 804837f:	6d                   	insl   (%dx),%es:(%edi)
 8048380:	61                   	popa   
 8048381:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%esi),%ebp
 8048388:	43                   	inc    %ebx
 8048389:	5f                   	pop    %edi
 804838a:	32 2e                	xor    (%esi),%ch
 804838c:	37                   	aaa    
 804838d:	00 47 4c             	add    %al,0x4c(%edi)
 8048390:	49                   	dec    %ecx
 8048391:	42                   	inc    %edx
 8048392:	43                   	inc    %ebx
 8048393:	5f                   	pop    %edi
 8048394:	32 2e                	xor    (%esi),%ch
 8048396:	31 00                	xor    %eax,(%eax)
 8048398:	47                   	inc    %edi
 8048399:	4c                   	dec    %esp
 804839a:	49                   	dec    %ecx
 804839b:	42                   	inc    %edx
 804839c:	43                   	inc    %ebx
 804839d:	5f                   	pop    %edi
 804839e:	32 2e                	xor    (%esi),%ch
 80483a0:	30 00                	xor    %al,(%eax)
 80483a2:	5f                   	pop    %edi
 80483a3:	5f                   	pop    %edi
 80483a4:	67 6d                	insl   (%dx),%es:(%di)
 80483a6:	6f                   	outsl  %ds:(%esi),(%dx)
 80483a7:	6e                   	outsb  %ds:(%esi),(%dx)
 80483a8:	5f                   	pop    %edi
 80483a9:	73 74                	jae    804841f <printf@plt-0xa1>
 80483ab:	61                   	popa   
 80483ac:	72 74                	jb     8048422 <printf@plt-0x9e>
 80483ae:	5f                   	pop    %edi
 80483af:	5f                   	pop    %edi
	...

Disassembly of section .gnu.version:

080483b2 <.gnu.version>:
 80483b2:	00 00                	add    %al,(%eax)
 80483b4:	02 00                	add    (%eax),%al
 80483b6:	02 00                	add    (%eax),%al
 80483b8:	03 00                	add    (%eax),%eax
 80483ba:	02 00                	add    (%eax),%al
 80483bc:	02 00                	add    (%eax),%al
 80483be:	02 00                	add    (%eax),%al
 80483c0:	00 00                	add    %al,(%eax)
 80483c2:	02 00                	add    (%eax),%al
 80483c4:	02 00                	add    (%eax),%al
 80483c6:	02 00                	add    (%eax),%al
 80483c8:	03 00                	add    (%eax),%eax
 80483ca:	02 00                	add    (%eax),%al
 80483cc:	02 00                	add    (%eax),%al
 80483ce:	02 00                	add    (%eax),%al
 80483d0:	04 00                	add    $0x0,%al
 80483d2:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

080483d4 <.gnu.version_r>:
 80483d4:	01 00                	add    %eax,(%eax)
 80483d6:	03 00                	add    (%eax),%eax
 80483d8:	01 00                	add    %eax,(%eax)
 80483da:	00 00                	add    %al,(%eax)
 80483dc:	10 00                	adc    %al,(%eax)
 80483de:	00 00                	add    %al,(%eax)
 80483e0:	00 00                	add    %al,(%eax)
 80483e2:	00 00                	add    %al,(%eax)
 80483e4:	17                   	pop    %ss
 80483e5:	69 69 0d 00 00 04 00 	imul   $0x40000,0xd(%ecx),%ebp
 80483ec:	88 00                	mov    %al,(%eax)
 80483ee:	00 00                	add    %al,(%eax)
 80483f0:	10 00                	adc    %al,(%eax)
 80483f2:	00 00                	add    %al,(%eax)
 80483f4:	11 69 69             	adc    %ebp,0x69(%ecx)
 80483f7:	0d 00 00 03 00       	or     $0x30000,%eax
 80483fc:	92                   	xchg   %eax,%edx
 80483fd:	00 00                	add    %al,(%eax)
 80483ff:	00 10                	add    %dl,(%eax)
 8048401:	00 00                	add    %al,(%eax)
 8048403:	00 10                	add    %dl,(%eax)
 8048405:	69 69 0d 00 00 02 00 	imul   $0x20000,0xd(%ecx),%ebp
 804840c:	9c                   	pushf  
 804840d:	00 00                	add    %al,(%eax)
 804840f:	00 00                	add    %al,(%eax)
 8048411:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048414 <.rel.dyn>:
 8048414:	f4                   	hlt    
 8048415:	1f                   	pop    %ds
 8048416:	42                   	inc    %edx
 8048417:	08 06                	or     %al,(%esi)
 8048419:	07                   	pop    %es
 804841a:	00 00                	add    %al,(%eax)
 804841c:	f8                   	clc    
 804841d:	1f                   	pop    %ds
 804841e:	42                   	inc    %edx
 804841f:	08 06                	or     %al,(%esi)
 8048421:	0a 00                	or     (%eax),%al
 8048423:	00 fc                	add    %bh,%ah
 8048425:	1f                   	pop    %ds
 8048426:	42                   	inc    %edx
 8048427:	08 06                	or     %al,(%esi)
 8048429:	0e                   	push   %cs
	...

Disassembly of section .rel.plt:

0804842c <.rel.plt>:
 804842c:	0c 20                	or     $0x20,%al
 804842e:	42                   	inc    %edx
 804842f:	08 07                	or     %al,(%edi)
 8048431:	01 00                	add    %eax,(%eax)
 8048433:	00 10                	add    %dl,(%eax)
 8048435:	20 42 08             	and    %al,0x8(%edx)
 8048438:	07                   	pop    %es
 8048439:	02 00                	add    (%eax),%al
 804843b:	00 14 20             	add    %dl,(%eax,%eiz,1)
 804843e:	42                   	inc    %edx
 804843f:	08 07                	or     %al,(%edi)
 8048441:	03 00                	add    (%eax),%eax
 8048443:	00 18                	add    %bl,(%eax)
 8048445:	20 42 08             	and    %al,0x8(%edx)
 8048448:	07                   	pop    %es
 8048449:	04 00                	add    $0x0,%al
 804844b:	00 1c 20             	add    %bl,(%eax,%eiz,1)
 804844e:	42                   	inc    %edx
 804844f:	08 07                	or     %al,(%edi)
 8048451:	05 00 00 20 20       	add    $0x20200000,%eax
 8048456:	42                   	inc    %edx
 8048457:	08 07                	or     %al,(%edi)
 8048459:	06                   	push   %es
 804845a:	00 00                	add    %al,(%eax)
 804845c:	24 20                	and    $0x20,%al
 804845e:	42                   	inc    %edx
 804845f:	08 07                	or     %al,(%edi)
 8048461:	08 00                	or     %al,(%eax)
 8048463:	00 28                	add    %ch,(%eax)
 8048465:	20 42 08             	and    %al,0x8(%edx)
 8048468:	07                   	pop    %es
 8048469:	09 00                	or     %eax,(%eax)
 804846b:	00 2c 20             	add    %ch,(%eax,%eiz,1)
 804846e:	42                   	inc    %edx
 804846f:	08 07                	or     %al,(%edi)
 8048471:	0b 00                	or     (%eax),%eax
 8048473:	00 30                	add    %dh,(%eax)
 8048475:	20 42 08             	and    %al,0x8(%edx)
 8048478:	07                   	pop    %es
 8048479:	0c 00                	or     $0x0,%al
 804847b:	00 34 20             	add    %dh,(%eax,%eiz,1)
 804847e:	42                   	inc    %edx
 804847f:	08 07                	or     %al,(%edi)
 8048481:	0d 00 00 38 20       	or     $0x20380000,%eax
 8048486:	42                   	inc    %edx
 8048487:	08 07                	or     %al,(%edi)
 8048489:	0f 00 00             	sldt   (%eax)

Disassembly of section .init:

0804848c <.init>:
 804848c:	53                   	push   %ebx
 804848d:	83 ec 08             	sub    $0x8,%esp
 8048490:	e8 db 81 3d 00       	call   8420670 <__gmon_start__@plt+0x3d80f0>
 8048495:	81 c3 6b 9b 3d 00    	add    $0x3d9b6b,%ebx
 804849b:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
 80484a1:	85 c0                	test   %eax,%eax
 80484a3:	74 05                	je     80484aa <printf@plt-0x16>
 80484a5:	e8 d6 00 00 00       	call   8048580 <__gmon_start__@plt>
 80484aa:	83 c4 08             	add    $0x8,%esp
 80484ad:	5b                   	pop    %ebx
 80484ae:	c3                   	ret    

Disassembly of section .plt:

080484b0 <printf@plt-0x10>:
 80484b0:	ff 35 04 20 42 08    	pushl  0x8422004
 80484b6:	ff 25 08 20 42 08    	jmp    *0x8422008
 80484bc:	00 00                	add    %al,(%eax)
	...

080484c0 <printf@plt>:
 80484c0:	ff 25 0c 20 42 08    	jmp    *0x842200c
 80484c6:	68 00 00 00 00       	push   $0x0
 80484cb:	e9 e0 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

080484d0 <fflush@plt>:
 80484d0:	ff 25 10 20 42 08    	jmp    *0x8422010
 80484d6:	68 08 00 00 00       	push   $0x8
 80484db:	e9 d0 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

080484e0 <fclose@plt>:
 80484e0:	ff 25 14 20 42 08    	jmp    *0x8422014
 80484e6:	68 10 00 00 00       	push   $0x10
 80484eb:	e9 c0 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

080484f0 <signal@plt>:
 80484f0:	ff 25 18 20 42 08    	jmp    *0x8422018
 80484f6:	68 18 00 00 00       	push   $0x18
 80484fb:	e9 b0 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048500 <alarm@plt>:
 8048500:	ff 25 1c 20 42 08    	jmp    *0x842201c
 8048506:	68 20 00 00 00       	push   $0x20
 804850b:	e9 a0 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048510 <puts@plt>:
 8048510:	ff 25 20 20 42 08    	jmp    *0x8422020
 8048516:	68 28 00 00 00       	push   $0x28
 804851b:	e9 90 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048520 <exit@plt>:
 8048520:	ff 25 24 20 42 08    	jmp    *0x8422024
 8048526:	68 30 00 00 00       	push   $0x30
 804852b:	e9 80 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048530 <__libc_start_main@plt>:
 8048530:	ff 25 28 20 42 08    	jmp    *0x8422028
 8048536:	68 38 00 00 00       	push   $0x38
 804853b:	e9 70 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048540 <fopen@plt>:
 8048540:	ff 25 2c 20 42 08    	jmp    *0x842202c
 8048546:	68 40 00 00 00       	push   $0x40
 804854b:	e9 60 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048550 <putchar@plt>:
 8048550:	ff 25 30 20 42 08    	jmp    *0x8422030
 8048556:	68 48 00 00 00       	push   $0x48
 804855b:	e9 50 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048560 <fgetc@plt>:
 8048560:	ff 25 34 20 42 08    	jmp    *0x8422034
 8048566:	68 50 00 00 00       	push   $0x50
 804856b:	e9 40 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

08048570 <__isoc99_scanf@plt>:
 8048570:	ff 25 38 20 42 08    	jmp    *0x8422038
 8048576:	68 58 00 00 00       	push   $0x58
 804857b:	e9 30 ff ff ff       	jmp    80484b0 <printf@plt-0x10>

Disassembly of section .plt.got:

08048580 <__gmon_start__@plt>:
 8048580:	ff 25 f4 1f 42 08    	jmp    *0x8421ff4
 8048586:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

08420964 <.fini>:
 8420964:	53                   	push   %ebx
 8420965:	83 ec 08             	sub    $0x8,%esp
 8420968:	e8 03 fd ff ff       	call   8420670 <__gmon_start__@plt+0x3d80f0>
 842096d:	81 c3 93 16 00 00    	add    $0x1693,%ebx
 8420973:	83 c4 08             	add    $0x8,%esp
 8420976:	5b                   	pop    %ebx
 8420977:	c3                   	ret    

Disassembly of section .rodata:

08420978 <_IO_stdin_used@@Base-0x4>:
 8420978:	03 00                	add    (%eax),%eax
	...

0842097c <_IO_stdin_used@@Base>:
 842097c:	01 00                	add    %eax,(%eax)
 842097e:	02 00                	add    (%eax),%al
 8420980:	72 00                	jb     8420982 <_IO_stdin_used@@Base+0x6>
 8420982:	2f                   	das    
 8420983:	68 6f 6d 65 2f       	push   $0x2f656d6f
 8420988:	63 74 66 2f          	arpl   %si,0x2f(%esi,%eiz,2)
 842098c:	66 6c                	data16 insb (%dx),%es:(%edi)
 842098e:	61                   	popa   
 842098f:	67 2e 74 78          	addr16 je,pn 8420a0b <_IO_stdin_used@@Base+0x8f>
 8420993:	74 00                	je     8420995 <_IO_stdin_used@@Base+0x19>
 8420995:	43                   	inc    %ebx
 8420996:	61                   	popa   
 8420997:	6e                   	outsb  %ds:(%esi),(%dx)
 8420998:	6e                   	outsb  %ds:(%esi),(%dx)
 8420999:	6f                   	outsl  %ds:(%esi),(%dx)
 842099a:	74 20                	je     84209bc <_IO_stdin_used@@Base+0x40>
 842099c:	6f                   	outsl  %ds:(%esi),(%dx)
 842099d:	70 65                	jo     8420a04 <_IO_stdin_used@@Base+0x88>
 842099f:	6e                   	outsb  %ds:(%esi),(%dx)
 84209a0:	20 66 6c             	and    %ah,0x6c(%esi)
 84209a3:	61                   	popa   
 84209a4:	67 2e 74 78          	addr16 je,pn 8420a20 <_IO_stdin_used@@Base+0xa4>
 84209a8:	74 00                	je     84209aa <_IO_stdin_used@@Base+0x2e>
 84209aa:	00 00                	add    %al,(%eax)
 84209ac:	48                   	dec    %eax
 84209ad:	65 6c                	gs insb (%dx),%es:(%edi)
 84209af:	6c                   	insb   (%dx),%es:(%edi)
 84209b0:	6f                   	outsl  %ds:(%esi),(%dx)
 84209b1:	20 61 6e             	and    %ah,0x6e(%ecx)
 84209b4:	64 20 77 65          	and    %dh,%fs:0x65(%edi)
 84209b8:	6c                   	insb   (%dx),%es:(%edi)
 84209b9:	63 6f 6d             	arpl   %bp,0x6d(%edi)
 84209bc:	65 20 74 6f 20       	and    %dh,%gs:0x20(%edi,%ebp,2)
 84209c1:	1b 5b 33             	sbb    0x33(%ebx),%ebx
 84209c4:	6d                   	insl   (%dx),%es:(%edi)
 84209c5:	6f                   	outsl  %ds:(%esi),(%dx)
 84209c6:	75 72                	jne    8420a3a <_IO_stdin_used@@Base+0xbe>
 84209c8:	1b 5b 32             	sbb    0x32(%ebx),%ebx
 84209cb:	33 6d 20             	xor    0x20(%ebp),%ebp
 84209ce:	76 6f                	jbe    8420a3f <_IO_stdin_used@@Base+0xc3>
 84209d0:	74 69                	je     8420a3b <_IO_stdin_used@@Base+0xbf>
 84209d2:	6e                   	outsb  %ds:(%esi),(%dx)
 84209d3:	67 20 61 70          	and    %ah,0x70(%bx,%di)
 84209d7:	70 6c                	jo     8420a45 <_IO_stdin_used@@Base+0xc9>
 84209d9:	69 63 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%ebx),%esp
 84209e0:	21 00                	and    %eax,(%eax)
 84209e2:	00 00                	add    %al,(%eax)
 84209e4:	57                   	push   %edi
 84209e5:	65 20 6e 6f          	and    %ch,%gs:0x6f(%esi)
 84209e9:	74 69                	je     8420a54 <_IO_stdin_used@@Base+0xd8>
 84209eb:	63 65 64             	arpl   %sp,0x64(%ebp)
 84209ee:	20 74 68 61          	and    %dh,0x61(%eax,%ebp,2)
 84209f2:	74 20                	je     8420a14 <_IO_stdin_used@@Base+0x98>
 84209f4:	74 68                	je     8420a5e <_IO_stdin_used@@Base+0xe2>
 84209f6:	65 72 65             	gs jb  8420a5e <_IO_stdin_used@@Base+0xe2>
 84209f9:	20 6f 63             	and    %ch,0x63(%edi)
 84209fc:	63 75 72             	arpl   %si,0x72(%ebp)
 84209ff:	65 64 20 61 20       	gs and %ah,%fs:0x20(%ecx)
 8420a04:	73 6c                	jae    8420a72 <_IO_stdin_used@@Base+0xf6>
 8420a06:	69 67 68 74 20 62 75 	imul   $0x75622074,0x68(%edi),%esp
 8420a0d:	66 66 65 72 20       	data16 data16 gs jb 8420a32 <_IO_stdin_used@@Base+0xb6>
 8420a12:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a13:	76 65                	jbe    8420a7a <_IO_stdin_used@@Base+0xfe>
 8420a15:	72 66                	jb     8420a7d <_IO_stdin_used@@Base+0x101>
 8420a17:	6c                   	insb   (%dx),%es:(%edi)
 8420a18:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a19:	77 20                	ja     8420a3b <_IO_stdin_used@@Base+0xbf>
 8420a1b:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%esi),%ebp
 8420a22:	70 72                	jo     8420a96 <_IO_stdin_used@@Base+0x11a>
 8420a24:	65 76 69             	gs jbe 8420a90 <_IO_stdin_used@@Base+0x114>
 8420a27:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a28:	75 73                	jne    8420a9d <_IO_stdin_used@@Base+0x121>
 8420a2a:	20 76 65             	and    %dh,0x65(%esi)
 8420a2d:	72 73                	jb     8420aa2 <_IO_stdin_used@@Base+0x126>
 8420a2f:	69 6f 6e 2e 00 4e 6f 	imul   $0x6f4e002e,0x6e(%edi),%ebp
 8420a36:	77 20                	ja     8420a58 <_IO_stdin_used@@Base+0xdc>
 8420a38:	77 65                	ja     8420a9f <_IO_stdin_used@@Base+0x123>
 8420a3a:	20 6e 65             	and    %ch,0x65(%esi)
 8420a3d:	76 65                	jbe    8420aa4 <_IO_stdin_used@@Base+0x128>
 8420a3f:	72 20                	jb     8420a61 <_IO_stdin_used@@Base+0xe5>
 8420a41:	72 65                	jb     8420aa8 <_IO_stdin_used@@Base+0x12c>
 8420a43:	74 75                	je     8420aba <_IO_stdin_used@@Base+0x13e>
 8420a45:	72 6e                	jb     8420ab5 <_IO_stdin_used@@Base+0x139>
 8420a47:	2c 20                	sub    $0x20,%al
 8420a49:	73 6f                	jae    8420aba <_IO_stdin_used@@Base+0x13e>
 8420a4b:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
 8420a4f:	20 70 72             	and    %dh,0x72(%eax)
 8420a52:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a53:	62 6c 65 6d          	bound  %ebp,0x6d(%ebp,%eiz,2)
 8420a57:	20 73 68             	and    %dh,0x68(%ebx)
 8420a5a:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a5b:	75 6c                	jne    8420ac9 <_IO_stdin_used@@Base+0x14d>
 8420a5d:	64 20 62 65          	and    %ah,%fs:0x65(%edx)
 8420a61:	20 73 6f             	and    %dh,0x6f(%ebx)
 8420a64:	6c                   	insb   (%dx),%es:(%edi)
 8420a65:	76 65                	jbe    8420acc <_IO_stdin_used@@Base+0x150>
 8420a67:	64 3f                	fs aas 
 8420a69:	20 52 69             	and    %dl,0x69(%edx)
 8420a6c:	67 68 74 3f 00 00    	addr16 push $0x3f74
 8420a72:	00 00                	add    %al,(%eax)
 8420a74:	54                   	push   %esp
 8420a75:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a76:	64 61                	fs popa 
 8420a78:	79 20                	jns    8420a9a <_IO_stdin_used@@Base+0x11e>
 8420a7a:	79 6f                	jns    8420aeb <_IO_stdin_used@@Base+0x16f>
 8420a7c:	75 20                	jne    8420a9e <_IO_stdin_used@@Base+0x122>
 8420a7e:	61                   	popa   
 8420a7f:	72 65                	jb     8420ae6 <_IO_stdin_used@@Base+0x16a>
 8420a81:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
 8420a85:	20 6f 6e             	and    %ch,0x6e(%edi)
 8420a88:	65 20 77 68          	and    %dh,%gs:0x68(%edi)
 8420a8c:	6f                   	outsl  %ds:(%esi),(%dx)
 8420a8d:	20 64 65 63          	and    %ah,0x63(%ebp,%eiz,2)
 8420a91:	69 64 65 73 20 77 68 	imul   $0x61687720,0x73(%ebp,%eiz,2),%esp
 8420a98:	61 
 8420a99:	74 20                	je     8420abb <_IO_stdin_used@@Base+0x13f>
 8420a9b:	77 65                	ja     8420b02 <_IO_stdin_used@@Base+0x186>
 8420a9d:	20 77 69             	and    %dh,0x69(%edi)
 8420aa0:	6c                   	insb   (%dx),%es:(%edi)
 8420aa1:	6c                   	insb   (%dx),%es:(%edi)
 8420aa2:	20 76 6f             	and    %dh,0x6f(%esi)
 8420aa5:	74 65                	je     8420b0c <_IO_stdin_used@@Base+0x190>
 8420aa7:	20 61 62             	and    %ah,0x62(%ecx)
 8420aaa:	6f                   	outsl  %ds:(%esi),(%dx)
 8420aab:	75 74                	jne    8420b21 <_IO_stdin_used@@Base+0x1a5>
 8420aad:	2e 0a 00             	or     %cs:(%eax),%al
 8420ab0:	54                   	push   %esp
 8420ab1:	6f                   	outsl  %ds:(%esi),(%dx)
 8420ab2:	70 69                	jo     8420b1d <_IO_stdin_used@@Base+0x1a1>
 8420ab4:	63 3a                	arpl   %di,(%edx)
 8420ab6:	20 00                	and    %al,(%eax)
 8420ab8:	25 5b 5e 0a 5d       	and    $0x5d0a5e5b,%eax
 8420abd:	25 2a 63 00 00       	and    $0x632a,%eax
 8420ac2:	00 00                	add    %al,(%eax)
 8420ac4:	0a 57 69             	or     0x69(%edi),%dl
 8420ac7:	6c                   	insb   (%dx),%es:(%edi)
 8420ac8:	6c                   	insb   (%dx),%es:(%edi)
 8420ac9:	20 62 65             	and    %ah,0x65(%edx)
 8420acc:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
 8420ad0:	20 76 6f             	and    %dh,0x6f(%esi)
 8420ad3:	74 69                	je     8420b3e <_IO_stdin_used@@Base+0x1c2>
 8420ad5:	6e                   	outsb  %ds:(%esi),(%dx)
 8420ad6:	67 20 74 6f          	and    %dh,0x6f(%si)
 8420ada:	70 69                	jo     8420b45 <_IO_stdin_used@@Base+0x1c9>
 8420adc:	63 20                	arpl   %sp,(%eax)
 8420ade:	6f                   	outsl  %ds:(%esi),(%dx)
 8420adf:	66 20 74 6f 64       	data16 and %dh,0x64(%edi,%ebp,2)
 8420ae4:	61                   	popa   
 8420ae5:	79 21                	jns    8420b08 <_IO_stdin_used@@Base+0x18c>
	...

Disassembly of section .eh_frame_hdr:

08420ae8 <.eh_frame_hdr>:
 8420ae8:	01 1b                	add    %ebx,(%ebx)
 8420aea:	03 3b                	add    (%ebx),%edi
 8420aec:	50                   	push   %eax
 8420aed:	00 00                	add    %al,(%eax)
 8420aef:	00 09                	add    %cl,(%ecx)
 8420af1:	00 00                	add    %al,(%eax)
 8420af3:	00 c8                	add    %cl,%al
 8420af5:	79 c2                	jns    8420ab9 <_IO_stdin_used@@Base+0x13d>
 8420af7:	ff 80 00 00 00 98    	incl   -0x68000000(%eax)
 8420afd:	7a c2                	jp     8420ac1 <_IO_stdin_used@@Base+0x145>
 8420aff:	ff a4 00 00 00 78 fb 	jmp    *-0x4880000(%eax,%eax,1)
 8420b06:	ff                   	(bad)  
 8420b07:	ff 6c 00 00          	ljmp   *0x0(%eax,%eax,1)
 8420b0b:	00 4e fc             	add    %cl,-0x4(%esi)
 8420b0e:	ff                   	(bad)  
 8420b0f:	ff                   	(bad)  
 8420b10:	b8 00 00 00 f6       	mov    $0xf6000000,%eax
 8420b15:	fc                   	cld    
 8420b16:	ff                   	(bad)  
 8420b17:	ff                   	(bad)  
 8420b18:	dc 00                	faddl  (%eax)
 8420b1a:	00 00                	add    %al,(%eax)
 8420b1c:	13 fd                	adc    %ebp,%edi
 8420b1e:	ff                   	(bad)  
 8420b1f:	ff                   	(bad)  
 8420b20:	f8                   	clc    
 8420b21:	00 00                	add    %al,(%eax)
 8420b23:	00 14 fe             	add    %dl,(%esi,%edi,8)
 8420b26:	ff                   	(bad)  
 8420b27:	ff 20                	jmp    *(%eax)
 8420b29:	01 00                	add    %eax,(%eax)
 8420b2b:	00 18                	add    %bl,(%eax)
 8420b2d:	fe                   	(bad)  
 8420b2e:	ff                   	(bad)  
 8420b2f:	ff 34 01             	pushl  (%ecx,%eax,1)
 8420b32:	00 00                	add    %al,(%eax)
 8420b34:	78 fe                	js     8420b34 <_IO_stdin_used@@Base+0x1b8>
 8420b36:	ff                   	(bad)  
 8420b37:	ff                   	.byte 0xff
 8420b38:	80 01 00             	addb   $0x0,(%ecx)
	...

Disassembly of section .eh_frame:

08420b3c <.eh_frame>:
 8420b3c:	14 00                	adc    $0x0,%al
 8420b3e:	00 00                	add    %al,(%eax)
 8420b40:	00 00                	add    %al,(%eax)
 8420b42:	00 00                	add    %al,(%eax)
 8420b44:	01 7a 52             	add    %edi,0x52(%edx)
 8420b47:	00 01                	add    %al,(%ecx)
 8420b49:	7c 08                	jl     8420b53 <_IO_stdin_used@@Base+0x1d7>
 8420b4b:	01 1b                	add    %ebx,(%ebx)
 8420b4d:	0c 04                	or     $0x4,%al
 8420b4f:	04 88                	add    $0x88,%al
 8420b51:	01 00                	add    %eax,(%eax)
 8420b53:	00 10                	add    %dl,(%eax)
 8420b55:	00 00                	add    %al,(%eax)
 8420b57:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8420b5a:	00 00                	add    %al,(%eax)
 8420b5c:	04 fb                	add    $0xfb,%al
 8420b5e:	ff                   	(bad)  
 8420b5f:	ff 02                	incl   (%edx)
 8420b61:	00 00                	add    %al,(%eax)
 8420b63:	00 00                	add    %al,(%eax)
 8420b65:	00 00                	add    %al,(%eax)
 8420b67:	00 20                	add    %ah,(%eax)
 8420b69:	00 00                	add    %al,(%eax)
 8420b6b:	00 30                	add    %dh,(%eax)
 8420b6d:	00 00                	add    %al,(%eax)
 8420b6f:	00 40 79             	add    %al,0x79(%eax)
 8420b72:	c2 ff d0             	ret    $0xd0ff
 8420b75:	00 00                	add    %al,(%eax)
 8420b77:	00 00                	add    %al,(%eax)
 8420b79:	0e                   	push   %cs
 8420b7a:	08 46 0e             	or     %al,0xe(%esi)
 8420b7d:	0c 4a                	or     $0x4a,%al
 8420b7f:	0f 0b                	ud2    
 8420b81:	74 04                	je     8420b87 <_IO_stdin_used@@Base+0x20b>
 8420b83:	78 00                	js     8420b85 <_IO_stdin_used@@Base+0x209>
 8420b85:	3f                   	aas    
 8420b86:	1a 3b                	sbb    (%ebx),%bh
 8420b88:	2a 32                	sub    (%edx),%dh
 8420b8a:	24 22                	and    $0x22,%al
 8420b8c:	10 00                	adc    %al,(%eax)
 8420b8e:	00 00                	add    %al,(%eax)
 8420b90:	54                   	push   %esp
 8420b91:	00 00                	add    %al,(%eax)
 8420b93:	00 ec                	add    %ch,%ah
 8420b95:	79 c2                	jns    8420b59 <_IO_stdin_used@@Base+0x1dd>
 8420b97:	ff 08                	decl   (%eax)
 8420b99:	00 00                	add    %al,(%eax)
 8420b9b:	00 00                	add    %al,(%eax)
 8420b9d:	00 00                	add    %al,(%eax)
 8420b9f:	00 20                	add    %ah,(%eax)
 8420ba1:	00 00                	add    %al,(%eax)
 8420ba3:	00 68 00             	add    %ch,0x0(%eax)
 8420ba6:	00 00                	add    %al,(%eax)
 8420ba8:	8e fb                	mov    %ebx,%?
 8420baa:	ff                   	(bad)  
 8420bab:	ff a8 00 00 00 00    	ljmp   *0x0(%eax)
 8420bb1:	41                   	inc    %ecx
 8420bb2:	0e                   	push   %cs
 8420bb3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8420bb9:	44                   	inc    %esp
 8420bba:	83 03 02             	addl   $0x2,(%ebx)
 8420bbd:	a0 c5 c3 0c 04       	mov    0x40cc3c5,%al
 8420bc2:	04 00                	add    $0x0,%al
 8420bc4:	18 00                	sbb    %al,(%eax)
 8420bc6:	00 00                	add    %al,(%eax)
 8420bc8:	8c 00                	mov    %es,(%eax)
 8420bca:	00 00                	add    %al,(%eax)
 8420bcc:	12 fc                	adc    %ah,%bh
 8420bce:	ff                   	(bad)  
 8420bcf:	ff 1d 00 00 00 00    	lcall  *0x0
 8420bd5:	41                   	inc    %ecx
 8420bd6:	0e                   	push   %cs
 8420bd7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8420bdd:	44                   	inc    %esp
 8420bde:	83 03 24             	addl   $0x24,(%ebx)
 8420be1:	00 00                	add    %al,(%eax)
 8420be3:	00 a8 00 00 00 13    	add    %ch,0x13000000(%eax)
 8420be9:	fc                   	cld    
 8420bea:	ff                   	(bad)  
 8420beb:	ff 01                	incl   (%ecx)
 8420bed:	01 00                	add    %eax,(%eax)
 8420bef:	00 00                	add    %al,(%eax)
 8420bf1:	44                   	inc    %esp
 8420bf2:	0c 01                	or     $0x1,%al
 8420bf4:	00 47 10             	add    %al,0x10(%edi)
 8420bf7:	05 02 75 00 44       	add    $0x44007502,%eax
 8420bfc:	0f 03 75 78          	lsl    0x78(%ebp),%esi
 8420c00:	06                   	push   %es
 8420c01:	10 03                	adc    %al,(%ebx)
 8420c03:	02 75 7c             	add    0x7c(%ebp),%dh
 8420c06:	00 00                	add    %al,(%eax)
 8420c08:	10 00                	adc    %al,(%eax)
 8420c0a:	00 00                	add    %al,(%eax)
 8420c0c:	d0 00                	rolb   (%eax)
 8420c0e:	00 00                	add    %al,(%eax)
 8420c10:	ec                   	in     (%dx),%al
 8420c11:	fc                   	cld    
 8420c12:	ff                   	(bad)  
 8420c13:	ff 04 00             	incl   (%eax,%eax,1)
 8420c16:	00 00                	add    %al,(%eax)
 8420c18:	00 00                	add    %al,(%eax)
 8420c1a:	00 00                	add    %al,(%eax)
 8420c1c:	48                   	dec    %eax
 8420c1d:	00 00                	add    %al,(%eax)
 8420c1f:	00 e4                	add    %ah,%ah
 8420c21:	00 00                	add    %al,(%eax)
 8420c23:	00 dc                	add    %bl,%ah
 8420c25:	fc                   	cld    
 8420c26:	ff                   	(bad)  
 8420c27:	ff 5d 00             	lcall  *0x0(%ebp)
 8420c2a:	00 00                	add    %al,(%eax)
 8420c2c:	00 41 0e             	add    %al,0xe(%ecx)
 8420c2f:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8420c35:	87 03                	xchg   %eax,(%ebx)
 8420c37:	41                   	inc    %ecx
 8420c38:	0e                   	push   %cs
 8420c39:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8420c3f:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 8420c46:	24 41                	and    $0x41,%al
 8420c48:	0e                   	push   %cs
 8420c49:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8420c4d:	44                   	inc    %esp
 8420c4e:	0e                   	push   %cs
 8420c4f:	30 4d 0e             	xor    %cl,0xe(%ebp)
 8420c52:	20 47 0e             	and    %al,0xe(%edi)
 8420c55:	14 41                	adc    $0x41,%al
 8420c57:	c3                   	ret    
 8420c58:	0e                   	push   %cs
 8420c59:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8420c5c:	0e                   	push   %cs
 8420c5d:	0c 41                	or     $0x41,%al
 8420c5f:	c7                   	(bad)  
 8420c60:	0e                   	push   %cs
 8420c61:	08 41 c5             	or     %al,-0x3b(%ecx)
 8420c64:	0e                   	push   %cs
 8420c65:	04 00                	add    $0x0,%al
 8420c67:	00 10                	add    %dl,(%eax)
 8420c69:	00 00                	add    %al,(%eax)
 8420c6b:	00 30                	add    %dh,(%eax)
 8420c6d:	01 00                	add    %eax,(%eax)
 8420c6f:	00 f0                	add    %dh,%al
 8420c71:	fc                   	cld    
 8420c72:	ff                   	(bad)  
 8420c73:	ff 02                	incl   (%edx)
	...

Disassembly of section .init_array:

08421f04 <.init_array>:
 8421f04:	30 07                	xor    %al,(%edi)
 8421f06:	42                   	inc    %edx
 8421f07:	08                   	.byte 0x8

Disassembly of section .fini_array:

08421f08 <.fini_array>:
 8421f08:	00 07                	add    %al,(%edi)
 8421f0a:	42                   	inc    %edx
 8421f0b:	08                   	.byte 0x8

Disassembly of section .dynamic:

08421f0c <.dynamic>:
 8421f0c:	01 00                	add    %eax,(%eax)
 8421f0e:	00 00                	add    %al,(%eax)
 8421f10:	01 00                	add    %eax,(%eax)
 8421f12:	00 00                	add    %al,(%eax)
 8421f14:	0c 00                	or     $0x0,%al
 8421f16:	00 00                	add    %al,(%eax)
 8421f18:	8c 84 04 08 0d 00 00 	mov    %es,0xd08(%esp,%eax,1)
 8421f1f:	00 64 09 42          	add    %ah,0x42(%ecx,%ecx,1)
 8421f23:	08 19                	or     %bl,(%ecx)
 8421f25:	00 00                	add    %al,(%eax)
 8421f27:	00 04 1f             	add    %al,(%edi,%ebx,1)
 8421f2a:	42                   	inc    %edx
 8421f2b:	08 1b                	or     %bl,(%ebx)
 8421f2d:	00 00                	add    %al,(%eax)
 8421f2f:	00 04 00             	add    %al,(%eax,%eax,1)
 8421f32:	00 00                	add    %al,(%eax)
 8421f34:	1a 00                	sbb    (%eax),%al
 8421f36:	00 00                	add    %al,(%eax)
 8421f38:	08 1f                	or     %bl,(%edi)
 8421f3a:	42                   	inc    %edx
 8421f3b:	08 1c 00             	or     %bl,(%eax,%eax,1)
 8421f3e:	00 00                	add    %al,(%eax)
 8421f40:	04 00                	add    $0x0,%al
 8421f42:	00 00                	add    %al,(%eax)
 8421f44:	f5                   	cmc    
 8421f45:	fe                   	(bad)  
 8421f46:	ff 6f cc             	ljmp   *-0x34(%edi)
 8421f49:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 8421f50:	fc                   	cld    
 8421f51:	82 04 08 06          	addb   $0x6,(%eax,%ecx,1)
 8421f55:	00 00                	add    %al,(%eax)
 8421f57:	00 ec                	add    %ch,%ah
 8421f59:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8421f60:	b5 00                	mov    $0x0,%ch
 8421f62:	00 00                	add    %al,(%eax)
 8421f64:	0b 00                	or     (%eax),%eax
 8421f66:	00 00                	add    %al,(%eax)
 8421f68:	10 00                	adc    %al,(%eax)
 8421f6a:	00 00                	add    %al,(%eax)
 8421f6c:	15 00 00 00 00       	adc    $0x0,%eax
 8421f71:	00 00                	add    %al,(%eax)
 8421f73:	00 03                	add    %al,(%ebx)
 8421f75:	00 00                	add    %al,(%eax)
 8421f77:	00 00                	add    %al,(%eax)
 8421f79:	20 42 08             	and    %al,0x8(%edx)
 8421f7c:	02 00                	add    (%eax),%al
 8421f7e:	00 00                	add    %al,(%eax)
 8421f80:	60                   	pusha  
 8421f81:	00 00                	add    %al,(%eax)
 8421f83:	00 14 00             	add    %dl,(%eax,%eax,1)
 8421f86:	00 00                	add    %al,(%eax)
 8421f88:	11 00                	adc    %eax,(%eax)
 8421f8a:	00 00                	add    %al,(%eax)
 8421f8c:	17                   	pop    %ss
 8421f8d:	00 00                	add    %al,(%eax)
 8421f8f:	00 2c 84             	add    %ch,(%esp,%eax,4)
 8421f92:	04 08                	add    $0x8,%al
 8421f94:	11 00                	adc    %eax,(%eax)
 8421f96:	00 00                	add    %al,(%eax)
 8421f98:	14 84                	adc    $0x84,%al
 8421f9a:	04 08                	add    $0x8,%al
 8421f9c:	12 00                	adc    (%eax),%al
 8421f9e:	00 00                	add    %al,(%eax)
 8421fa0:	18 00                	sbb    %al,(%eax)
 8421fa2:	00 00                	add    %al,(%eax)
 8421fa4:	13 00                	adc    (%eax),%eax
 8421fa6:	00 00                	add    %al,(%eax)
 8421fa8:	08 00                	or     %al,(%eax)
 8421faa:	00 00                	add    %al,(%eax)
 8421fac:	fe                   	(bad)  
 8421fad:	ff                   	(bad)  
 8421fae:	ff 6f d4             	ljmp   *-0x2c(%edi)
 8421fb1:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8421fb5:	ff                   	(bad)  
 8421fb6:	ff 6f 01             	ljmp   *0x1(%edi)
 8421fb9:	00 00                	add    %al,(%eax)
 8421fbb:	00 f0                	add    %dh,%al
 8421fbd:	ff                   	(bad)  
 8421fbe:	ff 6f b2             	ljmp   *-0x4e(%edi)
 8421fc1:	83 04 08 00          	addl   $0x0,(%eax,%ecx,1)
	...

Disassembly of section .got:

08421ff4 <.got>:
	...

Disassembly of section .got.plt:

08422000 <.got.plt>:
 8422000:	0c 1f                	or     $0x1f,%al
 8422002:	42                   	inc    %edx
 8422003:	08 00                	or     %al,(%eax)
 8422005:	00 00                	add    %al,(%eax)
 8422007:	00 00                	add    %al,(%eax)
 8422009:	00 00                	add    %al,(%eax)
 842200b:	00 c6                	add    %al,%dh
 842200d:	84 04 08             	test   %al,(%eax,%ecx,1)
 8422010:	d6                   	(bad)  
 8422011:	84 04 08             	test   %al,(%eax,%ecx,1)
 8422014:	e6 84                	out    %al,$0x84
 8422016:	04 08                	add    $0x8,%al
 8422018:	f6 84 04 08 06 85 04 	testb  $0x8,0x4850608(%esp,%eax,1)
 842201f:	08 
 8422020:	16                   	push   %ss
 8422021:	85 04 08             	test   %eax,(%eax,%ecx,1)
 8422024:	26 85 04 08          	test   %eax,%es:(%eax,%ecx,1)
 8422028:	36 85 04 08          	test   %eax,%ss:(%eax,%ecx,1)
 842202c:	46                   	inc    %esi
 842202d:	85 04 08             	test   %eax,(%eax,%ecx,1)
 8422030:	56                   	push   %esi
 8422031:	85 04 08             	test   %eax,(%eax,%ecx,1)
 8422034:	66 85 04 08          	test   %ax,(%eax,%ecx,1)
 8422038:	76 85                	jbe    8421fbf <_IO_stdin_used@@Base+0x1643>
 842203a:	04 08                	add    $0x8,%al

Disassembly of section .data:

0842203c <.data>:
	...

Disassembly of section .bss:

08422044 <.bss>:
 8422044:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <printf@plt-0x8048448>
   a:	74 75                	je     81 <printf@plt-0x804843f>
   c:	20 37                	and    %dh,(%edi)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <printf@plt-0x8048431>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	38 2e                	cmp    %ch,(%esi)
  1f:	30 34 2e             	xor    %dh,(%esi,%ebp,1)
  22:	31 29                	xor    %ebp,(%ecx)
  24:	20 37                	and    %dh,(%edi)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%eax)
