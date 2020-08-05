db DEX_LORMERAK ; pokedex id
db 60 ; base hp
db 70 ; base attack
db 50 ; base defense
db 100 ; base speed
db 85 ; base special
db WATER ; species type 1
db FLYING ; species type 2
db 175 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/lormerak.pic",0,1 ; 55, sprite dimensions
dw LormerakPicFront
dw LormerakPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,11,12,14,15
	tmlearn 0
	tmlearn 27,31,32
	tmlearn 33,37,39
	tmlearn 41,43,44
	tmlearn 50,52,53
db BANK(LormerakPicFront)
