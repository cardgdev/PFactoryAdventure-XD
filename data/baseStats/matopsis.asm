db DEX_MATOPSIS ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 70 ; base defense
db 65 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 140 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/matopsis.pic",0,1 ; 55, sprite dimensions
dw MatopsisPicFront
dw MatopsisPicBack
; attacks known at lvl 0
db GUST
db SAND_ATTACK
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,15
	tmlearn 22
	tmlearn 27,31,32
	tmlearn 33,37,38,39
	tmlearn 41,43,44
	tmlearn 50,52,55
db BANK(MatopsisPicFront)
