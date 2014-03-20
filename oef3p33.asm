%include "gt.asm"
covar

number resd 1
twenty	dd 20
 
inleiding
	inv[number]
	mov EAX,[number]
	imul dword [twenty]
	mov [number],EAX
	uit[number]

slot