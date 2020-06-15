db DEX_LORMERAK ; pokedex id
db 60 ; base hp
db 70 ; base attack
db 50 ; base defense
db 100 ; base speed
db 85 ; base special
db WATER ; species type 1
db FLYING ; species type 2
db 120 ; catch rate
db 131 ; base exp yield
INCBIN "pic/bmon/lormerak.pic",0,1 ; 66, sprite dimensions
dw LormerakPicFront
dw LormerakPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(LormerakPicFront) ; padding
