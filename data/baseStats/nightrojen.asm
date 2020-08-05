db DEX_NIGHTROJEN ; pokedex id
db 43 ; base hp
db 34 ; base attack
db 30 ; base defense
db 65 ; base speed
db 52 ; base special
db FLYING ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 54 ; base exp yield
INCBIN "pic/pfmon/nightrojen.pic",0,1 ; 55, sprite dimensions
dw NightrojenPicFront
dw NightrojenPicBack
; attacks known at lvl 0
db GUST
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 11,12,13,14
	tmlearn 24
	tmlearn 25,31,32
	tmlearn 33,36
	tmlearn 41,44,47
	tmlearn 50
db BANK(NightrojenPicFront)
