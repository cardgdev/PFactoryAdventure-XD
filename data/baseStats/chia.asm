db DEX_CHIA ; pokedex id
db 100 ; base hp
db 100 ; base attack
db 125 ; base defense
db 50 ; base speed
db 50 ; base special
db GRASS ; species type 1
db NORMAL ; species type 2
db 160 ; catch rate
db 125 ; base exp yield
INCBIN "pic/pfmon/chia.pic",0,1 ; 55, sprite dimensions
dw ChiaPicFront
dw ChiaPicBack
; attacks known at lvl 0
db VINE_WHIP
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,15,16
	tmlearn 21,22
	tmlearn 27,28,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(ChiaPicFront)
