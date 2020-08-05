db DEX_POKEWRAITH ; pokedex id
db 79 ; base hp
db 80 ; base attack
db 70 ; base defense
db 111 ; base speed
db 125 ; base special
db ICE ; species type 1
db FIRE ; species type 2
db 60 ; catch rate
db 135 ; base exp yield
INCBIN "pic/pfmon/pokewraith.pic",0,1 ; 55, sprite dimensions
dw PokewraithPicFront
dw PokewraithPicBack
; attacks known at lvl 0
db GUST
db WHIRLWIND
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 11,12,13,14,15
	tmlearn 24
	tmlearn 25,31,32
	tmlearn 33,35,36,38,39
	tmlearn 41,44,47
	tmlearn 49,50,52,53
db BANK(PokewraithPicFront)
