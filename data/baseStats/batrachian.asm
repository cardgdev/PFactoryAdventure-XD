db DEX_BATRACHIAN ; pokedex id
db 90 ; base hp
db 76 ; base attack
db 86 ; base defense
db 55 ; base speed
db 95 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/batrachian.pic",0,1 ; 55, sprite dimensions
dw BatrachianPicFront
dw BatrachianPicBack
; attacks known at lvl 0
db BUBBLE
db SUPERSONIC
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 27,28,31,32
	tmlearn 33,40
	tmlearn 41,44
	tmlearn 50,53
db BANK(BatrachianPicFront)
