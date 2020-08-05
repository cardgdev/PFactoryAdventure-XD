db DEX_ENERGUY ; pokedex id
db 100 ; base hp
db 30 ; base attack
db 200 ; base defense
db 100 ; base speed
db 60 ; base special
db UNKNOWN ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/energuy.pic",0,1 ; 55, sprite dimensions
dw EnerguyPicFront
dw EnerguyPicBack
; attacks known at lvl 0
db CORRUPT
db SUPERSONIC
db DISABLE
db THUNDER_WAVE
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15
	tmlearn 22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,36,39
	tmlearn 44,45,46,47
	tmlearn 49,50,55
db BANK(EnerguyPicFront)
