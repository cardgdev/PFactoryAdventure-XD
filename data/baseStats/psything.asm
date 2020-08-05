db DEX_PSYTHING ; pokedex id
db 60 ; base hp
db 105 ; base attack
db 60 ; base defense
db 60 ; base speed
db 105 ; base special
db GHOST ; species type 1
db PSYCHIC ; species type 2
db 60 ; catch rate
db 144 ; base exp yield
INCBIN "pic/pfmon/psything.pic",0,1 ; 55, sprite dimensions
dw PsythingPicFront
dw PsythingPicBack
; attacks known at lvl 0
db CONFUSION
db NIGHT_SHADE
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 15
	tmlearn 20,21
	tmlearn 29,31,32
	tmlearn 33,34,39
	tmlearn 42,44,45,46,48
	tmlearn 50,55
db BANK(PsythingPicFront)
