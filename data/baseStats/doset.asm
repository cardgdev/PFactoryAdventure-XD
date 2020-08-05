db DEX_DOSET ; pokedex id
db 85 ; base hp
db 120 ; base attack
db 120 ; base defense
db 65 ; base speed
db 55 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/doset.pic",0,1 ; 55, sprite dimensions
dw DosetPicFront
dw DosetPicBack
; attacks known at lvl 0
db SCRATCH
db SAND_ATTACK
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 17,19,20
	tmlearn 26,28,30,31,32
	tmlearn 39,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(DosetPicFront)
