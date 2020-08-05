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
INCBIN "pic/pfmon/barkanite.pic",0,1 ; 55, sprite dimensions
dw BarkanitePicFront
dw BarkanitePicBack
; attacks known at lvl 0
db ROAR
db THUNDERSHOCK
db BITE
db TAKE_DOWN
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 24
	tmlearn 25,27,28,31,32
	tmlearn 33,38,40
	tmlearn 44,45
	tmlearn 50,55
db BANK(BarkanitePicFront)
