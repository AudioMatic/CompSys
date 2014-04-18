%include "gt.asm"
covar
getal: resd 1
gem:	resd 1
een:	dd 1
tien:	dd 10
inleiding
	sub EAX,EAX ; in EAX komt de som
	mov ECX,[tien] , ;in ECX de teller
hoger:	inv[getal]
		add eax,[getal]
		sub ecx,1
		jnz hoger
		
		imul dword [een]
		idiv dword [tien]
		mov [gem],eax
		uit[gem]
		
slot