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
INCBIN "pic/bmon/bugeon.pic",0,1 ; 77, sprite dimensions
dw BugeonPicFront
dw BugeonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db PIN_MISSILE
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(BugeonPicFront) ; padding
