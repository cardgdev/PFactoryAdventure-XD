db DEX_HOTHEAD ; pokedex id
db 80 ; base hp
db 127 ; base attack
db 73 ; base defense
db 73 ; base speed
db 107 ; base special
db FIRE ; species type 1
db FIGHTING ; species type 2
db 100 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/hothead.pic",0,1 ; 55, sprite dimensions
dw HotheadPicFront
dw HotheadPicBack
; attacks known at lvl 0
db EMBER
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,22
	tmlearn 26,27,31,32
	tmlearn 36,38,40
	tmlearn 44,47,48
	tmlearn 50,54,55
db BANK(HotheadPicFront)
