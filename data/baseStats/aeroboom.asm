db DEX_AEROBOOM ; pokedex id
db 65 ; base hp
db 80 ; base attack
db 60 ; base defense
db 140 ; base speed
db 95 ; base special
db ROCK ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/pfmon/aeroboom.pic",0,1 ; 55, sprite dimensions
dw AeroboomPicFront
dw AeroboomPicBack
; attacks known at lvl 0
db WING_ATTACK
db AGILITY
db SONICBOOM
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,15
	tmlearn 20,23
	tmlearn 26,27,31,32
	tmlearn 33,37,38,39,40
	tmlearn 41,43,44,48
	tmlearn 50,52
db BANK(AeroboomPicFront)
