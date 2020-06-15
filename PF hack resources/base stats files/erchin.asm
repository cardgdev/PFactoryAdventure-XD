db DEX_ERCHIN ; pokedex id
db 65 ; base hp
db 95 ; base attack
db 75 ; base defense
db 55 ; base speed
db 85 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 100 ; catch rate
db 100 ; base exp yield
INCBIN "pic/bmon/erchin.pic",0,1 ; 66, sprite dimensions
dw ErchinPicFront
dw ErchinPicBack
; attacks known at lvl 0
db TACKLE
db POISON_STING
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
db Bank(ErchinPicFront) ; padding
