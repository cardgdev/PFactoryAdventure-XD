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
INCBIN "pic/pfmon/lunareon.pic",0,1 ; 55, sprite dimensions
dw LunareonPicFront
dw LunareonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db ROCK_THROW
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15,16
	tmlearn 20
	tmlearn 27,28,29,30,31,32
	tmlearn 33,34,39,40
	tmlearn 44,46,48
	tmlearn 50,54,55
db BANK(LunareonPicFront)
