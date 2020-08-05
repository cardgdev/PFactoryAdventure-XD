db DEX_DRAGOR ; pokedex id
db 100 ; base hp
db 95 ; base attack
db 91 ; base defense
db 80 ; base speed
db 134 ; base special
db DRAGON ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/dragor.pic",0,1 ; 55, sprite dimensions
dw DragorPicFront
dw DragorPicBack
; attacks known at lvl 0
db WRAP
db ROAR
db AGILITY
db SLAM
db 5 ; growth rate
; learnset
	tmlearn 2,6,8
	tmlearn 9,10,11,12,15
	tmlearn 23,24
	tmlearn 25,26,27,30,31,32
	tmlearn 33,38,40
	tmlearn 41,44
	tmlearn 50,52,53,54
db BANK(DragorPicFront)
