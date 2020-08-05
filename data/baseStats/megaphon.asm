db DEX_MEGAPHON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 65 ; base defense
db 80 ; base speed
db 90 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 120 ; catch rate
db 120 ; base exp yield
INCBIN "pic/pfmon/megaphon.pic",0,1 ; 55, sprite dimensions
dw MegaphonPicFront
dw MegaphonPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20,23,24
	tmlearn 25,27,30,31,32
	tmlearn 33,37,38,39,40
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(MegaphonPicFront)
