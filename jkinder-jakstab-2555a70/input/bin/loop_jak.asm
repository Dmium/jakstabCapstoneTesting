
start:
0x00401000:	movl	$0x3e8, %ecx
0x00401005:	xorl	%eax, %eax
0x00401007:	incl	%eax	; from: 0x00401008(MAY)
0x00401008:	loop	0x00401007	; targets: 0x00401007(MAY), 0x0040100a(MAY)
0x0040100a:	ret	; targets: 0xfee70000(MAY)	; from: 0x00401008(MAY)

