db DEX_FREEZAP ; pokedex id
db 70 ; base hp
db 80 ; base attack
db 70 ; base defense
db 110 ; base speed
db 80 ; base special
db ICE ; species type 1
db DRAGON ; species type 2
db 70 ; catch rate
db 160 ; base exp yield
INCBIN "pic/pfmon/freezap.pic",0,1 ; 55, sprite dimensions
dw FreezapPicFront
dw FreezapPicBack
; attacks known at lvl 0
db AURORA_BEAM
db FURY_ATTACK
db MIST
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,23,24
	tmlearn 25,27,30,31,32
	tmlearn 33,39,40
	tmlearn 41,44
	tmlearn 50,51,52,53
db BANK(FreezapPicFront)
