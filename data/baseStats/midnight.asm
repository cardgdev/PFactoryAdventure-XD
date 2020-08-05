db DEX_MIDNIGHT ; pokedex id
db 90 ; base hp
db 65 ; base attack
db 70 ; base defense
db 96 ; base speed
db 105 ; base special
db FLYING ; species type 1
db FLYING ; species type 2
db 70 ; catch rate
db 165 ; base exp yield
INCBIN "pic/pfmon/midnight.pic",0,1 ; 55, sprite dimensions
dw MidnightPicFront
dw MidnightPicBack
; attacks known at lvl 0
db GUST
db WHIRLWIND
db SMOKESCREEN
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 11,12,13,14,15
	tmlearn 24
	tmlearn 25,27,31,32
	tmlearn 33,34,36
	tmlearn 41,42,44,47
	tmlearn 50,52,53,55
db BANK(MidnightPicFront)
