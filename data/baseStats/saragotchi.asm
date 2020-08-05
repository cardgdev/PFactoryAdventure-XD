db DEX_SARAGOTCHI ; pokedex id
db 57 ; base hp
db 90 ; base attack
db 40 ; base defense
db 40 ; base speed
db 70 ; base special
db DRAGON ; species type 1
db DRAGON ; species type 2
db 70 ; catch rate
db 102 ; base exp yield
INCBIN "pic/pfmon/saragotchi.pic",0,1 ; 55, sprite dimensions
dw SaragotchiPicFront
dw SaragotchiPicBack
; attacks known at lvl 0
db EMBER
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,23
	tmlearn 26,27,30,31,32
	tmlearn 38,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(SaragotchiPicFront)
