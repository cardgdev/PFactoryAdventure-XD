db DEX_SPIROCATE ; pokedex id
db 70 ; base hp
db 75 ; base attack
db 85 ; base defense
db 95 ; base speed
db 130 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 60 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/spirocate.pic",0,1 ; 55, sprite dimensions
dw SpirocatePicFront
dw SpirocatePicBack
; attacks known at lvl 0
db PSYWAVE
db SUPERSONIC
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 11,12,13,14,15
	tmlearn 22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,36,38,39
	tmlearn 42,44,45,46,47
	tmlearn 49,50,55
db BANK(SpirocatePicFront)
