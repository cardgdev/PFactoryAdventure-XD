db DEX_CLEGNYANA ; pokedex id
db 255 ; base hp
db 10 ; base attack
db 10 ; base defense
db 55 ; base speed
db 135 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 30 ; catch rate
db 255 ; base exp yield
INCBIN "pic/pfmon/clegnyana.pic",0,1 ; 55, sprite dimensions
dw ClegnyanaPicFront
dw ClegnyanaPicBack
; attacks known at lvl 0
db DOUBLE_EDGE
db POUND
db GROWL
db SOFTBOILED
db 4 ; growth rate
; learnset
	tmlearn 1,2,4,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,21,22,24
	tmlearn 25,26,27,29,31,32
	tmlearn 33,35,37,38,40
	tmlearn 41,43,44,45,46,48
	tmlearn 49,50,52,54,55
db BANK(ClegnyanaPicFront)
