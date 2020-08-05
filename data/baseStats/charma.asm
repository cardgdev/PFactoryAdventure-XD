db DEX_CHARMA ; pokedex id
db 75 ; base hp
db 69 ; base attack
db 72 ; base defense
db 104 ; base speed
db 114 ; base special
db FIRE ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 155 ; base exp yield
INCBIN "pic/pfmon/charma.pic",0,1 ; 55, sprite dimensions
dw CharmaPicFront
dw CharmaPicBack
; attacks known at lvl 0
db EMBER
db POISON_STING
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 22,23
	tmlearn 30,31,32
	tmlearn 38,40
	tmlearn 44
	tmlearn 50
db BANK(CharmaPicFront)
