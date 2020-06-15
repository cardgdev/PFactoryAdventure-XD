db DEX_WIZWAR ; pokedex id
db 75 ; base hp
db 69 ; base attack
db 72 ; base defense
db 104 ; base speed
db 114 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 35 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/wizwar.pic",0,1 ; 77, sprite dimensions
dw WizwarPicFront
dw WizwarPicBack
; attacks known at lvl 0
db PSYWAVE
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(WizwarPicFront) ; padding
