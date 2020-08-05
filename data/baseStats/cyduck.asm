db DEX_CYDUCK ; pokedex id
db 50 ; base hp
db 122 ; base attack
db 88 ; base defense
db 55 ; base speed
db 50 ; base special
db WATER ; species type 1
db ARMOR ; species type 2
db 160 ; catch rate
db 110 ; base exp yield
INCBIN "pic/pfmon/cyduck.pic",0,1 ; 55, sprite dimensions
dw CyduckPicFront
dw CyduckPicBack
; attacks known at lvl 0
db SCRATCH
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3
	tmlearn 9,10,11,12,13,14,15
	tmlearn 24
	tmlearn 25,29,30,31,32
	tmlearn 33,36,39,40
	tmlearn 44,46,47
	tmlearn 49,50,53,54
db BANK(CyduckPicFront)
