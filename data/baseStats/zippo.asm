db DEX_ZIPPO ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 50 ; base defense
db 70 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FLYING ; species type 2
db 175 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/zippo.pic",0,1 ; 55, sprite dimensions
dw ZippoPicFront
dw ZippoPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55
db BANK(ZippoPicFront)
