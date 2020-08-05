db DEX_SCYTHERO ; pokedex id
db 70 ; base hp
db 110 ; base attack
db 80 ; base defense
db 105 ; base speed
db 80 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 90 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/scythero.pic",0,1 ; 55, sprite dimensions
dw ScytheroPicFront
dw ScytheroPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 2,3,5,6,7,8
	tmlearn 9,10,15
	tmlearn 17,18,19,21
	tmlearn 31,32
	tmlearn 39,40
	tmlearn 44
	tmlearn 50,51
db BANK(ScytheroPicFront)
