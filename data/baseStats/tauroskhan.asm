db DEX_TAUROSKHAN ; pokedex id
db 90 ; base hp
db 98 ; base attack
db 88 ; base defense
db 100 ; base speed
db 55 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 70 ; catch rate
db 183 ; base exp yield
INCBIN "pic/pfmon/tauroskhan.pic",0,1 ; 55, sprite dimensions
dw TauroskhanPicFront
dw TauroskhanPicBack
; attacks known at lvl 0
db COMET_PUNCH
db TAIL_WHIP
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,13,14,15
	tmlearn 17,18,19,20,24
	tmlearn 25,26,27,30,31,32
	tmlearn 38,40
	tmlearn 44,48
	tmlearn 50,53,54
db BANK(TauroskhanPicFront)
