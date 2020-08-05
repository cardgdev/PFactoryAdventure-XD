db DEX_DIMINOX ; pokedex id
db 82 ; base hp
db 121 ; base attack
db 119 ; base defense
db 71 ; base speed
db 69 ; base special
db ROCK ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/diminox.pic",0,1 ; 55, sprite dimensions
dw DiminoxPicFront
dw DiminoxPicBack
; attacks known at lvl 0
db ROCK_THROW
db DIZZY_PUNCH
db ROAR
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,23
	tmlearn 26,27,28,31,32
	tmlearn 34,35,38,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(DiminoxPicFront)
