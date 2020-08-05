db DEX_STARMISH ; pokedex id
db 75 ; base hp
db 90 ; base attack
db 90 ; base defense
db 110 ; base speed
db 90 ; base special
db PSYCHIC ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 220 ; base exp yield
INCBIN "pic/pfmon/starmish.pic",0,1 ; 55, sprite dimensions
dw StarmishPicFront
dw StarmishPicBack
; attacks known at lvl 0
db TACKLE
db HARDEN
db PSYWAVE
db WATER_GUN
db 5 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 24
	tmlearn 25,29,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45,46
	tmlearn 49,50,53,55
db BANK(StarmishPicFront)
