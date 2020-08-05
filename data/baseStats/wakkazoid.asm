db DEX_WAKKAZOID ; pokedex id
db 110 ; base hp
db 85 ; base attack
db 95 ; base defense
db 50 ; base speed
db 95 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 80 ; catch rate
db 167 ; base exp yield
INCBIN "pic/pfmon/wakkazoid.pic",0,1 ; 55, sprite dimensions
dw WakkazoidPicFront
dw WakkazoidPicBack
; attacks known at lvl 0
db LICK
db SUPERSONIC
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20
	tmlearn 26,27,29,30,31,32
	tmlearn 33,34,35,36,38,40
	tmlearn 44,46,47,48
	tmlearn 50,51,53,54
db BANK(WakkazoidPicFront)
