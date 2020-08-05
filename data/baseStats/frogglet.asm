db DEX_FROGGLET ; pokedex id
db 50 ; base hp
db 71 ; base attack
db 63 ; base defense
db 85 ; base speed
db 75 ; base special
db WATER ; species type 1
db FLYING ; species type 2
db 190 ; catch rate
db 100 ; base exp yield
INCBIN "pic/pfmon/frogglet.pic",0,1 ; 55, sprite dimensions
dw FroggletPicFront
dw FroggletPicBack
; attacks known at lvl 0
db GUST
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,5,6
	tmlearn 9,10,11,12,13,14
	tmlearn 0
	tmlearn 27,31,32
	tmlearn 33,40
	tmlearn 41,44
	tmlearn 50,53
db BANK(FroggletPicFront)
