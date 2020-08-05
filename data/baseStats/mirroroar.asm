db DEX_MIRROROAR ; pokedex id
db 116 ; base hp
db 67 ; base attack
db 33 ; base defense
db 89 ; base speed
db 116 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 90 ; catch rate
db 150 ; base exp yield
INCBIN "pic/pfmon/mirroroar.pic",0,1 ; 55, sprite dimensions
dw MirroroarPicFront
dw MirroroarPicBack
; attacks known at lvl 0
db BIDE
db MIRROR_MOVE
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 13,14,15
	tmlearn 21,22,24
	tmlearn 25,29,31,32
	tmlearn 33,36,39
	tmlearn 44,46,47
	tmlearn 49,50,55
db BANK(MirroroarPicFront)
