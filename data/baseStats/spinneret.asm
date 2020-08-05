db DEX_SPINNERET ; pokedex id
db 50 ; base hp
db 70 ; base attack
db 50 ; base defense
db 55 ; base speed
db 50 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 220 ; catch rate
db 60 ; base exp yield
INCBIN "pic/pfmon/spinneret.pic",0,1 ; 55, sprite dimensions
dw SpinneretPicFront
dw SpinneretPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7
	tmlearn 0
	tmlearn 21
	tmlearn 28,31,32
	tmlearn 34,40
	tmlearn 44
	tmlearn 50
db BANK(SpinneretPicFront)
