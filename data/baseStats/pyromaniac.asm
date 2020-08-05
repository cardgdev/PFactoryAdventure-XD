db DEX_PYROMANIAC ; pokedex id
db 55 ; base hp
db 85 ; base attack
db 45 ; base defense
db 70 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 70 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/pyromaniac.pic",0,1 ; 55, sprite dimensions
dw PyromaniacPicFront
dw PyromaniacPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db EMBER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10
	tmlearn 22,23
	tmlearn 27,30,31,32
	tmlearn 38,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(PyromaniacPicFront)
