db DEX_FOLEON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 110 ; base defense
db 65 ; base speed
db 130 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 198 ; base exp yield
INCBIN "pic/bmon/foleon.pic",0,1 ; 77, sprite dimensions
dw FoleonPicFront
dw FoleonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db ABSORB
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(FoleonPicFront) ; padding
