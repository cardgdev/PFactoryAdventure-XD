db DEX_EXODUS ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 90 ; base defense
db 125 ; base speed
db 90 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 158 ; base exp yield
INCBIN "pic/pfmon/exodus.pic",0,1 ; 55, sprite dimensions
dw ExodusPicFront
dw ExodusPicBack
; attacks known at lvl 0
db NIGHT_SHADE
db SMOKESCREEN
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 13,14,15
	tmlearn 20,21,24
	tmlearn 25,29,31,32
	tmlearn 33,34
	tmlearn 42,44,46,48
	tmlearn 50
db BANK(ExodusPicFront)
