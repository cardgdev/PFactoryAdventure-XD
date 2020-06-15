db DEX_TYRANTICUS ; pokedex id
db 97 ; base hp
db 165 ; base attack
db 60 ; base defense
db 58 ; base speed
db 50 ; base special
db DRAGON ; species type 1
db ROCK ; species type 2
db 45 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/tyranticus.pic",0,1 ; 77, sprite dimensions
dw TyranticusPicFront
dw TyranticusPicBack
; attacks known at lvl 0
db TACKLE
db FOCUS_ENERGY
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
db Bank(TyranticusPicFront) ; padding
