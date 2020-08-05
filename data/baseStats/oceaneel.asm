db DEX_OCEANEEL ; pokedex id
db 76 ; base hp
db 58 ; base attack
db 58 ; base defense
db 67 ; base speed
db 125 ; base special
db WATER ; species type 1
db ELECTRIC ; species type 2
db 130 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/oceaneel.pic",0,1 ; 55, sprite dimensions
dw OceaneelPicFront
dw OceaneelPicBack
; attacks known at lvl 0
db BITE
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 23,24
	tmlearn 25,30,31,32
	tmlearn 40
	tmlearn 44
	tmlearn 50,53
db BANK(OceaneelPicFront)
