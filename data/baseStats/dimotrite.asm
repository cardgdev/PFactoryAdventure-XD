db DEX_DIMOTRITE ; pokedex id
db 52 ; base hp
db 121 ; base attack
db 168 ; base defense
db 30 ; base speed
db 77 ; base special
db ROCK ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/pfmon/dimotrite.pic",0,1 ; 55, sprite dimensions
dw DimotritePicFront
dw DimotritePicBack
; attacks known at lvl 0
db ROCK_THROW
db TAIL_WHIP
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,23
	tmlearn 26,28,30,31,32
	tmlearn 33,38,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(DimotritePicFront)
