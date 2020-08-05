db DEX_LEGION ; pokedex id
db 95 ; base hp
db 65 ; base attack
db 110 ; base defense
db 65 ; base speed
db 130 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 80 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/legion.pic",0,1 ; 55, sprite dimensions
dw LegionPicFront
dw LegionPicBack
; attacks known at lvl 0
db LICK
db SING
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,13,14,15
	tmlearn 20
	tmlearn 28,29,30,31,32
	tmlearn 33,34,39
	tmlearn 42,44,46,48
	tmlearn 50,51,55
db BANK(LegionPicFront)
