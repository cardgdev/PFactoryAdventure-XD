db DEX_NIGHTROJEN ; pokedex id
db 54 ; base hp
db 63 ; base attack
db 50 ; base defense
db 85 ; base speed
db 72 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 200 ; catch rate
db 80 ; base exp yield
INCBIN "pic/bmon/nightrojen.pic",0,1 ; 55, sprite dimensions
dw NightrojenPicFront
dw NightrojenPicBack
; attacks known at lvl 0
db SMOG
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(NightrojenPicFront) ; padding
