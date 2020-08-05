db DEX_METALSAUR ; pokedex id
db 60 ; base hp
db 62 ; base attack
db 140 ; base defense
db 60 ; base speed
db 80 ; base special
db GRASS ; species type 1
db ARMOR ; species type 2
db 140 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/metalsaur.pic",0,1 ; 55, sprite dimensions
dw MetalsaurPicFront
dw MetalsaurPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 7,8
	tmlearn 9,10,15
	tmlearn 21,22,24
	tmlearn 25,30,31,32
	tmlearn 33,36,40
	tmlearn 44,47
	tmlearn 49,50,51
db BANK(MetalsaurPicFront)
