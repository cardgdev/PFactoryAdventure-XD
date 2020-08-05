db DEX_MAZILLA ; pokedex id
db 78 ; base hp
db 92 ; base attack
db 75 ; base defense
db 118 ; base speed
db 63 ; base special
db FIGHTING ; species type 1
db ROCK ; species type 2
db 150 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/mazilla.pic",0,1 ; 55, sprite dimensions
dw MazillaPicFront
dw MazillaPicBack
; attacks known at lvl 0
db KARATE_CHOP
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,23
	tmlearn 26,27,28,31,32
	tmlearn 35,37,38,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(MazillaPicFront)
