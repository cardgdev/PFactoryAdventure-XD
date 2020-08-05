db DEX_WOOFPOOL ; pokedex id
db 90 ; base hp
db 110 ; base attack
db 80 ; base defense
db 95 ; base speed
db 80 ; base special
db WATER ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 213 ; base exp yield
INCBIN "pic/pfmon/woofpool.pic",0,1 ; 55, sprite dimensions
dw WoofpoolPicFront
dw WoofpoolPicBack
; attacks known at lvl 0
db BITE
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 27,28,31,32
	tmlearn 33,34,38,40
	tmlearn 44
	tmlearn 50,53
db BANK(WoofpoolPicFront)
