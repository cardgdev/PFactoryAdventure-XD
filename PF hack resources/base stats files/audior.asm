db DEX_AUDIOR ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 55 ; base defense
db 60 ; base speed
db 70 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 200 ; catch rate
db 76 ; base exp yield
INCBIN "pic/bmon/audior.pic",0,1 ; 66, sprite dimensions
dw AudiorPicFront
dw AudiorPicBack
; attacks known at lvl 0
db POUND
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,38,40
	tmlearn 44,45,46
	tmlearn 49,50,54,55
db Bank(AudiorPicFront) ; padding
