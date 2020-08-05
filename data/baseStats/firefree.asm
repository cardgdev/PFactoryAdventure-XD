db DEX_FIREFREE ; pokedex id
db 73 ; base hp
db 53 ; base attack
db 58 ; base defense
db 85 ; base speed
db 108 ; base special
db BUG ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 160 ; base exp yield
INCBIN "pic/pfmon/firefree.pic",0,1 ; 55, sprite dimensions
dw FirefreePicFront
dw FirefreePicBack
; attacks known at lvl 0
db GUST
db STRING_SHOT
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,6,7
	tmlearn 9,10,15
	tmlearn 21,22
	tmlearn 29,31,32
	tmlearn 33,38,39
	tmlearn 41,44,46
	tmlearn 50
db BANK(FirefreePicFront)
