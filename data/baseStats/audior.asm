db DEX_AUDIOR ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 55 ; base defense
db 60 ; base speed
db 70 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 220 ; catch rate
db 70 ; base exp yield
INCBIN "pic/pfmon/audior.pic",0,1 ; 55, sprite dimensions
dw AudiorPicFront
dw AudiorPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,3,4,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 17,18,19,20,23,24
	tmlearn 25,27,30,31,32
	tmlearn 33,37,38,39,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(AudiorPicFront)
