db DEX_GYARADEATH ; pokedex id
db 95 ; base hp
db 125 ; base attack
db 84 ; base defense
db 81 ; base speed
db 110 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 3 ; catch rate
db 220 ; base exp yield
INCBIN "pic/bmon/gyaradeath.pic",0,1 ; 77, sprite dimensions
dw GyaradeathPicFront
dw GyaradeathPicBack
; attacks known at lvl 0
db BITE
db DRAGON_RAGE
db LEER
db HYDRO_PUMP
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(GyaradeathPicFront) ; padding
