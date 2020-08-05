db DEX_MECHTROID ; pokedex id
db 70 ; base hp
db 77 ; base attack
db 108 ; base defense
db 60 ; base speed
db 97 ; base special
db BUG ; species type 1
db ELECTRIC ; species type 2
db 150 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/mechtroid.pic",0,1 ; 55, sprite dimensions
dw MechtroidPicFront
dw MechtroidPicBack
; attacks known at lvl 0
db LEECH_LIFE
db BITE
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,7
	tmlearn 9,10,15
	tmlearn 21,24
	tmlearn 25,31,32
	tmlearn 36
	tmlearn 42,44,45,47
	tmlearn 49,50,55
db BANK(MechtroidPicFront)
