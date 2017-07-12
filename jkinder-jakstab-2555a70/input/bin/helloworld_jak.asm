
start:
0x00401000:	movl	$0x401023, %edi
0x00401005:	movl	$0x2, %ebx
0x0040100a:	pushl	$0x403000	; from: 0x00401017(MAY)
0x0040100f:	calll	0x00401030	; targets: 0x00401030(MAY)
0x00401014:	subl	$0x1, %ebx	; from: 0x00401063(MAY)
0x00401017:	jne	0x0040100a	; targets: 0x0040100a(MAY), 0x00401019(MAY)
0x00401019:	calll	%edi	; targets: 0x00401023(MAY)	; from: 0x00401017(MAY)
0x0040101b:	pushl	$0x0	; from: 0x0040102d(MAY)
0x0040101d:	calll	0x004010a6	; targets: 0x004010a6(MAY)
0x00401023:	pushl	$0x40301c	; from: 0x00401019(MAY)
0x00401028:	calll	0x00401030	; targets: 0x00401030(MAY)
0x0040102d:	retl	; targets: 0x0040101b(MAY)	; from: 0x00401063(MAY)

0x00401030:	pushl	%ebp	; from: 0x00401028(MAY), 0x0040100f(MAY)
0x00401031:	movl	%esp, %ebp
0x00401033:	addl	$0xfffffff4, %esp
0x00401036:	pushl	$0xfffffff5
0x00401038:	calll	0x004010ac	; targets: 0x004010ac(MAY)
0x0040103d:	movl	%eax, -4(%ebp)
0x00401040:	pushl	0x8(%ebp)
0x00401043:	calll	0x00401070	; targets: 0x00401070(MAY)
0x00401048:	movl	%eax, -12(%ebp)	; from: 0x004010a2(MAY)
0x0040104b:	pushl	$0x0
0x0040104d:	leal	-8(%ebp), %eax
0x00401050:	pushl	%eax
0x00401051:	pushl	-12(%ebp)
0x00401054:	pushl	0x8(%ebp)
0x00401057:	pushl	-4(%ebp)
0x0040105a:	calll	0x004010b2	; targets: 0x004010b2(MAY)
0x0040105f:	movl	-8(%ebp), %eax
0x00401062:	leave	
0x00401063:	retl	$0x4	; targets: 0x0040102d(MAY), 0x00401014(MAY)

0x00401070:	movl	0x4(%esp), %eax	; from: 0x00401043(MAY)
0x00401074:	pushl	%ebx
0x00401075:	leal	0x3(%eax), %edx
0x00401078:	movl	(%eax), %ebx	; from: 0x0040108d(MAY)
0x0040107a:	addl	$0x4, %eax
0x0040107d:	leal	-16843009(%ebx), %ecx
0x00401083:	notl	%ebx
0x00401085:	andl	%ebx, %ecx
0x00401087:	andl	$0x80808080, %ecx
0x0040108d:	je	0x00401078	; targets: 0x0040108f(MAY), 0x00401078(MAY)
0x0040108f:	testl	$0x8080, %ecx	; from: 0x0040108d(MAY)
0x00401095:	jne	0x0040109d	; targets: 0x0040109d(MAY), 0x00401097(MAY)
0x00401097:	shrl	$0x10, %ecx	; from: 0x00401095(MAY)
0x0040109a:	addl	$0x2, %eax
0x0040109d:	shlb	%cl	; from: 0x00401095(MAY)
0x0040109f:	sbbl	%edx, %eax
0x004010a1:	popl	%ebx
0x004010a2:	retl	$0x4	; targets: 0x00401048(MAY)

0x004010a6:	jmpl	ExitProcess@kernel32.dll	; targets: 0xff000020(MAY)	; from: 0x0040101d(MAY)
0x004010ac:	jmpl	GetStdHandle@kernel32.dll	; targets: 0xff000030(MAY)	; from: 0x00401038(MAY)
0x004010b2:	jmpl	WriteFile@kernel32.dll	; targets: 0xff000010(MAY)	; from: 0x0040105a(MAY)
