db DEX_CEREBU ; pokedex id
db 93 ; base hp
db 103 ; base attack
db 67 ; base defense
db 84 ; base speed
db 71 ; base special
db NORMAL ; species type 1
db POISON ; species type 2
db 140 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/cerebu.pic",0,1 ; 55, sprite dimensions
dw CerebuPicFront
dw CerebuPicBack
; attacks known at lvl 0
db POISON_STING
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7,8
	tmlearn 9,10,15
	tmlearn 24
	tmlearn 25,27,28,31,32
	tmlearn 34,40
	tmlearn 44
	tmlearn 49,50,54
db BANK(CerebuPicFront)
