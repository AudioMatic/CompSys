%include "gt.asm"
covar
x:	resd 1
y:	resd 1
z:	resd 1

two:	dd 2
four:	dd 4
eight:	dd 8

sum:	resd 1
inleiding
	inv[x]
	inv[y]
	inv[z]
	
	mov EAX,[x]
	imul dword [two]
	mov [x],EAX
	
	mov EAX,[y]
	imul dword [four]
	mov [y],EAX
	
	mov EAX,[z]
	imul dword [eight]
	mov [z],EAX
	
	
	sub EAX,EAX
	mov EAX,[x]
	add EAX,[y]
	add EAX,[z]
	mov [sum],EAX
	uit[sum]
slot
