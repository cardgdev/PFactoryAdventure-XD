db DEX_PIKABLU ; pokedex id
db 100 ; base hp
db 50 ; base attack
db 80 ; base defense
db 50 ; base speed
db 80 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 120 ; catch rate
db 58 ; base exp yield
INCBIN "pic/bmon/pikablu.pic",0,1 ; 55, sprite dimensions
dw PikabluPicFront
dw PikabluPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(PikabluPicFront) ; padding
