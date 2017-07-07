0x00d9392f:	pushl	%ebp	; from: 0x00da54b3(MAY), 0x00da0bb3(MAY)
0x00d93930:	movl	%esp, %ebp
0x00d93932:	cmpl	$0x0, 0x8(%ebp)
0x00d93936:	je	0x00d93965	; targets: 0x00d93938(MAY), 0x00d93965(MAY)
0x00d93938:	pushl	0x8(%ebp)	; from: 0x00d93936(MAY)
0x00d9393b:	pushl	$0x0
0x00d9393d:	pushl	0x01266794
0x00d93943:	call	HeapFree@kernel32.dll	; targets: 0xff0006d0(MAY)
0x00d93949:	testl	%eax, %eax
0x00d9394b:	jne	0x00d93965	; targets: 0x00d93965(MAY), 0x00d9394d(MAY)
0x00d9394d:	pushl	%esi	; from: 0x00d9394b(MAY)
0x00d9394e:	call	0x00d9616f	; targets: 0x00d9616f(MAY)
0x00d93953:	movl	%eax, %esi	; from: 0x00d9617d(MAY), 0x00d96181(MAY)
0x00d93955:	call	GetLastError@kernel32.dll	; targets: 0xff000a70(MAY)
0x00d9395b:	pushl	%eax
0x00d9395c:	call	0x00d96182	; targets: 0x00d96182(MAY)
0x00d93961:	popl	%ecx	; from: 0x00d961a5(MAY), 0x00d961c2(MAY), 0x00d961b9(MAY)
0x00d93962:	movl	%eax, (%esi)
0x00d93964:	popl	%esi
0x00d93965:	popl	%ebp	; from: 0x00d9394b(MAY), 0x00d93936(MAY)
0x00d93966:	ret	; targets: 0x00da54b8(MAY), 0x00da0bb8(MAY)

0x00d94196:	cmpl	0x0123ca80, %ecx	; from: 0x00da62cd(MAY), 0x00da770c(MAY)
0x00d9419c:	jne	0x00d941a0	; targets: 0x00d9419e(MAY), 0x00d941a0(MAY)
0x00d9419e:	repz ret	; targets: 0x00da62d2(MAY), 0x00da7711(MAY)	; from: 0x00d9419c(MAY)

0x00d941a0:	jmp	0x00d96b0c	; targets: 0x00d96b0c(MAY)	; from: 0x00d9419c(MAY)
0x00d95ef0:	movl	0xc(%esp), %edx	; from: 0x00da61e6(MAY)
0x00d95ef4:	movl	0x4(%esp), %ecx
0x00d95ef8:	testl	%edx, %edx
0x00d95efa:	je	0x00d95f7b	; targets: 0x00d95efc(MAY)
0x00d95efc:	movzbl	0x8(%esp), %eax	; from: 0x00d95efa(MAY)
0x00d95f01:	btl	$0x1, 0x01266524
0x00d95f09:	jae	0x00d95f18	; targets: 0x00d95f0b(MAY), 0x00d95f18(MAY)
0x00d95f0b:	movl	0xc(%esp), %ecx	; from: 0x00d95f09(MAY)
0x00d95f0f:	pushl	%edi
0x00d95f10:	movl	0x8(%esp), %edi
0x00d95f14:	repz stosb	%al, %es:(%edi)
0x00d95f16:	jmp	0x00d95f75	; targets: 0x00d95f75(MAY)
0x00d95f18:	movl	0xc(%esp), %edx	; from: 0x00d95f09(MAY)
0x00d95f1c:	cmpl	$0x80, %edx
0x00d95f22:	jl	0x00d95f32	; targets: 0x00d95f32(MAY)
0x00d95f32:	pushl	%edi	; from: 0x00d95f22(MAY)
0x00d95f33:	movl	%ecx, %edi
0x00d95f35:	cmpl	$0x4, %edx
0x00d95f38:	jb	0x00d95f6b	; targets: 0x00d95f3a(MAY)
0x00d95f3a:	negl	%ecx	; from: 0x00d95f38(MAY)
0x00d95f3c:	andl	$0x3, %ecx
0x00d95f3f:	je	0x00d95f4d	; targets: 0x00d95f4d(MAY), 0x00d95f41(MAY)
0x00d95f41:	subl	%ecx, %edx	; from: 0x00d95f3f(MAY)
0x00d95f43:	movb	%al, (%edi)	; from: 0x00d95f4b(MAY)
0x00d95f45:	addl	$0x1, %edi
0x00d95f48:	subl	$0x1, %ecx
0x00d95f4b:	jne	0x00d95f43	; targets: 0x00d95f4d(MAY), 0x00d95f43(MAY)
0x00d95f4d:	movl	%eax, %ecx	; from: 0x00d95f3f(MAY), 0x00d95f4b(MAY)
0x00d95f4f:	shll	$0x8, %eax
0x00d95f52:	addl	%ecx, %eax
0x00d95f54:	movl	%eax, %ecx
0x00d95f56:	shll	$0x10, %eax
0x00d95f59:	addl	%ecx, %eax
0x00d95f5b:	movl	%edx, %ecx
0x00d95f5d:	andl	$0x3, %edx
0x00d95f60:	shrl	$0x2, %ecx
0x00d95f63:	je	0x00d95f6b	; targets: 0x00d95f65(MAY), 0x00d95f6b(MAY)
0x00d95f65:	repz stosl	%eax, %es:(%edi)	; from: 0x00d95f63(MAY)
0x00d95f67:	testl	%edx, %edx
0x00d95f69:	je	0x00d95f75	; targets: 0x00d95f75(MAY), 0x00d95f6b(MAY)
0x00d95f6b:	movb	%al, (%edi)	; from: 0x00d95f73(MAY), 0x00d95f63(MAY), 0x00d95f69(MAY)
0x00d95f6d:	addl	$0x1, %edi
0x00d95f70:	subl	$0x1, %edx
0x00d95f73:	jne	0x00d95f6b	; targets: 0x00d95f75(MAY), 0x00d95f6b(MAY)
0x00d95f75:	movl	0x8(%esp), %eax	; from: 0x00d95f69(MAY), 0x00d95f73(MAY), 0x00d95f16(MAY)
0x00d95f79:	popl	%edi
0x00d95f7a:	ret	; targets: 0x00da61eb(MAY)


start:
0x00d95f80:	call	0x00da776d	; targets: 0x00da776d(MAY)
0x00d95f85:	jmp	0x00d95f8a	; targets: 0x00d95f8a(MAY)	; from: 0x00da7808(MAY)
0x00d95f8a:	pushl	$0x14	; from: 0x00d95f85(MAY)
0x00d95f8c:	pushl	$0x121fed8
0x00d95f91:	call	0x00da48f0	; targets: 0x00da48f0(MAY)
0x00d95f96:	call	0x00da2377	; targets: 0x00da2377(MAY)	; from: 0x00da4934(MAY)
0x00d95f9b:	movzwl	%ax, %esi	; from: 0x00da2399(MAY)
0x00d95f9e:	pushl	$0x2
0x00d95fa0:	call	0x00da7720	; targets: 0x00da7720(MAY)
0x00d95fa5:	popl	%ecx	; from: 0x00da772c(MAY)
0x00d95fa6:	movl	$0x5a4d, %eax
0x00d95fab:	cmpw	%ax, 0x00400000
0x00d95fb2:	je	0x00d95fb8	; targets: 0x00d95fb8(MAY), 0x00d95fb4(MAY)
0x00d95fb4:	xorl	%ebx, %ebx	; from: 0x00d95fb2(MAY), 0x00d95fc7(MAY), 0x00d95fd5(MAY)
0x00d95fb6:	jmp	0x00d95feb	; targets: 0x00d95feb(MAY)
0x00d95fb8:	movl	0x0040003c, %eax	; from: 0x00d95fb2(MAY)
0x00d95fbd:	cmpl	$0x4550, 0x400000(%eax)
0x00d95fc7:	jne	0x00d95fb4	; targets: 0x00d95fb4(MAY), 0x00d95fc9(MAY)
0x00d95fc9:	movl	$0x10b, %ecx	; from: 0x00d95fc7(MAY)
0x00d95fce:	cmpw	%cx, 0x400018(%eax)
0x00d95fd5:	jne	0x00d95fb4	; targets: 0x00d95fb4(MAY), 0x00d95fd7(MAY)
0x00d95fd7:	xorl	%ebx, %ebx	; from: 0x00d95fd5(MAY)
0x00d95fd9:	cmpl	$0xe, 0x400074(%eax)
0x00d95fe0:	jbe	0x00d95feb	; targets: 0x00d95fe2(MAY), 0x00d95feb(MAY)
0x00d95fe2:	cmpl	%ebx, 0x4000e8(%eax)	; from: 0x00d95fe0(MAY)
0x00d95fe8:	setne	%bl
0x00d95feb:	movl	%ebx, -28(%ebp)	; from: 0x00d95fe0(MAY), 0x00d95fb6(MAY)
0x00d95fee:	call	0x00da4949	; targets: 0x00da4949(MAY)
0x00d95ff3:	testl	%eax, %eax	; from: 0x00da495d(MAY)
0x00d95ff5:	jne	0x00d95fff	; targets: 0x00d95ff7(MAY), 0x00d95fff(MAY)
0x00d95ff7:	pushl	$0x1c	; from: 0x00d95ff5(MAY)
0x00d95ff9:	call	0x00d960da	; targets: 0x00d960da(MAY)
0x00d95fff:	call	0x00da557a	; targets: 0x00da557a(MAY)	; from: 0x00d95ff5(MAY)
0x00d960da:	pushl	%ebp	; from: 0x00d95ff9(MAY)
0x00d960db:	movl	%esp, %ebp
0x00d960dd:	cmpl	$0x1, 0x01266fe0
0x00d960e4:	jne	0x00d960eb	; targets: 0x00d960eb(MAY), 0x00d960e6(MAY)
0x00d960e6:	call	0x00da7506	; targets: 0x00da7506(MAY)	; from: 0x00d960e4(MAY)
0x00d960eb:	pushl	0x8(%ebp)	; from: 0x00d960e4(MAY), 0x00da753e(MAY)
0x00d960ee:	call	0x00da7563	; targets: 0x00da7563(MAY)
0x00d960f3:	pushl	$0xff	; from: 0x00da7714(MAY)
0x00d960f8:	call	0x00d99216	; targets: 0x00d99216(MAY)
0x00d9616f:	call	0x00da5458	; targets: 0x00da5458(MAY)	; from: 0x00d96a8c(MAY), 0x00db2daa(MAY), 0x00db2eac(MAY), 0x00db2e34(MAY), 0x00db2dee(MAY), 0x00da7758(MAY), 0x00d96a85(MAY), 0x00da0b77(MAY), 0x00da7958(MAY), 0x00d9394e(MAY), 0x00db1b96(MAY)
0x00d96174:	testl	%eax, %eax	; from: 0x00da54c6(MAY)
0x00d96176:	jne	0x00d9617e	; targets: 0x00d9617e(MAY), 0x00d96178(MAY)
0x00d96178:	movl	$0x123ce78, %eax	; from: 0x00d96176(MAY)
0x00d9617d:	ret	; targets: 0x00db2daf(MAY), 0x00d93953(MAY), 0x00db2e39(MAY), 0x00db2df3(MAY), 0x00db1b9b(MAY)

0x00d9617e:	addl	$0x8, %eax	; from: 0x00d96176(MAY)
0x00d96181:	ret	; targets: 0x00db2e39(MAY), 0x00db2df3(MAY), 0x00d93953(MAY), 0x00db2daf(MAY), 0x00db1b9b(MAY)

0x00d96182:	pushl	%ebp	; from: 0x00d9395c(MAY)
0x00d96183:	movl	%esp, %ebp
0x00d96185:	movl	0x8(%ebp), %ecx
0x00d96188:	xorl	%eax, %eax
0x00d9618a:	cmpl	0x123cd10(,%eax,8), %ecx	; from: 0x00d96197(MAY)
0x00d96191:	je	0x00d961ba	; targets: 0x00d961ba(MAY), 0x00d96193(MAY)
0x00d96193:	incl	%eax	; from: 0x00d96191(MAY)
0x00d96194:	cmpl	$0x2d, %eax
0x00d96197:	jb	0x00d9618a	; targets: 0x00d9618a(MAY), 0x00d96199(MAY)
0x00d96199:	leal	-19(%ecx), %eax	; from: 0x00d96197(MAY)
0x00d9619c:	cmpl	$0x11, %eax
0x00d9619f:	ja	0x00d961a6	; targets: 0x00d961a6(MAY), 0x00d961a1(MAY)
0x00d961a1:	pushl	$0xd	; from: 0x00d9619f(MAY)
0x00d961a3:	popl	%eax
0x00d961a4:	popl	%ebp
0x00d961a5:	ret	; targets: 0x00d93961(MAY)

0x00d961a6:	leal	-188(%ecx), %eax	; from: 0x00d9619f(MAY)
0x00d961ac:	pushl	$0xe
0x00d961ae:	popl	%ecx
0x00d961af:	cmpl	%eax, %ecx
0x00d961b1:	sbbl	%eax, %eax
0x00d961b3:	andl	%ecx, %eax
0x00d961b5:	addl	$0x8, %eax
0x00d961b8:	popl	%ebp
0x00d961b9:	ret	; targets: 0x00d93961(MAY)

0x00d961ba:	movl	0x123cd14(,%eax,8), %eax	; from: 0x00d96191(MAY)
0x00d961c1:	popl	%ebp
0x00d961c2:	ret	; targets: 0x00d93961(MAY)

0x00d96a1e:	pushl	%ebp	; from: 0x00da222b(MAY)
0x00d96a1f:	movl	%esp, %ebp
0x00d96a21:	pushl	%esi
0x00d96a22:	movl	0x8(%ebp), %esi
0x00d96a25:	cmpl	$0xffffffe0, %esi
0x00d96a28:	ja	0x00d96a99	; targets: 0x00d96a2a(MAY)
0x00d96a2a:	pushl	%ebx	; from: 0x00d96a28(MAY)
0x00d96a2b:	pushl	%edi
0x00d96a2c:	movl	0x01266794, %eax
0x00d96a31:	testl	%eax, %eax
0x00d96a33:	jne	0x00d96a52	; targets: 0x00d96a35(MAY), 0x00d96a52(MAY)
0x00d96a35:	call	0x00da7506	; targets: 0x00da7506(MAY)	; from: 0x00d96a33(MAY)
0x00d96a52:	testl	%esi, %esi	; from: 0x00d96a33(MAY)
0x00d96a54:	je	0x00d96a5a	; targets: 0x00d96a56(MAY)
0x00d96a56:	movl	%esi, %ecx	; from: 0x00d96a54(MAY)
0x00d96a58:	jmp	0x00d96a5d	; targets: 0x00d96a5d(MAY)
0x00d96a5d:	pushl	%ecx	; from: 0x00d96a58(MAY)
0x00d96a5e:	pushl	$0x0
0x00d96a60:	pushl	%eax
0x00d96a61:	call	HeapAlloc@kernel32.dll	; targets: 0xff0005c0(MAY)
0x00d96a67:	movl	%eax, %edi
0x00d96a69:	testl	%edi, %edi
0x00d96a6b:	jne	0x00d96a93	; targets: 0x00d96a6d(MAY), 0x00d96a93(MAY)
0x00d96a6d:	pushl	$0xc	; from: 0x00d96a6b(MAY)
0x00d96a6f:	popl	%ebx
0x00d96a70:	cmpl	%eax, 0x01266fe4
0x00d96a76:	je	0x00d96a85	; targets: 0x00d96a78(MAY), 0x00d96a85(MAY)
0x00d96a78:	pushl	%esi	; from: 0x00d96a76(MAY)
0x00d96a79:	call	0x00da4880	; targets: 0x00da4880(MAY)
0x00d96a7e:	popl	%ecx	; from: 0x00da48a5(MAY)
0x00d96a7f:	testl	%eax, %eax
0x00d96a81:	jne	0x00d96a2c	; targets: 0x00d96a83(MAY)
0x00d96a83:	jmp	0x00d96a8c	; targets: 0x00d96a8c(MAY)	; from: 0x00d96a81(MAY)
0x00d96a85:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00d96a76(MAY)
0x00d96a8c:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00d96a83(MAY)
0x00d96a93:	movl	%edi, %eax	; from: 0x00d96a6b(MAY)
0x00d96a95:	popl	%edi
0x00d96a96:	popl	%ebx
0x00d96a97:	jmp	0x00d96aad	; targets: 0x00d96aad(MAY)
0x00d96aad:	popl	%esi	; from: 0x00d96a97(MAY)
0x00d96aae:	popl	%ebp
0x00d96aaf:	ret	; targets: 0x00da2230(MAY)

0x00d96acf:	pushl	%ebp	; from: 0x00d96bfe(MAY)
0x00d96ad0:	movl	%esp, %ebp
0x00d96ad2:	call	IsDebuggerPresent@kernel32.dll	; targets: 0xff0005e0(MAY)
0x00d96ad8:	pushl	$0x1
0x00d96ada:	movl	%eax, 0x0126650c
0x00d96adf:	call	0x00da79bb	; targets: 0x00da79bb(MAY)
0x00d96ae4:	pushl	0x8(%ebp)	; from: 0x00da79c2(MAY)
0x00d96ae7:	call	0x00da26c4	; targets: 0x00da26c4(MAY)
0x00d96aec:	cmpl	$0x0, 0x0126650c	; from: 0x00da26d9(MAY)
0x00d96af3:	popl	%ecx
0x00d96af4:	popl	%ecx
0x00d96af5:	jne	0x00d96aff	; targets: 0x00d96aff(MAY), 0x00d96af7(MAY)
0x00d96af7:	pushl	$0x1	; from: 0x00d96af5(MAY)
0x00d96af9:	call	0x00da79bb	; targets: 0x00da79bb(MAY)
0x00d96afe:	popl	%ecx	; from: 0x00da79c2(MAY)
0x00d96aff:	pushl	$0xc0000409	; from: 0x00d96af5(MAY)
0x00d96b04:	call	0x00da26af	; targets: 0x00da26af(MAY)
0x00d96b09:	popl	%ecx	; from: 0x00da26c3(MAY)
0x00d96b0a:	popl	%ebp
0x00d96b0b:	ret	; targets: 0x00d96c03(MAY)

0x00d96b0c:	pushl	%ebp	; from: 0x00d941a0(MAY)
0x00d96b0d:	movl	%esp, %ebp
0x00d96b0f:	subl	$0x324, %esp
0x00d96b15:	pushl	$0x17
0x00d96b17:	call	0x00dbb684	; targets: 0x00dbb684(MAY)
0x00d96b1c:	testl	%eax, %eax
0x00d96b1e:	je	0x00d96b25	; targets: 0x00d96b25(MAY), 0x00d96b20(MAY)
0x00d96b20:	pushl	$0x2	; from: 0x00d96b1e(MAY)
0x00d96b22:	popl	%ecx
0x00d96b23:	int	$0x29
0x00d96b25:	movl	%eax, 0x012662f0	; from: 0x00d96b1e(MAY)
0x00d96b2a:	movl	%ecx, 0x012662ec
0x00d96b30:	movl	%edx, 0x012662e8
0x00d96b36:	movl	%ebx, 0x012662e4
0x00d96b3c:	movl	%esi, 0x012662e0
0x00d96b42:	movl	%edi, 0x012662dc
0x00d96b48:	movw	%ss, 0x01266308
0x00d96b4f:	movw	%cs, 0x012662fc
0x00d96b56:	movw	%ds, 0x012662d8
0x00d96b5d:	movw	%es, 0x012662d4
0x00d96b64:	movw	%fs, 0x012662d0
0x00d96b6b:	movw	%gs, 0x012662cc
0x00d96b72:	pushfl	
0x00d96b73:	popl	0x01266300
0x00d96b79:	movl	(%ebp), %eax
0x00d96b7c:	movl	%eax, 0x012662f4
0x00d96b81:	movl	0x4(%ebp), %eax
0x00d96b84:	movl	%eax, 0x012662f8
0x00d96b89:	leal	0x8(%ebp), %eax
0x00d96b8c:	movl	%eax, 0x01266304
0x00d96b91:	movl	-804(%ebp), %eax
0x00d96b97:	movl	$0x10001, 0x01266240
0x00d96ba1:	movl	0x012662f8, %eax
0x00d96ba6:	movl	%eax, 0x012661fc
0x00d96bab:	movl	$0xc0000409, 0x012661f0
0x00d96bb5:	movl	$0x1, 0x012661f4
0x00d96bbf:	movl	$0x1, 0x01266200
0x00d96bc9:	pushl	$0x4
0x00d96bcb:	popl	%eax
0x00d96bcc:	imull	$0x0, %eax, %eax
0x00d96bcf:	movl	$0x2, 0x1266204(%eax)
0x00d96bd9:	pushl	$0x4
0x00d96bdb:	popl	%eax
0x00d96bdc:	imull	$0x0, %eax, %eax
0x00d96bdf:	movl	0x0123ca80, %ecx
0x00d96be5:	movl	%ecx, -8(%ebp,%eax)
0x00d96be9:	pushl	$0x4
0x00d96beb:	popl	%eax
0x00d96bec:	shll	$0x0, %eax
0x00d96bef:	movl	0x0123ca84, %ecx
0x00d96bf5:	movl	%ecx, -8(%ebp,%eax)
0x00d96bf9:	pushl	$0x11a5cf4
0x00d96bfe:	call	0x00d96acf	; targets: 0x00d96acf(MAY)
0x00d96c03:	movl	%ebp, %esp	; from: 0x00d96b0b(MAY)
0x00d96c05:	popl	%ebp
0x00d96c06:	ret	; targets: 0x00da7711(MAY), 0x00da62d2(MAY)

0x00d991e2:	pushl	%ebp	; from: 0x00d9921c(MAY)
0x00d991e3:	movl	%esp, %ebp
0x00d991e5:	pushl	%ecx
0x00d991e6:	leal	-4(%ebp), %eax
0x00d991e9:	pushl	%eax
0x00d991ea:	pushl	$0x11ab2c0
0x00d991ef:	pushl	$0x0
0x00d991f1:	call	GetModuleHandleExW@kernel32.dll	; targets: 0xff000620(MAY)
0x00d991f7:	testl	%eax, %eax
0x00d991f9:	je	0x00d99212	; targets: 0x00d99212(MAY), 0x00d991fb(MAY)
0x00d991fb:	pushl	$0x11ab2d8	; from: 0x00d991f9(MAY)
0x00d99200:	pushl	-4(%ebp)
0x00d99203:	call	GetProcAddress@kernel32.dll	; targets: 0xff000a50(MAY)
0x00d99212:	movl	%ebp, %esp	; from: 0x00d991f9(MAY)
0x00d99214:	popl	%ebp
0x00d99215:	ret	; targets: 0x00d99221(MAY)

0x00d99216:	pushl	%ebp	; from: 0x00d960f8(MAY)
0x00d99217:	movl	%esp, %ebp
0x00d99219:	pushl	0x8(%ebp)
0x00d9921c:	call	0x00d991e2	; targets: 0x00d991e2(MAY)
0x00d99221:	popl	%ecx	; from: 0x00d99215(MAY)
0x00d99222:	pushl	0x8(%ebp)
0x00d99225:	call	ExitProcess@kernel32.dll	; targets: 0xff001c30(MAY)
0x00d992fe:	pushl	%esi	; from: 0x00da557a(MAY)
0x00d992ff:	pushl	$0x0
0x00d99301:	call	EncodePointer@kernel32.dll	; targets: 0xff000670(MAY)
0x00d99307:	movl	%eax, %esi
0x00d99309:	pushl	%esi
0x00d9930a:	call	0x00da48a6	; targets: 0x00da48a6(MAY)
0x00d9930f:	pushl	%esi	; from: 0x00da48b2(MAY)
0x00d99310:	call	0x00da62d6	; targets: 0x00da62d6(MAY)
0x00d99315:	pushl	%esi	; from: 0x00da62e2(MAY)
0x00d99316:	call	0x00da4873	; targets: 0x00da4873(MAY)
0x00d9931b:	pushl	%esi	; from: 0x00da487f(MAY)
0x00d9931c:	call	0x00da8bad	; targets: 0x00da8bad(MAY)
0x00d99321:	pushl	%esi	; from: 0x00da8bc8(MAY)
0x00d99322:	call	0x00d9d50c	; targets: 0x00d9d50c(MAY)
0x00d99327:	pushl	%esi	; from: 0x00d9d51c(MAY)
0x00d99328:	call	0x00d9e175	; targets: 0x00d9e175(MAY)
0x00d9932d:	addl	$0x18, %esp	; from: 0x00d9e181(MAY)
0x00d99330:	popl	%esi
0x00d99331:	jmp	0x00da2408	; targets: 0x00da2408(MAY)
0x00d9d50c:	pushl	$0xd9d4c5	; from: 0x00d99322(MAY)
0x00d9d511:	call	EncodePointer@kernel32.dll	; targets: 0xff000670(MAY)
0x00d9d517:	movl	%eax, 0x01266560
0x00d9d51c:	ret	; targets: 0x00d99327(MAY)

0x00d9e175:	pushl	%ebp	; from: 0x00d99328(MAY)
0x00d9e176:	movl	%esp, %ebp
0x00d9e178:	movl	0x8(%ebp), %eax
0x00d9e17b:	movl	%eax, 0x01266624
0x00d9e180:	popl	%ebp
0x00d9e181:	ret	; targets: 0x00d9932d(MAY)

0x00da0aa6:	pushl	%ebp	; from: 0x00da552c(MAY), 0x00da0b88(MAY), 0x00da550b(MAY)
0x00da0aa7:	movl	%esp, %ebp
0x00da0aa9:	pushl	%esi
0x00da0aaa:	movl	0x8(%ebp), %esi
0x00da0aad:	cmpl	$0x0, 0x123d060(,%esi,8)
0x00da0ab5:	jne	0x00da0aca	; targets: 0x00da0aca(MAY), 0x00da0ab7(MAY)
0x00da0ab7:	pushl	%esi	; from: 0x00da0ab5(MAY)
0x00da0ab8:	call	0x00da0b2e	; targets: 0x00da0b2e(MAY)
0x00da0abd:	popl	%ecx	; from: 0x00da0bcd(MAY)
0x00da0abe:	testl	%eax, %eax
0x00da0ac0:	jne	0x00da0aca	; targets: 0x00da0aca(MAY)
0x00da0aca:	pushl	0x123d060(,%esi,8)	; from: 0x00da0ac0(MAY), 0x00da0ab5(MAY)
0x00da0ad1:	call	EnterCriticalSection@kernel32.dll	; targets: 0xff001440(MAY)
0x00da0ad7:	popl	%esi
0x00da0ad8:	popl	%ebp
0x00da0ad9:	ret	; targets: 0x00da5531(MAY), 0x00da0b8d(MAY), 0x00da5510(MAY)

0x00da0b2e:	pushl	$0x8	; from: 0x00da0ab8(MAY)
0x00da0b30:	pushl	$0x1220338
0x00da0b35:	call	0x00da48f0	; targets: 0x00da48f0(MAY)
0x00da0b3a:	cmpl	$0x0, 0x01266794	; from: 0x00da4934(MAY)
0x00da0b41:	jne	0x00da0b5b	; targets: 0x00da0b5b(MAY), 0x00da0b43(MAY)
0x00da0b43:	call	0x00da7506	; targets: 0x00da7506(MAY)	; from: 0x00da0b41(MAY)
0x00da0b5b:	movl	0x8(%ebp), %edi	; from: 0x00da0b41(MAY)
0x00da0b5e:	xorl	%ebx, %ebx
0x00da0b60:	cmpl	%ebx, 0x123d060(,%edi,8)
0x00da0b67:	jne	0x00da0bc5	; targets: 0x00da0b69(MAY), 0x00da0bc5(MAY)
0x00da0b69:	pushl	$0x18	; from: 0x00da0b67(MAY)
0x00da0b6b:	call	0x00da221a	; targets: 0x00da221a(MAY)
0x00da0b70:	popl	%ecx	; from: 0x00da2260(MAY)
0x00da0b71:	movl	%eax, %esi
0x00da0b73:	testl	%esi, %esi
0x00da0b75:	jne	0x00da0b86	; targets: 0x00da0b77(MAY), 0x00da0b86(MAY)
0x00da0b77:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00da0b75(MAY)
0x00da0b86:	pushl	$0xa	; from: 0x00da0b75(MAY)
0x00da0b88:	call	0x00da0aa6	; targets: 0x00da0aa6(MAY)
0x00da0b8d:	popl	%ecx	; from: 0x00da0ad9(MAY)
0x00da0b8e:	movl	%ebx, -4(%ebp)
0x00da0b91:	cmpl	%ebx, 0x123d060(,%edi,8)
0x00da0b98:	jne	0x00da0bb2	; targets: 0x00da0b9a(MAY), 0x00da0bb2(MAY)
0x00da0b9a:	pushl	%ebx	; from: 0x00da0b98(MAY)
0x00da0b9b:	pushl	$0xfa0
0x00da0ba0:	pushl	%esi
0x00da0ba1:	call	0x00da239a	; targets: 0x00da239a(MAY)
0x00da0ba6:	addl	$0xc, %esp	; from: 0x00da23c7(MAY)
0x00da0ba9:	movl	%esi, 0x123d060(,%edi,8)
0x00da0bb0:	jmp	0x00da0bb9	; targets: 0x00da0bb9(MAY)
0x00da0bb2:	pushl	%esi	; from: 0x00da0b98(MAY)
0x00da0bb3:	call	0x00d9392f	; targets: 0x00d9392f(MAY)
0x00da0bb8:	popl	%ecx	; from: 0x00d93966(MAY)
0x00da0bb9:	movl	$0xfffffffe, -4(%ebp)	; from: 0x00da0bb0(MAY)
0x00da0bc0:	call	0x00da0bce	; targets: 0x00da0bce(MAY)
0x00da0bc5:	xorl	%eax, %eax	; from: 0x00da0bd6(MAY), 0x00da0b67(MAY)
0x00da0bc7:	incl	%eax
0x00da0bc8:	call	0x00da4935	; targets: 0x00da4935(MAY)
0x00da0bcd:	ret	; targets: 0x00da0abd(MAY)	; from: 0x00da4948(MAY)

0x00da0bce:	pushl	$0xa	; from: 0x00da0bc0(MAY)
0x00da0bd0:	call	0x00da0c10	; targets: 0x00da0c10(MAY)
0x00da0bd5:	popl	%ecx	; from: 0x00da0c24(MAY)
0x00da0bd6:	ret	; targets: 0x00da0bc5(MAY)

0x00da0c10:	pushl	%ebp	; from: 0x00da0bd0(MAY), 0x00da556a(MAY)
0x00da0c11:	movl	%esp, %ebp
0x00da0c13:	movl	0x8(%ebp), %eax
0x00da0c16:	pushl	0x123d060(,%eax,8)
0x00da0c1d:	call	LeaveCriticalSection@kernel32.dll	; targets: 0xff001420(MAY)
0x00da0c23:	popl	%ebp
0x00da0c24:	ret	; targets: 0x00da0bd5(MAY), 0x00da556f(MAY)

0x00da1a00:	movl	0x4(%esp), %ecx	; from: 0x00da76ef(MAY)
0x00da1a04:	testl	$0x3, %ecx
0x00da1a0a:	je	0x00da1a30	; targets: 0x00da1a30(MAY), 0x00da1a0c(MAY)
0x00da1a0c:	movb	(%ecx), %al	; from: 0x00da1a1b(MAY), 0x00da1a0a(MAY)
0x00da1a0e:	addl	$0x1, %ecx
0x00da1a11:	testb	%al, %al
0x00da1a13:	je	0x00da1a63	; targets: 0x00da1a15(MAY), 0x00da1a63(MAY)
0x00da1a15:	testl	$0x3, %ecx	; from: 0x00da1a13(MAY)
0x00da1a1b:	jne	0x00da1a0c	; targets: 0x00da1a0c(MAY), 0x00da1a1d(MAY)
0x00da1a1d:	addl	$0x0, %eax	; from: 0x00da1a1b(MAY)
0x00da1a22:	leal	(%esp), %esp
0x00da1a29:	leal	(%esp), %esp
0x00da1a30:	movl	(%ecx), %eax	; from: 0x00da1a0a(MAY), 0x00da1a61(MAY), 0x00da1a46(MAY)
0x00da1a32:	movl	$0x7efefeff, %edx
0x00da1a37:	addl	%eax, %edx
0x00da1a39:	xorl	$0xffffffff, %eax
0x00da1a3c:	xorl	%edx, %eax
0x00da1a3e:	addl	$0x4, %ecx
0x00da1a41:	testl	$0x81010100, %eax
0x00da1a46:	je	0x00da1a30	; targets: 0x00da1a48(MAY), 0x00da1a30(MAY)
0x00da1a48:	movl	-4(%ecx), %eax	; from: 0x00da1a46(MAY)
0x00da1a4b:	testb	%al, %al
0x00da1a4d:	je	0x00da1a81	; targets: 0x00da1a4f(MAY), 0x00da1a81(MAY)
0x00da1a4f:	testb	%ah, %ah	; from: 0x00da1a4d(MAY)
0x00da1a51:	je	0x00da1a77	; targets: 0x00da1a77(MAY), 0x00da1a53(MAY)
0x00da1a53:	testl	$0xff0000, %eax	; from: 0x00da1a51(MAY)
0x00da1a58:	je	0x00da1a6d	; targets: 0x00da1a6d(MAY), 0x00da1a5a(MAY)
0x00da1a5a:	testl	$0xff000000, %eax	; from: 0x00da1a58(MAY)
0x00da1a5f:	je	0x00da1a63	; targets: 0x00da1a61(MAY), 0x00da1a63(MAY)
0x00da1a61:	jmp	0x00da1a30	; targets: 0x00da1a30(MAY)	; from: 0x00da1a5f(MAY)
0x00da1a63:	leal	-1(%ecx), %eax	; from: 0x00da1a13(MAY), 0x00da1a5f(MAY)
0x00da1a66:	movl	0x4(%esp), %ecx
0x00da1a6a:	subl	%ecx, %eax
0x00da1a6c:	ret	; targets: 0x00da76f4(MAY)

0x00da1a6d:	leal	-2(%ecx), %eax	; from: 0x00da1a58(MAY)
0x00da1a70:	movl	0x4(%esp), %ecx
0x00da1a74:	subl	%ecx, %eax
0x00da1a76:	ret	; targets: 0x00da76f4(MAY)

0x00da1a77:	leal	-3(%ecx), %eax	; from: 0x00da1a51(MAY)
0x00da1a7a:	movl	0x4(%esp), %ecx
0x00da1a7e:	subl	%ecx, %eax
0x00da1a80:	ret	; targets: 0x00da76f4(MAY)

0x00da1a81:	leal	-4(%ecx), %eax	; from: 0x00da1a4d(MAY)
0x00da1a84:	movl	0x4(%esp), %ecx
0x00da1a88:	subl	%ecx, %eax
0x00da1a8a:	ret	; targets: 0x00da76f4(MAY)

0x00da21d2:	pushl	%ebp	; from: 0x00da547b(MAY)
0x00da21d3:	movl	%esp, %ebp
0x00da21d5:	pushl	%esi
0x00da21d6:	pushl	%edi
0x00da21d7:	xorl	%esi, %esi
0x00da21d9:	pushl	$0x0	; from: 0x00da2212(MAY)
0x00da21db:	pushl	0xc(%ebp)
0x00da21de:	pushl	0x8(%ebp)
0x00da21e1:	call	0x00da7941	; targets: 0x00da7941(MAY)
0x00da21e6:	movl	%eax, %edi	; from: 0x00da79ba(MAY)
0x00da21e8:	addl	$0xc, %esp
0x00da21eb:	testl	%edi, %edi
0x00da21ed:	jne	0x00da2214	; targets: 0x00da21ef(MAY), 0x00da2214(MAY)
0x00da21ef:	cmpl	%eax, 0x0126677c	; from: 0x00da21ed(MAY)
0x00da21f5:	jbe	0x00da2214	; targets: 0x00da21f7(MAY), 0x00da2214(MAY)
0x00da21f7:	pushl	%esi	; from: 0x00da21f5(MAY)
0x00da21f8:	call	0x00da26a1	; targets: 0x00da26a1(MAY)
0x00da21fd:	addl	$0x3e8, %esi	; from: 0x00da26ae(MAY)
0x00da2203:	popl	%ecx
0x00da2204:	cmpl	0x0126677c, %esi
0x00da220a:	jbe	0x00da220f	; targets: 0x00da220c(MAY), 0x00da220f(MAY)
0x00da220c:	orl	$0xffffffff, %esi	; from: 0x00da220a(MAY)
0x00da220f:	cmpl	$0xffffffff, %esi	; from: 0x00da220a(MAY)
0x00da2212:	jne	0x00da21d9	; targets: 0x00da2214(MAY), 0x00da21d9(MAY)
0x00da2214:	movl	%edi, %eax	; from: 0x00da2212(MAY), 0x00da21f5(MAY), 0x00da21ed(MAY)
0x00da2216:	popl	%edi
0x00da2217:	popl	%esi
0x00da2218:	popl	%ebp
0x00da2219:	ret	; targets: 0x00da5480(MAY)

0x00da221a:	pushl	%ebp	; from: 0x00da0b6b(MAY)
0x00da221b:	movl	%esp, %ebp
0x00da221d:	pushl	%ebx
0x00da221e:	pushl	%esi
0x00da221f:	pushl	%edi
0x00da2220:	movl	0x0126677c, %edi
0x00da2226:	xorl	%esi, %esi
0x00da2228:	pushl	0x8(%ebp)	; from: 0x00da2258(MAY)
0x00da222b:	call	0x00d96a1e	; targets: 0x00d96a1e(MAY)
0x00da2230:	movl	%eax, %ebx	; from: 0x00d96aaf(MAY)
0x00da2232:	popl	%ecx
0x00da2233:	testl	%ebx, %ebx
0x00da2235:	jne	0x00da225a	; targets: 0x00da2237(MAY), 0x00da225a(MAY)
0x00da2237:	testl	%edi, %edi	; from: 0x00da2235(MAY)
0x00da2239:	je	0x00da225a	; targets: 0x00da225a(MAY), 0x00da223b(MAY)
0x00da223b:	pushl	%esi	; from: 0x00da2239(MAY)
0x00da223c:	call	0x00da26a1	; targets: 0x00da26a1(MAY)
0x00da2241:	movl	0x0126677c, %edi	; from: 0x00da26ae(MAY)
0x00da2247:	addl	$0x3e8, %esi
0x00da224d:	popl	%ecx
0x00da224e:	cmpl	%edi, %esi
0x00da2250:	jbe	0x00da2255	; targets: 0x00da2252(MAY), 0x00da2255(MAY)
0x00da2252:	orl	$0xffffffff, %esi	; from: 0x00da2250(MAY)
0x00da2255:	cmpl	$0xffffffff, %esi	; from: 0x00da2250(MAY)
0x00da2258:	jne	0x00da2228	; targets: 0x00da2228(MAY), 0x00da225a(MAY)
0x00da225a:	popl	%edi	; from: 0x00da2258(MAY), 0x00da2239(MAY), 0x00da2235(MAY)
0x00da225b:	popl	%esi
0x00da225c:	movl	%ebx, %eax
0x00da225e:	popl	%ebx
0x00da225f:	popl	%ebp
0x00da2260:	ret	; targets: 0x00da0b70(MAY)

0x00da2336:	pushl	%ebp	; from: 0x00da5468(MAY)
0x00da2337:	movl	%esp, %ebp
0x00da2339:	movl	0x012698c8, %eax
0x00da233e:	xorl	0x0123ca80, %eax
0x00da2344:	pushl	0x8(%ebp)
0x00da2347:	je	0x00da234d	; targets: 0x00da234d(MAY), 0x00da2349(MAY)
0x00da2349:	call	%eax	; targets: unresolved	; from: 0x00da2347(MAY)
0x00da234d:	call	TlsGetValue@kernel32.dll	; targets: 0xff0019f0(MAY)	; from: 0x00da2347(MAY)
0x00da2353:	popl	%ebp
0x00da2354:	ret	; targets: 0x00da546d(MAY)

0x00da2355:	pushl	%ebp	; from: 0x00da548f(MAY)
0x00da2356:	movl	%esp, %ebp
0x00da2358:	movl	0x012698cc, %eax
0x00da235d:	xorl	0x0123ca80, %eax
0x00da2363:	pushl	0xc(%ebp)
0x00da2366:	pushl	0x8(%ebp)
0x00da2369:	je	0x00da236f	; targets: 0x00da236b(MAY), 0x00da236f(MAY)
0x00da236b:	call	%eax	; targets: unresolved	; from: 0x00da2369(MAY)
0x00da236f:	call	TlsSetValue@kernel32.dll	; targets: 0xff0019d0(MAY)	; from: 0x00da2369(MAY)
0x00da2375:	popl	%ebp
0x00da2376:	ret	; targets: 0x00da5494(MAY)

0x00da2377:	pushl	%ebp	; from: 0x00d95f96(MAY)
0x00da2378:	movl	%esp, %ebp
0x00da237a:	subl	$0x44, %esp
0x00da237d:	leal	-68(%ebp), %eax
0x00da2380:	pushl	%eax
0x00da2381:	call	GetStartupInfoW@kernel32.dll	; targets: 0xff001a70(MAY)
0x00da2387:	testb	$0x1, -24(%ebp)
0x00da238b:	je	0x00da2393	; targets: 0x00da238d(MAY), 0x00da2393(MAY)
0x00da238d:	movzwl	-20(%ebp), %eax	; from: 0x00da238b(MAY)
0x00da2391:	jmp	0x00da2396	; targets: 0x00da2396(MAY)
0x00da2393:	pushl	$0xa	; from: 0x00da238b(MAY)
0x00da2395:	popl	%eax
0x00da2396:	movl	%ebp, %esp	; from: 0x00da2391(MAY)
0x00da2398:	popl	%ebp
0x00da2399:	ret	; targets: 0x00d95f9b(MAY)

0x00da239a:	pushl	%ebp	; from: 0x00da0ba1(MAY)
0x00da239b:	movl	%esp, %ebp
0x00da239d:	movl	0x012698d0, %eax
0x00da23a2:	xorl	0x0123ca80, %eax
0x00da23a8:	je	0x00da23b7	; targets: 0x00da23aa(MAY), 0x00da23b7(MAY)
0x00da23aa:	pushl	0x10(%ebp)	; from: 0x00da23a8(MAY)
0x00da23ad:	pushl	0xc(%ebp)
0x00da23b0:	pushl	0x8(%ebp)
0x00da23b3:	call	%eax	; targets: unresolved
0x00da23b7:	pushl	0xc(%ebp)	; from: 0x00da23a8(MAY)
0x00da23ba:	pushl	0x8(%ebp)
0x00da23bd:	call	InitializeCriticalSectionAndSpinCount@kernel32.dll	; targets: 0xff0017f0(MAY)
0x00da23c3:	xorl	%eax, %eax
0x00da23c5:	incl	%eax
0x00da23c6:	popl	%ebp
0x00da23c7:	ret	; targets: 0x00da0ba6(MAY)

0x00da2408:	pushl	%esi	; from: 0x00d99331(MAY)
0x00da2409:	pushl	%edi
0x00da240a:	pushl	$0xed47b8
0x00da240f:	call	GetModuleHandleW@kernel32.dll	; targets: 0xff0011c0(MAY)
0x00da2415:	movl	GetProcAddress@kernel32.dll, %esi
0x00da241b:	movl	%eax, %edi
0x00da241d:	pushl	$0x11b10e0
0x00da2422:	pushl	%edi
0x00da2423:	call	%esi	; targets: 0xff000a50(MAY)
0x00da2425:	xorl	0x0123ca80, %eax
0x00da242b:	pushl	$0x11b10ec
0x00da2430:	pushl	%edi
0x00da2431:	movl	%eax, 0x012698c0
0x00da2436:	call	%esi	; targets: 0xff000a50(MAY)
0x00da2438:	xorl	0x0123ca80, %eax
0x00da243e:	pushl	$0x11b10f4
0x00da2443:	pushl	%edi
0x00da2444:	movl	%eax, 0x012698c4
0x00da2449:	call	%esi	; targets: 0xff000a50(MAY)
0x00da244b:	xorl	0x0123ca80, %eax
0x00da2451:	pushl	$0x11b1100
0x00da2456:	pushl	%edi
0x00da2457:	movl	%eax, 0x012698c8
0x00da245c:	call	%esi	; targets: 0xff000a50(MAY)
0x00da245e:	xorl	0x0123ca80, %eax
0x00da2464:	pushl	$0x11b110c
0x00da2469:	pushl	%edi
0x00da246a:	movl	%eax, 0x012698cc
0x00da246f:	call	%esi	; targets: 0xff000a50(MAY)
0x00da2471:	xorl	0x0123ca80, %eax
0x00da2477:	pushl	$0x11b1128
0x00da247c:	pushl	%edi
0x00da247d:	movl	%eax, 0x012698d0
0x00da2482:	call	%esi	; targets: 0xff000a50(MAY)
0x00da2484:	xorl	0x0123ca80, %eax
0x00da248a:	pushl	$0x11b1138
0x00da248f:	pushl	%edi
0x00da2490:	movl	%eax, 0x012698d4
0x00da2495:	call	%esi	; targets: 0xff000a50(MAY)
0x00da26a1:	pushl	%ebp	; from: 0x00da21f8(MAY), 0x00da223c(MAY)
0x00da26a2:	movl	%esp, %ebp
0x00da26a4:	pushl	0x8(%ebp)
0x00da26a7:	call	Sleep@kernel32.dll	; targets: 0xff000f70(MAY)
0x00da26ad:	popl	%ebp
0x00da26ae:	ret	; targets: 0x00da2241(MAY), 0x00da21fd(MAY)

0x00da26af:	pushl	%ebp	; from: 0x00da633f(MAY), 0x00d96b04(MAY)
0x00da26b0:	movl	%esp, %ebp
0x00da26b2:	pushl	0x8(%ebp)
0x00da26b5:	call	GetCurrentProcess@kernel32.dll	; targets: 0xff000f80(MAY)
0x00da26bb:	pushl	%eax
0x00da26bc:	call	TerminateProcess@kernel32.dll	; targets: 0xff000a90(MAY)
0x00da26c2:	popl	%ebp
0x00da26c3:	ret	; targets: 0x00d96b09(MAY), 0x00da6344(MAY)

0x00da26c4:	pushl	%ebp	; from: 0x00d96ae7(MAY), 0x00da62aa(MAY)
0x00da26c5:	movl	%esp, %ebp
0x00da26c7:	pushl	$0x0
0x00da26c9:	call	SetUnhandledExceptionFilter@kernel32.dll	; targets: 0xff0017d0(MAY)
0x00da26cf:	pushl	0x8(%ebp)
0x00da26d2:	call	UnhandledExceptionFilter@kernel32.dll	; targets: 0xff0017c0(MAY)
0x00da26d8:	popl	%ebp
0x00da26d9:	ret	; targets: 0x00d96aec(MAY), 0x00da62af(MAY)

0x00da2826:	pushl	%ebp	; from: 0x00da7624(MAY), 0x00da7635(MAY)
0x00da2827:	movl	%esp, %ebp
0x00da2829:	movl	0x8(%ebp), %eax
0x00da282c:	movw	(%eax), %cx	; from: 0x00da2835(MAY)
0x00da282f:	addl	$0x2, %eax
0x00da2832:	testw	%cx, %cx
0x00da2835:	jne	0x00da282c	; targets: 0x00da282c(MAY), 0x00da2837(MAY)
0x00da2837:	subl	0x8(%ebp), %eax	; from: 0x00da2835(MAY)
0x00da283a:	sarl	%eax
0x00da283c:	decl	%eax
0x00da283d:	popl	%ebp
0x00da283e:	ret	; targets: 0x00da7629(MAY), 0x00da763a(MAY)

0x00da4873:	pushl	%ebp	; from: 0x00d99316(MAY)
0x00da4874:	movl	%esp, %ebp
0x00da4876:	movl	0x8(%ebp), %eax
0x00da4879:	movl	%eax, 0x0126678c
0x00da487e:	popl	%ebp
0x00da487f:	ret	; targets: 0x00d9931b(MAY)

0x00da4880:	pushl	%ebp	; from: 0x00da7996(MAY), 0x00d96a79(MAY)
0x00da4881:	movl	%esp, %ebp
0x00da4883:	pushl	0x01266790
0x00da4889:	call	DecodePointer@kernel32.dll	; targets: 0xff000690(MAY)
0x00da488f:	testl	%eax, %eax
0x00da4891:	je	0x00da48a2	; targets: 0x00da48a2(MAY), 0x00da4893(MAY)
0x00da4893:	pushl	0x8(%ebp)	; from: 0x00da4891(MAY)
0x00da4896:	call	%eax	; targets: unresolved
0x00da48a2:	xorl	%eax, %eax	; from: 0x00da4891(MAY)
0x00da48a4:	popl	%ebp
0x00da48a5:	ret	; targets: 0x00d96a7e(MAY), 0x00da799b(MAY)

0x00da48a6:	pushl	%ebp	; from: 0x00d9930a(MAY)
0x00da48a7:	movl	%esp, %ebp
0x00da48a9:	movl	0x8(%ebp), %eax
0x00da48ac:	movl	%eax, 0x01266790
0x00da48b1:	popl	%ebp
0x00da48b2:	ret	; targets: 0x00d9930f(MAY)

0x00da48f0:	pushl	$0xd97180	; from: 0x00da54ce(MAY), 0x00da0b35(MAY), 0x00d95f91(MAY)
0x00da48f5:	pushl	%fs:0
0x00da48fc:	movl	0x10(%esp), %eax
0x00da4900:	movl	%ebp, 0x10(%esp)
0x00da4904:	leal	0x10(%esp), %ebp
0x00da4908:	subl	%eax, %esp
0x00da490a:	pushl	%ebx
0x00da490b:	pushl	%esi
0x00da490c:	pushl	%edi
0x00da490d:	movl	0x0123ca80, %eax
0x00da4912:	xorl	%eax, -4(%ebp)
0x00da4915:	xorl	%ebp, %eax
0x00da4917:	pushl	%eax
0x00da4918:	movl	%esp, -24(%ebp)
0x00da491b:	pushl	-8(%ebp)
0x00da491e:	movl	-4(%ebp), %eax
0x00da4921:	movl	$0xfffffffe, -4(%ebp)
0x00da4928:	movl	%eax, -8(%ebp)
0x00da492b:	leal	-16(%ebp), %eax
0x00da492e:	movl	%eax, %fs:0
0x00da4934:	ret	; targets: 0x00d95f96(MAY), 0x00da0b3a(MAY), 0x00da54d3(MAY)

0x00da4935:	movl	-16(%ebp), %ecx	; from: 0x00da0bc8(MAY)
0x00da4938:	movl	%ecx, %fs:0
0x00da493f:	popl	%ecx
0x00da4940:	popl	%edi
0x00da4941:	popl	%edi
0x00da4942:	popl	%esi
0x00da4943:	popl	%ebx
0x00da4944:	movl	%ebp, %esp
0x00da4946:	popl	%ebp
0x00da4947:	pushl	%ecx
0x00da4948:	ret	; targets: 0x00da0bcd(MAY)

0x00da4949:	call	GetProcessHeap@kernel32.dll	; targets: 0xff000540(MAY)	; from: 0x00d95fee(MAY)
0x00da494f:	xorl	%ecx, %ecx
0x00da4951:	movl	%eax, 0x01266794
0x00da4956:	testl	%eax, %eax
0x00da4958:	setne	%cl
0x00da495b:	movl	%ecx, %eax
0x00da495d:	ret	; targets: 0x00d95ff3(MAY)

0x00da5458:	pushl	%esi	; from: 0x00d9616f(MAY)
0x00da5459:	pushl	%edi
0x00da545a:	call	GetLastError@kernel32.dll	; targets: 0xff000a70(MAY)
0x00da5460:	pushl	0x0123d32c
0x00da5466:	movl	%eax, %edi
0x00da5468:	call	0x00da2336	; targets: 0x00da2336(MAY)
0x00da546d:	movl	%eax, %esi	; from: 0x00da2354(MAY)
0x00da546f:	popl	%ecx
0x00da5470:	testl	%esi, %esi
0x00da5472:	jne	0x00da54bb	; targets: 0x00da5474(MAY), 0x00da54bb(MAY)
0x00da5474:	pushl	$0x3bc	; from: 0x00da5472(MAY)
0x00da5479:	pushl	$0x1
0x00da547b:	call	0x00da21d2	; targets: 0x00da21d2(MAY)
0x00da5480:	movl	%eax, %esi	; from: 0x00da2219(MAY)
0x00da5482:	popl	%ecx
0x00da5483:	popl	%ecx
0x00da5484:	testl	%esi, %esi
0x00da5486:	je	0x00da54bb	; targets: 0x00da54bb(MAY), 0x00da5488(MAY)
0x00da5488:	pushl	%esi	; from: 0x00da5486(MAY)
0x00da5489:	pushl	0x0123d32c
0x00da548f:	call	0x00da2355	; targets: 0x00da2355(MAY)
0x00da5494:	popl	%ecx	; from: 0x00da2376(MAY)
0x00da5495:	popl	%ecx
0x00da5496:	testl	%eax, %eax
0x00da5498:	je	0x00da54b2	; targets: 0x00da54b2(MAY), 0x00da549a(MAY)
0x00da549a:	pushl	$0x0	; from: 0x00da5498(MAY)
0x00da549c:	pushl	%esi
0x00da549d:	call	0x00da54c7	; targets: 0x00da54c7(MAY)
0x00da54b2:	pushl	%esi	; from: 0x00da5498(MAY)
0x00da54b3:	call	0x00d9392f	; targets: 0x00d9392f(MAY)
0x00da54b8:	popl	%ecx	; from: 0x00d93966(MAY)
0x00da54b9:	xorl	%esi, %esi
0x00da54bb:	pushl	%edi	; from: 0x00da5486(MAY), 0x00da5472(MAY)
0x00da54bc:	call	SetLastError@kernel32.dll	; targets: 0xff0017e0(MAY)
0x00da54c2:	popl	%edi
0x00da54c3:	movl	%esi, %eax
0x00da54c5:	popl	%esi
0x00da54c6:	ret	; targets: 0x00d96174(MAY)

0x00da54c7:	pushl	$0x8	; from: 0x00da549d(MAY)
0x00da54c9:	pushl	$0x12204e0
0x00da54ce:	call	0x00da48f0	; targets: 0x00da48f0(MAY)
0x00da54d3:	movl	0x8(%ebp), %esi	; from: 0x00da4934(MAY)
0x00da54d6:	movl	$0x11b3518, 0x5c(%esi)
0x00da54dd:	andl	$0x0, 0x8(%esi)
0x00da54e1:	xorl	%edi, %edi
0x00da54e3:	incl	%edi
0x00da54e4:	movl	%edi, 0x14(%esi)
0x00da54e7:	movl	%edi, 0x70(%esi)
0x00da54ea:	pushl	$0x43
0x00da54ec:	popl	%eax
0x00da54ed:	movw	%ax, 0xb8(%esi)
0x00da54f4:	movw	%ax, 0x1be(%esi)
0x00da54fb:	movl	$0x123d610, 0x68(%esi)
0x00da5502:	andl	$0x0, 0x3b8(%esi)
0x00da5509:	pushl	$0xd
0x00da550b:	call	0x00da0aa6	; targets: 0x00da0aa6(MAY)
0x00da5510:	popl	%ecx	; from: 0x00da0ad9(MAY)
0x00da5511:	andl	$0x0, -4(%ebp)
0x00da5515:	movl	0x68(%esi), %eax
0x00da5518:	movl	%edi, %ecx
0x00da551a:	lock xaddl	%ecx, (%eax)
0x00da551e:	movl	$0xfffffffe, -4(%ebp)
0x00da5525:	call	0x00da5568	; targets: 0x00da5568(MAY)
0x00da552a:	pushl	$0xc	; from: 0x00da5570(MAY)
0x00da552c:	call	0x00da0aa6	; targets: 0x00da0aa6(MAY)
0x00da5531:	popl	%ecx	; from: 0x00da0ad9(MAY)
0x00da5532:	movl	%edi, -4(%ebp)
0x00da5535:	movl	0xc(%ebp), %eax
0x00da5538:	movl	%eax, 0x6c(%esi)
0x00da553b:	testl	%eax, %eax
0x00da553d:	jne	0x00da5547	; targets: 0x00da553f(MAY), 0x00da5547(MAY)
0x00da553f:	movl	0x0123da9c, %eax	; from: 0x00da553d(MAY)
0x00da5544:	movl	%eax, 0x6c(%esi)
0x00da5547:	pushl	0x6c(%esi)	; from: 0x00da553d(MAY)
0x00da554a:	call	0x00da975a	; targets: 0x00da975a(MAY)
0x00da5568:	pushl	$0xd	; from: 0x00da5525(MAY)
0x00da556a:	call	0x00da0c10	; targets: 0x00da0c10(MAY)
0x00da556f:	popl	%ecx	; from: 0x00da0c24(MAY)
0x00da5570:	ret	; targets: 0x00da552a(MAY)

0x00da557a:	call	0x00d992fe	; targets: 0x00d992fe(MAY)	; from: 0x00d95fff(MAY)
0x00da61b1:	pushl	%ebp	; from: 0x00da6339(MAY)
0x00da61b2:	movl	%esp, %ebp
0x00da61b4:	subl	$0x328, %esp
0x00da61ba:	movl	0x0123ca80, %eax
0x00da61bf:	xorl	%ebp, %eax
0x00da61c1:	movl	%eax, -4(%ebp)
0x00da61c4:	cmpl	$0xffffffff, 0x8(%ebp)
0x00da61c8:	pushl	%edi
0x00da61c9:	je	0x00da61d4	; targets: 0x00da61cb(MAY)
0x00da61cb:	pushl	0x8(%ebp)	; from: 0x00da61c9(MAY)
0x00da61ce:	call	0x00da79bb	; targets: 0x00da79bb(MAY)
0x00da61d3:	popl	%ecx	; from: 0x00da79c2(MAY)
0x00da61d4:	andl	$0x0, -800(%ebp)
0x00da61db:	leal	-796(%ebp), %eax
0x00da61e1:	pushl	$0x4c
0x00da61e3:	pushl	$0x0
0x00da61e5:	pushl	%eax
0x00da61e6:	call	0x00d95ef0	; targets: 0x00d95ef0(MAY)
0x00da61eb:	leal	-800(%ebp), %eax	; from: 0x00d95f7a(MAY)
0x00da61f1:	addl	$0xc, %esp
0x00da61f4:	movl	%eax, -808(%ebp)
0x00da61fa:	leal	-720(%ebp), %eax
0x00da6200:	movl	%eax, -804(%ebp)
0x00da6206:	movl	%eax, -544(%ebp)
0x00da620c:	movl	%ecx, -548(%ebp)
0x00da6212:	movl	%edx, -552(%ebp)
0x00da6218:	movl	%ebx, -556(%ebp)
0x00da621e:	movl	%esi, -560(%ebp)
0x00da6224:	movl	%edi, -564(%ebp)
0x00da622a:	movw	%ss, -520(%ebp)
0x00da6231:	movw	%cs, -532(%ebp)
0x00da6238:	movw	%ds, -568(%ebp)
0x00da623f:	movw	%es, -572(%ebp)
0x00da6246:	movw	%fs, -576(%ebp)
0x00da624d:	movw	%gs, -580(%ebp)
0x00da6254:	pushfl	
0x00da6255:	popl	-528(%ebp)
0x00da625b:	movl	0x4(%ebp), %eax
0x00da625e:	movl	%eax, -536(%ebp)
0x00da6264:	leal	0x4(%ebp), %eax
0x00da6267:	movl	%eax, -524(%ebp)
0x00da626d:	movl	$0x10001, -720(%ebp)
0x00da6277:	movl	-4(%eax), %eax
0x00da627a:	movl	%eax, -540(%ebp)
0x00da6280:	movl	0xc(%ebp), %eax
0x00da6283:	movl	%eax, -800(%ebp)
0x00da6289:	movl	0x10(%ebp), %eax
0x00da628c:	movl	%eax, -796(%ebp)
0x00da6292:	movl	0x4(%ebp), %eax
0x00da6295:	movl	%eax, -788(%ebp)
0x00da629b:	call	IsDebuggerPresent@kernel32.dll	; targets: 0xff0005e0(MAY)
0x00da62a1:	movl	%eax, %edi
0x00da62a3:	leal	-808(%ebp), %eax
0x00da62a9:	pushl	%eax
0x00da62aa:	call	0x00da26c4	; targets: 0x00da26c4(MAY)
0x00da62af:	popl	%ecx	; from: 0x00da26d9(MAY)
0x00da62b0:	testl	%eax, %eax
0x00da62b2:	jne	0x00da62c7	; targets: 0x00da62c7(MAY), 0x00da62b4(MAY)
0x00da62b4:	testl	%edi, %edi	; from: 0x00da62b2(MAY)
0x00da62b6:	jne	0x00da62c7	; targets: 0x00da62b8(MAY), 0x00da62c7(MAY)
0x00da62b8:	cmpl	$0xffffffff, 0x8(%ebp)	; from: 0x00da62b6(MAY)
0x00da62bc:	je	0x00da62c7	; targets: 0x00da62be(MAY)
0x00da62be:	pushl	0x8(%ebp)	; from: 0x00da62bc(MAY)
0x00da62c1:	call	0x00da79bb	; targets: 0x00da79bb(MAY)
0x00da62c6:	popl	%ecx	; from: 0x00da79c2(MAY)
0x00da62c7:	movl	-4(%ebp), %ecx	; from: 0x00da62b2(MAY), 0x00da62b6(MAY)
0x00da62ca:	xorl	%ebp, %ecx
0x00da62cc:	popl	%edi
0x00da62cd:	call	0x00d94196	; targets: 0x00d94196(MAY)
0x00da62d2:	movl	%ebp, %esp	; from: 0x00d9419e(MAY), 0x00d96c06(MAY)
0x00da62d4:	popl	%ebp
0x00da62d5:	ret	; targets: 0x00da633e(MAY)

0x00da62d6:	pushl	%ebp	; from: 0x00d99310(MAY)
0x00da62d7:	movl	%esp, %ebp
0x00da62d9:	movl	0x8(%ebp), %eax
0x00da62dc:	movl	%eax, 0x012667a0
0x00da62e1:	popl	%ebp
0x00da62e2:	ret	; targets: 0x00d99315(MAY)

0x00da62e3:	pushl	%ebp	; from: 0x00da6315(MAY)
0x00da62e4:	movl	%esp, %ebp
0x00da62e6:	pushl	0x012667a0
0x00da62ec:	call	DecodePointer@kernel32.dll	; targets: 0xff000690(MAY)
0x00da62f2:	testl	%eax, %eax
0x00da62f4:	je	0x00da62f9	; targets: 0x00da62f6(MAY), 0x00da62f9(MAY)
0x00da62f6:	popl	%ebp	; from: 0x00da62f4(MAY)
0x00da62f7:	jmp	%eax	; targets: unresolved
0x00da62f9:	pushl	0x18(%ebp)	; from: 0x00da62f4(MAY)
0x00da62fc:	pushl	0x14(%ebp)
0x00da62ff:	pushl	0x10(%ebp)
0x00da6302:	pushl	0xc(%ebp)
0x00da6305:	pushl	0x8(%ebp)
0x00da6308:	call	0x00da631e	; targets: 0x00da631e(MAY)
0x00da630d:	int3		; from: 0x00da6348(MAY)
0x00da630e:	xorl	%eax, %eax	; from: 0x00db1b6b(MAY), 0x00db2e3e(MAY), 0x00db2db4(MAY)
0x00da6310:	pushl	%eax
0x00da6311:	pushl	%eax
0x00da6312:	pushl	%eax
0x00da6313:	pushl	%eax
0x00da6314:	pushl	%eax
0x00da6315:	call	0x00da62e3	; targets: 0x00da62e3(MAY)
0x00da631e:	pushl	$0x17	; from: 0x00da6308(MAY)
0x00da6320:	call	0x00dbb684	; targets: 0x00dbb684(MAY)
0x00da6325:	testl	%eax, %eax
0x00da6327:	je	0x00da632e	; targets: 0x00da632e(MAY), 0x00da6329(MAY)
0x00da6329:	pushl	$0x5	; from: 0x00da6327(MAY)
0x00da632b:	popl	%ecx
0x00da632c:	int	$0x29
0x00da632e:	pushl	%esi	; from: 0x00da6327(MAY)
0x00da632f:	pushl	$0x1
0x00da6331:	movl	$0xc0000417, %esi
0x00da6336:	pushl	%esi
0x00da6337:	pushl	$0x2
0x00da6339:	call	0x00da61b1	; targets: 0x00da61b1(MAY)
0x00da633e:	pushl	%esi	; from: 0x00da62d5(MAY)
0x00da633f:	call	0x00da26af	; targets: 0x00da26af(MAY)
0x00da6344:	addl	$0x10, %esp	; from: 0x00da26c3(MAY)
0x00da6347:	popl	%esi
0x00da6348:	ret	; targets: 0x00da630d(MAY)

0x00da7506:	pushl	$0x3	; from: 0x00d96a35(MAY), 0x00da0b43(MAY), 0x00d960e6(MAY)
0x00da7508:	call	0x00da772d	; targets: 0x00da772d(MAY)
0x00da750d:	popl	%ecx	; from: 0x00da7757(MAY)
0x00da750e:	cmpl	$0x1, %eax
0x00da7511:	je	0x00da7528	; targets: 0x00da7513(MAY), 0x00da7528(MAY)
0x00da7513:	pushl	$0x3	; from: 0x00da7511(MAY)
0x00da7515:	call	0x00da772d	; targets: 0x00da772d(MAY)
0x00da751a:	popl	%ecx	; from: 0x00da7757(MAY)
0x00da751b:	testl	%eax, %eax
0x00da751d:	jne	0x00da753e	; targets: 0x00da751f(MAY), 0x00da753e(MAY)
0x00da751f:	cmpl	$0x1, 0x012669b0	; from: 0x00da751d(MAY)
0x00da7526:	jne	0x00da753e	; targets: 0x00da753e(MAY)
0x00da7528:	pushl	$0xfc	; from: 0x00da7511(MAY)
0x00da752d:	call	0x00da7563	; targets: 0x00da7563(MAY)
0x00da7532:	pushl	$0xff	; from: 0x00da7714(MAY)
0x00da7537:	call	0x00da7563	; targets: 0x00da7563(MAY)
0x00da753c:	popl	%ecx	; from: 0x00da7714(MAY)
0x00da753d:	popl	%ecx
0x00da753e:	ret	; targets: 0x00d960eb(MAY)	; from: 0x00da751d(MAY), 0x00da7526(MAY)

0x00da753f:	pushl	%ebp	; from: 0x00da757c(MAY)
0x00da7540:	movl	%esp, %ebp
0x00da7542:	movl	0x8(%ebp), %ecx
0x00da7545:	xorl	%eax, %eax
0x00da7547:	cmpl	0x11b35b8(,%eax,8), %ecx	; from: 0x00da7554(MAY)
0x00da754e:	je	0x00da755a	; targets: 0x00da755a(MAY), 0x00da7550(MAY)
0x00da7550:	incl	%eax	; from: 0x00da754e(MAY)
0x00da7551:	cmpl	$0x17, %eax
0x00da7554:	jb	0x00da7547	; targets: 0x00da7547(MAY), 0x00da7556(MAY)
0x00da7556:	xorl	%eax, %eax	; from: 0x00da7554(MAY)
0x00da7558:	popl	%ebp
0x00da7559:	ret	; targets: 0x00da7581(MAY)

0x00da755a:	movl	0x11b35bc(,%eax,8), %eax	; from: 0x00da754e(MAY)
0x00da7561:	popl	%ebp
0x00da7562:	ret	; targets: 0x00da7581(MAY)

0x00da7563:	pushl	%ebp	; from: 0x00da752d(MAY), 0x00d960ee(MAY), 0x00da7537(MAY)
0x00da7564:	movl	%esp, %ebp
0x00da7566:	subl	$0x1fc, %esp
0x00da756c:	movl	0x0123ca80, %eax
0x00da7571:	xorl	%ebp, %eax
0x00da7573:	movl	%eax, -4(%ebp)
0x00da7576:	pushl	%esi
0x00da7577:	movl	0x8(%ebp), %esi
0x00da757a:	pushl	%edi
0x00da757b:	pushl	%esi
0x00da757c:	call	0x00da753f	; targets: 0x00da753f(MAY)
0x00da7581:	movl	%eax, %edi	; from: 0x00da7559(MAY), 0x00da7562(MAY)
0x00da7583:	popl	%ecx
0x00da7584:	testl	%edi, %edi
0x00da7586:	je	0x00da7705	; targets: 0x00da7705(MAY), 0x00da758c(MAY)
0x00da758c:	pushl	%ebx	; from: 0x00da7586(MAY)
0x00da758d:	pushl	$0x3
0x00da758f:	call	0x00da772d	; targets: 0x00da772d(MAY)
0x00da7594:	popl	%ecx	; from: 0x00da7757(MAY)
0x00da7595:	cmpl	$0x1, %eax
0x00da7598:	je	0x00da76ad	; targets: 0x00da76ad(MAY), 0x00da759e(MAY)
0x00da759e:	pushl	$0x3	; from: 0x00da7598(MAY)
0x00da75a0:	call	0x00da772d	; targets: 0x00da772d(MAY)
0x00da75a5:	popl	%ecx	; from: 0x00da7757(MAY)
0x00da75a6:	testl	%eax, %eax
0x00da75a8:	jne	0x00da75b7	; targets: 0x00da75b7(MAY), 0x00da75aa(MAY)
0x00da75aa:	cmpl	$0x1, 0x012669b0	; from: 0x00da75a8(MAY)
0x00da75b1:	je	0x00da76ad	; targets: 0x00da75b7(MAY)
0x00da75b7:	cmpl	$0xfc, %esi	; from: 0x00da75a8(MAY), 0x00da75b1(MAY)
0x00da75bd:	je	0x00da7704	; targets: 0x00da7704(MAY), 0x00da75c3(MAY)
0x00da75c3:	pushl	$0x11b3f58	; from: 0x00da75bd(MAY)
0x00da75c8:	pushl	$0x314
0x00da75cd:	pushl	$0x12669b8
0x00da75d2:	call	0x00db1b43	; targets: 0x00db1b43(MAY)
0x00da75d7:	addl	$0xc, %esp	; from: 0x00db1b74(MAY)
0x00da75da:	xorl	%ebx, %ebx
0x00da75dc:	testl	%eax, %eax
0x00da75de:	jne	0x00da7715	; targets: 0x00da75e4(MAY)
0x00da75e4:	pushl	$0x104	; from: 0x00da75de(MAY)
0x00da75e9:	pushl	$0x12669ea
0x00da75ee:	pushl	%ebx
0x00da75ef:	movw	%ax, 0x01266bf2
0x00da75f5:	call	GetModuleFileNameW@kernel32.dll	; targets: 0xff0014e0(MAY)
0x00da75fb:	movl	$0x2fb, %esi
0x00da7600:	testl	%eax, %eax
0x00da7602:	jne	0x00da761f	; targets: 0x00da761f(MAY), 0x00da7604(MAY)
0x00da7604:	pushl	$0x11b3f8c	; from: 0x00da7602(MAY)
0x00da7609:	pushl	%esi
0x00da760a:	pushl	$0x12669ea
0x00da760f:	call	0x00db1b43	; targets: 0x00db1b43(MAY)
0x00da7614:	addl	$0xc, %esp	; from: 0x00db1b74(MAY)
0x00da7617:	testl	%eax, %eax
0x00da7619:	jne	0x00da7715	; targets: 0x00da761f(MAY)
0x00da761f:	pushl	$0x12669ea	; from: 0x00da7602(MAY), 0x00da7619(MAY)
0x00da7624:	call	0x00da2826	; targets: 0x00da2826(MAY)
0x00da7629:	incl	%eax	; from: 0x00da283e(MAY)
0x00da762a:	popl	%ecx
0x00da762b:	cmpl	$0x3c, %eax
0x00da762e:	jbe	0x00da7665	; targets: 0x00da7630(MAY), 0x00da7665(MAY)
0x00da7630:	pushl	$0x12669ea	; from: 0x00da762e(MAY)
0x00da7635:	call	0x00da2826	; targets: 0x00da2826(MAY)
0x00da763a:	pushl	$0x3	; from: 0x00da283e(MAY)
0x00da763c:	pushl	$0x11b3fbc
0x00da7641:	leal	0x1266974(,%eax,2), %ecx
0x00da7648:	movl	%ecx, %eax
0x00da764a:	subl	$0x12669ea, %eax
0x00da764f:	sarl	%eax
0x00da7651:	subl	%eax, %esi
0x00da7653:	pushl	%esi
0x00da7654:	pushl	%ecx
0x00da7655:	call	0x00db2df7	; targets: 0x00db2df7(MAY)
0x00da7665:	pushl	$0x11b3fc4	; from: 0x00da762e(MAY)
0x00da766a:	pushl	$0x314
0x00da766f:	movl	$0x12669b8, %esi
0x00da7674:	pushl	%esi
0x00da7675:	call	0x00db2d8b	; targets: 0x00db2d8b(MAY)
0x00da767a:	addl	$0xc, %esp	; from: 0x00db2dbe(MAY)
0x00da767d:	testl	%eax, %eax
0x00da767f:	jne	0x00da7715	; targets: 0x00da7685(MAY)
0x00da7685:	pushl	%edi	; from: 0x00da767f(MAY)
0x00da7686:	pushl	$0x314
0x00da768b:	pushl	%esi
0x00da768c:	call	0x00db2d8b	; targets: 0x00db2d8b(MAY)
0x00da76ad:	pushl	$0xfffffff4	; from: 0x00da7598(MAY)
0x00da76af:	call	GetStdHandle@kernel32.dll	; targets: 0xff001180(MAY)
0x00da76b5:	movl	%eax, %esi
0x00da76b7:	testl	%esi, %esi
0x00da76b9:	je	0x00da7704	; targets: 0x00da7704(MAY), 0x00da76bb(MAY)
0x00da76bb:	cmpl	$0xffffffff, %esi	; from: 0x00da76b9(MAY)
0x00da76be:	je	0x00da7704	; targets: 0x00da7704(MAY), 0x00da76c0(MAY)
0x00da76c0:	xorl	%ebx, %ebx	; from: 0x00da76be(MAY)
0x00da76c2:	movl	%ebx, %ecx
0x00da76c4:	movb	(%edi,%ecx,2), %al	; from: 0x00da76db(MAY)
0x00da76c7:	movb	%al, -504(%ebp,%ecx)
0x00da76ce:	cmpw	%bx, (%edi,%ecx,2)
0x00da76d2:	je	0x00da76dd	; targets: 0x00da76d4(MAY), 0x00da76dd(MAY)
0x00da76d4:	incl	%ecx	; from: 0x00da76d2(MAY)
0x00da76d5:	cmpl	$0x1f4, %ecx
0x00da76db:	jb	0x00da76c4	; targets: 0x00da76dd(MAY), 0x00da76c4(MAY)
0x00da76dd:	pushl	%ebx	; from: 0x00da76db(MAY), 0x00da76d2(MAY)
0x00da76de:	leal	-508(%ebp), %eax
0x00da76e4:	movb	%bl, -5(%ebp)
0x00da76e7:	pushl	%eax
0x00da76e8:	leal	-504(%ebp), %eax
0x00da76ee:	pushl	%eax
0x00da76ef:	call	0x00da1a00	; targets: 0x00da1a00(MAY)
0x00da76f4:	popl	%ecx	; from: 0x00da1a76(MAY), 0x00da1a80(MAY), 0x00da1a6c(MAY), 0x00da1a8a(MAY)
0x00da76f5:	pushl	%eax
0x00da76f6:	leal	-504(%ebp), %eax
0x00da76fc:	pushl	%eax
0x00da76fd:	pushl	%esi
0x00da76fe:	call	WriteFile@kernel32.dll	; targets: 0xff000750(MAY)
0x00da7704:	popl	%ebx	; from: 0x00da75bd(MAY), 0x00da76b9(MAY), 0x00da76be(MAY)
0x00da7705:	movl	-4(%ebp), %ecx	; from: 0x00da7586(MAY)
0x00da7708:	popl	%edi
0x00da7709:	xorl	%ebp, %ecx
0x00da770b:	popl	%esi
0x00da770c:	call	0x00d94196	; targets: 0x00d94196(MAY)
0x00da7711:	movl	%ebp, %esp	; from: 0x00d96c06(MAY), 0x00d9419e(MAY)
0x00da7713:	popl	%ebp
0x00da7714:	ret	; targets: 0x00da753c(MAY), 0x00d960f3(MAY), 0x00da7532(MAY)

0x00da7720:	pushl	%ebp	; from: 0x00d95fa0(MAY)
0x00da7721:	movl	%esp, %ebp
0x00da7723:	movl	0x8(%ebp), %eax
0x00da7726:	movl	%eax, 0x012669b0
0x00da772b:	popl	%ebp
0x00da772c:	ret	; targets: 0x00d95fa5(MAY)

0x00da772d:	pushl	%ebp	; from: 0x00da75a0(MAY), 0x00da7515(MAY), 0x00da7508(MAY), 0x00da758f(MAY)
0x00da772e:	movl	%esp, %ebp
0x00da7730:	movl	0x8(%ebp), %eax
0x00da7733:	testl	%eax, %eax
0x00da7735:	js	0x00da7758	; targets: 0x00da7758(MAY), 0x00da7737(MAY)
0x00da7737:	cmpl	$0x2, %eax	; from: 0x00da7735(MAY)
0x00da773a:	jle	0x00da7749	; targets: 0x00da773c(MAY), 0x00da7749(MAY)
0x00da773c:	cmpl	$0x3, %eax	; from: 0x00da773a(MAY)
0x00da773f:	jne	0x00da7758	; targets: 0x00da7741(MAY), 0x00da7758(MAY)
0x00da7741:	movl	0x01266fe0, %ecx	; from: 0x00da773f(MAY)
0x00da7747:	jmp	0x00da7754	; targets: 0x00da7754(MAY)
0x00da7749:	movl	0x01266fe0, %ecx	; from: 0x00da773a(MAY)
0x00da774f:	movl	%eax, 0x01266fe0
0x00da7754:	movl	%ecx, %eax	; from: 0x00da7747(MAY)
0x00da7756:	popl	%ebp
0x00da7757:	ret	; targets: 0x00da7594(MAY), 0x00da75a5(MAY), 0x00da751a(MAY), 0x00da750d(MAY)

0x00da7758:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00da7735(MAY), 0x00da773f(MAY)
0x00da776d:	pushl	%ebp	; from: 0x00d95f80(MAY)
0x00da776e:	movl	%esp, %ebp
0x00da7770:	subl	$0x14, %esp
0x00da7773:	andl	$0x0, -12(%ebp)
0x00da7777:	andl	$0x0, -8(%ebp)
0x00da777b:	movl	0x0123ca80, %eax
0x00da7780:	pushl	%esi
0x00da7781:	pushl	%edi
0x00da7782:	movl	$0xbb40e64e, %edi
0x00da7787:	movl	$0xffff0000, %esi
0x00da778c:	cmpl	%edi, %eax
0x00da778e:	je	0x00da779d	; targets: 0x00da779d(MAY)
0x00da779d:	leal	-12(%ebp), %eax	; from: 0x00da778e(MAY)
0x00da77a0:	pushl	%eax
0x00da77a1:	call	GetSystemTimeAsFileTime@kernel32.dll	; targets: 0xff000500(MAY)
0x00da77a7:	movl	-8(%ebp), %eax
0x00da77aa:	xorl	-12(%ebp), %eax
0x00da77ad:	movl	%eax, -4(%ebp)
0x00da77b0:	call	GetCurrentThreadId@kernel32.dll	; targets: 0xff001cb0(MAY)
0x00da77b6:	xorl	%eax, -4(%ebp)
0x00da77b9:	call	GetCurrentProcessId@kernel32.dll	; targets: 0xff001c50(MAY)
0x00da77bf:	xorl	%eax, -4(%ebp)
0x00da77c2:	leal	-20(%ebp), %eax
0x00da77c5:	pushl	%eax
0x00da77c6:	call	QueryPerformanceCounter@kernel32.dll	; targets: 0xff001b30(MAY)
0x00da77cc:	movl	-16(%ebp), %ecx
0x00da77cf:	leal	-4(%ebp), %eax
0x00da77d2:	xorl	-20(%ebp), %ecx
0x00da77d5:	xorl	-4(%ebp), %ecx
0x00da77d8:	xorl	%eax, %ecx
0x00da77da:	cmpl	%edi, %ecx
0x00da77dc:	jne	0x00da77e5	; targets: 0x00da77de(MAY), 0x00da77e5(MAY)
0x00da77de:	movl	$0xbb40e64f, %ecx	; from: 0x00da77dc(MAY)
0x00da77e3:	jmp	0x00da77f5	; targets: 0x00da77f5(MAY)
0x00da77e5:	testl	%ecx, %esi	; from: 0x00da77dc(MAY)
0x00da77e7:	jne	0x00da77f5	; targets: 0x00da77f5(MAY), 0x00da77e9(MAY)
0x00da77e9:	movl	%ecx, %eax	; from: 0x00da77e7(MAY)
0x00da77eb:	orl	$0x4711, %eax
0x00da77f0:	shll	$0x10, %eax
0x00da77f3:	orl	%eax, %ecx
0x00da77f5:	movl	%ecx, 0x0123ca80	; from: 0x00da77e3(MAY), 0x00da77e7(MAY)
0x00da77fb:	notl	%ecx
0x00da77fd:	movl	%ecx, 0x0123ca84
0x00da7803:	popl	%edi
0x00da7804:	popl	%esi
0x00da7805:	movl	%ebp, %esp
0x00da7807:	popl	%ebp
0x00da7808:	ret	; targets: 0x00d95f85(MAY)

0x00da7941:	pushl	%ebp	; from: 0x00da21e1(MAY)
0x00da7942:	movl	%esp, %ebp
0x00da7944:	pushl	%esi
0x00da7945:	movl	0x8(%ebp), %esi
0x00da7948:	testl	%esi, %esi
0x00da794a:	je	0x00da7967	; targets: 0x00da7967(MAY), 0x00da794c(MAY)
0x00da794c:	pushl	$0xffffffe0	; from: 0x00da794a(MAY)
0x00da794e:	xorl	%edx, %edx
0x00da7950:	popl	%eax
0x00da7951:	divl	%esi, %eax
0x00da7953:	cmpl	0xc(%ebp), %eax
0x00da7956:	jae	0x00da7967	; targets: 0x00da7967(MAY), 0x00da7958(MAY)
0x00da7958:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00da7956(MAY)
0x00da7963:	xorl	%eax, %eax	; from: 0x00da79a5(MAY)
0x00da7965:	jmp	0x00da79b8	; targets: 0x00da79b8(MAY)
0x00da7967:	imull	0xc(%ebp), %esi	; from: 0x00da7956(MAY), 0x00da794a(MAY)
0x00da796b:	testl	%esi, %esi
0x00da796d:	jne	0x00da7970	; targets: 0x00da796f(MAY), 0x00da7970(MAY)
0x00da796f:	incl	%esi	; from: 0x00da796d(MAY)
0x00da7970:	xorl	%ecx, %ecx	; from: 0x00da796d(MAY)
0x00da7972:	cmpl	$0xffffffe0, %esi
0x00da7975:	ja	0x00da798c	; targets: 0x00da7977(MAY), 0x00da798c(MAY)
0x00da7977:	pushl	%esi	; from: 0x00da7975(MAY)
0x00da7978:	pushl	$0x8
0x00da797a:	pushl	0x01266794
0x00da7980:	call	HeapAlloc@kernel32.dll	; targets: 0xff0005c0(MAY)
0x00da7986:	movl	%eax, %ecx
0x00da7988:	testl	%ecx, %ecx
0x00da798a:	jne	0x00da79b6	; targets: 0x00da798c(MAY), 0x00da79b6(MAY)
0x00da798c:	cmpl	$0x0, 0x01266fe4	; from: 0x00da7975(MAY), 0x00da798a(MAY)
0x00da7993:	je	0x00da79a9	; targets: 0x00da79a9(MAY), 0x00da7995(MAY)
0x00da7995:	pushl	%esi	; from: 0x00da7993(MAY)
0x00da7996:	call	0x00da4880	; targets: 0x00da4880(MAY)
0x00da799b:	popl	%ecx	; from: 0x00da48a5(MAY)
0x00da799c:	testl	%eax, %eax
0x00da799e:	jne	0x00da7970	; targets: 0x00da79a0(MAY)
0x00da79a0:	movl	0x10(%ebp), %eax	; from: 0x00da799e(MAY)
0x00da79a3:	testl	%eax, %eax
0x00da79a5:	je	0x00da7963	; targets: 0x00da7963(MAY)
0x00da79a9:	movl	0x10(%ebp), %eax	; from: 0x00da7993(MAY)
0x00da79ac:	testl	%eax, %eax
0x00da79ae:	je	0x00da79b6	; targets: 0x00da79b6(MAY)
0x00da79b6:	movl	%ecx, %eax	; from: 0x00da79ae(MAY), 0x00da798a(MAY)
0x00da79b8:	popl	%esi	; from: 0x00da7965(MAY)
0x00da79b9:	popl	%ebp
0x00da79ba:	ret	; targets: 0x00da21e6(MAY)

0x00da79bb:	andl	$0x0, 0x012698a8	; from: 0x00d96af9(MAY), 0x00d96adf(MAY), 0x00da61ce(MAY), 0x00da62c1(MAY)
0x00da79c2:	ret	; targets: 0x00d96afe(MAY), 0x00d96ae4(MAY), 0x00da62c6(MAY), 0x00da61d3(MAY)

0x00da8bad:	pushl	%ebp	; from: 0x00d9931c(MAY)
0x00da8bae:	movl	%esp, %ebp
0x00da8bb0:	movl	0x8(%ebp), %eax
0x00da8bb3:	movl	%eax, 0x01266fec
0x00da8bb8:	movl	%eax, 0x01266ff0
0x00da8bbd:	movl	%eax, 0x01266ff4
0x00da8bc2:	movl	%eax, 0x01266ff8
0x00da8bc7:	popl	%ebp
0x00da8bc8:	ret	; targets: 0x00d99321(MAY)

0x00da975a:	pushl	%ebp	; from: 0x00da554a(MAY)
0x00da975b:	movl	%esp, %ebp
0x00da975d:	movl	0x8(%ebp), %edx
0x00da9760:	xorl	%ecx, %ecx
0x00da9762:	pushl	%ebx
0x00da9763:	pushl	%esi
0x00da9764:	incl	%ecx
0x00da9765:	pushl	%edi
0x00da9766:	movl	%ecx, %eax
0x00da9768:	lock xaddl	%eax, (%edx)
0x00da976c:	movl	0x78(%edx), %esi
0x00da976f:	testl	%esi, %esi
0x00da9771:	je	0x00da9779	; targets: 0x00da9779(MAY), 0x00da9773(MAY)
0x00da9773:	movl	%ecx, %eax	; from: 0x00da9771(MAY)
0x00da9775:	lock xaddl	%eax, (%esi)
0x00da9779:	movl	0x80(%edx), %esi	; from: 0x00da9771(MAY)
0x00da977f:	testl	%esi, %esi
0x00da9781:	je	0x00da9789	; targets: 0x00da9783(MAY), 0x00da9789(MAY)
0x00da9783:	movl	%ecx, %eax	; from: 0x00da9781(MAY)
0x00da9785:	lock xaddl	%eax, (%esi)
0x00da9789:	movl	0x7c(%edx), %esi	; from: 0x00da9781(MAY)
0x00da978c:	testl	%esi, %esi
0x00da978e:	je	0x00da9796	; targets: 0x00da9796(MAY), 0x00da9790(MAY)
0x00da9790:	movl	%ecx, %eax	; from: 0x00da978e(MAY)
0x00da9792:	lock xaddl	%eax, (%esi)
0x00da9796:	movl	0x88(%edx), %esi	; from: 0x00da978e(MAY)
0x00da979c:	testl	%esi, %esi
0x00da979e:	je	0x00da97a6	; targets: 0x00da97a6(MAY), 0x00da97a0(MAY)
0x00da97a0:	movl	%ecx, %eax	; from: 0x00da979e(MAY)
0x00da97a2:	lock xaddl	%eax, (%esi)
0x00da97a6:	pushl	$0x6	; from: 0x00da979e(MAY)
0x00da97a8:	leal	0x1c(%edx), %esi
0x00da97ab:	popl	%ebx
0x00da97ac:	cmpl	$0x123d934, -8(%esi)	; from: 0x00da97d8(MAY)
0x00da97b3:	je	0x00da97c1	; targets: 0x00da97b5(MAY), 0x00da97c1(MAY)
0x00da97b5:	movl	(%esi), %edi	; from: 0x00da97b3(MAY)
0x00da97b7:	testl	%edi, %edi
0x00da97b9:	je	0x00da97c1	; targets: 0x00da97c1(MAY), 0x00da97bb(MAY)
0x00da97bb:	movl	%ecx, %eax	; from: 0x00da97b9(MAY)
0x00da97bd:	lock xaddl	%eax, (%edi)
0x00da97c1:	cmpl	$0x0, -12(%esi)	; from: 0x00da97b9(MAY), 0x00da97b3(MAY)
0x00da97c5:	je	0x00da97d4	; targets: 0x00da97d4(MAY), 0x00da97c7(MAY)
0x00da97c7:	movl	-4(%esi), %edi	; from: 0x00da97c5(MAY)
0x00da97ca:	testl	%edi, %edi
0x00da97cc:	je	0x00da97d4	; targets: 0x00da97d4(MAY), 0x00da97ce(MAY)
0x00da97ce:	movl	%ecx, %eax	; from: 0x00da97cc(MAY)
0x00da97d0:	lock xaddl	%eax, (%edi)
0x00da97d4:	addl	$0x10, %esi	; from: 0x00da97c5(MAY), 0x00da97cc(MAY)
0x00da97d7:	decl	%ebx
0x00da97d8:	jne	0x00da97ac	; targets: 0x00da97ac(MAY), 0x00da97da(MAY)
0x00da97da:	movl	0x9c(%edx), %eax	; from: 0x00da97d8(MAY)
0x00da97e0:	addl	$0xb0, %eax
0x00da97e5:	lock xaddl	%ecx, (%eax)
0x00da97e9:	incl	%ecx
0x00da97ea:	popl	%edi
0x00da97eb:	popl	%esi
0x00da97ec:	popl	%ebx
0x00da97ed:	popl	%ebp
0x00da97ee:	ret	; targets: unresolved

0x00db1b43:	pushl	%ebp	; from: 0x00da760f(MAY), 0x00da75d2(MAY)
0x00db1b44:	movl	%esp, %ebp
0x00db1b46:	pushl	%esi
0x00db1b47:	movl	0x8(%ebp), %esi
0x00db1b4a:	testl	%esi, %esi
0x00db1b4c:	je	0x00db1b61	; targets: 0x00db1b4e(MAY)
0x00db1b4e:	movl	0xc(%ebp), %edx	; from: 0x00db1b4c(MAY)
0x00db1b51:	testl	%edx, %edx
0x00db1b53:	je	0x00db1b61	; targets: 0x00db1b55(MAY)
0x00db1b55:	movl	0x10(%ebp), %ecx	; from: 0x00db1b53(MAY)
0x00db1b58:	testl	%ecx, %ecx
0x00db1b5a:	jne	0x00db1b75	; targets: 0x00db1b75(MAY)
0x00db1b68:	popl	%esi	; from: 0x00db1b9d(MAY)
0x00db1b69:	movl	%esi, (%eax)
0x00db1b6b:	call	0x00da630e	; targets: 0x00da630e(MAY)
0x00db1b72:	popl	%esi	; from: 0x00db1b91(MAY)
0x00db1b73:	popl	%ebp
0x00db1b74:	ret	; targets: 0x00da75d7(MAY), 0x00da7614(MAY)

0x00db1b75:	pushl	%edi	; from: 0x00db1b5a(MAY)
0x00db1b76:	movl	%esi, %edi
0x00db1b78:	subl	%ecx, %edi
0x00db1b7a:	movzwl	(%ecx), %eax	; from: 0x00db1b8a(MAY)
0x00db1b7d:	movw	%ax, (%edi,%ecx)
0x00db1b81:	leal	0x2(%ecx), %ecx
0x00db1b84:	testw	%ax, %ax
0x00db1b87:	je	0x00db1b8c	; targets: 0x00db1b89(MAY), 0x00db1b8c(MAY)
0x00db1b89:	decl	%edx	; from: 0x00db1b87(MAY)
0x00db1b8a:	jne	0x00db1b7a	; targets: 0x00db1b8c(MAY), 0x00db1b7a(MAY)
0x00db1b8c:	xorl	%eax, %eax	; from: 0x00db1b8a(MAY), 0x00db1b87(MAY)
0x00db1b8e:	popl	%edi
0x00db1b8f:	testl	%edx, %edx
0x00db1b91:	jne	0x00db1b72	; targets: 0x00db1b72(MAY), 0x00db1b93(MAY)
0x00db1b93:	movw	%ax, (%esi)	; from: 0x00db1b91(MAY)
0x00db1b96:	call	0x00d9616f	; targets: 0x00d9616f(MAY)
0x00db1b9b:	pushl	$0x22	; from: 0x00d96181(MAY), 0x00d9617d(MAY)
0x00db1b9d:	jmp	0x00db1b68	; targets: 0x00db1b68(MAY)
0x00db2d8b:	pushl	%ebp	; from: 0x00da768c(MAY), 0x00da7675(MAY)
0x00db2d8c:	movl	%esp, %ebp
0x00db2d8e:	pushl	%esi
0x00db2d8f:	pushl	%edi
0x00db2d90:	movl	0x8(%ebp), %edi
0x00db2d93:	testl	%edi, %edi
0x00db2d95:	je	0x00db2daa	; targets: 0x00db2d97(MAY)
0x00db2d97:	movl	0xc(%ebp), %ecx	; from: 0x00db2d95(MAY)
0x00db2d9a:	testl	%ecx, %ecx
0x00db2d9c:	je	0x00db2daa	; targets: 0x00db2d9e(MAY)
0x00db2d9e:	movl	0x10(%ebp), %edx	; from: 0x00db2d9c(MAY)
0x00db2da1:	testl	%edx, %edx
0x00db2da3:	jne	0x00db2dbf	; targets: 0x00db2dbf(MAY), 0x00db2da5(MAY)
0x00db2da5:	xorl	%eax, %eax	; from: 0x00db2dcf(MAY), 0x00db2da3(MAY)
0x00db2da7:	movw	%ax, (%edi)
0x00db2daa:	call	0x00d9616f	; targets: 0x00d9616f(MAY)
0x00db2daf:	pushl	$0x16	; from: 0x00d9617d(MAY), 0x00d96181(MAY)
0x00db2db1:	popl	%esi	; from: 0x00db2df5(MAY)
0x00db2db2:	movl	%esi, (%eax)
0x00db2db4:	call	0x00da630e	; targets: 0x00da630e(MAY)
0x00db2dbb:	popl	%edi	; from: 0x00db2de9(MAY)
0x00db2dbc:	popl	%esi
0x00db2dbd:	popl	%ebp
0x00db2dbe:	ret	; targets: 0x00da767a(MAY)

0x00db2dbf:	movl	%edi, %esi	; from: 0x00db2da3(MAY)
0x00db2dc1:	cmpw	$0x0, (%esi)	; from: 0x00db2dcb(MAY)
0x00db2dc5:	je	0x00db2dcd	; targets: 0x00db2dcd(MAY), 0x00db2dc7(MAY)
0x00db2dc7:	addl	$0x2, %esi	; from: 0x00db2dc5(MAY)
0x00db2dca:	decl	%ecx
0x00db2dcb:	jne	0x00db2dc1	; targets: 0x00db2dcd(MAY), 0x00db2dc1(MAY)
0x00db2dcd:	testl	%ecx, %ecx	; from: 0x00db2dcb(MAY), 0x00db2dc5(MAY)
0x00db2dcf:	je	0x00db2da5	; targets: 0x00db2da5(MAY), 0x00db2dd1(MAY)
0x00db2dd1:	subl	%edx, %esi	; from: 0x00db2dcf(MAY)
0x00db2dd3:	movzwl	(%edx), %eax	; from: 0x00db2de3(MAY)
0x00db2dd6:	movw	%ax, (%esi,%edx)
0x00db2dda:	leal	0x2(%edx), %edx
0x00db2ddd:	testw	%ax, %ax
0x00db2de0:	je	0x00db2de5	; targets: 0x00db2de5(MAY), 0x00db2de2(MAY)
0x00db2de2:	decl	%ecx	; from: 0x00db2de0(MAY)
0x00db2de3:	jne	0x00db2dd3	; targets: 0x00db2dd3(MAY), 0x00db2de5(MAY)
0x00db2de5:	xorl	%eax, %eax	; from: 0x00db2de0(MAY), 0x00db2de3(MAY)
0x00db2de7:	testl	%ecx, %ecx
0x00db2de9:	jne	0x00db2dbb	; targets: 0x00db2deb(MAY), 0x00db2dbb(MAY)
0x00db2deb:	movw	%ax, (%edi)	; from: 0x00db2de9(MAY)
0x00db2dee:	call	0x00d9616f	; targets: 0x00d9616f(MAY)
0x00db2df3:	pushl	$0x22	; from: 0x00d96181(MAY), 0x00d9617d(MAY)
0x00db2df5:	jmp	0x00db2db1	; targets: 0x00db2db1(MAY)
0x00db2df7:	pushl	%ebp	; from: 0x00da7655(MAY)
0x00db2df8:	movl	%esp, %ebp
0x00db2dfa:	movl	0x14(%ebp), %edx
0x00db2dfd:	movl	0x8(%ebp), %ecx
0x00db2e00:	pushl	%esi
0x00db2e01:	testl	%edx, %edx
0x00db2e03:	jne	0x00db2e12	; targets: 0x00db2e12(MAY)
0x00db2e0e:	xorl	%eax, %eax	; from: 0x00db2e8d(MAY)
0x00db2e10:	jmp	0x00db2e45	; targets: 0x00db2e45(MAY)
0x00db2e12:	testl	%ecx, %ecx	; from: 0x00db2e03(MAY)
0x00db2e14:	je	0x00db2e34	; targets: 0x00db2e34(MAY), 0x00db2e16(MAY)
0x00db2e16:	movl	0xc(%ebp), %eax	; from: 0x00db2e14(MAY)
0x00db2e19:	testl	%eax, %eax
0x00db2e1b:	je	0x00db2e34	; targets: 0x00db2e34(MAY), 0x00db2e1d(MAY)
0x00db2e1d:	testl	%edx, %edx	; from: 0x00db2e1b(MAY)
0x00db2e1f:	jne	0x00db2e28	; targets: 0x00db2e28(MAY)
0x00db2e28:	movl	0x10(%ebp), %esi	; from: 0x00db2e1f(MAY)
0x00db2e2b:	testl	%esi, %esi
0x00db2e2d:	jne	0x00db2e48	; targets: 0x00db2e48(MAY)
0x00db2e34:	call	0x00d9616f	; targets: 0x00d9616f(MAY)	; from: 0x00db2e1b(MAY), 0x00db2e14(MAY)
0x00db2e39:	pushl	$0x16	; from: 0x00d96181(MAY), 0x00d9617d(MAY)
0x00db2e3b:	popl	%esi
0x00db2e3c:	movl	%esi, (%eax)
0x00db2e3e:	call	0x00da630e	; targets: 0x00da630e(MAY)
0x00db2e45:	popl	%esi	; from: 0x00db2e10(MAY)
0x00db2e46:	popl	%ebp
0x00db2e47:	ret	; targets: unresolved

0x00db2e48:	pushl	%ebx	; from: 0x00db2e2d(MAY)
0x00db2e49:	movl	%ecx, %ebx
0x00db2e4b:	pushl	%edi
0x00db2e4c:	movl	%eax, %edi
0x00db2e4e:	cmpl	$0xffffffff, %edx
0x00db2e51:	jne	0x00db2e69	; targets: 0x00db2e69(MAY)
0x00db2e69:	subl	%ecx, %esi	; from: 0x00db2e51(MAY)
0x00db2e6b:	movzwl	(%esi,%ebx), %eax	; from: 0x00db2e7e(MAY)
0x00db2e6f:	movw	%ax, (%ebx)
0x00db2e72:	leal	0x2(%ebx), %ebx
0x00db2e75:	testw	%ax, %ax
0x00db2e78:	je	0x00db2e80	; targets: 0x00db2e80(MAY), 0x00db2e7a(MAY)
0x00db2e7a:	decl	%edi	; from: 0x00db2e78(MAY)
0x00db2e7b:	je	0x00db2e80	; targets: 0x00db2e7d(MAY), 0x00db2e80(MAY)
0x00db2e7d:	decl	%edx	; from: 0x00db2e7b(MAY)
0x00db2e7e:	jne	0x00db2e6b	; targets: 0x00db2e6b(MAY), 0x00db2e80(MAY)
0x00db2e80:	testl	%edx, %edx	; from: 0x00db2e78(MAY), 0x00db2e7e(MAY), 0x00db2e7b(MAY)
0x00db2e82:	jne	0x00db2e89	; targets: 0x00db2e89(MAY), 0x00db2e84(MAY)
0x00db2e84:	xorl	%eax, %eax	; from: 0x00db2e82(MAY)
0x00db2e86:	movw	%ax, (%ebx)
0x00db2e89:	testl	%edi, %edi	; from: 0x00db2e82(MAY)
0x00db2e8b:	popl	%edi
0x00db2e8c:	popl	%ebx
0x00db2e8d:	jne	0x00db2e0e	; targets: 0x00db2e0e(MAY), 0x00db2e93(MAY)
0x00db2e93:	cmpl	$0xffffffff, %edx	; from: 0x00db2e8d(MAY)
0x00db2e96:	jne	0x00db2ea7	; targets: 0x00db2ea7(MAY)
0x00db2ea7:	xorl	%eax, %eax	; from: 0x00db2e96(MAY)
0x00db2ea9:	movw	%ax, (%ecx)
0x00db2eac:	call	0x00d9616f	; targets: 0x00d9616f(MAY)
0x00dbb684:	jmp	IsProcessorFeaturePresent@kernel32.dll	; targets: 0xff0005f0(MAY)	; from: 0x00d96b17(MAY), 0x00da6320(MAY)
