db DEX_DRUNKEE ; pokedex id
db 65 ; base hp
db 115 ; base attack
db 65 ; base defense
db 65 ; base speed
db 75 ; base special
db NORMAL ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 121 ; base exp yield
INCBIN "pic/pfmon/drunkee.pic",0,1 ; 55, sprite dimensions
dw DrunkeePicFront
dw DrunkeePicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 0
	tmlearn 27,28,30,31,32
	tmlearn 35,38,39,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(DrunkeePicFront)
