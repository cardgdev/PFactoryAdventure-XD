db DEX_DAISYSAUR ; pokedex id
db 100 ; base hp
db 82 ; base attack
db 93 ; base defense
db 70 ; base speed
db 105 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 50 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/daisysaur.pic",0,1 ; 55, sprite dimensions
dw DaisysaurPicFront
dw DaisysaurPicBack
; attacks known at lvl 0
db LEECH_SEED
db VINE_WHIP
db SLEEP_POWDER
db RAZOR_LEAF
db 3 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,15
	tmlearn 21,22
	tmlearn 26,31,32
	tmlearn 33
	tmlearn 44
	tmlearn 50,51
db BANK(DaisysaurPicFront)
