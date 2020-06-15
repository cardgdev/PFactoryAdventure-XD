db DEX_SHOCKRA ; pokedex id
db 55 ; base hp
db 70 ; base attack
db 45 ; base defense
db 60 ; base speed
db 50 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 91 ; base exp yield
INCBIN "pic/bmon/shockra.pic",0,1 ; 77, sprite dimensions
dw ShockraPicFront
dw ShockraPicBack
; attacks known at lvl 0
db BITE
db ROAR
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20,23
	tmlearn 28,31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db Bank(ShockraPicFront) ; padding
