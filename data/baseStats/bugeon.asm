db DEX_BUGEON ; pokedex id
db 60 ; base hp
db 130 ; base attack
db 65 ; base defense
db 110 ; base speed
db 65 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 45 ; catch rate
db 198 ; base exp yield
INCBIN "pic/pfmon/bugeon.pic",0,1 ; 55, sprite dimensions
dw BugeonPicFront
dw BugeonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db PIN_MISSILE
db 0 ; growth rate
; learnset
	tmlearn 3,6,7,8
	tmlearn 9,10,15,16
	tmlearn 21
	tmlearn 27,28,30,31,32
	tmlearn 33,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(BugeonPicFront)
