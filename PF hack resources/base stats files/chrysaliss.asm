db DEX_CHRYSALISS ; pokedex id
db 93 ; base hp
db 93 ; base attack
db 93 ; base defense
db 93 ; base speed
db 93 ; base special
db UNKNOWN ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 93 ; base exp yield
INCBIN "pic/bmon/chrysaliss.pic",0,1 ; 66, sprite dimensions
dw ChrysalissPicFront
dw ChrysalissPicBack
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
db Bank(ChrysalissPicFront) ; padding
