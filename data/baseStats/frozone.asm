db DEX_FROZONE ; pokedex id
db 53 ; base hp
db 58 ; base attack
db 53 ; base defense
db 103 ; base speed
db 123 ; base special
db GHOST ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 190 ; base exp yield
INCBIN "pic/pfmon/frozone.pic",0,1 ; 55, sprite dimensions
dw FrozonePicFront
dw FrozonePicBack
; attacks known at lvl 0
db LICK
db CONFUSE_RAY
db NIGHT_SHADE
db 0
db 3 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 13,14,15
	tmlearn 21,24
	tmlearn 25,29,31,32
	tmlearn 34,36
	tmlearn 41,42,44,46,47
	tmlearn 50,55
db BANK(FrozonePicFront)
