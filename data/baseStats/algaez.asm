db DEX_ALGAEZ ; pokedex id
db 80 ; base hp
db 50 ; base attack
db 80 ; base defense
db 30 ; base speed
db 70 ; base special
db GRASS ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 64 ; base exp yield
INCBIN "pic/pfmon/algaez.pic",0,1 ; 55, sprite dimensions
dw AlgaezPicFront
dw AlgaezPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,7
	tmlearn 11,12,13,14
	tmlearn 21,22
	tmlearn 31,32
	tmlearn 33
	tmlearn 44
	tmlearn 50,53,55
db BANK(AlgaezPicFront)
