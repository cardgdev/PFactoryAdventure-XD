db DEX_APACOLYPSE ; pokedex id
db 45 ; base hp
db 100 ; base attack
db 135 ; base defense
db 45 ; base speed
db 120 ; base special
db ROCK ; species type 1
db FLYING ; species type 2
db 60 ; catch rate
db 145 ; base exp yield
INCBIN "pic/pfmon/apacolypse.pic",0,1 ; 55, sprite dimensions
dw ApacolypsePicFront
dw ApacolypsePicBack
; attacks known at lvl 0
db WING_ATTACK
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 1,2,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,24
	tmlearn 25,26,28,31,32
	tmlearn 34,35,40
	tmlearn 41,43,44,48
	tmlearn 50,52,54
db BANK(ApacolypsePicFront)
