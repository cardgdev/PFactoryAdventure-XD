db DEX_HUNTER ; pokedex id
db 65 ; base hp
db 125 ; base attack
db 60 ; base defense
db 105 ; base speed
db 95 ; base special
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 70 ; catch rate
db 160 ; base exp yield
INCBIN "pic/pfmon/hunter.pic",0,1 ; 55, sprite dimensions
dw HunterPicFront
dw HunterPicBack
; attacks known at lvl 0
db KARATE_CHOP
db MEDITATE
db HORN_ATTACK
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 26,28,29,31,32
	tmlearn 33,35,39,40
	tmlearn 44,46,48
	tmlearn 50,54
db BANK(HunterPicFront)
