%include "gt.asm"
covar
getal:	resd 10
som:	resd 1
gem:	resd 1
teller: dd 10
tien:	dd 10
een:

inleiding
	SUB EAX,EAX ; in EAX komt de som
	SUB EDI,EDI ; EDI zal als indexregister gebruikt worden
	
	MOV ECX,[teller]

hoger:	inv[getal+EDI]
		add EAX,[getal+EDI]
		add EDI,4 ; indexreg +4
		sub ECX , 1
		jnz hoger
		
		; bereken gemiddelde
		imul dword [een]
		idiv dword [tien]
		mov [gem],EAX
		uit[gem]
	
	
slot