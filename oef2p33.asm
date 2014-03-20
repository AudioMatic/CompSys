%include "gt.asm"
covar
number resd 1
sum resd 1
inleiding
	inv[number]
	mov EAX,[number]
	inv[number]
	add EAX,[number]
	inv[number]
	add EAX,[number]
	mov [sum],EAX
	uit[sum]
slot