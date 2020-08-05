db DEX_XBRAIN ; pokedex id
db 120 ; base hp
db 50 ; base attack
db 45 ; base defense
db 55 ; base speed
db 135 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/xbrain.pic",0,1 ; 55, sprite dimensions
dw XbrainPicFront
dw XbrainPicBack
; attacks known at lvl 0
db CONFUSION
db DISABLE
db RECOVER
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15,16
	tmlearn 17,18,19
	tmlearn 29,31,32
	tmlearn 33,34,35,39,40
	tmlearn 44,45,46
	tmlearn 49,50,55
db BANK(XbrainPicFront)
