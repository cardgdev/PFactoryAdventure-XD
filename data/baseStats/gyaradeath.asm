db DEX_GYARADEATH ; pokedex id
db 95 ; base hp
db 125 ; base attack
db 84 ; base defense
db 81 ; base speed
db 110 ; base special
db WATER ; species type 1
db FLYING ; species type 2
db 20 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/gyaradeath.pic",0,1 ; 55, sprite dimensions
dw GyaradeathPicFront
dw GyaradeathPicBack
; attacks known at lvl 0
db BITE
db DRAGON_RAGE
db SLASH
db HYDRO_PUMP
db 5 ; growth rate
; learnset
	tmlearn 2,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 23
	tmlearn 26,27,30,31,32
	tmlearn 33,38,40
	tmlearn 41,44
	tmlearn 50,51,53,54
db BANK(GyaradeathPicFront)
