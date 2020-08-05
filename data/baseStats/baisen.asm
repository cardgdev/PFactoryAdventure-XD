db DEX_BAISEN ; pokedex id
db 100 ; base hp
db 110 ; base attack
db 95 ; base defense
db 75 ; base speed
db 70 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/baisen.pic",0,1 ; 55, sprite dimensions
dw BaisenPicFront
dw BaisenPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,13,14,15
	tmlearn 20,22,24
	tmlearn 25,26,27,30,31,32
	tmlearn 38,40
	tmlearn 44,48
	tmlearn 50,53,54
db BANK(BaisenPicFront)
