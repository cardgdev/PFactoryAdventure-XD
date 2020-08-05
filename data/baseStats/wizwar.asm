db DEX_WIZWAR ; pokedex id
db 75 ; base hp
db 69 ; base attack
db 72 ; base defense
db 104 ; base speed
db 114 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/pfmon/wizwar.pic",0,1 ; 55, sprite dimensions
dw WizwarPicFront
dw WizwarPicBack
; attacks known at lvl 0
db CONFUSION
db KINESIS
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,13,14,15
	tmlearn 24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,36,38,39
	tmlearn 41,42,44,45,46,47
	tmlearn 49,50,55
db BANK(WizwarPicFront)
