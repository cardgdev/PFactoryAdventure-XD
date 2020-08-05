db DEX_GEOBIRD ; pokedex id
db 90 ; base hp
db 100 ; base attack
db 125 ; base defense
db 90 ; base speed
db 85 ; base special
db ROCK ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/geobird.pic",0,1 ; 55, sprite dimensions
dw GeobirdPicFront
dw GeobirdPicBack
; attacks known at lvl 0
db WING_ATTACK
db ROCK_SLIDE
db BODY_SLAM
db AGILITY
db 5 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 26,27,31,32
	tmlearn 33,37,39
	tmlearn 41,43,44,48
	tmlearn 50,52,54
db BANK(GeobirdPicFront)
