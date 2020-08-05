db DEX_ZIPPO ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 50 ; base defense
db 70 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 175 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/zippo.pic",0,1 ; 55, sprite dimensions
dw ZippoPicFront
dw ZippoPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,15
	tmlearn 22
	tmlearn 27,31,32
	tmlearn 37,38,39
	tmlearn 41,43,44
	tmlearn 50,52
db BANK(ZippoPicFront)
