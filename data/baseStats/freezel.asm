db DEX_FREEZEL ; pokedex id
db 110 ; base hp
db 130 ; base attack
db 80 ; base defense
db 80 ; base speed
db 70 ; base special
db ICE ; species type 1
db ICE ; species type 2
db 80 ; catch rate
db 159 ; base exp yield
INCBIN "pic/pfmon/freezel.pic",0,1 ; 55, sprite dimensions
dw FreezelPicFront
dw FreezelPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 27,30,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(FreezelPicFront)
