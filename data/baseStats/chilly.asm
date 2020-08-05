db DEX_CHILLY ; pokedex id
db 123 ; base hp
db 77 ; base attack
db 72 ; base defense
db 58 ; base speed
db 99 ; base special
db ROCK ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/chilly.pic",0,1 ; 55, sprite dimensions
dw ChillyPicFront
dw ChillyPicBack
; attacks known at lvl 0
db ROCK_THROW
db DIZZY_PUNCH
db ROAR
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,4,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,31,32
	tmlearn 35,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(ChillyPicFront)
