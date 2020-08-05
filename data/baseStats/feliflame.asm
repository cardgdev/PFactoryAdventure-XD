db DEX_FELIFLAME ; pokedex id
db 75 ; base hp
db 80 ; base attack
db 70 ; base defense
db 115 ; base speed
db 90 ; base special
db NORMAL ; species type 1
db FIRE ; species type 2
db 60 ; catch rate
db 190 ; base exp yield
INCBIN "pic/pfmon/feliflame.pic",0,1 ; 55, sprite dimensions
dw FeliflamePicFront
dw FeliflamePicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db BITE
db SCREECH
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15,16
	tmlearn 22,24
	tmlearn 25,27,30,31,32
	tmlearn 38,39,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(FeliflamePicFront)
