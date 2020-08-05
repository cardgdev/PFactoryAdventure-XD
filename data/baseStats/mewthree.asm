db DEX_MEWTHREE ; pokedex id
db 106 ; base hp
db 110 ; base attack
db 90 ; base defense
db 130 ; base speed
db 154 ; base special
db PSYCHIC ; species type 1
db FIGHTING ; species type 2
db 3 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/mewthree.pic",0,1 ; 55, sprite dimensions
dw MewthreePicFront
dw MewthreePicBack
; attacks known at lvl 0
db SUBMISSION
db PSYBREAK
db BARRIER
db AMNESIA
db 5 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,13,14,15
	tmlearn 17,18,19,20,24
	tmlearn 25,26,27,29,31,32
	tmlearn 33,34,35,36,38,39,40
	tmlearn 41,44,46,48
	tmlearn 49,50,54,55
db BANK(MewthreePicFront)
