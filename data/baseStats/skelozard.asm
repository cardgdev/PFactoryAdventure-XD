db DEX_SKELOZARD ; pokedex id
db 78 ; base hp
db 84 ; base attack
db 78 ; base defense
db 100 ; base speed
db 85 ; base special
db FIRE ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/skelozard.pic",0,1 ; 55, sprite dimensions
dw SkelozardPicFront
dw SkelozardPicBack
; attacks known at lvl 0
db EMBER
db RAGE
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 17,18,19,20,22,23
	tmlearn 26,27,28,30,31,32
	tmlearn 33,34,38,39,40
	tmlearn 41,44,48
	tmlearn 50,51,52,54
db BANK(SkelozardPicFront)
