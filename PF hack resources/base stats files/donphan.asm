db DEX_DONPHAN ; pokedex id
db 90 ; base hp
db 120 ; base attack
db 120 ; base defense
db 50 ; base speed
db 60 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 60 ; catch rate
db 175 ; base exp yield
INCBIN "pic/bmon/donphan.pic",0,1 ; 77, sprite dimensions
dw DonphanPicFront
dw DonphanPicBack
; attacks known at lvl 0
db HORN_ATTACK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(DonphanPicFront) ; padding
