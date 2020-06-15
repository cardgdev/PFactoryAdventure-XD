db DEX_MATOPSIS ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 70 ; base defense
db 65 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 100 ; catch rate
db 150 ; base exp yield
INCBIN "pic/bmon/matopsis.pic",0,1 ; 77, sprite dimensions
dw MatopsisPicFront
dw MatopsisPicBack
; attacks known at lvl 0
db GUST
db EMBER
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
db Bank(MatopsisPicFront) ; padding
