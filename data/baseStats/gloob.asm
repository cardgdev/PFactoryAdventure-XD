db DEX_GLOOB ; pokedex id
db 100 ; base hp
db 47 ; base attack
db 90 ; base defense
db 40 ; base speed
db 80 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 180 ; catch rate
db 90 ; base exp yield
INCBIN "pic/pfmon/gloob.pic",0,1 ; 55, sprite dimensions
dw GloobPicFront
dw GloobPicBack
; attacks known at lvl 0
db BARRAGE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,11,12
	tmlearn 21,24
	tmlearn 25,27,31,32
	tmlearn 33,34,36,40
	tmlearn 44,47
	tmlearn 50
db BANK(GloobPicFront)
