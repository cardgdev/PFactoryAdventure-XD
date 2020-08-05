db DEX_FALCON ; pokedex id
db 90 ; base hp
db 100 ; base attack
db 85 ; base defense
db 125 ; base speed
db 85 ; base special
db GHOST ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/falcon.pic",0,1 ; 55, sprite dimensions
dw FalconPicFront
dw FalconPicBack
; attacks known at lvl 0
db WING_ATTACK
db SHADOW
db NIGHT_SHADE
db AGILITY
db 5 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,13,14,15
	tmlearn 0
	tmlearn 27,31,32
	tmlearn 33,34,37,39
	tmlearn 41,42,43,44
	tmlearn 50,52
db BANK(FalconPicFront)
