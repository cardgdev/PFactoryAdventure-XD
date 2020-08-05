db DEX_GAMBLE ; pokedex id
db 5 ; base hp
db 105 ; base attack
db 250 ; base defense
db 5 ; base speed
db 50 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 30 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/gamble.pic",0,1 ; 55, sprite dimensions
dw GamblePicFront
dw GamblePicBack
; attacks known at lvl 0
db POUND
db TAIL_WHIP
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,6,8
	tmlearn 9,10,13,14,15,16
	tmlearn 24
	tmlearn 25,27,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 49,50,54
db BANK(GamblePicFront)
