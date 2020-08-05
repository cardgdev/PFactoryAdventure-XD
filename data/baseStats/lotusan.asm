db DEX_LOTUSAN ; pokedex id
db 90 ; base hp
db 85 ; base attack
db 90 ; base defense
db 100 ; base speed
db 125 ; base special
db GRASS ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/lotusan.pic",0,1 ; 55, sprite dimensions
dw LotusanPicFront
dw LotusanPicBack
; attacks known at lvl 0
db WING_ATTACK
db SOLARBEAM
db RAZOR_LEAF
db AGILITY
db 5 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,15
	tmlearn 21,22
	tmlearn 27,31,32
	tmlearn 33,37,39
	tmlearn 41,43,44
	tmlearn 50,51,52
db BANK(LotusanPicFront)
