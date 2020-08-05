db DEX_CHRYSALISS ; pokedex id
db 93 ; base hp
db 93 ; base attack
db 93 ; base defense
db 93 ; base speed
db 93 ; base special
db UNKNOWN ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 193 ; base exp yield
INCBIN "pic/pfmon/chrysaliss.pic",0,1 ; 55, sprite dimensions
dw ChrysalissPicFront
dw ChrysalissPicBack
; attacks known at lvl 0
db TACKLE
db SHARPEN
db CONVERSION
db INVISIBILITY
db 5 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,13,14,15
	tmlearn 22,24
	tmlearn 25,29,31,32
	tmlearn 33,36,39
	tmlearn 44,45,46,47
	tmlearn 49,50,51,55
db BANK(ChrysalissPicFront)
