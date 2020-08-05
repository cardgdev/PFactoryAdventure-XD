db DEX_TOGEPI ; pokedex id
db 35 ; base hp
db 20 ; base attack
db 65 ; base defense
db 20 ; base speed
db 65 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 190 ; catch rate
db 74 ; base exp yield
INCBIN "pic/pfmon/togepi.pic",0,1 ; 55, sprite dimensions
dw TogepiPicFront
dw TogepiPicBack
; attacks known at lvl 0
db GROWL
db 0
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,16
	tmlearn 24
	tmlearn 27,29,31,32
	tmlearn 33,35,37,39,40
	tmlearn 44,45,46
	tmlearn 49,50
db BANK(TogepiPicFront)
