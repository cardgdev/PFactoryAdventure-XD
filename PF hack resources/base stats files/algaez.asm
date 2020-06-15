db DEX_ALGAEZ ; pokedex id
db 60 ; base hp
db 50 ; base attack
db 50 ; base defense
db 50 ; base speed
db 70 ; base special
db GRASS ; species type 1
db WATER ; species type 2
db 200 ; catch rate
db 120 ; base exp yield
INCBIN "pic/bmon/algaez.pic",0,1 ; 77, sprite dimensions
dw AlgaezPicFront
dw AlgaezPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(AlgaezPicFront) ; padding
