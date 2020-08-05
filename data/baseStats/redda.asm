db DEX_REDDA ; pokedex id
db 35 ; base hp
db 40 ; base attack
db 40 ; base defense
db 40 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 60 ; base exp yield
INCBIN "pic/pfmon/redda.pic",0,1 ; 55, sprite dimensions
dw ReddaPicFront
dw ReddaPicBack
; attacks known at lvl 0
db LEER
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 21
	tmlearn 28,30,31,32
	tmlearn 34,40
	tmlearn 44
	tmlearn 50
db BANK(ReddaPicFront)
