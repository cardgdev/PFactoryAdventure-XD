db DEX_MEWEE ; pokedex id
db 86 ; base hp
db 86 ; base attack
db 86 ; base defense
db 86 ; base speed
db 86 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 198 ; base exp yield
INCBIN "pic/bmon/mewee.pic",0,1 ; 77, sprite dimensions
dw MeweePicFront
dw MeweePicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db CONFUSION
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(MeweePicFront) ; padding
