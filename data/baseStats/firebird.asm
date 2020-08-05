db DEX_FIREBIRD ; pokedex id
db 50 ; base hp
db 55 ; base attack
db 50 ; base defense
db 50 ; base speed
db 70 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 220 ; catch rate
db 70 ; base exp yield
INCBIN "pic/pfmon/firebird.pic",0,1 ; 55, sprite dimensions
dw FirebirdPicFront
dw FirebirdPicBack
; attacks known at lvl 0
db GUST
db SAND_ATTACK
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10
	tmlearn 22
	tmlearn 27,31,32
	tmlearn 33,37,38,39
	tmlearn 41,43,44
	tmlearn 50,52,55
db BANK(FirebirdPicFront)
