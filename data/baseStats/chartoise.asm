db DEX_CHARTOISE ; pokedex id
db 79 ; base hp
db 84 ; base attack
db 89 ; base defense
db 89 ; base speed
db 85 ; base special
db FIRE ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/pfmon/chartoise.pic",0,1 ; 55, sprite dimensions
dw ChartoisePicFront
dw ChartoisePicBack
; attacks known at lvl 0
db TACKLE
db SCRATCH
db GROWL
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,21,22,23
	tmlearn 26,28,30,31,32
	tmlearn 33,38,39,40
	tmlearn 41,44
	tmlearn 50,51,52,53,54
db BANK(ChartoisePicFront)
