db DEX_GRIFF ; pokedex id
db 85 ; base hp
db 80 ; base attack
db 95 ; base defense
db 115 ; base speed
db 120 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 100 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/griff.pic",0,1 ; 55, sprite dimensions
dw GriffPicFront
dw GriffPicBack
; attacks known at lvl 0
db PECK
db SCREECH
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,6,8
	tmlearn 9,10,15
	tmlearn 19
	tmlearn 27,29,30,31,32
	tmlearn 33,37,39,40
	tmlearn 41,43,44,46
	tmlearn 49,50,51,52,54
db BANK(GriffPicFront)
