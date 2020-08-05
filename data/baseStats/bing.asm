db DEX_BING ; pokedex id
db 30 ; base hp
db 60 ; base attack
db 40 ; base defense
db 130 ; base speed
db 50 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 110 ; catch rate
db 75 ; base exp yield
INCBIN "pic/pfmon/bing.pic",0,1 ; 55, sprite dimensions
dw BingPicFront
dw BingPicBack
; attacks known at lvl 0
db POUND
db GROWL
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 5,6,8
	tmlearn 9,10,15,16
	tmlearn 17,18,19,24
	tmlearn 25,27,31,32
	tmlearn 33,35,36,39,40
	tmlearn 44,45,47
	tmlearn 50,55
db BANK(BingPicFront)
