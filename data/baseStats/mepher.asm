db DEX_MEPHER ; pokedex id
db 65 ; base hp
db 92 ; base attack
db 74 ; base defense
db 100 ; base speed
db 67 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 150 ; catch rate
db 115 ; base exp yield
INCBIN "pic/pfmon/mepher.pic",0,1 ; 55, sprite dimensions
dw MepherPicFront
dw MepherPicBack
; attacks known at lvl 0
db TACKLE
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,4,6
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 24
	tmlearn 25,28,30,31,32
	tmlearn 34,38,39,40
	tmlearn 44
	tmlearn 50
db BANK(MepherPicFront)
