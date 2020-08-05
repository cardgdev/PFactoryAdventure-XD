db DEX_MUSHBOOM ; pokedex id
db 40 ; base hp
db 40 ; base attack
db 40 ; base defense
db 90 ; base speed
db 50 ; base special
db GRASS ; species type 1
db POISON ; species type 2
db 180 ; catch rate
db 110 ; base exp yield
INCBIN "pic/pfmon/mushboom.pic",0,1 ; 55, sprite dimensions
dw MushboomPicFront
dw MushboomPicBack
; attacks known at lvl 0
db ABSORB
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,7
	tmlearn 15
	tmlearn 21,22
	tmlearn 31,32
	tmlearn 36,38,40
	tmlearn 44,47
	tmlearn 50,55
db BANK(MushboomPicFront)
