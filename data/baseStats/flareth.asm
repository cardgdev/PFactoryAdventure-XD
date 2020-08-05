db DEX_FLARETH ; pokedex id
db 65 ; base hp
db 105 ; base attack
db 65 ; base defense
db 80 ; base speed
db 130 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/flareth.pic",0,1 ; 55, sprite dimensions
dw FlarethPicFront
dw FlarethPicBack
; attacks known at lvl 0
db EMBER
db FURY_SWIPES
db FLAMETHROWER
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,3,6
	tmlearn 9,10,15
	tmlearn 17,18,19,22,23
	tmlearn 27,30,31,32
	tmlearn 38,39,40
	tmlearn 41,43,44
	tmlearn 50,51,52
db BANK(FlarethPicFront)
