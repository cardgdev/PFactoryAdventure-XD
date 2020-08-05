db DEX_CYIL ; pokedex id
db 75 ; base hp
db 90 ; base attack
db 70 ; base defense
db 70 ; base speed
db 75 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 90 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/cyil.pic",0,1 ; 55, sprite dimensions
dw CyilPicFront
dw CyilPicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,31,32
	tmlearn 34,35,39,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(CyilPicFront)
