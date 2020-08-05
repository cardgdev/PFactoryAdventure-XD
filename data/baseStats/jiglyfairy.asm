db DEX_JIGLYFAIRY ; pokedex id
db 93 ; base hp
db 45 ; base attack
db 34 ; base defense
db 28 ; base speed
db 43 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 150 ; catch rate
db 68 ; base exp yield
INCBIN "pic/pfmon/jiglyfairy.pic",0,1 ; 55, sprite dimensions
dw JiglyfairyPicFront
dw JiglyfairyPicBack
; attacks known at lvl 0
db POUND
db GROWL
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,4,5,6,8
	tmlearn 9,10,11,12,13,14,16
	tmlearn 24
	tmlearn 25,27,29,31,32
	tmlearn 33,35,37,38,39,40
	tmlearn 44,45,46
	tmlearn 49,50,54,55
db BANK(JiglyfairyPicFront)
