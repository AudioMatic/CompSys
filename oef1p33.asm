%include "gt.asm"
covar
number:	resd 1
two:	dd 2
inleiding
	inv[number]
	mov EAX,[number]
	imul dword [two]
	mov [number],EAX
	uit[number]
slot