db DEX_DIMOTRITE ; pokedex id
db 52 ; base hp
db 121 ; base attack
db 168 ; base defense
db 30 ; base speed
db 77 ; base special
db ROCK ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/dragondon.pic",0,1 ; 77, sprite dimensions
dw DimotritePicFront
dw DimotritePicBack
; attacks known at lvl 0
db HORN_ATTACK
db LEER
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
db Bank(DimotritePicFront) ; padding
