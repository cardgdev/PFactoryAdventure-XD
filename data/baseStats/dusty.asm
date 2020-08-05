db DEX_DUSTY ; pokedex id
db 60 ; base hp
db 60 ; base attack
db 40 ; base defense
db 80 ; base speed
db 70 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 220 ; catch rate
db 72 ; base exp yield
INCBIN "pic/pfmon/dusty.pic",0,1 ; 55, sprite dimensions
dw DustyPicFront
dw DustyPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 13,14,16
	tmlearn 21,24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,36,39
	tmlearn 44,45,46,47
	tmlearn 50
db BANK(DustyPicFront)
