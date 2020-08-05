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
INCBIN "pic/pfmon/mewee.pic",0,1 ; 55, sprite dimensions
dw MeweePicFront
dw MeweePicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db CONFUSION
db 0 ; growth rate
; learnset
	tmlearn 5,6,8
	tmlearn 9,10,15,16
	tmlearn 24
	tmlearn 27,29,30,31,32
	tmlearn 33,35,39,40
	tmlearn 42,44,45,46
	tmlearn 49,50,55
db BANK(MeweePicFront)
