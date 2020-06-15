db DEX_MAGIFART ; pokedex id
db 20 ; base hp
db 10 ; base attack
db 55 ; base defense
db 40 ; base speed
db 20 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 10 ; base exp yield
INCBIN "pic/bmon/magifart.pic",0,1 ; 66, sprite dimensions
dw MagifartPicFront
dw MagifartPicBack
; attacks known at lvl 0
db SPLASH
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(MagifartPicFront) ; padding
