db DEX_PIKACHUB ; pokedex id
db 100 ; base hp
db 60 ; base attack
db 90 ; base defense
db 55 ; base speed
db 90 ; base special
db ELECTRIC ; species type 1
db NORMAL ; species type 2
db 75 ; catch rate
db 122 ; base exp yield
INCBIN "pic/pfmon/pikachub.pic",0,1 ; 55, sprite dimensions
dw PikachubPicFront
dw PikachubPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15,16
	tmlearn 17,19,24
	tmlearn 25,26,27,30,31,32
	tmlearn 33,36,39,40
	tmlearn 44,45,47
	tmlearn 50,54,55
db BANK(PikachubPicFront)
