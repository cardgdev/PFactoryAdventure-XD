db DEX_FIREBIRD ; pokedex id
db 50 ; base hp
db 55 ; base attack
db 50 ; base defense
db 50 ; base speed
db 70 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 170 ; catch rate
db 91 ; base exp yield
INCBIN "pic/bmon/firebird.pic",0,1 ; 77, sprite dimensions
dw FirebirdPicFront
dw FirebirdPicBack
; attacks known at lvl 0
db GUST
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(FirebirdPicFront) ; padding
