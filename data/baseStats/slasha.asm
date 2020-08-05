db DEX_SLASHA ; pokedex id
db 70 ; base hp
db 130 ; base attack
db 100 ; base defense
db 65 ; base speed
db 80 ; base special
db BUG ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 188 ; base exp yield
INCBIN "pic/pfmon/slasha.pic",0,1 ; 55, sprite dimensions
dw SlashaPicFront
dw SlashaPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db LEER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,3,6,7
	tmlearn 9,10,15
	tmlearn 21
	tmlearn 31,32
	tmlearn 39,40
	tmlearn 41,44
	tmlearn 50,51,52
db BANK(SlashaPicFront)
