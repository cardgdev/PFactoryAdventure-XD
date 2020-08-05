db DEX_CUTIEPIE ; pokedex id
db 118 ; base hp
db 70 ; base attack
db 59 ; base defense
db 53 ; base speed
db 68 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 129 ; base exp yield
INCBIN "pic/pfmon/cutiepie.pic",0,1 ; 55, sprite dimensions
dw CutiepiePicFront
dw CutiepiePicBack
; attacks known at lvl 0
db SING
db DOUBLESLAP
db METRONOME
db REST
db 4 ; growth rate
; learnset
	tmlearn 1,4,5,6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,24
	tmlearn 25,27,29,31,32
	tmlearn 33,35,37,38,39,40
	tmlearn 44,45,46
	tmlearn 49,50,54,55
db BANK(CutiepiePicFront)
