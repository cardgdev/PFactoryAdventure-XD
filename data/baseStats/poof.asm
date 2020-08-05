db DEX_POOF ; pokedex id
db 70 ; base hp
db 70 ; base attack
db 95 ; base defense
db 70 ; base speed
db 104 ; base special
db POISON ; species type 1
db PSYCHIC ; species type 2
db 100 ; catch rate
db 155 ; base exp yield
INCBIN "pic/pfmon/poof.pic",0,1 ; 55, sprite dimensions
dw PoofPicFront
dw PoofPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 13,14,15,16
	tmlearn 21,24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,36,39
	tmlearn 42,44,45,46,47
	tmlearn 49,50,55
db BANK(PoofPicFront)
