db DEX_WENDIGO ; pokedex id
db 70 ; base hp
db 120 ; base attack
db 65 ; base defense
db 85 ; base speed
db 125 ; base special
db ICE ; species type 1
db FIGHTING ; species type 2
db 70 ; catch rate
db 160 ; base exp yield
INCBIN "pic/pfmon/wendigo.pic",0,1 ; 55, sprite dimensions
dw WendigoPicFront
dw WendigoPicBack
; attacks known at lvl 0
db FURY_SWIPES
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,4,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,31,32
	tmlearn 34,35,39,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(WendigoPicFront)
