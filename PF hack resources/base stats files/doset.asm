db DEX_DOSET ; pokedex id
db 85 ; base hp
db 120 ; base attack
db 120 ; base defense
db 65 ; base speed
db 55 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/bmon/doset.pic",0,1 ; 77, sprite dimensions
dw DosetPicFront
dw DosetPicBack
; attacks known at lvl 0
db SCRATCH
db SAND_ATTACK
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(DosetPicFront) ; padding
