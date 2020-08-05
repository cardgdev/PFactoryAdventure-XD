db DEX_EXPLO ; pokedex id
db 110 ; base hp
db 80 ; base attack
db 120 ; base defense
db 30 ; base speed
db 80 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 70 ; catch rate
db 145 ; base exp yield
INCBIN "pic/pfmon/explo.pic",0,1 ; 55, sprite dimensions
dw ExploPicFront
dw ExploPicBack
; attacks known at lvl 0
db EMBER
db POISON_GAS
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 22,24
	tmlearn 25,27,31,32
	tmlearn 33,35,36,38
	tmlearn 44,47
	tmlearn 49,50,55
db BANK(ExploPicFront)
