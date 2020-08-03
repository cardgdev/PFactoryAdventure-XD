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
INCBIN "pic/pfmon/foleon.pic",0,1 ; 55, sprite dimensions
dw FoleonPicFront
dw FoleonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db ABSORB
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15,16
	tmlearn 21,22
	tmlearn 27,30,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(FoleonPicFront)
