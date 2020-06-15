db DEX_BARKANITE ; pokedex id
db 90 ; base hp
db 110 ; base attack
db 80 ; base defense
db 95 ; base speed
db 80 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 75 ; catch rate
db 213 ; base exp yield
INCBIN "pic/bmon/barkanite.pic",0,1 ; 77, sprite dimensions
dw BarkanitePicFront
dw BarkanitePicBack
; attacks known at lvl 0
db ROAR
db THUNDERSHOCK
db LEER
db TAKE_DOWN
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22,23
	tmlearn 28,30,31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db Bank(BarkanitePicFront) ; padding
