db DEX_SEEDLING ; pokedex id
db 45 ; base hp
db 40 ; base attack
db 55 ; base defense
db 30 ; base speed
db 60 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 255 ; catch rate
db 73 ; base exp yield
INCBIN "pic/pfmon/seedling.pic",0,1 ; 55, sprite dimensions
dw SeedlingPicFront
dw SeedlingPicBack
; attacks known at lvl 0
db ABSORB
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10
	tmlearn 21,22
	tmlearn 31,32
	tmlearn 33
	tmlearn 44
	tmlearn 50,51
db BANK(SeedlingPicFront)
