db DEX_PEGAZEUS ; pokedex id
db 65 ; base hp
db 100 ; base attack
db 70 ; base defense
db 105 ; base speed
db 80 ; base special
db ELECTRIC ; species type 1
db FLYING ; species type 2
db 70 ; catch rate
db 192 ; base exp yield
INCBIN "pic/bmon/pegazeus.pic",0,1 ; 77, sprite dimensions
dw PegazeusPicFront
dw PegazeusPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db TAIL_WHIP
db STOMP
db GROWL
db 0 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,15
	tmlearn 20,22
	tmlearn 31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db Bank(PegazeusPicFront) ; padding
