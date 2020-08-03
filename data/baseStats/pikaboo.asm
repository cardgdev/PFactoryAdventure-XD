db DEX_PIKABOO ; pokedex id
db 90 ; base hp
db 100 ; base attack
db 55 ; base defense
db 90 ; base speed
db 60 ; base special
db ELECTRIC ; species type 1
db GHOST ; species type 2
db 75 ; catch rate
db 122 ; base exp yield
INCBIN "pic/pfmon/pikaboo.pic",0,1 ; 55, sprite dimensions
dw PikabooPicFront
dw PikabooPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,2,5,6,8
	tmlearn 9,10,15,16
	tmlearn 17,19,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,39,40
	tmlearn 42,44,45,46
	tmlearn 50,55
db BANK(PikabooPicFront)
