db DEX_DRYAD ; pokedex id
db 75 ; base hp
db 70 ; base attack
db 85 ; base defense
db 60 ; base speed
db 90 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 130 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/dryad.pic",0,1 ; 55, sprite dimensions
dw DryadPicFront
dw DryadPicBack
; attacks known at lvl 0
db RAZOR_LEAF
db SLAM
db MEGA_DRAIN
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,7
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 26,31,32
	tmlearn 33,34
	tmlearn 44,48
	tmlearn 50,51
db BANK(DryadPicFront)
