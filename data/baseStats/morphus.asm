db DEX_MORPHUS ; pokedex id
db 73 ; base hp
db 100 ; base attack
db 60 ; base defense
db 65 ; base speed
db 100 ; base special
db POISON ; species type 1
db NORMAL ; species type 2
db 150 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/morphus.pic",0,1 ; 55, sprite dimensions
dw MorphusPicFront
dw MorphusPicBack
; attacks known at lvl 0
db LEECH_LIFE
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,21
	tmlearn 29,31,32
	tmlearn 34,39,40
	tmlearn 44,46
	tmlearn 50,54
db BANK(MorphusPicFront)
