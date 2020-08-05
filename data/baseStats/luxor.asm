db DEX_LUXOR ; pokedex id
db 130 ; base hp
db 90 ; base attack
db 110 ; base defense
db 106 ; base speed
db 154 ; base special
db DRAGON ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/luxor.pic",0,1 ; 55, sprite dimensions
dw LuxorPicFront
dw LuxorPicBack
; attacks known at lvl 0
db BITE
db DRAGON_RAGE
db CONFUSE_RAY
db PRISMFIRE
db 5 ; growth rate
; learnset
	tmlearn 2,6,8
	tmlearn 9,10,13,14,15
	tmlearn 20,22,23,24
	tmlearn 25,27,29,30,31,32
	tmlearn 33,34,38,39,40
	tmlearn 41,44,46,48
	tmlearn 50,52,55
db BANK(LuxorPicFront)
