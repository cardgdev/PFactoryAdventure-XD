db DEX_CENTIDEATH ; pokedex id
db 75 ; base hp
db 107 ; base attack
db 85 ; base defense
db 92 ; base speed
db 70 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 180 ; base exp yield
INCBIN "pic/pfmon/centideath.pic",0,1 ; 55, sprite dimensions
dw CentideathPicFront
dw CentideathPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,21
	tmlearn 26,28,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(CentideathPicFront)
