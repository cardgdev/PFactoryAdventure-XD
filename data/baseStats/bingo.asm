db DEX_BINGO ; pokedex id
db 125 ; base hp
db 50 ; base attack
db 110 ; base defense
db 40 ; base speed
db 80 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 100 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/bingo.pic",0,1 ; 55, sprite dimensions
dw BingoPicFront
dw BingoPicBack
; attacks known at lvl 0
db BARRAGE
db DEFENSE_CURL
db BIDE
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,11,12,15
	tmlearn 21,24
	tmlearn 25,27,31,32
	tmlearn 33,34,36,40
	tmlearn 44,47
	tmlearn 50
db BANK(BingoPicFront)
