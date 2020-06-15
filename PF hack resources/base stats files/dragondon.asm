db DEX_DRAGONDON ; pokedex id
db 82 ; base hp
db 121 ; base attack
db 119 ; base defense
db 71 ; base speed
db 69 ; base special
db ROCK ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/dragondon.pic",0,1 ; 77, sprite dimensions
dw DragondonPicFront
dw DragondonPicBack
; attacks known at lvl 0
db BITE
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
db Bank(DragondonPicFront) ; padding
