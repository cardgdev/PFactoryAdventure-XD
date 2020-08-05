db DEX_ALTROX ; pokedex id
db 75 ; base hp
db 95 ; base attack
db 125 ; base defense
db 95 ; base speed
db 75 ; base special
db GROUND ; species type 1
db FLYING ; species type 2
db 60 ; catch rate
db 187 ; base exp yield
INCBIN "pic/pfmon/altrox.pic",0,1 ; 55, sprite dimensions
dw AltroxPicFront
dw AltroxPicBack
; attacks known at lvl 0
db WING_ATTACK
db SHARPEN
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,3,6,8
	tmlearn 9,10,11,12,14,15
	tmlearn 20,23
	tmlearn 26,28,30,31,32
	tmlearn 39,40
	tmlearn 41,43,44,48
	tmlearn 50,52,54
db BANK(AltroxPicFront)
