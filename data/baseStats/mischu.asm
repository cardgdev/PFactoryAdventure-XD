db DEX_MISCHU ; pokedex id
db 65 ; base hp
db 125 ; base attack
db 100 ; base defense
db 85 ; base speed
db 70 ; base special
db BUG ; species type 1
db GROUND ; species type 2
db 90 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/mischu.pic",0,1 ; 55, sprite dimensions
dw MischuPicFront
dw MischuPicBack
; attacks known at lvl 0
db BIND
db DISABLE
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7
	tmlearn 9,10,13,15
	tmlearn 17,18,19,20,21,24
	tmlearn 25,26,28,29,31,32
	tmlearn 33,34,40
	tmlearn 42,44,45,46,48
	tmlearn 50,51,54
db BANK(MischuPicFront)
