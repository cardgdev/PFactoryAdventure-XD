db DEX_LIQUETZAL ; pokedex id
db 85 ; base hp
db 70 ; base attack
db 80 ; base defense
db 123 ; base speed
db 97 ; base special
db WATER ; species type 1
db FLYING ; species type 2
db 100 ; catch rate
db 125 ; base exp yield
INCBIN "pic/pfmon/liquetzal.pic",0,1 ; 55, sprite dimensions
dw LiquetzalPicFront
dw LiquetzalPicBack
; attacks known at lvl 0
db PECK
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,11,12,14,15
	tmlearn 0
	tmlearn 27,31,32
	tmlearn 33,37,39
	tmlearn 41,43,44
	tmlearn 50,52,53
db BANK(LiquetzalPicFront)
