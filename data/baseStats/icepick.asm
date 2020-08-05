db DEX_ICEPICK ; pokedex id
db 70 ; base hp
db 80 ; base attack
db 65 ; base defense
db 100 ; base speed
db 130 ; base special
db BUG ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 188 ; base exp yield
INCBIN "pic/pfmon/icepick.pic",0,1 ; 55, sprite dimensions
dw IcepickPicFront
dw IcepickPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db WING_ATTACK
db FOCUS_ENERGY
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,3,4,6,7
	tmlearn 9,10,13,14,15
	tmlearn 21
	tmlearn 31,32
	tmlearn 39,40
	tmlearn 41,44
	tmlearn 50,51,52
db BANK(IcepickPicFront)
