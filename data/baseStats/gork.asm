db DEX_GORK ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 85 ; base defense
db 50 ; base speed
db 93 ; base special
db ROCK ; species type 1
db ROCK ; species type 2
db 190 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/gork.pic",0,1 ; 55, sprite dimensions
dw GorkPicFront
dw GorkPicBack
; attacks known at lvl 0
db RAGE
db REST
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,7,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,21,24
	tmlearn 25,26,28,29,31,32
	tmlearn 33,34,36,40
	tmlearn 42,44,46,47,48
	tmlearn 50,54
db BANK(GorkPicFront)
