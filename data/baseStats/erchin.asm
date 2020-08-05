db DEX_ERCHIN ; pokedex id
db 65 ; base hp
db 95 ; base attack
db 75 ; base defense
db 55 ; base speed
db 85 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 140 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/erchin.pic",0,1 ; 55, sprite dimensions
dw ErchinPicFront
dw ErchinPicBack
; attacks known at lvl 0
db BUBBLE
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 4,6,7
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,21
	tmlearn 28,31,32
	tmlearn 33,36,40
	tmlearn 44,47,48
	tmlearn 50,53
db BANK(ErchinPicFront)
