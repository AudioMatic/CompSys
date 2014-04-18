%include "gt.asm"
covar
getal:	resd 10
gem:	resd 1
hulp:	resd 1
een:	dd 1
tien:	dd 10
inleiding
	SUB EAX,EAX ; in EAX komt de som
	SUB EDI,EDI ; EDI zal als indexregister gebruikt worden
	
	mov ECX,[tien]
hoger:	inv[getal+EDI]
	add EAX,[getal+EDI]
	add EDI,4 ; indexreg +4
	SUB ecx, 1
	jnz hoger
	
	imul dword [een]
	idiv dword [tien]
	mov [gem],EAX
	uit[gem]
	
	sub EDI,EDI ; voor indexregister
	mov ECX,10 ; in ECX de teller

lus:	mov eax,[getal+EDI] ; inhoud van EAX is de inhoud van
							; van het dubbelwoord met adres getal+inh.EDI
		sub EAX,[gem]
		mov [hulp],EAX
		uit[hulp]
		add EDI,4
		sub ECX,1
		jnz lus
		

slot