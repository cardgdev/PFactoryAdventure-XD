db DEX_SPINNSTER ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 70 ; base defense
db 60 ; base speed
db 70 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 160 ; catch rate
db 105 ; base exp yield
INCBIN "pic/pfmon/spinnster.pic",0,1 ; 55, sprite dimensions
dw SpinnsterPicFront
dw SpinnsterPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7
	tmlearn 9,10
	tmlearn 20,21
	tmlearn 28,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,51
db BANK(SpinnsterPicFront)
