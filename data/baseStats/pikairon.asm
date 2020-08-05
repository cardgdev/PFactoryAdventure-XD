db DEX_PIKAIRON ; pokedex id
db 35 ; base hp
db 55 ; base attack
db 140 ; base defense
db 50 ; base speed
db 90 ; base special
db ELECTRIC ; species type 1
db ARMOR ; species type 2
db 140 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/pikairon.pic",0,1 ; 55, sprite dimensions
dw PikaironPicFront
dw PikaironPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 8
	tmlearn 9,10,15,16
	tmlearn 24
	tmlearn 25,27,30,31,32
	tmlearn 33,36,39,40
	tmlearn 44,45,47
	tmlearn 49,50,55
db BANK(PikaironPicFront)
