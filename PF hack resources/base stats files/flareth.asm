db DEX_FLARETH ; pokedex id
db 65 ; base hp
db 105 ; base attack
db 65 ; base defense
db 80 ; base speed
db 130 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/flareth.pic",0,1 ; 77, sprite dimensions
dw FlarethPicFront
dw FlarethPicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(FlarethPicFront) ; padding
