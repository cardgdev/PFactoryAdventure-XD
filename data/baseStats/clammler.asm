db DEX_CLAMMLER ; pokedex id
db 75 ; base hp
db 95 ; base attack
db 180 ; base defense
db 50 ; base speed
db 95 ; base special
db WATER ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 220 ; base exp yield
INCBIN "pic/pfmon/clammler.pic",0,1 ; 55, sprite dimensions
dw ClammlerPicFront
dw ClammlerPicBack
; attacks known at lvl 0
db WITHDRAW
db SUPERSONIC
db CLAMP
db AURORA_BEAM
db 5 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,36,39
	tmlearn 44,47
	tmlearn 50,53
db BANK(ClammlerPicFront)
