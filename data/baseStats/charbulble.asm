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
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55
db BANK(CharbulblePicFront)
