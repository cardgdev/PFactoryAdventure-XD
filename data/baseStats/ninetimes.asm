db DEX_NINETIMES ; pokedex id
db 93 ; base hp
db 76 ; base attack
db 85 ; base defense
db 100 ; base speed
db 110 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 190 ; base exp yield
INCBIN "pic/pfmon/ninetimes.pic",0,1 ; 55, sprite dimensions
dw NinetimesPicFront
dw NinetimesPicBack
; attacks known at lvl 0
db EMBER
db TAIL_WHIP
db QUICK_ATTACK
db ROAR
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 22
	tmlearn 28,30,31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db BANK(NinetimesPicFront)
