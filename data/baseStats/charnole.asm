db DEX_CHARNOLE ; pokedex id
db 60 ; base hp
db 78 ; base attack
db 135 ; base defense
db 36 ; base speed
db 91 ; base special
db FIRE ; species type 1
db ELECTRIC ; species type 2
db 120 ; catch rate
db 135 ; base exp yield
INCBIN "pic/pfmon/charnole.pic",0,1 ; 55, sprite dimensions
dw CharnolePicFront
dw CharnolePicBack
; attacks known at lvl 0
db EMBER
db THUNDERSHOCK
db LEER
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 22,23,24
	tmlearn 25,27,28,30,31,32
	tmlearn 38,40
	tmlearn 44
	tmlearn 50,54,55
db BANK(CharnolePicFront)
