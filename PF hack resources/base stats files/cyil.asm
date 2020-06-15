db DEX_CYIL ; pokedex id
db 75 ; base hp
db 90 ; base attack
db 70 ; base defense
db 70 ; base speed
db 75 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 80 ; catch rate
db 120 ; base exp yield
INCBIN "pic/bmon/cyil.pic",0,1 ; 77, sprite dimensions
dw CyilPicFront
dw CyilPicBack
; attacks known at lvl 0
db SCRATCH
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
db Bank(CyilPicFront) ; padding
