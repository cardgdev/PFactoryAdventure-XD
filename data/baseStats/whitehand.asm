db DEX_WHITE_HAND ; pokedex id
db 50 ; base hp
db 92 ; base attack
db 108 ; base defense
db 35 ; base speed
db 108 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/whitehand.pic",0,1 ; 55, sprite dimensions
dw WhiteHandPicFront
dw WhiteHandPicBack
; attacks known at lvl 0
db NIGHT_SHADE
db SHADOW
db CONFUSE_RAY
db MEGA_PUNCH
db 5 ; growth rate
; learnset
	tmlearn 1,4,6
	tmlearn 13,14,15
	tmlearn 17,18,19,20,21,24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,39
	tmlearn 42,44,45,46,48
	tmlearn 50,51,54
db BANK(WhiteHandPicFront)
