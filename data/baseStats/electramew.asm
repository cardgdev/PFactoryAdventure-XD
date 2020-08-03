db DEX_ELECTRAMEW ; pokedex id
db 86 ; base hp
db 86 ; base attack
db 86 ; base defense
db 86 ; base speed
db 86 ; base special
db ELECTRIC ; species type 1
db PSYCHIC ; species type 2
db 75 ; catch rate
db 122 ; base exp yield
INCBIN "pic/pfmon/electramew.pic",0,1 ; 55, sprite dimensions
dw ElectramewPicFront
dw ElectramewPicBack
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
	tmlearn 25,27,29,30,31,32
	tmlearn 33,34,35,38,39,40
	tmlearn 42,44,45,46
	tmlearn 49,50,53,54,55
db BANK(ElectramewPicFront)
