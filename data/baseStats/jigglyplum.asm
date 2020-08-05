db DEX_JIGGLYPLUM ; pokedex id
db 90 ; base hp
db 60 ; base attack
db 75 ; base defense
db 70 ; base speed
db 85 ; base special
db GRASS ; species type 1
db NORMAL ; species type 2
db 130 ; catch rate
db 130 ; base exp yield
INCBIN "pic/pfmon/jigglyplum.pic",0,1 ; 55, sprite dimensions
dw JigglyplumPicFront
dw JigglyplumPicBack
; attacks known at lvl 0
db RAZOR_LEAF
db SLAM
db MEGA_DRAIN
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15,16
	tmlearn 21,22,24
	tmlearn 25,27,29,31,32
	tmlearn 33,35,37,40
	tmlearn 44,45,46
	tmlearn 49,50,51,54,55
db BANK(JigglyplumPicFront)
