db DEX_HELLRAISER ; pokedex id
db 53 ; base hp
db 58 ; base attack
db 53 ; base defense
db 103 ; base speed
db 123 ; base special
db GHOST ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 190 ; base exp yield
INCBIN "pic/pfmon/hellraiser.pic",0,1 ; 55, sprite dimensions
dw HellraiserPicFront
dw HellraiserPicBack
; attacks known at lvl 0
db LICK
db CONFUSE_RAY
db NIGHT_SHADE
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55
db BANK(HellraiserPicFront)
