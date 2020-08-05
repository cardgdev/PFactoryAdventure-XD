db DEX_AQUATRES ; pokedex id
db 73 ; base hp
db 67 ; base attack
db 75 ; base defense
db 109 ; base speed
db 100 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 90 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/aquatres.pic",0,1 ; 55, sprite dimensions
dw AquatresPicFront
dw AquatresPicBack
; attacks known at lvl 0
db BUBBLE
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 30,31,32
	tmlearn 33,38,39,40
	tmlearn 41,44
	tmlearn 50,53
db BANK(AquatresPicFront)
