db DEX_MR_PSY ; pokedex id
db 80 ; base hp
db 85 ; base attack
db 75 ; base defense
db 70 ; base speed
db 110 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 170 ; base exp yield
INCBIN "pic/pfmon/mrpsy.pic",0,1 ; 55, sprite dimensions
dw MrPsyPicFront
dw MrPsyPicBack
; attacks known at lvl 0
db CONFUSION
db BARRIER
db POUND
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,40
	tmlearn 42,44,45,46
	tmlearn 50,55
db BANK(MrPsyPicFront)
