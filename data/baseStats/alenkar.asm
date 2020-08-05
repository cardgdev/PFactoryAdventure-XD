db DEX_ALENKAR ; pokedex id
db 55 ; base hp
db 50 ; base attack
db 45 ; base defense
db 120 ; base speed
db 135 ; base special
db PSYCHIC ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/alenkar.pic",0,1 ; 55, sprite dimensions
dw AlenkarPicFront
dw AlenkarPicBack
; attacks known at lvl 0
db CONFUSION
db DISABLE
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15,16
	tmlearn 17,18,19,20
	tmlearn 29,31,32
	tmlearn 33,34,35,39,40
	tmlearn 42,44,45,46,48
	tmlearn 49,50,55
db BANK(AlenkarPicFront)
