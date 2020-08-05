db DEX_SUNNY ; pokedex id
db 75 ; base hp
db 65 ; base attack
db 65 ; base defense
db 75 ; base speed
db 65 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 190 ; catch rate
db 110 ; base exp yield
INCBIN "pic/pfmon/sunny.pic",0,1 ; 55, sprite dimensions
dw SunnyPicFront
dw SunnyPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 22,24
	tmlearn 25,27,28,31,32
	tmlearn 35,39,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(SunnyPicFront)
