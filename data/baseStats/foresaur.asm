db DEX_FORESAUR ; pokedex id
db 80 ; base hp
db 82 ; base attack
db 83 ; base defense
db 80 ; base speed
db 100 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 120 ; catch rate
db 155 ; base exp yield
INCBIN "pic/pfmon/foresaur.pic",0,1 ; 55, sprite dimensions
dw ForesaurPicFront
dw ForesaurPicBack
; attacks known at lvl 0
db LEECH_SEED
db VINE_WHIP
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,15
	tmlearn 21,22
	tmlearn 26,31,32
	tmlearn 33
	tmlearn 44
	tmlearn 50,51
db BANK(ForesaurPicFront)
