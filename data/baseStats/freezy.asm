db DEX_FREEZY ; pokedex id
db 50 ; base hp
db 50 ; base attack
db 40 ; base defense
db 50 ; base speed
db 30 ; base special
db ICE ; species type 1
db ICE ; species type 2
db 230 ; catch rate
db 72 ; base exp yield
INCBIN "pic/pfmon/freezy.pic",0,1 ; 55, sprite dimensions
dw FreezyPicFront
dw FreezyPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,11,12,13,14
	tmlearn 0
	tmlearn 27,30,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(FreezyPicFront)
