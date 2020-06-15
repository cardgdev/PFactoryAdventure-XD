db DEX_PIKAMARS ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 50 ; base defense
db 110 ; base speed
db 95 ; base special
db ELECTRIC ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 122 ; base exp yield
INCBIN "pic/bmon/pikamars.pic",0,1 ; 77, sprite dimensions
dw PikamarsPicFront
dw PikamarsPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db THUNDER_WAVE
db EMBER
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db Bank(PikamarsPicFront) ; padding
