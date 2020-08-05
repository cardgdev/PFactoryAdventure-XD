db DEX_TYRANTICUS ; pokedex id
db 97 ; base hp
db 125 ; base attack
db 60 ; base defense
db 58 ; base speed
db 90 ; base special
db DRAGON ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/tyranticus.pic",0,1 ; 55, sprite dimensions
dw TyranticusPicFront
dw TyranticusPicBack
; attacks known at lvl 0
db EMBER
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,23
	tmlearn 26,27,30,31,32
	tmlearn 38,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(TyranticusPicFront)
