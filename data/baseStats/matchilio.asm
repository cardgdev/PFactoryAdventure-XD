db DEX_MATCHILIO ; pokedex id
db 80 ; base hp
db 120 ; base attack
db 70 ; base defense
db 80 ; base speed
db 110 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 80 ; catch rate
db 142 ; base exp yield
INCBIN "pic/pfmon/matchilio.pic",0,1 ; 55, sprite dimensions
dw MatchilioPicFront
dw MatchilioPicBack
; attacks known at lvl 0
db EMBER
db QUICK_ATTACK
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,5,6
	tmlearn 9,10,15
	tmlearn 17,18,19,22
	tmlearn 30,31,32
	tmlearn 33,35,38,40
	tmlearn 44
	tmlearn 50,51
db BANK(MatchilioPicFront)
