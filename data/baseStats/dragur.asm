db DEX_DRAGUR ; pokedex id
db 100 ; base hp
db 100 ; base attack
db 100 ; base defense
db 100 ; base speed
db 100 ; base special
db DRAGON ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/pfmon/dragur.pic",0,1 ; 55, sprite dimensions
dw DragurPicFront
dw DragurPicBack
; attacks known at lvl 0
db WRAP
db ROAR
db AGILITY
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,6,8
	tmlearn 9,10,11,12,15
	tmlearn 17,18,19,23,24
	tmlearn 25,26,27,29,30,31,32
	tmlearn 33,34,35,38,39,40
	tmlearn 41,44,46
	tmlearn 50,52,53,54
db BANK(DragurPicFront)
