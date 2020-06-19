db DEX_FRACTURE ; pokedex id
db 70 ; base hp
db 105 ; base attack
db 110 ; base defense
db 75 ; base speed
db 70 ; base special
db GROUND ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 170 ; base exp yield
INCBIN "pic/pfmon/fracture.pic",0,1 ; 55, sprite dimensions
dw FracturePicFront
dw FracturePicBack
; attacks known at lvl 0
db BONE_CLUB
db GROWL
db LEER
db FOCUS_ENERGY
db 0 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55
db BANK(FracturePicFront)
