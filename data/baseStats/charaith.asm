db DEX_CHARAITH ; pokedex id
db 58 ; base hp
db 64 ; base attack
db 58 ; base defense
db 80 ; base speed
db 65 ; base special
db FIRE ; species type 1
db GHOST ; species type 2
db 150 ; catch rate
db 124 ; base exp yield
INCBIN "pic/pfmon/charaith.pic",0,1 ; 55, sprite dimensions
dw CharaithPicFront
dw CharaithPicBack
; attacks known at lvl 0
db EMBER
db RAGE
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,15
	tmlearn 0
	tmlearn 20,22,23
	tmlearn 31,32
	tmlearn 33,34,38,39,40
	tmlearn 44,48
	tmlearn 50,51
db BANK(CharaithPicFront)
