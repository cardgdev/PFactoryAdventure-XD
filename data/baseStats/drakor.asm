db DEX_DRAKOR ; pokedex id
db 70 ; base hp
db 70 ; base attack
db 70 ; base defense
db 70 ; base speed
db 70 ; base special
db DRAGON ; species type 1
db DRAGON ; species type 2
db 60 ; catch rate
db 121 ; base exp yield
INCBIN "pic/pfmon/drakor.pic",0,1 ; 55, sprite dimensions
dw DrakorPicFront
dw DrakorPicBack
; attacks known at lvl 0
db WRAP
db ROAR
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12,15
	tmlearn 23
	tmlearn 27,30,31,32
	tmlearn 33,40
	tmlearn 41,44
	tmlearn 50,53
db BANK(DrakorPicFront)
