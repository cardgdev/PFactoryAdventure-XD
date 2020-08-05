db DEX_YOSHI ; pokedex id
db 91 ; base hp
db 91 ; base attack
db 91 ; base defense
db 91 ; base speed
db 91 ; base special
db DRAGON ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/yoshi.pic",0,1 ; 55, sprite dimensions
dw YoshiPicFront
dw YoshiPicBack
; attacks known at lvl 0
db WRAP
db ROAR
db AGILITY
db 0
db 5 ; growth rate
; learnset
	tmlearn 5,6,8
	tmlearn 9,10,11,12,15,16
	tmlearn 17,18,19,23
	tmlearn 26,27,30,31,32
	tmlearn 33,35,37,38,39,40
	tmlearn 41,44
	tmlearn 49,50,53,54,55
db BANK(YoshiPicFront)
