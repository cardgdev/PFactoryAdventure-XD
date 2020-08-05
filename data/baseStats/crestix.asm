db DEX_CRESTIX ; pokedex id
db 65 ; base hp
db 83 ; base attack
db 57 ; base defense
db 85 ; base speed
db 105 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 100 ; catch rate
db 123 ; base exp yield
INCBIN "pic/pfmon/crestix.pic",0,1 ; 55, sprite dimensions
dw CrestixPicFront
dw CrestixPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,24
	tmlearn 25,31,32
	tmlearn 39,40
	tmlearn 44,45
	tmlearn 50,53,54,55
db BANK(CrestixPicFront)
