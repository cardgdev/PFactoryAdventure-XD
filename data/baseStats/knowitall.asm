db DEX_KNOWITALL ; pokedex id
db 48 ; base hp
db 48 ; base attack
db 48 ; base defense
db 48 ; base speed
db 48 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 180 ; catch rate
db 64 ; base exp yield
INCBIN "pic/pfmon/knowitall.pic",0,1 ; 55, sprite dimensions
dw KnowitallPicFront
dw KnowitallPicBack
; attacks known at lvl 0
db TELEPORT
db TRANSFORM
db MIMIC
db 0
db 4 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 0
	tmlearn 29,31,32
	tmlearn 33,35
	tmlearn 44,46
	tmlearn 50,55
db BANK(KnowitallPicFront)
