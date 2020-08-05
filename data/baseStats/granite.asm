db DEX_GRANITE ; pokedex id
db 58 ; base hp
db 89 ; base attack
db 77 ; base defense
db 48 ; base speed
db 45 ; base special
db ROCK ; species type 1
db ROCK ; species type 2
db 190 ; catch rate
db 111 ; base exp yield
INCBIN "pic/pfmon/granite.pic",0,1 ; 55, sprite dimensions
dw GranitePicFront
dw GranitePicBack
; attacks known at lvl 0
db ROCK_THROW
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10
	tmlearn 17,18,19,20
	tmlearn 26,28,31,32
	tmlearn 35,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(GranitePicFront)
