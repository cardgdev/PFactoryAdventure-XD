db DEX_SPINNERET ; pokedex id
db 50 ; base hp
db 70 ; base attack
db 50 ; base defense
db 55 ; base speed
db 50 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 140 ; catch rate
db 54 ; base exp yield
INCBIN "pic/bmon/spinneret.pic",0,1 ; 66, sprite dimensions
dw SpinneretPicFront
dw SpinneretPicBack
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
db Bank(SpinneretPicFront) ; padding
