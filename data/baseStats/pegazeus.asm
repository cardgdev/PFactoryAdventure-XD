db DEX_PEGAZEUS ; pokedex id
db 65 ; base hp
db 100 ; base attack
db 70 ; base defense
db 105 ; base speed
db 80 ; base special
db ELECTRIC ; species type 1
db FLYING ; species type 2
db 60 ; catch rate
db 192 ; base exp yield
INCBIN "pic/pfmon/pegazeus.pic",0,1 ; 55, sprite dimensions
dw PegazeusPicFront
dw PegazeusPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db TAIL_WHIP
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,5,6
	tmlearn 9,10,15
	tmlearn 24
	tmlearn 25,31,32
	tmlearn 33,38,39,40
	tmlearn 41,43,44,45
	tmlearn 50,52,55
db BANK(PegazeusPicFront)
