db DEX_RATICLAW ; pokedex id
db 75 ; base hp
db 101 ; base attack
db 80 ; base defense
db 100 ; base speed
db 55 ; base special
db NORMAL ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 166 ; base exp yield
INCBIN "pic/pfmon/raticlaw.pic",0,1 ; 55, sprite dimensions
dw RaticlawPicFront
dw RaticlawPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db QUICK_ATTACK
db HYPER_FANG
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 24
	tmlearn 25,27,28,30,31,32
	tmlearn 39,40
	tmlearn 44
	tmlearn 50,54
db BANK(RaticlawPicFront)
