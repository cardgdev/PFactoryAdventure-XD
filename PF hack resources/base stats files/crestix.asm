db DEX_CRESTIX ; pokedex id
db 65 ; base hp
db 83 ; base attack
db 57 ; base defense
db 85 ; base speed
db 105 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 80 ; catch rate
db 120 ; base exp yield
INCBIN "pic/bmon/crestix.pic",0,1 ; 55, sprite dimensions
dw CrestixPicFront
dw CrestixPicBack
; attacks known at lvl 0
db TACKLE
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(CrestixPicFront) ; padding
