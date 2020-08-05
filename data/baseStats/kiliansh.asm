db DEX_KILIANSH ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 60 ; base defense
db 55 ; base speed
db 85 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 90 ; base exp yield
INCBIN "pic/pfmon/kiliansh.pic",0,1 ; 55, sprite dimensions
dw KilianshPicFront
dw KilianshPicBack
; attacks known at lvl 0
db EMBER
db QUICK_ATTACK
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,5,6
	tmlearn 9,10
	tmlearn 22
	tmlearn 30,31,32
	tmlearn 33,35,38,40
	tmlearn 44
	tmlearn 50,51
db BANK(KilianshPicFront)
