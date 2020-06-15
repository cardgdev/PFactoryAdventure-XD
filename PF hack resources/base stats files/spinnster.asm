db DEX_SPINNSTER ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 70 ; base defense
db 60 ; base speed
db 70 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 70 ; catch rate
db 134 ; base exp yield
INCBIN "pic/bmon/spinnster.pic",0,1 ; 77, sprite dimensions
dw SpinnsterPicFront
dw SpinnsterPicBack
; attacks known at lvl 0
db POISON_STING
db HARDEN
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
db Bank(SpinnsterPicFront) ; padding
