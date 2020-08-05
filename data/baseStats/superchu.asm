db DEX_SUPERCHU ; pokedex id
db 45 ; base hp
db 80 ; base attack
db 50 ; base defense
db 120 ; base speed
db 75 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/superchu.pic",0,1 ; 55, sprite dimensions
dw SuperchuPicFront
dw SuperchuPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15,16
	tmlearn 24
	tmlearn 25,29,30,31,32
	tmlearn 33,39,40
	tmlearn 44,45,46
	tmlearn 50,55
db BANK(SuperchuPicFront)
