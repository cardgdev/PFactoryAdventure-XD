db DEX_PIDGEAUTO ; pokedex id
db 83 ; base hp
db 75 ; base attack
db 150 ; base defense
db 91 ; base speed
db 70 ; base special
db FLYING ; species type 1
db ARMOR ; species type 2
db 90 ; catch rate
db 150 ; base exp yield
INCBIN "pic/pfmon/pidgeauto.pic",0,1 ; 55, sprite dimensions
dw PidgeautoPicFront
dw PidgeautoPicBack
; attacks known at lvl 0
db GUST
db SAND_ATTACK
db QUICK_ATTACK
db 0
db 3 ; growth rate
; learnset
	tmlearn 2
	tmlearn 9,10,15
	tmlearn 24
	tmlearn 25,27,30,31,32
	tmlearn 33,36,37,39
	tmlearn 41,43,44,47
	tmlearn 49,50,52
db BANK(PidgeautoPicFront)
