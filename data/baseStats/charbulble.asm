db DEX_CHARBULBLE ; pokedex id
db 43 ; base hp
db 50 ; base attack
db 52 ; base defense
db 51 ; base speed
db 55 ; base special
db FIRE ; species type 1
db WATER ; species type 2
db 220 ; catch rate
db 64 ; base exp yield
INCBIN "pic/pfmon/charbulble.pic",0,1 ; 55, sprite dimensions
dw CharbulblePicFront
dw CharbulblePicBack
; attacks known at lvl 0
db TACKLE
db SCRATCH
db GROWL
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12
	tmlearn 21,22
	tmlearn 28,30,31,32
	tmlearn 33,38,39,40
	tmlearn 44
	tmlearn 50,51,53,54
db BANK(CharbulblePicFront)
