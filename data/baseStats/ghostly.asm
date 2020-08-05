db DEX_GHOSTLY ; pokedex id
db 55 ; base hp
db 90 ; base attack
db 80 ; base defense
db 96 ; base speed
db 75 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 90 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/ghostly.pic",0,1 ; 55, sprite dimensions
dw GhostlyPicFront
dw GhostlyPicBack
; attacks known at lvl 0
db LICK
db RAGE
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 15
	tmlearn 20,21,24
	tmlearn 25,27,29,31,32
	tmlearn 33,34,36
	tmlearn 42,44,46,47,48
	tmlearn 50,55
db BANK(GhostlyPicFront)
