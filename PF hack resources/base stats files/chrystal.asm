db DEX_CHRYSTAL ; pokedex id
db 73 ; base hp
db 73 ; base attack
db 73 ; base defense
db 73 ; base speed
db 73 ; base special
db UNKNOWN ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 73 ; base exp yield
INCBIN "pic/bmon/chrystal.pic",0,1 ; 77, sprite dimensions
dw ChrystalPicFront
dw ChrystalPicBack
; attacks known at lvl 0
db BIDE
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(ChrystalPicFront) ; padding
