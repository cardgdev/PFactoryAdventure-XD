db DEX_ALPHA ; pokedex id
db 85 ; base hp
db 105 ; base attack
db 100 ; base defense
db 78 ; base speed
db 83 ; base special
db WATER ; species type 1
db GROUND ; species type 2
db 70 ; catch rate
db 154 ; base exp yield
INCBIN "pic/pfmon/alpha.pic",0,1 ; 55, sprite dimensions
dw AlphaPicFront
dw AlphaPicBack
; attacks known at lvl 0
db WATER_GUN
db SCREECH
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,6,8
	tmlearn 9,10,11,12,13,15
	tmlearn 17,18,19,20,23
	tmlearn 26,27,28,30,31,32
	tmlearn 40
	tmlearn 44,48
	tmlearn 50,53,54
db BANK(AlphaPicFront)
