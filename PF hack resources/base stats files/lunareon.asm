db DEX_LUNAREON ; pokedex id
db 60 ; base hp
db 110 ; base attack
db 130 ; base defense
db 65 ; base speed
db 65 ; base special
db ROCK ; species type 1
db ROCK ; species type 2
db 45 ; catch rate
db 198 ; base exp yield
INCBIN "pic/bmon/lunareon.pic",0,1 ; 55, sprite dimensions
dw LunareonPicFront
dw LunareonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db ROCK_THROW
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(LunareonPicFront) ; padding
