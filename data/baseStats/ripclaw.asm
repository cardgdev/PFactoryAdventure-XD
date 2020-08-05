db DEX_RIPCLAW ; pokedex id
db 95 ; base hp
db 115 ; base attack
db 90 ; base defense
db 60 ; base speed
db 80 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 100 ; catch rate
db 140 ; base exp yield
INCBIN "pic/pfmon/ripclaw.pic",0,1 ; 55, sprite dimensions
dw RipclawPicFront
dw RipclawPicBack
; attacks known at lvl 0
db SCRATCH
db SAND_ATTACK
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15,16
	tmlearn 24
	tmlearn 25,27,30,31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(RipclawPicFront)
