db DEX_KRUNO ; pokedex id
db 75 ; base hp
db 69 ; base attack
db 72 ; base defense
db 84 ; base speed
db 94 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 60 ; catch rate
db 132 ; base exp yield
INCBIN "pic/pfmon/kruno.pic",0,1 ; 55, sprite dimensions
dw KrunoPicFront
dw KrunoPicBack
; attacks known at lvl 0
db CONFUSION
db KINESIS
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,13,14
	tmlearn 24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,36,38,39
	tmlearn 41,42,44,45,46,47
	tmlearn 49,50,55
db BANK(KrunoPicFront)
