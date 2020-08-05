db DEX_PEANUT ; pokedex id
db 83 ; base hp
db 106 ; base attack
db 65 ; base defense
db 85 ; base speed
db 86 ; base special
db POISON ; species type 1
db FIGHTING ; species type 2
db 90 ; catch rate
db 133 ; base exp yield
INCBIN "pic/pfmon/peanut.pic",0,1 ; 55, sprite dimensions
dw PeanutPicFront
dw PeanutPicBack
; attacks known at lvl 0
db DOUBLE_KICK
db FOCUS_ENERGY
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,7,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 26,31,32
	tmlearn 35,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(PeanutPicFront)
