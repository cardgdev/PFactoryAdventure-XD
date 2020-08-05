db DEX_CHAIRON ; pokedex id
db 59 ; base hp
db 59 ; base attack
db 58 ; base defense
db 73 ; base speed
db 90 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 140 ; catch rate
db 145 ; base exp yield
INCBIN "pic/pfmon/chairon.pic",0,1 ; 55, sprite dimensions
dw ChaironPicFront
dw ChaironPicBack
; attacks known at lvl 0
db EMBER
db POISON_STING
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 22,23
	tmlearn 30,31,32
	tmlearn 38,40
	tmlearn 44
	tmlearn 50
db BANK(ChaironPicFront)
