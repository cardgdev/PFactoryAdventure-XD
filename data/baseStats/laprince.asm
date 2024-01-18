db DEX_LAPRINCE ; pokedex id
db 130 ; base hp
db 95 ; base attack
db 105 ; base defense
db 40 ; base speed
db 90 ; base special
db ROCK ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/pfmon/laprince.pic",0,1 ; 55, sprite dimensions
dw LaprincePicFront
dw LaprincePicBack
; attacks known at lvl 0
db ROCK_THROW
db SING
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 4,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 29,31,32
	tmlearn 33,40
	tmlearn 44,46
	tmlearn 50,53
db BANK(LaprincePicFront)
